-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuotientCompatibleInterpreter.Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.QuotientCompatibleInterpreter.Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5","mathematical_subject":"Logic.Foundations","original_sha256":"3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/InterpreterExactness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CordTheory.Basic

/-!
# Quotient-compatible interpreter exactness

This module separates carrier capacity from exact interpretation.  An
interpreter has an explicit partial domain, source and target identity are
setoids, and the quotient map is available only because domain saturation and
extensionality are carried as proofs.  Undefined, collision, and omission
defects are constructive witnesses; their absence, rather than a count or a
name match, characterizes level exactness.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.QuotientCompatibleInterpreter.Variant3962676004a15556f18e058a6a3e950c7dbf0bfaf7f97bb64e4f6d07e51256f5

namespace Cord

universe u v w

def interpreterExactnessTheoryIdentifier : String :=
  "CORD-INTERPRETER-EXACTNESS-1"

def interpreterExactnessTheoryVersion : String := "0.2.0"

/-- A partial interpreter whose domain and behavior respect authorized identity. -/
structure QuotientCompatibleInterpreter
    (X : Type u) (Y : Type v) [Setoid X] [Setoid Y] where
  dom : Set X
  eval : ∀ x, x ∈ dom → Y
  domainSaturated :
    ∀ {x x'}, x ≈ x' → (x ∈ dom ↔ x' ∈ dom)
  extensional :
    ∀ {x x'} (hx : x ∈ dom) (hx' : x' ∈ dom),
      x ≈ x' → eval x hx ≈ eval x' hx'

namespace QuotientCompatibleInterpreter

variable {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]

/-- The inherited identity relation on the certified partial domain. -/
def domainSetoid (interpreter : QuotientCompatibleInterpreter X Y) :
    Setoid {x : X // x ∈ interpreter.dom} where
  r left right := left.1 ≈ right.1
  iseqv := ⟨
    fun value => Setoid.refl value.1,
    fun relation => Setoid.symm relation,
    fun leftToMiddle middleToRight =>
      Setoid.trans leftToMiddle middleToRight⟩

/-- The quotient-level interpretation induced by extensionality. -/
def inducedQuotientInterpreter
    (interpreter : QuotientCompatibleInterpreter X Y) :
    Quotient interpreter.domainSetoid →
      Quotient (inferInstance : Setoid Y) :=
  Quotient.lift
    (fun input =>
      Quotient.mk _ (interpreter.eval input.1 input.2))
    (fun left right related =>
      Quotient.sound
        (interpreter.extensional left.2 right.2 related))

/-- Totality permits the same interpretation to be induced on the full source quotient. -/
def totalQuotientInterpreter
    (interpreter : QuotientCompatibleInterpreter X Y)
    (total : ∀ x, x ∈ interpreter.dom) :
    Quotient (inferInstance : Setoid X) →
      Quotient (inferInstance : Setoid Y) :=
  Quotient.lift
    (fun input => Quotient.mk _ (interpreter.eval input (total input)))
    (fun left right related =>
      Quotient.sound
        (interpreter.extensional (total left) (total right) related))

/-- The realized behavioral kernel on defined source representatives. -/
def kernelSetoid
    (interpreter : QuotientCompatibleInterpreter X Y) :
    Setoid {x : X // x ∈ interpreter.dom} where
  r left right :=
    interpreter.eval left.1 left.2 ≈
      interpreter.eval right.1 right.2
  iseqv := ⟨
    fun value => Setoid.refl (interpreter.eval value.1 value.2),
    fun relation => Setoid.symm relation,
    fun leftToMiddle middleToRight =>
      Setoid.trans leftToMiddle middleToRight⟩

/-- The quotient of authorized domain classes projects onto behavioral classes. -/
def kernelProjection
    (interpreter : QuotientCompatibleInterpreter X Y) :
    Quotient interpreter.domainSetoid →
      Quotient interpreter.kernelSetoid :=
  Quotient.lift
    (fun input => Quotient.mk _ input)
    (fun left right related =>
      Quotient.sound
        (interpreter.extensional left.2 right.2 related))

/-- The target quotient classes actually reached by the designated interpreter. -/
def RealizedImage
    (interpreter : QuotientCompatibleInterpreter X Y) :=
  {output : Quotient (inferInstance : Setoid Y) //
    ∃ input : Quotient interpreter.domainSetoid,
      interpreter.inducedQuotientInterpreter input = output}

/-- Behavioral kernel classes map canonically into the realized image. -/
def kernelToRealizedImage
    (interpreter : QuotientCompatibleInterpreter X Y) :
    Quotient interpreter.kernelSetoid → interpreter.RealizedImage :=
  Quotient.lift
    (fun input => ⟨
      Quotient.mk _ (interpreter.eval input.1 input.2),
      ⟨Quotient.mk interpreter.domainSetoid input, rfl⟩⟩)
    (fun _left _right related =>
      Subtype.ext (Quotient.sound related))

end QuotientCompatibleInterpreter

/-- A source value excluded from the interpreter's certified domain. -/
structure UndefinedDefect
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) where
  input : X
  undefined : input ∉ interpreter.dom

/-- Two authorizedly distinct domain values identified by interpretation. -/
structure CollisionDefect
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) where
  left : X
  right : X
  leftDefined : left ∈ interpreter.dom
  rightDefined : right ∈ interpreter.dom
  distinct : ¬ left ≈ right
  collided :
    interpreter.eval left leftDefined ≈
      interpreter.eval right rightDefined

/-- A target identity class with no represented source value. -/
structure OmissionDefect
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) where
  output : Y
  omitted : ∀ (input : X) (defined : input ∈ interpreter.dom),
    ¬ interpreter.eval input defined ≈ output

namespace QuotientCompatibleInterpreter

variable {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]

def Total (interpreter : QuotientCompatibleInterpreter X Y) : Prop :=
  ∀ input, input ∈ interpreter.dom

def AuthorizedKernelAgreement
    (interpreter : QuotientCompatibleInterpreter X Y) : Prop :=
  ∀ (left right : X)
    (leftDefined : left ∈ interpreter.dom)
    (rightDefined : right ∈ interpreter.dom),
    interpreter.eval left leftDefined ≈
        interpreter.eval right rightDefined →
      left ≈ right

def Coverage (interpreter : QuotientCompatibleInterpreter X Y) : Prop :=
  ∀ output : Y, ∃ (input : X) (defined : input ∈ interpreter.dom),
    interpreter.eval input defined ≈ output

end QuotientCompatibleInterpreter

/-- Exactness at one level is totality, kernel agreement, and coverage together. -/
def LevelExact
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) : Prop :=
  interpreter.Total ∧
    interpreter.AuthorizedKernelAgreement ∧
    interpreter.Coverage

/--
Semantic exactness is structural level exactness together with agreement with
one designated quotient-level specification.  Bijection of authorized
quotient classes alone does not choose, or validate, that specification.
-/
structure SemanticallyExact
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y)
    (specification :
      Quotient (inferInstance : Setoid X) →
        Quotient (inferInstance : Setoid Y)) : Prop where
  levelExact : LevelExact interpreter
  realizesSpecification :
    interpreter.totalQuotientInterpreter levelExact.1 = specification

/-! ## Bounded observational defect -/

/--
Pointwise observational error bounded by an explicit real-valued budget.
Positive-budget closeness is deliberately not installed as a `Setoid`: such
closeness need not be transitive at a fixed budget.
-/
def ObservationalDefectWithin
    {Input : Type u} {Observation : Type v}
    [PseudoMetricSpace Observation]
    (direct summarized : Input → Observation)
    (budget : Input → ℝ) : Prop :=
  ∀ input, dist (direct input) (summarized input) ≤ budget input

/-- Sequential observational defects accumulate additively. -/
theorem observational_defect_compose
    {Input : Type u} {Observation : Type v}
    [PseudoMetricSpace Observation]
    {direct middle summarized : Input → Observation}
    {firstBudget secondBudget : Input → ℝ}
    (first : ObservationalDefectWithin direct middle firstBudget)
    (second : ObservationalDefectWithin middle summarized secondBudget) :
    ObservationalDefectWithin direct summarized
      (fun input => firstBudget input + secondBudget input) := by
  intro input
  calc
    dist (direct input) (summarized input) ≤
        dist (direct input) (middle input) +
          dist (middle input) (summarized input) :=
      dist_triangle _ _ _
    _ ≤ firstBudget input + secondBudget input :=
      add_le_add (first input) (second input)

/-- A zero observational budget forces zero observational distance. -/
theorem observational_defect_zero
    {Input : Type u} {Observation : Type v}
    [PseudoMetricSpace Observation]
    {direct summarized : Input → Observation}
    (bounded : ObservationalDefectWithin direct summarized (fun _ => 0)) :
    ∀ input, dist (direct input) (summarized input) = 0 := by
  intro input
  exact le_antisymm (bounded input) dist_nonneg

/-! ## Associative fragment summaries with separate execution soundness -/

/--
An associative algebra of fragment summaries together with concrete fragment
and summary execution.  Associativity is only a summary-algebra law; the two
soundness predicates below separately connect summaries to execution.
-/
structure AssociativeFragmentExecution
    (Fragment : Type u) (Summary : Type v) (State : Type w) where
  summarize : Fragment → Summary
  combine : Summary → Summary → Summary
  combine_assoc : ∀ first second third,
    combine (combine first second) third =
      combine first (combine second third)
  executeFragment : Fragment → State → State
  executeSummary : Summary → State → State

namespace AssociativeFragmentExecution

variable {Fragment : Type u} {Summary : Type v} {State : Type w}

/-- One fragment's summary realizes that fragment's concrete execution. -/
def StepSummarySound
    (execution : AssociativeFragmentExecution Fragment Summary State)
    (fragment : Fragment) : Prop :=
  ∀ state,
    execution.executeSummary (execution.summarize fragment) state =
      execution.executeFragment fragment state

/-- Combined summaries execute in the declared left-to-right sequential order. -/
def SequentialSummarySound
    (execution : AssociativeFragmentExecution Fragment Summary State) : Prop :=
  ∀ first second state,
    execution.executeSummary (execution.combine first second) state =
      execution.executeSummary second
        (execution.executeSummary first state)

/--
If combination is sequentially sound and both step summaries are sound, their
combined summary exactly realizes the corresponding sequential execution.
-/
theorem sound_step_summaries_compose
    (execution : AssociativeFragmentExecution Fragment Summary State)
    {first second : Fragment}
    (sequential : execution.SequentialSummarySound)
    (firstSound : execution.StepSummarySound first)
    (secondSound : execution.StepSummarySound second)
    (state : State) :
    execution.executeSummary
        (execution.combine
          (execution.summarize first) (execution.summarize second)) state =
      execution.executeFragment second
        (execution.executeFragment first state) := by
  calc
    execution.executeSummary
        (execution.combine
          (execution.summarize first) (execution.summarize second)) state =
        execution.executeSummary (execution.summarize second)
          (execution.executeSummary (execution.summarize first) state) :=
      sequential _ _ _
    _ = execution.executeSummary (execution.summarize second)
          (execution.executeFragment first state) := by
      rw [firstSound state]
    _ = execution.executeFragment second
          (execution.executeFragment first state) :=
      secondSound _

end AssociativeFragmentExecution

/--
A constructive inverse of the designated quotient interpreter.  Both
composition laws are fields: a one-sided section or retraction cannot inhabit
this structure.
-/
structure EffectiveInverse
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) where
  total : interpreter.Total
  inverse :
    Quotient (inferInstance : Setoid Y) →
      Quotient (inferInstance : Setoid X)
  inverseAfterInterpret : ∀ input,
    inverse (interpreter.totalQuotientInterpreter total input) = input
  interpretAfterInverse : ∀ output,
    interpreter.totalQuotientInterpreter total (inverse output) = output

/-- Effective exactness is level exactness plus a supplied two-sided inverse. -/
structure EffectiveExact
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) where
  levelExact : LevelExact interpreter
  effectiveInverse : EffectiveInverse interpreter

/--
Evidence required to strengthen one effective designated interpreter to a
reflectively certified claim over its declared scope.  Concrete tower maps and
all-level quantification live in `ExactReflectiveEvaluatorTower`; this carrier
keeps the independent obligations and blocking-residual boundary explicit.
-/
structure ReflectivelyCertifiedExact
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) where
  effectiveExact : EffectiveExact interpreter
  quotationIdentityStability : Prop
  quotationIdentityStabilityEvidence : quotationIdentityStability
  semanticLiftIdentityStability : Prop
  semanticLiftIdentityStabilityEvidence : semanticLiftIdentityStability
  naturality : Prop
  naturalityEvidence : naturality
  representedInterpreterRealization : Prop
  representedInterpreterRealizationEvidence : representedInterpreterRealization
  gradePreservation : Prop
  gradePreservationEvidence : gradePreservation
  blockingResidual : ResidualId → Prop
  noBlockingResidual : ∀ residual, ¬ blockingResidual residual

/--
A separately admitted choice of raw representative.  Quotient exactness and
an effective quotient inverse do not themselves return raw syntax or files.
-/
structure CanonicalRepresentativeSection
    (X : Type u) [Setoid X] where
  representative : Quotient (inferInstance : Setoid X) → X
  projectsToClass : ∀ quotientClass,
    Quotient.mk (inferInstance : Setoid X)
        (representative quotientClass) = quotientClass

namespace EffectiveExact

variable {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]

/-- The supplied effective inverse packages the designated map as an equivalence. -/
def quotientEquivalence
    {interpreter : QuotientCompatibleInterpreter X Y}
    (exactness : EffectiveExact interpreter) :
    Quotient (inferInstance : Setoid X) ≃
      Quotient (inferInstance : Setoid Y) where
  toFun := interpreter.totalQuotientInterpreter
    exactness.effectiveInverse.total
  invFun := exactness.effectiveInverse.inverse
  left_inv := exactness.effectiveInverse.inverseAfterInterpret
  right_inv := exactness.effectiveInverse.interpretAfterInverse

/-- Raw representative readback is available only after a section is supplied. -/
def representativeReadback
    {interpreter : QuotientCompatibleInterpreter X Y}
    (exactness : EffectiveExact interpreter)
    (representatives : CanonicalRepresentativeSection X) :
    Quotient (inferInstance : Setoid Y) → X :=
  fun output =>
    representatives.representative
      (exactness.effectiveInverse.inverse output)

/-- Representative readback projects to the selected inverse quotient class. -/
theorem representative_readback_projects_to_inverse_class
    {interpreter : QuotientCompatibleInterpreter X Y}
    (exactness : EffectiveExact interpreter)
    (representatives : CanonicalRepresentativeSection X)
    (output : Quotient (inferInstance : Setoid Y)) :
    Quotient.mk (inferInstance : Setoid X)
        (exactness.representativeReadback representatives output) =
      exactness.effectiveInverse.inverse output := by
  exact representatives.projectsToClass _

end EffectiveExact

/-- Equality of quotient capacities is deliberately weaker than interpreter exactness. -/
def CapacityParity
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (_interpreter : QuotientCompatibleInterpreter X Y) : Prop :=
  Nonempty
    (Quotient (inferInstance : Setoid X) ≃
      Quotient (inferInstance : Setoid Y))

/-- Equivalent domain representatives receive the same target quotient value. -/
theorem quotient_interpreter_well_defined
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y)
    (left right : {x : X // x ∈ interpreter.dom})
    (related : left.1 ≈ right.1) :
    interpreter.inducedQuotientInterpreter
        (Quotient.mk interpreter.domainSetoid left) =
      interpreter.inducedQuotientInterpreter
        (Quotient.mk interpreter.domainSetoid right) := by
  exact Quotient.sound
    (interpreter.extensional left.2 right.2 related)

/--
The induced interpreter factors through its behavioral kernel and realized
image; the final subtype projection does not assert target coverage.
-/
theorem canonical_behavioral_factorization
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y)
    (input : Quotient interpreter.domainSetoid) :
    (interpreter.kernelToRealizedImage
        (interpreter.kernelProjection input)).1 =
      interpreter.inducedQuotientInterpreter input := by
  refine Quotient.inductionOn input ?_
  intro representative
  rfl

/-- The behavioral-kernel quotient is exactly the realized image, not the full target. -/
theorem kernel_to_realized_image_bijective
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) :
    Function.Bijective interpreter.kernelToRealizedImage := by
  constructor
  · intro left right sameImage
    refine Quotient.inductionOn₂ left right ?_ sameImage
    intro leftRepresentative rightRepresentative sameRepresentativeImage
    apply Quotient.sound
    exact @Quotient.exact Y (inferInstance : Setoid Y)
      _ _ (congrArg Subtype.val sameRepresentativeImage)
  · rintro ⟨output, input, realized⟩
    refine Quotient.inductionOn input ?_ realized
    intro representative factorization
    refine ⟨Quotient.mk interpreter.kernelSetoid representative, ?_⟩
    apply Subtype.ext
    exact factorization

/-- Kernel agreement is exactly injectivity of the induced quotient interpreter. -/
theorem authorized_kernel_agreement_iff_injective
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) :
    interpreter.AuthorizedKernelAgreement ↔
      Function.Injective interpreter.inducedQuotientInterpreter := by
  constructor
  · intro kernelAgreement left right sameOutput
    refine Quotient.inductionOn₂ left right ?_ sameOutput
    intro leftRepresentative rightRepresentative quotientEquality
    apply Quotient.sound
    apply kernelAgreement
      leftRepresentative.1 rightRepresentative.1
      leftRepresentative.2 rightRepresentative.2
    exact Quotient.exact quotientEquality
  · intro quotientInjective left right leftDefined rightDefined sameOutput
    have quotientEquality :
        Quotient.mk interpreter.domainSetoid ⟨left, leftDefined⟩ =
          Quotient.mk interpreter.domainSetoid ⟨right, rightDefined⟩ :=
      quotientInjective (Quotient.sound sameOutput)
    exact @Quotient.exact _ interpreter.domainSetoid
      ⟨left, leftDefined⟩ ⟨right, rightDefined⟩ quotientEquality

/-- Coverage holds exactly when no omission witness exists. -/
theorem coverage_iff_omission_defect_empty
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) :
    interpreter.Coverage ↔ ¬ Nonempty (OmissionDefect interpreter) := by
  classical
  constructor
  · intro coverage ⟨defect⟩
    rcases coverage defect.output with ⟨input, defined, represented⟩
    exact defect.omitted input defined represented
  · intro noDefect output
    by_contra omitted
    apply noDefect
    exact ⟨{
      output := output
      omitted := fun input defined represented =>
        omitted ⟨input, defined, represented⟩
    }⟩

/-- Totality holds exactly when no undefined-input witness exists. -/
theorem totality_iff_undefined_defect_empty
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) :
    interpreter.Total ↔ ¬ Nonempty (UndefinedDefect interpreter) := by
  classical
  constructor
  · intro total ⟨defect⟩
    exact defect.undefined (total defect.input)
  · intro noDefect input
    by_contra undefined
    exact noDefect ⟨{ input := input, undefined := undefined }⟩

private theorem kernel_agreement_iff_collision_defect_empty
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) :
    interpreter.AuthorizedKernelAgreement ↔
      ¬ Nonempty (CollisionDefect interpreter) := by
  classical
  constructor
  · intro agreement ⟨defect⟩
    exact defect.distinct
      (agreement defect.left defect.right defect.leftDefined
        defect.rightDefined defect.collided)
  · intro noDefect left right leftDefined rightDefined collided
    by_contra distinct
    exact noDefect ⟨{
      left := left
      right := right
      leftDefined := leftDefined
      rightDefined := rightDefined
      distinct := distinct
      collided := collided
    }⟩

/-- Exactness is equivalent to simultaneous emptiness of all three defect kinds. -/
theorem level_exact_iff_defects_empty
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y) :
    LevelExact interpreter ↔
      (¬ Nonempty (UndefinedDefect interpreter)) ∧
      (¬ Nonempty (CollisionDefect interpreter)) ∧
      (¬ Nonempty (OmissionDefect interpreter)) := by
  constructor
  · intro exactness
    exact ⟨
      (totality_iff_undefined_defect_empty interpreter).mp exactness.1,
      (kernel_agreement_iff_collision_defect_empty interpreter).mp exactness.2.1,
      (coverage_iff_omission_defect_empty interpreter).mp exactness.2.2⟩
  · intro defectFree
    exact ⟨
      (totality_iff_undefined_defect_empty interpreter).mpr defectFree.1,
      (kernel_agreement_iff_collision_defect_empty interpreter).mpr defectFree.2.1,
      (coverage_iff_omission_defect_empty interpreter).mpr defectFree.2.2⟩

/-- Level exactness induces an equivalence of the authorized quotient capacities. -/
theorem level_exact_implies_capacity_parity
    {X : Type u} {Y : Type v} [Setoid X] [Setoid Y]
    (interpreter : QuotientCompatibleInterpreter X Y)
    (exactness : LevelExact interpreter) :
    CapacityParity interpreter := by
  let quotientMap := interpreter.totalQuotientInterpreter exactness.1
  have injective : Function.Injective quotientMap := by
    intro left right sameOutput
    refine Quotient.inductionOn₂ left right ?_ sameOutput
    intro leftRepresentative rightRepresentative quotientEquality
    apply Quotient.sound
    apply exactness.2.1
      leftRepresentative rightRepresentative
      (exactness.1 leftRepresentative) (exactness.1 rightRepresentative)
    exact Quotient.exact quotientEquality
  have surjective : Function.Surjective quotientMap := by
    intro output
    refine Quotient.inductionOn output ?_
    intro outputRepresentative
    rcases exactness.2.2 outputRepresentative with
      ⟨input, inputDefined, represented⟩
    refine ⟨Quotient.mk _ input, ?_⟩
    exact Quotient.sound represented
  exact ⟨Equiv.ofBijective quotientMap ⟨injective, surjective⟩⟩

/-! ## Bounded-scope discipline -/

/-- Exactness through a finite level is a bounded proposition. -/
def ExactThrough (exactAtLevel : Nat → Prop) (highestLevel : Nat) : Prop :=
  ∀ level, level ≤ highestLevel → exactAtLevel level

/-- An unbounded tower claim quantifies independently over every level. -/
def ExactAtAllLevels (exactAtLevel : Nat → Prop) : Prop :=
  ∀ level, exactAtLevel level

/-- A finite certificate keeps the first unproved frontier explicit. -/
structure BoundedExactnessCertificate (exactAtLevel : Nat → Prop) where
  highestLevel : Nat
  exactThrough : ExactThrough exactAtLevel highestLevel
  residualFrontier : ResidualId

/-- Finite prefix exactness cannot in general be promoted to an all-level theorem. -/
theorem finite_prefix_exactness_does_not_imply_all_levels :
    ∃ exactAtLevel : Nat → Prop,
      ExactThrough exactAtLevel 0 ∧ ¬ ExactAtAllLevels exactAtLevel := by
  refine ⟨(fun level => level = 0), ?_, ?_⟩
  · intro level bounded
    omega
  · intro allLevels
    have := allLevels 1
    omega

/-! ## Constructive natural-number counterexamples -/

/-- The equality identity policy used only by the explicit countermodels below. -/
def equalitySetoid (α : Type u) : Setoid α where
  r := Eq
  iseqv := ⟨Eq.refl, Eq.symm, Eq.trans⟩

section BooleanSemanticCounterexample

local instance boolSemanticIdentity : Setoid Bool := equalitySetoid Bool

private def booleanNegationInterpreter :
    QuotientCompatibleInterpreter Bool Bool where
  dom := Set.univ
  eval := fun input _defined => !input
  domainSaturated := by
    intro left right _related
    constructor <;> intro _ <;> exact Set.mem_univ _
  extensional := by
    intro left right _ _ related
    cases related
    rfl

private theorem booleanNegationLevelExact :
    LevelExact booleanNegationInterpreter := by
  refine ⟨?_, ?_, ?_⟩
  · intro input
    exact Set.mem_univ input
  · intro left right _leftDefined _rightDefined sameOutput
    change (!left) = (!right) at sameOutput
    change left = right
    cases left <;> cases right <;> simp_all
  · intro output
    refine ⟨!output, Set.mem_univ _, ?_⟩
    change (!(!output)) = output
    cases output <;> rfl

private def booleanIdentitySpecification :
    Quotient (inferInstance : Setoid Bool) →
      Quotient (inferInstance : Setoid Bool) :=
  id

/--
A quotient bijection need not realize the designated semantics: Boolean
negation is level-exact but does not realize the identity specification.
-/
theorem level_exact_does_not_determine_designated_semantics :
    ∃ interpreter : QuotientCompatibleInterpreter Bool Bool,
      LevelExact interpreter ∧
        ¬ SemanticallyExact interpreter booleanIdentitySpecification := by
  refine ⟨booleanNegationInterpreter, booleanNegationLevelExact, ?_⟩
  intro semanticExact
  have sameAtFalse := congrFun semanticExact.realizesSpecification
    (Quotient.mk _ false)
  have impossible : (inferInstance : Setoid Bool).r true false := by
    apply Quotient.exact
    exact sameAtFalse
  cases impossible

end BooleanSemanticCounterexample

section NatCounterexamples

local instance natIdentity : Setoid Nat := equalitySetoid Nat

private def successorInterpreter : QuotientCompatibleInterpreter Nat Nat where
  dom := Set.univ
  eval := fun input _defined => input + 1
  domainSaturated := by
    intro left right related
    constructor <;> intro _ <;> exact Set.mem_univ _
  extensional := by
    intro left right _ _ related
    cases related
    rfl

private def identityInterpreter : QuotientCompatibleInterpreter Nat Nat where
  dom := Set.univ
  eval := fun input _defined => input
  domainSaturated := by
    intro left right related
    constructor <;> intro _ <;> exact Set.mem_univ _
  extensional := by
    intro left right _ _ related
    exact related

/-- A finite proof fixture checks the complete effective-exactness interface. -/
theorem identity_interpreter_effectively_exact :
    Nonempty (EffectiveExact identityInterpreter) := by
  refine ⟨{
    levelExact := ?_
    effectiveInverse := {
      total := ?_
      inverse := fun quotientClass => quotientClass
      inverseAfterInterpret := ?_
      interpretAfterInverse := ?_
    }
  }⟩
  · refine ⟨?_, ?_, ?_⟩
    · intro input
      exact Set.mem_univ input
    · intro left right _ _ sameOutput
      exact sameOutput
    · intro output
      exact ⟨output, Set.mem_univ output, rfl⟩
  · intro input
    exact Set.mem_univ input
  · intro input
    refine Quotient.inductionOn input ?_
    intro representative
    rfl
  · intro output
    refine Quotient.inductionOn output ?_
    intro representative
    rfl

/-- Equal source and target capacity does not make the successor interpreter exact. -/
theorem capacity_parity_does_not_imply_level_exact :
    ∃ interpreter : QuotientCompatibleInterpreter Nat Nat,
      CapacityParity interpreter ∧ ¬ LevelExact interpreter := by
  refine ⟨successorInterpreter, ⟨Equiv.refl _⟩, ?_⟩
  intro exactness
  rcases exactness.2.2 0 with ⟨input, _defined, represented⟩
  change input + 1 = 0 at represented
  omega

/-- Successor is injective but omits zero. -/
theorem successor_injective_not_surjective :
    Function.Injective Nat.succ ∧ ¬ Function.Surjective Nat.succ := by
  constructor
  · exact Nat.succ_injective
  · intro surjective
    rcases surjective 0 with ⟨input, represented⟩
    omega

/-- Natural-number halving covers every target but collides on adjacent inputs. -/
theorem halving_surjective_not_injective :
    Function.Surjective (fun input : Nat => input / 2) ∧
      ¬ Function.Injective (fun input : Nat => input / 2) := by
  constructor
  · intro output
    refine ⟨2 * output, ?_⟩
    calc
      (2 * output) / 2 = (output * 2) / 2 := by rw [Nat.mul_comm]
      _ = output := Nat.mul_div_left output (by omega)
  · intro injective
    have sameOutput : (0 : Nat) / 2 = 1 / 2 := by decide
    have impossible : (0 : Nat) = 1 := injective sameOutput
    omega

/-- Even naturals biject with naturals, while their domain remains proper. -/
theorem even_domain_bijective_but_partial :
    ∃ (domain : Set Nat) (interpret : {input // input ∈ domain} → Nat),
      Function.Bijective interpret ∧ domain ≠ Set.univ := by
  refine ⟨{input | Even input}, (fun input => input.1 / 2), ?_, ?_⟩
  · constructor
    · intro left right sameOutput
      apply Subtype.ext
      rcases left.2 with ⟨leftHalf, leftEven⟩
      rcases right.2 with ⟨rightHalf, rightEven⟩
      dsimp at sameOutput
      omega
    · intro output
      refine ⟨⟨2 * output, ?_⟩, ?_⟩
      · exact ⟨output, by omega⟩
      · dsimp
        omega
  · intro allInputs
    have oneEven : Even 1 := by
      change 1 ∈ ({input | Even input} : Set Nat)
      rw [allInputs]
      exact Set.mem_univ 1
    rcases oneEven with ⟨half, equality⟩
    omega

/-- A constant natural-number map is neither injective nor surjective. -/
theorem constant_map_neither :
    (¬ Function.Injective (fun _input : Nat => 0)) ∧
      ¬ Function.Surjective (fun _input : Nat => 0) := by
  constructor
  · intro injective
    have sameOutput : (fun _input : Nat => 0) 0 =
        (fun _input : Nat => 0) 1 := rfl
    have impossible : (0 : Nat) = 1 := injective sameOutput
    omega
  · intro surjective
    rcases surjective 1 with ⟨_input, represented⟩
    change 0 = 1 at represented
    omega

/-- A partial predecessor used to expose the original undefined input. -/
def partialPredecessor : Nat → Option Nat
  | 0 => none
  | input + 1 => some input

/-- Replacing `none` by a bottom value produces a total function, not a total proof. -/
def bottomTotalize (bottom : Nat)
    (partialEvaluator : Nat → Option Nat) : Nat → Nat :=
  fun input => (partialEvaluator input).getD bottom

/-- Bottom totalization leaves the original undefinedness witness inspectable. -/
theorem bottom_totalization_does_not_remove_undefinedness :
    partialPredecessor 0 = none ∧
      bottomTotalize 0 partialPredecessor 0 = 0 := by
  exact ⟨rfl, rfl⟩

end NatCounterexamples

end Cord
