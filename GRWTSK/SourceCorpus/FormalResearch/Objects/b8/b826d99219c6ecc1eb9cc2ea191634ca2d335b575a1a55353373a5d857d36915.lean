import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NotionDescent
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ProofHorizon
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Trust
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Assumptions
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Resources
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NoGo

/-!
# Information obstructions and authority boundaries

An information obstruction identifies states whose target values differ. It
prevents every classifier on that quotient, independently of computability.
The computational no-go theorems instead restrict effective classifiers even
when the representation retains the input. Neither kind of obstruction is a
proof-search status, and information sufficiency alone proves no target truth.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Opposite truth values inside one observation class obstruct predicate determination. -/
theorem not_determinesPredicateAt_of_opposite {Object Test Value : Type*}
    {policy : ObservationPolicy Object Test Value} {budget : ℕ} {target : Object → Prop}
    {x y : Object} (same : ObservationallyEquivalent policy budget x y)
    (positive : target x) (negative : ¬target y) :
    ¬DeterminesPredicateAt policy budget target :=
  fun determines => negative ((determines same).mp positive)

/-- Distinct function values inside one observation class obstruct determination. -/
theorem not_determinesAt_of_separated {Object Test Value Result : Type*}
    {policy : ObservationPolicy Object Test Value} {budget : ℕ} {target : Object → Result}
    {x y : Object} (same : ObservationallyEquivalent policy budget x y)
    (separated : target x ≠ target y) : ¬DeterminesAt policy budget target :=
  fun determines => separated (determines same)

/-- A generic obstruction on the existing observation quotient blocks determination. -/
theorem not_determinesAt_of_descent_obstruction {Object Test Value Result : Type*}
    {policy : ObservationPolicy Object Test Value} {budget : ℕ} {target : Object → Result}
    (obstruction : DescentObstruction (Quotient.mk (notionSetoid policy budget)) target) :
    ¬DeterminesAt policy budget target := by
  apply not_determinesAt_of_separated (Quotient.exact obstruction.sameCarrier)
  exact obstruction.targetSeparated

/-- No quotient-valued input alone can recover an undetermined function target. -/
theorem no_quotient_classifier_of_not_determines {Object Test Value Result : Type*}
    {policy : ObservationPolicy Object Test Value} {budget : ℕ} {target : Object → Result}
    (undetermined : ¬DeterminesAt policy budget target) :
    ¬∃ classifier : notionQuotient policy budget → Result,
      ∀ x, classifier (Quotient.mk (notionSetoid policy budget) x) = target x := by
  rintro ⟨classifier, reproduces⟩
  apply undetermined
  intro x y same
  rw [← reproduces x, ← reproduces y]
  exact congrArg classifier (Quotient.sound same)

/-- Even a proposition-valued classifier cannot repair lost predicate information. -/
theorem no_quotient_predicate_classifier_of_not_determines {Object Test Value : Type*}
    {policy : ObservationPolicy Object Test Value} {budget : ℕ} {target : Object → Prop}
    (undetermined : ¬DeterminesPredicateAt policy budget target) :
    ¬∃ classifier : notionQuotient policy budget → Prop,
      ∀ x, classifier (Quotient.mk (notionSetoid policy budget) x) ↔ target x := by
  rintro ⟨classifier, reproduces⟩
  apply undetermined
  intro x y same
  have equal := congrArg classifier (Quotient.sound same)
  exact (reproduces x).symm.trans ((Iff.of_eq equal).trans (reproduces y))

/-- Transport of a checked predicate consumes local soundness and exact semantic binding. -/
theorem local_descent_transports_determined_predicate {Object Test Value Certificate : Type*}
    {policy : ObservationPolicy Object Test Value} {budget : ℕ} {target : Object → Prop}
    {x y : Object} (determines : DeterminesPredicateAt policy budget target)
    (same : ObservationallyEquivalent policy budget x y)
    (jurisdiction : LocalJurisdiction Certificate) (result : LocalReplayResult Certificate)
    (meaning : jurisdiction.statement ↔ target x)
    (checked : SuccessfulDescent jurisdiction result) : target y :=
  (determines same).mp (meaning.mp (successfulDescent_statement jurisdiction result checked))

/-- Identity retains halting information, yet existing effective observation no-go still applies. -/
theorem halting_information_sufficient_but_effective_classifier_impossible
    (input : ℕ) (observe : Nat.Partrec.Code → ℕ) (aggregate : ℕ → Bool)
    (observeComputable : Computable observe) (aggregateComputable : Computable aggregate) :
    PredicateDescendsThrough id (ProgramHalts input) ∧
      ¬(∀ program, aggregate (observe program) = true ↔ ProgramHalts input program) :=
  ⟨predicateDescendsThrough_id _,
    finite_observation_halting_no_go input observe aggregate observeComputable aggregateComputable⟩

namespace InformationNoGoFixture

/-- A finite observer that erases the Boolean state. -/
def erasedPolicy : ObservationPolicy Bool Unit Bool where
  cost := fun _ => 0
  observe := fun _ _ => false

/-- A finite observer that retains the entire Boolean state. -/
def identityPolicy : ObservationPolicy Bool Unit Bool where
  cost := fun _ => 0
  observe := fun _ x => x

/-- The erasing observer reports equal observations for opposite Boolean states. -/
theorem erased_states_equivalent : ObservationallyEquivalent erasedPolicy 0 true false := by
  intro test affordable
  rfl

/-- An explicit predicate obstruction uses two states in the same observation fiber. -/
def erasedPredicateObstruction : PredicateDescentObstruction
    (Quotient.mk (notionSetoid erasedPolicy 0)) (fun x : Bool => x = true) where
  left := true
  right := false
  sameCarrier := Quotient.sound erased_states_equivalent
  targetSeparated := by simp

/-- Opposite truth in the erasing observer's one class is genuinely undetermined. -/
theorem erased_predicate_undetermined :
    ¬DeterminesPredicateAt erasedPolicy 0 (fun x : Bool => x = true) :=
  not_determinesPredicateAt_of_opposite erased_states_equivalent rfl (by decide)

/-- The predicate obstruction also rules out generic descent through that quotient. -/
theorem erased_predicate_not_descends :
    ¬PredicateDescendsThrough (Quotient.mk (notionSetoid erasedPolicy 0))
      (fun x : Bool => x = true) :=
  predicate_descent_obstruction_not_descends erasedPredicateObstruction

/-- Full information can coexist with an actually unresolved finite proof aperture. -/
theorem information_sufficient_with_unresolved_aperture :
    DeterminesAt identityPolicy 0 (id : Bool → Bool) ∧
      LocallyUnresolved emptyProofAperture := by
  refine ⟨?_, emptyProofAperture_unresolved⟩
  intro x y same
  exact same () (by decide)

/-- Knowing the truth value of a predicate does not make that predicate true. -/
theorem information_sufficiency_does_not_imply_truth :
    ¬(∀ (target : Bool → Prop), DeterminesPredicateAt identityPolicy 0 target → target true) := by
  intro inference
  exact inference (fun _ => False) (fun {_ _} _ => Iff.rfl)

/-- A named finite carrier whose actual comparison succeeds while retaining no target truth. -/
def erasedNotion : FiniteNotion Bool Unit Bool where
  sourceIdentity := "information-no-go/erased-boolean/v1"
  policy := erasedPolicy
  tests := {()}

/-- Provenance, successful observation, and cheaper measured resources supply no theorem rule. -/
theorem observation_provenance_resources_do_not_imply_authority :
    ¬(∀ (proposition : Prop) (observation : ExternalObservation)
      (notion : FiniteNotion Bool Unit Bool) (before after : Resources.ResourceVector),
      observation.provenance.Nonempty → notion.compare 0 true false = true →
        Resources.ComponentwiseLE after before → proposition) := by
  intro inference
  apply inference False
    ⟨"external-interface", {"immutable-provenance"}, "reported success"⟩
    erasedNotion (fun _ => 1) (fun _ => 0)
  · exact ⟨"immutable-provenance", Finset.mem_singleton_self _⟩
  · apply (FiniteNotion.compare_eq_true _ _ _ _).mpr
    intro test present affordable
    rfl
  · intro coordinate
    exact Nat.zero_le _

end InformationNoGoFixture

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
