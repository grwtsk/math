/- Copyright (c) 2026 grwtsk contributors. MIT.
Formal source candidate. Native Lean elaboration, kernel replay and axiom audit: NOT_RUN. -/
import GRWTSK.Combinatorics.GraphTheory.FiniteRelationalTypeDiscovery
import Mathlib

/-!
# Invariant finite relational types via orbit bits and conservative spin fibers

Given a group action on identity-bearing histories, this file constructs
*actual* invariant binary observations: the bits ask whether a history belongs
to an anchor's orbit. The resulting finite signature separates all distinct
symmetry orbits. A type map is recoverable by invariant binary observations
if and only if it is constant on the group orbits.

An observation can be calculated from a finite group action if equality is
decidable. For a general (possibly infinite) symmetry group the orbit test and
the partial classifier may be noncomputable. No such observer is claimed to be
created by a spin lift alone; a source-sound history decoder is an extra premise.

Every binary observation can be represented in a new two-sheet Hilbert fiber
with an exact left inverse and an exact complex inner-product identity. The
existing `pendingLoop` is used through its literal, iterated path-erasure map.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
namespace InvariantHistory

universe u v w
variable {P : Type u} {Γ : Type v} [Group Γ] [MulAction Γ P]

/-- Orbit membership is a relation on actual source histories, not labels. -/
def SameOrbit (p q : P) : Prop := ∃ g : Γ, g • p = q

/-- Orbit membership survives changing the observed point's frame. -/
theorem sameOrbit_smul_iff (r p : P) (g : Γ) :
    SameOrbit r (g • p) ↔ SameOrbit r p := by
  constructor
  · rintro ⟨h, hh⟩
    refine ⟨g⁻¹ * h, ?_⟩
    calc
      (g⁻¹ * h) • r = g⁻¹ • (h • r) := mul_smul _ _ _
      _ = g⁻¹ • (g • p) := by rw [hh]
      _ = p := inv_smul_smul g p
  · rintro ⟨h, hh⟩
    refine ⟨g * h, ?_⟩
    calc
      (g * h) • r = g • (h • r) := mul_smul _ _ _
      _ = g • p := by rw [hh]

/-- A finite-valued observation of an actual source orbit. -/
noncomputable def orbitBit (r p : P) : Bool := by
  classical
  exact if SameOrbit r p then true else false

@[simp] theorem orbitBit_true_iff (r p : P) :
    orbitBit r p = true ↔ SameOrbit r p := by
  by_cases h : SameOrbit r p <;> simp [orbitBit, h]

@[simp] theorem orbitBit_self (p : P) : orbitBit p p = true := by
  apply (orbitBit_true_iff p p).2
  exact ⟨1, one_smul Γ p⟩

/-- Each orbit-membership observation is invariant under the full action. -/
theorem orbitBit_invariant (r p : P) (g : Γ) :
    orbitBit r (g • p) = orbitBit r p := by
  unfold orbitBit
  rw [sameOrbit_smul_iff r p g]

/-- One binary coordinate for each member of the finite source inventory. -/
noncomputable def orbitSignature (p : P) : P → Bool := fun anchor => orbitBit anchor p

/-- The complete orbit signature is frame-invariant. -/
theorem orbitSignature_invariant (p : P) (g : Γ) :
    orbitSignature (g • p) = orbitSignature p := by
  funext anchor
  exact orbitBit_invariant anchor p g

/-- If types respect symmetry, equal observable signatures force equal types. -/
theorem type_eq_of_orbitSignature_eq {Kind : Type w} (τ : P → Kind)
    (typeInvariant : ∀ g : Γ, ∀ p : P, τ (g • p) = τ p)
    (p q : P) (he : orbitSignature p = orbitSignature q) :
    τ p = τ q := by
  have bitEq : orbitBit p p = orbitBit p q := congrFun he p
  have relation : SameOrbit p q := by
    apply (orbitBit_true_iff p q).1
    rw [← bitEq]
    exact orbitBit_self p
  obtain ⟨g, hg⟩ := relation
  calc
    τ p = τ (g • p) := (typeInvariant g p).symm
    _ = τ q := congrArg τ hg

/-- Any invariant separating family forces the intended types to be invariant. -/
theorem type_invariant_of_invariant_separators
    {I : Type*} {Kind : Type w} (τ : P → Kind) (bits : I → P → Bool)
    (invariant : ∀ i g p, bits i (g • p) = bits i p)
    (separates : ∀ p q, τ p ≠ τ q → ∃ i, bits i p ≠ bits i q) :
    ∀ g p, τ (g • p) = τ p := by
  intro g p
  by_contra h
  obtain ⟨i, impossible⟩ := separates (g • p) p h
  exact impossible (invariant i g p)

/-- The necessary and sufficient condition for finite invariant binary
    separation, indexed by the members of the source inventory. -/
theorem invariant_binary_separation_iff [Fintype P]
    {Kind : Type w} (τ : P → Kind) :
    (∃ bits : P → P → Bool,
      (∀ i g p, bits i (g • p) = bits i p) ∧
      (∀ p q, τ p ≠ τ q → ∃ i, bits i p ≠ bits i q)) ↔
    (∀ g : Γ, ∀ p : P, τ (g • p) = τ p) := by
  constructor
  · rintro ⟨bits, invariant, separating⟩
    exact type_invariant_of_invariant_separators τ bits invariant separating
  · intro hType
    refine ⟨fun r p => orbitBit r p, ?_, ?_⟩
    · intro i g p
      exact orbitBit_invariant i p g
    · intro p q hpq
      refine ⟨p, ?_⟩
      intro he
      have relation : SameOrbit p q := by
        apply (orbitBit_true_iff p q).1
        rw [← he]
        exact orbitBit_self p
      obtain ⟨g, hg⟩ := relation
      exact hpq ((hType g p).symm.trans (congrArg τ hg))

/-- A source-backed partial classifier. Unknown signatures remain unknown. -/
noncomputable def orbitClassifier {Kind : Type w} (τ : P → Kind)
    (signature : P → Bool) : Option Kind := by
  classical
  exact if h : ∃ p : P, orbitSignature p = signature then
    some (τ (Classical.choose h))
  else none

/-- All actual source histories are classified correctly. -/
theorem orbitClassifier_correct {Kind : Type w} (τ : P → Kind)
    (typeInvariant : ∀ g : Γ, ∀ p : P, τ (g • p) = τ p)
    (p : P) :
    orbitClassifier τ (orbitSignature p) = some (τ p) := by
  unfold orbitClassifier
  split_ifs with h
  · have hType := type_eq_of_orbitSignature_eq τ typeInvariant
        (Classical.choose h) p (Classical.choose_spec h)
    simp [hType]
  · exact False.elim (h ⟨p, rfl⟩)

/-- A returned type must have an actual source-history representative. -/
theorem orbitClassifier_has_source {Kind : Type w} (τ : P → Kind)
    (s : P → Bool) (k : Kind)
    (accepted : orbitClassifier τ s = some k) :
    ∃ p : P, orbitSignature p = s ∧ τ p = k := by
  unfold orbitClassifier at accepted
  split_ifs at accepted with h
  · exact ⟨Classical.choose h, Classical.choose_spec h,
      Option.some.inj accepted⟩
  · cases accepted

/-- For a finite symmetry group, orbit membership is a decidable finite search. -/
def finiteOrbitBit [Fintype Γ] [DecidableEq P] (r p : P) : Bool :=
  decide (∃ g : Γ, g • r = p)

@[simp] theorem finiteOrbitBit_correct [Fintype Γ] [DecidableEq P]
    (r p : P) :
    finiteOrbitBit r p = true ↔ SameOrbit r p := by
  simp [finiteOrbitBit, SameOrbit]

end InvariantHistory

namespace SpinHilbertBits

universe u
variable {W : Type u}

/-- Isometric embedding into the observed spin sheet; the other sheet is zero. -/
def include (bit : W → Bool) (f : W → ℂ) : W × Bool → ℂ :=
  fun x => if x.2 = bit x.1 then f x.1 else 0

/-- Exact left inverse, defined only by reading the designated spin sheet. -/
def recover (bit : W → Bool) (F : W × Bool → ℂ) : W → ℂ :=
  fun w => F (w, bit w)

@[simp] theorem recover_include (bit : W → Bool) (f : W → ℂ) :
    recover bit (include bit f) = f := by
  funext w
  simp [recover, include]

/-- Original antilinear-first finite complex Hilbert pairing. -/
def originalInner [Fintype W] (f g : W → ℂ) : ℂ :=
  ∑ w : W, star (f w) * g w

/-- Exact two-sheet pairing with its standard counting measure. -/
def extendedInner [Fintype W] (f g : W × Bool → ℂ) : ℂ :=
  ∑ w : W,
    (star (f (w, false)) * g (w, false)) +
    (star (f (w, true)) * g (w, true))

/-- Every single stage is an isometry; iteration preserves products of these maps. -/
theorem include_inner [Fintype W] (bit : W → Bool) (f g : W → ℂ) :
    extendedInner (include bit f) (include bit g) = originalInner f g := by
  unfold extendedInner originalInner
  apply Finset.sum_congr rfl
  intro w _
  cases hb : bit w <;> simp [include, hb]

/-- Source-invariant bits make the selected-sheet embedding equivariant under
    the induced action; the action need not describe physical spin. -/
theorem include_equivariant {Γ : Type*} [Group Γ] [MulAction Γ W]
    (bit : W → Bool) (invariant : ∀ g : Γ, ∀ w : W, bit (g • w) = bit w)
    (g : Γ) (f : W → ℂ) (w : W) (s : Bool) :
    include bit (fun x => f (g⁻¹ • x)) (w, s) =
      include bit f (g⁻¹ • w, s) := by
  simp [include, invariant (g⁻¹) w]

end SpinHilbertBits

namespace SourceSpinReadout

universe u v w
variable {V : Type u} {E : V → V → Type v} {a : V}

/-- Erase any finite number of conservative spin extensions. -/
def eraseToSource : (n : Nat) →
    Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n) →
      Path E a a
  | 0, p => Path.lowerEdges p
  | n + 1, p => eraseToSource n (SpinPath.erase p)

/-- The entire source loop is recovered after any number of retries. -/
theorem eraseToSource_pending (p : Path E a a) (n : Nat) :
    eraseToSource (n := n) (pendingLoop p n) = p := by
  induction n with
  | zero => exact Path.lower_raiseEdges p
  | succ n ih =>
      change eraseToSource n (SpinPath.erase (pendingLoop p (n + 1))) = p
      rw [pendingLoop_recover, ih]

/-- Reading an orbit bit from the retained source requires an actual decoder. -/
noncomputable def stageOrbitBit {P : Type w} {Γ : Type*}
    [Group Γ] [MulAction Γ P]
    (decode : Path E a a → Option P) (anchor : P) (n : Nat)
    (q : Path (iterEdge E n) (iterAnchor a n) (iterAnchor a n)) :
    Option Bool :=
  Option.map (InvariantHistory.orbitBit (Γ := Γ) anchor)
    (decode (eraseToSource (n := n) q))

/-- The lift introduces no unproved information: with an exact decoder the
    stage readout is precisely the original history's orbit bit. -/
theorem stageOrbitBit_pending {P : Type w} {Γ : Type*}
    [Group Γ] [MulAction Γ P]
    (history : P → Path E a a)
    (decode : Path E a a → Option P)
    (decode_source : ∀ p : P, decode (history p) = some p)
    (anchor p : P) (n : Nat) :
    stageOrbitBit (E := E) (a := a) (Γ := Γ) decode anchor n
      (pendingLoop (history p) n) =
    some (InvariantHistory.orbitBit (Γ := Γ) anchor p) := by
  simp [stageOrbitBit, eraseToSource_pending, decode_source]

end SourceSpinReadout


/-! ### Executable source-backed classification under finite symmetries

The earlier orbitClassifier uses representative choice. This finite variant
is a terminating list search when the source inventory and symmetry group
are finite and source equality is decidable. The type map remains a required
input; no unknown source type or unobserved signature is invented. -/

namespace EffectiveOrbitClassifier

variable {P Γ : Type*} [Group Γ] [MulAction Γ P]
variable [Fintype Γ] [Fintype P] [DecidableEq P]

open InvariantHistory

def finiteSignature (p : P) : P → Bool :=
  fun anchor => finiteOrbitBit (Γ := Γ) anchor p

theorem finiteSignature_eq_orbitSignature (p : P) :
    finiteSignature (Γ := Γ) p = orbitSignature (Γ := Γ) p := by
  funext r
  by_cases h : SameOrbit (Γ := Γ) r p
  · have hf : finiteOrbitBit (Γ := Γ) r p = true :=
      (finiteOrbitBit_correct (Γ := Γ) r p).2 h
    have ho : orbitBit (Γ := Γ) r p = true :=
      (orbitBit_true_iff (Γ := Γ) r p).2 h
    exact hf.trans ho.symm
  · have hf : finiteOrbitBit (Γ := Γ) r p = false := by
      cases hc : finiteOrbitBit (Γ := Γ) r p with
      | false => rfl
      | true => exact False.elim (h ((finiteOrbitBit_correct (Γ := Γ) r p).1 hc))
    have ho : orbitBit (Γ := Γ) r p = false := by
      cases hc : orbitBit (Γ := Γ) r p with
      | false => rfl
      | true => exact False.elim (h ((orbitBit_true_iff (Γ := Γ) r p).1 hc))
    exact hf.trans ho.symm

def Matches (sig : P → Bool) (p : P) : Prop :=
  ∀ a : P, finiteSignature (Γ := Γ) p a = sig a

instance (sig : P → Bool) (p : P) : Decidable (Matches (Γ := Γ) sig p) := by
  unfold Matches
  infer_instance

def find (sig : P → Bool) : List P → Option P
  | [] => none
  | p :: ps => if Matches (Γ := Γ) sig p then some p else find sig ps

theorem find_sound (sig : P → Bool) (xs : List P) (q : P)
    (h : find (Γ := Γ) sig xs = some q) : Matches (Γ := Γ) sig q := by
  induction xs with
  | nil => simp [find] at h
  | cons p ps ih =>
      by_cases hp : Matches (Γ := Γ) sig p
      · have hpq : p = q := by simpa [find, hp] using h
        subst q
        exact hp
      · exact ih (by simpa [find, hp] using h)

theorem find_complete (sig : P → Bool) (xs : List P) (q : P)
    (hmem : q ∈ xs) (hm : Matches (Γ := Γ) sig q) :
    ∃ p : P, find (Γ := Γ) sig xs = some p := by
  induction xs with
  | nil => cases hmem
  | cons x xs ih =>
      by_cases hx : Matches (Γ := Γ) sig x
      · exact ⟨x, by simp [find, hx]⟩
      · have hne : q ≠ x := by
          intro h
          subst q
          exact hx hm
        have htail : q ∈ xs := (List.mem_cons.mp hmem).resolve_left hne
        obtain ⟨p, hp⟩ := ih htail hm
        exact ⟨p, by simp [find, hx, hp]⟩

def findSource (sig : P → Bool) : Option P :=
  find (Γ := Γ) sig (Finset.univ.toList)

def classify {Kind : Type*} (typeOf : P → Kind) (sig : P → Bool) : Option Kind :=
  (findSource (Γ := Γ) sig).map typeOf

/-- Every successful lookup has a genuine matching source representative. -/
theorem classify_has_source {Kind : Type*} (typeOf : P → Kind)
    (sig : P → Bool) (kind : Kind)
    (h : classify (Γ := Γ) typeOf sig = some kind) :
    ∃ p : P, Matches (Γ := Γ) sig p ∧ typeOf p = kind := by
  unfold classify at h
  cases hc : findSource (Γ := Γ) sig with
  | none => simp [hc] at h
  | some p =>
      have hf : find (Γ := Γ) sig (Finset.univ.toList) = some p := by
        simpa [findSource] using hc
      have hm : Matches (Γ := Γ) sig p :=
        find_sound (Γ := Γ) sig (Finset.univ.toList) p hf
      have ht : typeOf p = kind := by simpa [hc] using h
      exact ⟨p, hm, ht⟩

/-- A finite source inventory is completely typed when its types respect
    the declared group action. No decision procedure for Kind is required. -/
theorem classify_correct {Kind : Type*} (typeOf : P → Kind)
    (invariant : ∀ g : Γ, ∀ p : P, typeOf (g • p) = typeOf p)
    (p : P) :
    classify (Γ := Γ) typeOf (finiteSignature (Γ := Γ) p) = some (typeOf p) := by
  have mem : p ∈ (Finset.univ : Finset P).toList := by simp
  have hm : Matches (Γ := Γ) (finiteSignature (Γ := Γ) p) p := by
    intro anchor
    rfl
  obtain ⟨q, hq⟩ := find_complete (Γ := Γ)
    (finiteSignature (Γ := Γ) p) (Finset.univ.toList) p mem hm
  have hmatch : Matches (Γ := Γ) (finiteSignature (Γ := Γ) p) q :=
    find_sound (Γ := Γ) (finiteSignature (Γ := Γ) p) _ q hq
  have hsig : finiteSignature (Γ := Γ) q = finiteSignature (Γ := Γ) p := by
    funext a
    exact hmatch a
  have ht : typeOf q = typeOf p := by
    apply type_eq_of_orbitSignature_eq (Γ := Γ) typeOf invariant q p
    calc
      orbitSignature (Γ := Γ) q = finiteSignature (Γ := Γ) q :=
        (finiteSignature_eq_orbitSignature (Γ := Γ) q).symm
      _ = finiteSignature (Γ := Γ) p := hsig
      _ = orbitSignature (Γ := Γ) p :=
        finiteSignature_eq_orbitSignature (Γ := Γ) p
  simp [classify, findSource, hq, ht]

end EffectiveOrbitClassifier
end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RelationalHolonomy
