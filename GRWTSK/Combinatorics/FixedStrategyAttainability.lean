import GRWTSK.Combinatorics.ResourceAttainability

/-!
# Fixed-strategy discovery and costed witness transport

Local mathematical attribution: grwtsk contributors.
Consumers: https://github.com/grwtsk/sofic/issues/10 (A03, A07, A09, A10);
Sofic PR 1, sections 1.1, 2.5, 5.12 and 5.13.
SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact-type review, fresh kernel
replay, transitive axiom audit and independent review: NOT_RUN.

Source: math d6e760fd906bc27eb7d9701d9ec44936fe2fede5, ResourceAttainability
blob 8ec06bac1a36bb3ab4a5ea3573fbb6130802b49c; TransactionalDiscoveryContext
blob f9b09052d2492ac94e3886ca683907d8314700a2. Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
ResourcePayloadComposition already supplies exact frontier dominance and
sample coverage criteria; do not duplicate them.

A relational execution witness need not originate in a fixed generator.
The restriction below supplies a deterministic initial configuration, step
and report, and binds the accepted witness to the n-th actual iteration.
The index is a stopping point, not an input to initialization or a supplied
proof. Equal permitted views and equal target inputs give equal generated
observations, by substitution. This is not a claim that the view, executable
or model parameters themselves contain no hidden answer. Independent
provenance, protected target selection, exact target decoding, source
admission, and complete resource calibration are indispensable suppliers.
No arbitrary target-dependent advice or random seed is added here.
The fixed foundation's derivability is separate from semantic Meaning;
the qualification supplier must return an actual derivation in that
foundation. This is an abstract model, not a verified Lean proof checker.

Transport maps actual witnesses across potentially different execution
models. If e costs at most r, a valid translated witness costs at most
psi(cost(e)) <= psi(r). Compose the two witness maps, validity proofs,
and monotone distortions. A return translator on the embedded old
fragment, together with finite witness coverage in the chosen proof mode
on both sides, yields deductive conservativity by soundness in each model.
Forward transport alone cannot prove conservativity. The two directions
are intentionally not assumed for arbitrary discovery. A conservative
interpretation need not be an isomorphism of theories or an optimization.
The cost bound must include relevant construction/translation overhead;
no physical-cost or executability assertion follows from a function type.

The finite countermodel gives a valid old existential witness at zero
abstract cost, but a fixed strategy that never reports a witness cannot
discover it. A second fixed strategy reports it after one step, showing
a strict budget threshold in a toy execution model. These examples are
not measurements or a demonstration of local learned proof discovery.
-/

set_option autoImplicit false

namespace GRWTSK.ResourceAttainability

universe u v w x y

section Discovery

variable {State : Type u} {Claim : Type v} {Input : Type x} {Config : Type y}
variable {A : ExecutionModel.{u,v,w} State Claim}

/-- The strategy and permitted view are fixed before protected evaluation.
The report is a proposed base witness, not an admitted proof. -/
structure FixedStrategy (A : ExecutionModel.{u,v,w} State Claim)
    (Input : Type x) (Config : Type y) where
  view : State → Input
  init : Input → Claim → Config
  step : Config → Config
  report : Config → Option A.Witness

def iterateStep (step : Config → Config) : Nat → Config → Config
  | 0, c => c
  | n + 1, c => step (iterateStep step n c)

def FixedStrategy.output (S : FixedStrategy A Input Config)
    (I : State) (p : Claim) (n : Nat) : Option A.Witness :=
  S.report (iterateStep S.step n (S.init (S.view I) p))

/-- Hidden state not passed through the view cannot affect this generator.
The external admission decision can still differ between states. -/
theorem same_view_output (S : FixedStrategy A Input Config)
    {I J : State} (h : S.view I = S.view J) (p : Claim) (n : Nat) :
    S.output I p n = S.output J p n := by
  unfold FixedStrategy.output
  rw [h]

/-- All quantities refer to the exact generated witness and the execution
at the specified stopping point. Soundness and full cost are suppliers,
not asserted by the proposal model itself. -/
structure StrategyQualification (S : FixedStrategy A Input Config) where
  derives : Claim → Prop
  admitted : State → Claim → Nat → A.Witness → Prop
  fullCost : State → Claim → Nat → A.Witness → ResourceVec
  sound : ∀ I p n e, S.output I p n = some e →
    A.valid I .discover p e → admitted I p n e → derives p
  costDominates : ∀ I p n e, admitted I p n e →
    A.cost I .discover p e ≤ fullCost I p n e

/-- No other mode is promoted by constructing the discover-only adapter. -/
def fixedDiscoveryModel (S : FixedStrategy A Input Config)
    (Q : StrategyQualification S) : ExecutionModel.{u,v,w} State Claim where
  Witness := Nat × A.Witness
  derives := fun _ p => Q.derives p
  valid := fun I j p e => j = .discover ∧
    S.output I p e.1 = some e.2 ∧ A.valid I .discover p e.2 ∧
    Q.admitted I p e.1 e.2
  cost := fun I _ p e => Q.fullCost I p e.1 e.2
  sound := by
    intro I j p e h
    exact Q.sound I p e.1 e.2 h.2.1 h.2.2.1 h.2.2.2

theorem fixed_attainable_iff (S : FixedStrategy A Input Config)
    (Q : StrategyQualification S) (I : State) (p : Claim) (r : ResourceVec) :
    Attainable (fixedDiscoveryModel S Q) I .discover r p ↔
      ∃ n e, S.output I p n = some e ∧ A.valid I .discover p e ∧
        Q.admitted I p n e ∧ Q.fullCost I p n e ≤ r := by
  constructor
  · rintro ⟨⟨n, e⟩, hv, hc⟩
    exact ⟨n, e, hv.2.1, hv.2.2.1, hv.2.2.2, hc⟩
  · rintro ⟨n, e, ho, hv, ha, hc⟩
    exact ⟨(n, e), ⟨rfl, ho, hv, ha⟩, hc⟩

theorem fixed_discovery_subregion (S : FixedStrategy A Input Config)
    (Q : StrategyQualification S) {I : State} {p : Claim} {r : ResourceVec}
    (h : Attainable (fixedDiscoveryModel S Q) I .discover r p) :
    Attainable A I .discover r p := by
  obtain ⟨n, e, _, hv, ha, hc⟩ := (fixed_attainable_iff S Q I p r).1 h
  exact ⟨e, hv, le_trans (Q.costDominates I p n e ha) hc⟩

theorem fixed_discovery_sound (S : FixedStrategy A Input Config)
    (Q : StrategyQualification S) {I : State} {p : Claim} {r : ResourceVec}
    (h : Attainable (fixedDiscoveryModel S Q) I .discover r p) :
    Q.derives p := attainable_sound (fixedDiscoveryModel S Q) h

theorem fixed_no_other_mode (S : FixedStrategy A Input Config)
    (Q : StrategyQualification S) (I : State) (p : Claim) (r : ResourceVec)
    (j : Mode) (hj : j ≠ .discover) :
    ¬ Attainable (fixedDiscoveryModel S Q) I j r p := by
  rintro ⟨e, hv, _⟩
  exact hj hv.1

end Discovery

section Transport

universe u' v' w' u'' v'' w''
variable {S : Type u} {C : Type v} {T : Type u'} {D : Type v'}
variable {U : Type u''} {E : Type v''}

/-- Unlike same-model DistortedSimulation, this maps witnesses across
execution models and exact contextual claim identities. -/
structure WitnessTransport (A : ExecutionModel.{u,v,w} S C)
    (B : ExecutionModel.{u',v',w'} T D) where
  stateMap : S → T
  claimMap : C → D
  distortion : ResourceVec →o ResourceVec
  translate : S → Mode → C → A.Witness → B.Witness
  valid : ∀ I j p e, A.valid I j p e →
    B.valid (stateMap I) j (claimMap p) (translate I j p e)
  cost : ∀ I j p e, A.valid I j p e →
    B.cost (stateMap I) j (claimMap p) (translate I j p e) ≤
      distortion (A.cost I j p e)

variable {A : ExecutionModel.{u,v,w} S C}
  {B : ExecutionModel.{u',v',w'} T D}
  {H : ExecutionModel.{u'',v'',w''} U E}

theorem WitnessTransport.attainable (F : WitnessTransport A B)
    {I : S} {j : Mode} {p : C} {r : ResourceVec}
    (h : Attainable A I j r p) :
    Attainable B (F.stateMap I) j (F.distortion r) (F.claimMap p) := by
  obtain ⟨e, hv, hc⟩ := h
  exact ⟨F.translate I j p e, F.valid I j p e hv,
    le_trans (F.cost I j p e hv) (F.distortion.monotone hc)⟩

def WitnessTransport.comp (G : WitnessTransport B H)
    (F : WitnessTransport A B) : WitnessTransport A H where
  stateMap := G.stateMap ∘ F.stateMap
  claimMap := G.claimMap ∘ F.claimMap
  distortion := G.distortion.comp F.distortion
  translate := fun I j p e =>
    G.translate (F.stateMap I) j (F.claimMap p) (F.translate I j p e)
  valid := by
    intro I j p e hv
    exact G.valid _ _ _ _ (F.valid I j p e hv)
  cost := by
    intro I j p e hv
    exact le_trans (G.cost _ _ _ _ (F.valid I j p e hv))
      (G.distortion.monotone (F.cost I j p e hv))

/-- Return transport is scoped to the old fragment, rather than pretending
every new-language judgment has an inverse old-language image. -/
structure OldFragmentReturn (F : WitnessTransport A B) where
  distortion : ResourceVec →o ResourceVec
  translate : S → Mode → C → B.Witness → A.Witness
  valid : ∀ I j p e, B.valid (F.stateMap I) j (F.claimMap p) e →
    A.valid I j p (translate I j p e)
  cost : ∀ I j p e, B.valid (F.stateMap I) j (F.claimMap p) e →
    A.cost I j p (translate I j p e) ≤
      distortion (B.cost (F.stateMap I) j (F.claimMap p) e)

theorem OldFragmentReturn.attainable {F : WitnessTransport A B}
    (R : OldFragmentReturn F) {I : S} {j : Mode} {p : C}
    {r : ResourceVec}
    (h : Attainable B (F.stateMap I) j r (F.claimMap p)) :
    Attainable A I j (R.distortion r) p := by
  obtain ⟨e, hv, hc⟩ := h
  exact ⟨R.translate I j p e, R.valid I j p e hv,
    le_trans (R.cost I j p e hv) (R.distortion.monotone hc)⟩

def ConservativeOn (F : WitnessTransport A B) : Prop :=
  Function.Injective F.claimMap ∧
    ∀ I p, A.derives I p ↔ B.derives (F.stateMap I) (F.claimMap p)

/-- Proof-mode coverage, not discovery completeness, is sufficient for
conservativity on the embedded fragment. The actual context-preserving
proof translations and finite coverage must be supplied by the consumer. -/
theorem conservative_of_covered_transport (F : WitnessTransport A B)
    (R : OldFragmentReturn F) (j : Mode)
    (injective : Function.Injective F.claimMap)
    (oldCoverage : ∀ I p, A.derives I p → ∃ e, A.valid I j p e)
    (newCoverage : ∀ I p, B.derives (F.stateMap I) (F.claimMap p) →
      ∃ e, B.valid (F.stateMap I) j (F.claimMap p) e) :
    ConservativeOn F := by
  refine ⟨injective, ?_⟩
  intro I p
  constructor
  · intro hp
    obtain ⟨e, he⟩ := oldCoverage I p hp
    exact B.sound _ _ _ _ (F.valid I j p e he)
  · intro hp
    obtain ⟨e, he⟩ := newCoverage I p hp
    exact A.sound _ _ _ _ (R.valid I j p e he)

end Transport

namespace FiniteControl

/-- A deliberately tiny abstract proof relation. Only true is derivable;
the witness is the Boolean answer. No resource calibration is claimed. -/
def base : ExecutionModel Unit Bool where
  Witness := Bool
  derives := fun _ p => p = true
  valid := fun _ j p e => j = .discover ∧ p = true ∧ e = p
  cost := fun _ _ _ _ => 0
  sound := by
    intro I j p e h
    exact h.2.1

def never : FixedStrategy base Unit Unit where
  view := id
  init := fun _ _ => ()
  step := id
  report := fun _ => none

def oneStep : FixedStrategy base Unit Bool where
  view := id
  init := fun _ _ => false
  step := fun _ => true
  report := fun b => if b then some true else none

def toyQualification {Config : Type}
    (S : FixedStrategy base Unit Config) : StrategyQualification S where
  derives := fun p => p = true
  admitted := fun _ p _ e => p = true ∧ e = p
  fullCost := fun _ _ n _ => fun _ => n
  sound := by
    intro I p n e ho hv ha
    exact hv.2.1
  costDominates := by
    intro I p n e ha
    intro k
    exact Nat.zero_le n

theorem existential_not_fixed_discovery :
    Attainable base () .discover 0 true ∧
      ¬ Attainable (fixedDiscoveryModel never (toyQualification never))
        () .discover 0 true := by
  constructor
  · exact ⟨true, ⟨rfl, rfl, rfl⟩, le_rfl⟩
  · intro h
    obtain ⟨n, e, ho, _, _, _⟩ :=
      (fixed_attainable_iff never (toyQualification never) () true 0).1 h
    change (none : Option Bool) = some e at ho
    cases ho

theorem one_step_attainable :
    Attainable (fixedDiscoveryModel oneStep (toyQualification oneStep))
      () .discover (fun _ => 1) true := by
  apply (fixed_attainable_iff oneStep (toyQualification oneStep) () true
    (fun _ => 1)).2
  exact ⟨1, true, rfl, ⟨rfl, rfl, rfl⟩, ⟨rfl, rfl⟩, le_rfl⟩

theorem one_step_not_zero :
    ¬ Attainable (fixedDiscoveryModel oneStep (toyQualification oneStep))
      () .discover 0 true := by
  intro h
  obtain ⟨n, e, ho, _, _, hc⟩ :=
    (fixed_attainable_iff oneStep (toyQualification oneStep) () true 0).1 h
  have hn : n ≤ 0 := hc 0
  have hz : n = 0 := Nat.eq_zero_of_le_zero hn
  subst n
  change (none : Option Bool) = some e at ho
  cases ho

end FiniteControl
end GRWTSK.ResourceAttainability
