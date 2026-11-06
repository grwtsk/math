import Mathlib.Basic.ExistsUnique

/-!
# Typed wire sections of a polynomial circuit

Local attribution: grwtsk contributors.
The incidence restrictions follow the cellular sheaf convention in Ghrist and
Riess, *Cellular Sheaves of Lattices and the Tarski Laplacian* (2020 preprint,
arXiv:2007.04099), §2.5, using sets of exact port values as stalks.

Each gate relates values on its incident wires. An incidence open containing a
gate contains all its wires. Sections restrict by projecting away wires and gates.
Given a matching family, choose a covering member for each wire. Overlap agreement
makes that choice immaterial. To check any gate, use a member covering the gate,
which contains every wire it needs. This proves existence and uniqueness of glue.

The bounded path below interprets adjacent steps as gates sharing one typed value.
The sign comparison records a concrete boundary for weaker matching. The result
supplies a trace verifier for a given local relation. Arithmetic soundness, solver
termination, and existence of a polynomial root require separate arguments.
No novelty or independent analytic review is claimed for this construction.
-/

namespace GRWTSK.NumericalAnalysis.PolynomialCircuit

universe u v w z

/-- A typed wire system with local gate relations. Finite indices give a finite circuit. -/
structure Circuit (Wire : Type u) (Gate : Type v) where
  Carrier : Wire → Type w
  Incidence : Gate → Wire → Prop
  admissible : (g : Gate) → ((wire : Wire) → Incidence g wire → Carrier wire) → Prop

variable {Wire : Type u} {Gate : Type v}

/-- An open in the gate–wire incidence topology. -/
structure Open (C : Circuit.{u, v, w} Wire Gate) where
  wires : Wire → Prop
  gates : Gate → Prop
  incident : ∀ {g wire}, gates g → C.Incidence g wire → wires wire

namespace Open

variable {C : Circuit.{u, v, w} Wire Gate}

def Included (U V : Open C) : Prop :=
  (∀ wire, U.wires wire → V.wires wire) ∧ (∀ g, U.gates g → V.gates g)

theorem Included.refl (U : Open C) : Included U U := ⟨fun _ h => h, fun _ h => h⟩

theorem Included.trans {U V W : Open C} (hUV : Included U V) (hVW : Included V W) :
    Included U W := ⟨fun wire h => hVW.1 wire (hUV.1 wire h),
      fun g h => hVW.2 g (hUV.2 g h)⟩

def whole (C : Circuit.{u, v, w} Wire Gate) : Open C where
  wires := fun _ => True
  gates := fun _ => True
  incident := fun _ _ => trivial

def star (C : Circuit.{u, v, w} Wire Gate) (g : Gate) : Open C where
  wires := C.Incidence g
  gates := fun neighbor => neighbor = g
  incident := by
    intro neighbor wire hg hw
    exact hg ▸ hw

def inter (U V : Open C) : Open C where
  wires := fun wire => U.wires wire ∧ V.wires wire
  gates := fun g => U.gates g ∧ V.gates g
  incident := fun hg hw => ⟨U.incident hg.1 hw, V.incident hg.2 hw⟩

theorem interLeft (U V : Open C) : Included (inter U V) U :=
  ⟨fun _ h => h.1, fun _ h => h.1⟩

theorem interRight (U V : Open C) : Included (inter U V) V :=
  ⟨fun _ h => h.2, fun _ h => h.2⟩

end Open

variable {C : Circuit.{u, v, w} Wire Gate}

/-- A section records one value per wire and checks every included gate. -/
structure Section (U : Open C) where
  value : (wire : Wire) → U.wires wire → C.Carrier wire
  obeys : ∀ g (hg : U.gates g), C.admissible g (fun wire hw => value wire (U.incident hg hw))

namespace Section

theorem ext {U : Open C} {s t : Section U}
    (h : ∀ wire hw, s.value wire hw = t.value wire hw) : s = t := by
  cases s with
  | mk sv hs =>
    cases t with
    | mk tv ht =>
      have equal : sv = tv := funext fun wire => funext (h wire)
      cases equal
      rfl

/-- Restriction retains the values and gate checks of the smaller open. -/
def restrict {U V : Open C} (s : Section V) (h : Open.Included U V) : Section U where
  value := fun wire hw => s.value wire (h.1 wire hw)
  obeys := fun g hg => s.obeys g (h.2 g hg)

@[simp] theorem restrict_refl {U : Open C} (s : Section U) : s.restrict (Open.Included.refl U) = s :=
  ext fun _ _ => rfl

theorem restrict_trans {U V W : Open C} (s : Section W)
    (hUV : Open.Included U V) (hVW : Open.Included V W) :
    (s.restrict hVW).restrict hUV = s.restrict (hUV.trans hVW) :=
  ext fun _ _ => rfl

end Section

variable {I : Type z}

/-- Every wire and every gate of the target open appears in a covering member. -/
structure Cover (U : Open C) (family : I → Open C) : Prop where
  inside : ∀ i, Open.Included (family i) U
  wires : ∀ wire, U.wires wire → ∃ i, (family i).wires wire
  gates : ∀ g, U.gates g → ∃ i, (family i).gates g

/-- Compatibility is exact equality on each shared wire. -/
def Compatible {family : I → Open C} (patch : (i : I) → Section (family i)) : Prop :=
  ∀ i j wire (hi : (family i).wires wire) (hj : (family j).wires wire),
    (patch i).value wire hi = (patch j).value wire hj

theorem compatible_iff_overlap {family : I → Open C} (patch : (i : I) → Section (family i)) :
    Compatible patch ↔ ∀ i j,
      (patch i).restrict (Open.interLeft (family i) (family j)) =
        (patch j).restrict (Open.interRight (family i) (family j)) := by
  constructor
  · intro h i j
    exact Section.ext fun wire hw => h i j wire hw.1 hw.2
  · intro h i j wire hi hj
    exact congrArg (fun s : Section ((family i).inter (family j)) => s.value wire ⟨hi, hj⟩) (h i j)

/-- The glued value can be read from any cover member containing its wire. -/
noncomputable def glue {U : Open C} {family : I → Open C} (cover : Cover U family)
    (patch : (i : I) → Section (family i)) (matchLocal : Compatible patch) : Section U where
  value wire hw :=
    (patch (Classical.choose (cover.wires wire hw))).value wire
      (Classical.choose_spec (cover.wires wire hw))
  obeys := by
    intro g hg
    obtain ⟨i, hi⟩ := cover.gates g hg
    have equal :
        (fun wire hw =>
          (patch (Classical.choose (cover.wires wire (U.incident hg hw)))).value wire
            (Classical.choose_spec (cover.wires wire (U.incident hg hw)))) =
        (fun wire hw => (patch i).value wire ((family i).incident hi hw)) := by
      funext wire hw
      exact matchLocal _ i wire _ _
    rw [equal]
    exact (patch i).obeys g hi

theorem glue_restrict {U : Open C} {family : I → Open C} (cover : Cover U family)
    (patch : (i : I) → Section (family i)) (matchLocal : Compatible patch) (i : I) :
    (glue cover patch matchLocal).restrict (cover.inside i) = patch i :=
  Section.ext fun wire hw => matchLocal _ i wire _ hw

/-- The sheaf law for incidence opens, derived from the gate and wire cover. -/
theorem uniqueGlue {U : Open C} {family : I → Open C} (cover : Cover U family)
    (patch : (i : I) → Section (family i)) (matchLocal : Compatible patch) :
    ∃! candidate : Section U, ∀ i, candidate.restrict (cover.inside i) = patch i := by
  refine ⟨glue cover patch matchLocal, glue_restrict cover patch matchLocal, ?_⟩
  intro candidate h
  apply Section.ext
  intro wire hw
  obtain ⟨i, hi⟩ := cover.wires wire hw
  have equal := (h i).trans (glue_restrict cover patch matchLocal i).symm
  exact congrArg (fun s : Section (family i) => s.value wire hi) equal

namespace Path

variable {n : Nat} {Port : Type u}

/-- One gate for each adjacent pair of wires in a bounded path. -/
def circuit (Port : Type u) (step : Fin n → Port → Port → Prop) :
    Circuit (Fin (n + 1)) (Fin n) where
  Carrier := fun _ => Port
  Incidence := fun g wire => wire = g.castSucc ∨ wire = g.succ
  admissible := fun g values => step g (values g.castSucc (Or.inl rfl)) (values g.succ (Or.inr rfl))

/-- A positive-length path is covered by the opens of its individual gates. -/
theorem starCover {step : Fin (n + 1) → Port → Port → Prop} :
    Cover (Open.whole (circuit Port step)) (Open.star (circuit Port step)) where
  inside _ := ⟨fun _ _ => trivial, fun _ _ => trivial⟩
  wires := by
    intro wire _
    refine Fin.lastCases ?_ (fun g => ?_) wire
    · exact ⟨Fin.last n, Or.inr rfl⟩
    · exact ⟨g, Or.inl rfl⟩
  gates := fun g _ => ⟨g, rfl⟩

/-- The exact input and output carried by one local path gate. -/
structure GateWitness (step : Fin n → Port → Port → Prop) (g : Fin n) where
  input : Port
  output : Port
  valid : step g input output

private theorem right_ne_left (g : Fin n) : g.succ ≠ g.castSucc := by
  intro equal
  have values : g.val + 1 = g.val := congrArg Fin.val equal
  exact Nat.ne_of_gt (Nat.lt_succ_self _) values

def GateWitness.toSection {step : Fin n → Port → Port → Prop} {g : Fin n}
    (witness : GateWitness step g) : Section (Open.star (circuit Port step) g) where
  value := fun wire _ => if wire = g.castSucc then witness.input else witness.output
  obeys := by
    intro neighbor h
    change neighbor = g at h
    subst neighbor
    change step g (if g.castSucc = g.castSucc then witness.input else witness.output)
      (if g.succ = g.castSucc then witness.input else witness.output)
    rw [ite_eq_left (show g.castSucc = g.castSucc from rfl), ite_eq_right (right_ne_left g)]
    exact witness.valid

@[simp] theorem GateWitness.toSection_input {step : Fin n → Port → Port → Prop} {g : Fin n}
    (witness : GateWitness step g) : witness.toSection.value g.castSucc (Or.inl rfl) = witness.input :=
  ite_eq_left rfl

@[simp] theorem GateWitness.toSection_output {step : Fin n → Port → Port → Prop} {g : Fin n}
    (witness : GateWitness step g) : witness.toSection.value g.succ (Or.inr rfl) = witness.output :=
  ite_eq_right (right_ne_left g)

/-- Matching across a joint compares the exact preceding output and following input. -/
theorem GateWitness.adjacent_agrees {step : Fin (n + 1) → Port → Port → Prop}
    (witness : (g : Fin (n + 1)) → GateWitness step g)
    (matching : Compatible (fun g => (witness g).toSection)) (g : Fin n) :
    (witness g.castSucc).output = (witness g.succ).input := by
  exact (GateWitness.toSection_output _).symm.trans
    ((matching g.castSucc g.succ g.castSucc.succ (Or.inr rfl) (Or.inl (Fin.succ_castSucc g))).trans
      (GateWitness.toSection_input _))

/-- A complete trace has one shared value at each joint and a check for each gate. -/
structure Trace (step : Fin n → Port → Port → Prop) where
  ports : Fin (n + 1) → Port
  valid : ∀ g, step g (ports g.castSucc) (ports g.succ)

def Trace.toSection {step : Fin n → Port → Port → Prop} (trace : Trace step) :
    Section (Open.whole (circuit Port step)) where
  value := fun wire _ => trace.ports wire
  obeys := fun g _ => trace.valid g

def Trace.ofSection {step : Fin n → Port → Port → Prop}
    (candidate : Section (Open.whole (circuit Port step))) : Trace step where
  ports := fun wire => candidate.value wire trivial
  valid := fun g => candidate.obeys g trivial

@[simp] theorem Trace.ofSection_toSection {step : Fin n → Port → Port → Prop}
    (trace : Trace step) : ofSection trace.toSection = trace := by
  cases trace
  rfl

@[simp] theorem Trace.toSection_ofSection {step : Fin n → Port → Port → Prop}
    (candidate : Section (Open.whole (circuit Port step))) : (ofSection candidate).toSection = candidate :=
  Section.ext fun _ _ => rfl

/-- A matching family of exact local gate witnesses determines a unique trace. -/
theorem uniqueTrace {step : Fin (n + 1) → Port → Port → Prop}
    (witness : (g : Fin (n + 1)) → GateWitness step g)
    (matching : Compatible (fun g => (witness g).toSection)) :
    ∃! trace : Trace step,
      ∀ g, trace.toSection.restrict (starCover.inside g) = (witness g).toSection := by
  obtain ⟨candidate, agree, only⟩ := uniqueGlue starCover (fun g => (witness g).toSection) matching
  refine ⟨Trace.ofSection candidate, ?_, ?_⟩
  · simpa only [Trace.toSection_ofSection] using agree
  · intro trace restricts
    simpa only [Trace.ofSection_toSection] using congrArg Trace.ofSection (only trace.toSection restricts)

end Path

/-- Exact agreement can be observed by sign, but the sign observation loses information. -/
theorem sameSign_of_exact {a b : Int} (h : a = b) : a.sign = b.sign := congrArg Int.sign h

theorem sameSign_without_exact : ∃ a b : Int, a.sign = b.sign ∧ a ≠ b :=
  ⟨1, 2, by decide, by decide⟩

/-- Two individually valid gates can agree by sign while failing to match at their joint. -/
theorem sameSign_incompatible_path :
    ∃ witness : (g : Fin 2) → Path.GateWitness (fun _ (_ _ : Int) => True) g,
      (witness 0).output.sign = (witness 1).input.sign ∧
        ¬ Compatible (fun g => (witness g).toSection) := by
  let witness (g : Fin 2) : Path.GateWitness (fun _ (_ _ : Int) => True) g :=
    ⟨if g = 0 then 0 else 2, if g = 0 then 1 else 0, trivial⟩
  refine ⟨witness, by decide, ?_⟩
  intro matching
  exact (by decide : (1 : Int) ≠ 2) (Path.GateWitness.adjacent_agrees witness matching (0 : Fin 1))

end GRWTSK.NumericalAnalysis.PolynomialCircuit
