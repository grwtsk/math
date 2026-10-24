# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ReflectiveAgents.Variant6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1a8b614abe05adbaa4806538bf401a968bfec09` · SHA-256 `6de92ebab5d5ccc8e477b2a138a91c29264a2a57417ce7372a4c5daac15174e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import CordTheory.NeuralGeometry
import CordTheory.InterpreterExactness

/-!
# Stratified reflective agents

This module gives the neural-symbolic candidate layer a 3-Lisp-style structural
profile: a conceptually `Nat`-indexed tower of evaluators, explicit quotation to
the next level, and certified evaluation back to the represented level.  Every
execution materializes only a finite prefix.  The construction is not a claim
of literal 3-Lisp language compatibility, an infinite runtime allocation, or
unrestricted self-modification.

Agent coordination ranks and quotes candidates inside this rhetorical tower.
Agreement remains candidate evidence and cannot mint mutation authority.
-/

namespace Cord

universe u

/-! ## 3-Lisp-style stratified evaluator tower -/

/--
A conceptually unbounded family of representation levels.  Quotation raises
one level; evaluation may descend only through an explicit round-trip law.
-/
structure ReflectiveEvaluatorTower (Layer : Nat → Type u) where
  quote : (level : Nat) → Layer level → Layer (level + 1)
  evaluate : (level : Nat) → Layer (level + 1) → Option (Layer level)
  evaluateQuote : ∀ level value,
    evaluate level (quote level value) = some value

namespace ReflectiveEvaluatorTower

/-- A quoted lower-level value is recovered by its certified evaluator. -/
theorem eval_quote {Layer : Nat → Type u}
    (tower : ReflectiveEvaluatorTower Layer)
    (level : Nat) (value : Layer level) :
    tower.evaluate level (tower.quote level value) = some value :=
  tower.evaluateQuote level value

/-- The one-sided evaluate-after-quote law proves quotation injective, but not surjective. -/
theorem quote_injective {Layer : Nat → Type u}
    (tower : ReflectiveEvaluatorTower Layer) (level : Nat) :
    Function.Injective (tower.quote level) := by
  intro left right sameQuotation
  have sameEvaluation := congrArg (tower.evaluate level) sameQuotation
  rw [tower.evaluateQuote, tower.evaluateQuote] at sameEvaluation
  exact Option.some.inj sameEvaluation

/-- Quotation is stratified: its target index is strictly higher. -/
theorem quote_strictly_raises {Layer : Nat → Type u}
    (_tower : ReflectiveEvaluatorTower Layer) (level : Nat) :
    level < level + 1 :=
  Nat.lt_succ_self level

end ReflectiveEvaluatorTower

/-! ## A distinct exact tower certificate -/

/-- The admitted one-step grade policy for the stratified exact tower. -/
structure ExactTowerGradePolicy where
  interpreterInputGrade : Nat → Nat
  interpreterOutputGrade : Nat → Nat
  quotationOutputGrade : Nat → Nat
  interpreterInputGradeExact : ∀ level,
    interpreterInputGrade level = level + 1
  interpreterOutputGradeExact : ∀ level,
    interpreterOutputGrade level = level
  quotationOutputGradeExact : ∀ level,
    quotationOutputGrade level = level + 1

/--
The exact tower is a separate strengthening of the structural tower.  It names
the identity policy at every level, the designated total interpreter, its
quotient behavior, quotation laws, semantic lift, naturality square, and an
interpreter code object whose evaluated representation has a separately typed
denotation.  Possessing only `ReflectiveEvaluatorTower` never supplies these
fields.
-/
structure ExactReflectiveEvaluatorTower (Layer : Nat → Type u)
    extends ReflectiveEvaluatorTower Layer where
  gradePolicy : ExactTowerGradePolicy
  layerIdentity : ∀ level, Setoid (Layer level)
  evaluationDomain : ∀ level, Set (Layer (level + 1))
  designatedInterpreter : ∀ level, Layer (level + 1) → Layer level
  evaluationDomainSaturated : ∀ level {left right},
    (layerIdentity (level + 1)).r left right →
      (left ∈ evaluationDomain level ↔ right ∈ evaluationDomain level)
  evaluationExtensional : ∀ level {left right},
    (layerIdentity (level + 1)).r left right →
      (layerIdentity level).r
        (designatedInterpreter level left)
        (designatedInterpreter level right)
  evaluatorRealizesDesignated : ∀ level encoded,
    evaluate level encoded = some (designatedInterpreter level encoded)
  quotientTotal : ∀ level encoded, encoded ∈ evaluationDomain level
  quotientInjective : ∀ level {left right},
    (layerIdentity level).r
        (designatedInterpreter level left)
        (designatedInterpreter level right) →
      (layerIdentity (level + 1)).r left right
  quotientSurjective : ∀ level output,
    ∃ encoded, (layerIdentity level).r
      (designatedInterpreter level encoded) output
  effectiveInverse : ∀ level, Layer level → Layer (level + 1)
  effectiveInversePreservesIdentity : ∀ level {left right},
    (layerIdentity level).r left right →
      (layerIdentity (level + 1)).r
        (effectiveInverse level left) (effectiveInverse level right)
  inverseAfterInterpret : ∀ level encoded,
    (layerIdentity (level + 1)).r
      (effectiveInverse level (designatedInterpreter level encoded))
      encoded
  interpretAfterInverse : ∀ level output,
    (layerIdentity level).r
      (designatedInterpreter level (effectiveInverse level output))
      output
  quotationPreservesIdentity : ∀ level {left right},
    (layerIdentity level).r left right →
      (layerIdentity (level + 1)).r (quote level left) (quote level right)
  quotationReflectsIdentity : ∀ level {left right},
    (layerIdentity (level + 1)).r (quote level left) (quote level right) →
      (layerIdentity level).r left right
  semanticLift : ∀ level, Layer level → Layer (level + 1)
  semanticLiftPreservesIdentity : ∀ level {left right},
    (layerIdentity level).r left right →
      (layerIdentity (level + 1)).r
        (semanticLift level left) (semanticLift level right)
  semanticLiftReflectsIdentity : ∀ level {left right},
    (layerIdentity (level + 1)).r
        (semanticLift level left) (semanticLift level right) →
      (layerIdentity level).r left right
  naturality : ∀ level (encoded : Layer (level + 1)),
    (layerIdentity (level + 1)).r
      (designatedInterpreter (level + 1)
        (quote (level + 1) encoded))
      (semanticLift level (designatedInterpreter level encoded))
  interpreterRepresentationCode : ∀ level, Layer (level + 2)
  representedInterpreter : ∀ level, Layer (level + 1)
  interpreterRepresentationCodeEvaluates : ∀ level,
    evaluate (level + 1) (interpreterRepresentationCode level) =
      some (representedInterpreter level)
  denoteInterpreterRepresentation :
    ∀ level, Layer (level + 1) → Layer (level + 1) → Layer level
  interpreterDenotationExtensional : ∀ level
      {leftRepresentation rightRepresentation leftInput rightInput},
    (layerIdentity (level + 1)).r leftRepresentation rightRepresentation →
    (layerIdentity (level + 1)).r leftInput rightInput →
      (layerIdentity level).r
        (denoteInterpreterRepresentation level leftRepresentation leftInput)
        (denoteInterpreterRepresentation level rightRepresentation rightInput)
  representedInterpreterRealizes : ∀ level encoded,
    (layerIdentity level).r
      (denoteInterpreterRepresentation level
        (representedInterpreter level) encoded)
      (designatedInterpreter level encoded)
  blockingResiduals : Set ResidualId
  noBlockingResiduals : blockingResiduals = ∅

namespace ExactReflectiveEvaluatorTower

/-- Each certified tower level is the corresponding quotient-compatible interpreter. -/
def asInterpreter {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) :
    @QuotientCompatibleInterpreter
      (Layer (level + 1)) (Layer level)
      (tower.layerIdentity (level + 1)) (tower.layerIdentity level) := by
  letI : Setoid (Layer (level + 1)) := tower.layerIdentity (level + 1)
  letI : Setoid (Layer level) := tower.layerIdentity level
  exact {
    dom := tower.evaluationDomain level
    eval := fun encoded _defined => tower.designatedInterpreter level encoded
    domainSaturated := tower.evaluationDomainSaturated level
    extensional := fun _leftDefined _rightDefined related =>
      tower.evaluationExtensional level related
  }

/-- The supplied raw inverse descends to the authorized quotient classes. -/
def inducedEffectiveInverse {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) :
    Quotient (tower.layerIdentity level) →
      Quotient (tower.layerIdentity (level + 1)) :=
  Quotient.lift
    (fun output =>
      Quotient.mk _ (tower.effectiveInverse level output))
    (fun _left _right related =>
      Quotient.sound
        (tower.effectiveInversePreservesIdentity level related))

/-- Totality, quotient injectivity, and quotient coverage hold at every level. -/
theorem levelwise_exact {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) :
    @LevelExact
      (Layer (level + 1)) (Layer level)
      (tower.layerIdentity (level + 1)) (tower.layerIdentity level)
      (tower.asInterpreter level) := by
  letI : Setoid (Layer (level + 1)) := tower.layerIdentity (level + 1)
  letI : Setoid (Layer level) := tower.layerIdentity level
  refine ⟨?_, ?_, ?_⟩
  · intro encoded
    simpa [asInterpreter] using tower.quotientTotal level encoded
  · intro left right _leftDefined _rightDefined sameOutput
    apply tower.quotientInjective level
    simpa [asInterpreter] using sameOutput
  · intro output
    rcases tower.quotientSurjective level output with ⟨encoded, represented⟩
    refine ⟨encoded, ?_, ?_⟩
    · simpa [asInterpreter] using tower.quotientTotal level encoded
    · simpa [asInterpreter] using represented

/-- Every level also carries the separately supplied constructive two-sided inverse. -/
def levelwise_effectively_exact {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) :
    @EffectiveExact
      (Layer (level + 1)) (Layer level)
      (tower.layerIdentity (level + 1)) (tower.layerIdentity level)
      (tower.asInterpreter level) := by
  letI : Setoid (Layer (level + 1)) := tower.layerIdentity (level + 1)
  letI : Setoid (Layer level) := tower.layerIdentity level
  exact {
    levelExact := tower.levelwise_exact level
    effectiveInverse := {
      total := by
        intro encoded
        simpa [asInterpreter] using tower.quotientTotal level encoded
      inverse := tower.inducedEffectiveInverse level
      inverseAfterInterpret := by
        intro input
        refine Quotient.inductionOn input ?_
        intro encoded
        apply Quotient.sound
        exact tower.inverseAfterInterpret level encoded
      interpretAfterInverse := by
        intro output
        refine Quotient.inductionOn output ?_
        intro representative
        apply Quotient.sound
        exact tower.interpretAfterInverse level representative
    }
  }

/-- Quotation preserves and reflects the authorized identity at adjacent levels. -/
theorem quotation_identity_stable {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat)
    (left right : Layer level) :
    (tower.layerIdentity level).r left right ↔
      (tower.layerIdentity (level + 1)).r
        (tower.quote level left) (tower.quote level right) :=
  ⟨tower.quotationPreservesIdentity level,
    tower.quotationReflectsIdentity level⟩

/-- Semantic lift preserves and reflects the authorized identity policy. -/
theorem semantic_lift_identity_stable {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat)
    (left right : Layer level) :
    (tower.layerIdentity level).r left right ↔
      (tower.layerIdentity (level + 1)).r
        (tower.semanticLift level left) (tower.semanticLift level right) :=
  ⟨tower.semanticLiftPreservesIdentity level,
    tower.semanticLiftReflectsIdentity level⟩

/-- Evaluation and semantic lift commute up to the next level's identity. -/
theorem interpretation_square_commutes {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat)
    (encoded : Layer (level + 1)) :
    (tower.layerIdentity (level + 1)).r
      (tower.designatedInterpreter (level + 1)
        (tower.quote (level + 1) encoded))
      (tower.semanticLift level
        (tower.designatedInterpreter level encoded)) :=
  tower.naturality level encoded

/-- The dependent tower and admitted policy agree on every grade transition. -/
theorem grade_policy_exact {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) :
    tower.gradePolicy.interpreterInputGrade level = level + 1 ∧
      tower.gradePolicy.interpreterOutputGrade level = level ∧
      tower.gradePolicy.quotationOutputGrade level = level + 1 :=
  ⟨tower.gradePolicy.interpreterInputGradeExact level,
    tower.gradePolicy.interpreterOutputGradeExact level,
    tower.gradePolicy.quotationOutputGradeExact level⟩

/-- A reflectively certified tower has no blocking exactness residual. -/
theorem blocking_residual_frontier_empty {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) :
    tower.blockingResiduals = ∅ :=
  tower.noBlockingResiduals

/--
Evaluation turns the next-meta-level code object into an interpreter
representation, whose typed denotation realizes the designated interpreter on
every input modulo authorized identity.
-/
theorem represented_interpreter_realizes_designated
    {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) :
    ∃ representation : Layer (level + 1),
      tower.evaluate (level + 1)
          (tower.interpreterRepresentationCode level) = some representation ∧
      ∀ encoded : Layer (level + 1),
        (tower.layerIdentity level).r
          (tower.denoteInterpreterRepresentation level representation encoded)
          (tower.designatedInterpreter level encoded) := by
  refine ⟨tower.representedInterpreter level,
    tower.interpreterRepresentationCodeEvaluates level, ?_⟩
  exact tower.representedInterpreterRealizes level

/-- The independently certified exactness and coherence obligations at one level. -/
def CoherentAt {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) (level : Nat) : Prop :=
  Nonempty (@EffectiveExact
      (Layer (level + 1)) (Layer level)
      (tower.layerIdentity (level + 1)) (tower.layerIdentity level)
      (tower.asInterpreter level)) ∧
    (∀ left right : Layer level,
      (tower.layerIdentity level).r left right ↔
        (tower.layerIdentity (level + 1)).r
          (tower.quote level left) (tower.quote level right)) ∧
    (∀ left right : Layer level,
      (tower.layerIdentity level).r left right ↔
        (tower.layerIdentity (level + 1)).r
          (tower.semanticLift level left) (tower.semanticLift level right)) ∧
    (∀ encoded : Layer (level + 1),
      (tower.layerIdentity (level + 1)).r
        (tower.designatedInterpreter (level + 1)
          (tower.quote (level + 1) encoded))
        (tower.semanticLift level
          (tower.designatedInterpreter level encoded))) ∧
    (∃ representation : Layer (level + 1),
      tower.evaluate (level + 1)
          (tower.interpreterRepresentationCode level) = some representation ∧
      ∀ encoded : Layer (level + 1),
        (tower.layerIdentity level).r
          (tower.denoteInterpreterRepresentation level representation encoded)
          (tower.designatedInterpreter level encoded)) ∧
    (tower.gradePolicy.interpreterInputGrade level = level + 1 ∧
      tower.gradePolicy.interpreterOutputGrade level = level ∧
      tower.gradePolicy.quotationOutputGrade level = level + 1) ∧
    tower.blockingResiduals = ∅

/-- Any explicitly bounded prefix inherits the all-level certificate. -/
theorem bounded_prefix_coherent {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer)
    (highestLevel : Nat) :
    ∀ level, level ≤ highestLevel → tower.CoherentAt level := by
  intro level _bounded
  exact ⟨⟨tower.levelwise_effectively_exact level⟩,
    tower.quotation_identity_stable level,
    tower.semantic_lift_identity_stable level,
    tower.interpretation_square_commutes level,
    tower.represented_interpreter_realizes_designated level,
    tower.grade_policy_exact level,
    tower.blocking_residual_frontier_empty⟩

/-- The strongest profile states level exactness, naturality, and meta-circularity at all levels. -/
theorem all_levels_coherent {Layer : Nat → Type u}
    (tower : ExactReflectiveEvaluatorTower Layer) :
    ∀ level, tower.CoherentAt level := by
  intro level
  exact ⟨⟨tower.levelwise_effectively_exact level⟩,
    tower.quotation_identity_stable level,
    tower.semantic_lift_identity_stable level,
    tower.interpretation_square_commutes level,
    tower.represented_interpreter_realizes_designated level,
    tower.grade_policy_exact level,
    tower.blocking_residual_frontier_empty⟩

end ExactReflectiveEvaluatorTower

/--
An exact finite execution prefix of a conceptually `Nat`-indexed tower.
Materialized, nondefault levels are precisely `0, …, highestActivatedLevel`;
every higher level uses the default evaluator.  This describes one bounded
execution and does not claim that the `Nat`-indexed tower ends there.
-/
structure FiniteMetaSupportCertificate (usesDefaultEvaluator : Nat → Prop) where
  activeLevels : Finset Nat
  highestActivatedLevel : Nat
  activeLevelsExact :
    activeLevels = Finset.range (highestActivatedLevel + 1)
  defaultEvaluatorIffAbove : ∀ level,
    usesDefaultEvaluator level ↔ highestActivatedLevel < level

namespace FiniteMetaSupportCertificate

/-- A level is active exactly when it lies in the closed finite prefix. -/
theorem active_iff_le_highest
    {usesDefaultEvaluator : Nat → Prop}
    (certificate : FiniteMetaSupportCertificate usesDefaultEvaluator)
    (level : Nat) :
    level ∈ certificate.activeLevels ↔
      level ≤ certificate.highestActivatedLevel := by
  rw [certificate.activeLevelsExact, Finset.mem_range]
  exact Nat.lt_succ_iff

/-- Active levels are exactly the levels whose evaluator is nondefault. -/
theorem active_iff_not_default
    {usesDefaultEvaluator : Nat → Prop}
    (certificate : FiniteMetaSupportCertificate usesDefaultEvaluator)
    (level : Nat) :
    level ∈ certificate.activeLevels ↔
      ¬ usesDefaultEvaluator level := by
  rw [certificate.active_iff_le_highest]
  constructor
  · intro bounded defaulted
    exact (Nat.not_lt_of_ge bounded)
      ((certificate.defaultEvaluatorIffAbove level).mp defaulted)
  · intro nondefault
    exact Nat.le_of_not_gt fun above =>
      nondefault ((certificate.defaultEvaluatorIffAbove level).mpr above)

/-- No materialized active level lies above the certified maximum. -/
theorem no_active_level_above
    {usesDefaultEvaluator : Nat → Prop}
    (certificate : FiniteMetaSupportCertificate usesDefaultEvaluator)
    {level : Nat} (active : level ∈ certificate.activeLevels) :
    ¬ certificate.highestActivatedLevel < level := by
  exact Nat.not_lt_of_ge ((certificate.active_iff_le_highest level).mp active)

/-- Every unmaterialized level above the finite prefix uses the default evaluator. -/
theorem default_above
    {usesDefaultEvaluator : Nat → Prop}
    (certificate : FiniteMetaSupportCertificate usesDefaultEvaluator)
    {level : Nat} (above : certificate.highestActivatedLevel < level) :
    usesDefaultEvaluator level :=
  (certificate.defaultEvaluatorIffAbove level).mpr above

/-- The certified highest level is itself active and nondefault. -/
theorem highest_active_and_nondefault
    {usesDefaultEvaluator : Nat → Prop}
    (certificate : FiniteMetaSupportCertificate usesDefaultEvaluator) :
    certificate.highestActivatedLevel ∈ certificate.activeLevels ∧
      ¬ usesDefaultEvaluator certificate.highestActivatedLevel := by
  have active : certificate.highestActivatedLevel ∈
      certificate.activeLevels :=
    (certificate.active_iff_le_highest
      certificate.highestActivatedLevel).mpr le_rfl
  exact ⟨active, (certificate.active_iff_not_default _).mp active⟩

end FiniteMetaSupportCertificate

/--
The scoped structural relationship to 3-Lisp: a reflective tower with a finite
active prefix and explicit nonclaims of literal interpreter equivalence and
unrestricted self-modification.
-/
structure ThreeLispStyleReflectionProfile
    (Layer : Nat → Type u) (usesDefaultEvaluator : Nat → Prop) where
  tower : ReflectiveEvaluatorTower Layer
  finiteSupport : FiniteMetaSupportCertificate usesDefaultEvaluator
  executionBound : ReificationProfile
  supportWithinExecutionBound :
    finiteSupport.highestActivatedLevel ≤ executionBound.maximumLevel
  literalThreeLispEquivalenceClaimed : Bool
  unrestrictedSelfModificationClaimed : Bool

namespace ThreeLispStyleReflectionProfile

def Scoped
    {Layer : Nat → Type u} {usesDefaultEvaluator : Nat → Prop}
    (profile : ThreeLispStyleReflectionProfile Layer usesDefaultEvaluator) : Prop :=
  profile.literalThreeLispEquivalenceClaimed = false ∧
  profile.unrestrictedSelfModificationClaimed = false

theorem no_literal_equivalence
    {Layer : Nat → Type u} {usesDefaultEvaluator : Nat → Prop}
    (profile : ThreeLispStyleReflectionProfile Layer usesDefaultEvaluator)
    (scopeProof : profile.Scoped) :
    profile.literalThreeLispEquivalenceClaimed = false :=
  scopeProof.1

theorem no_unrestricted_self_modification
    {Layer : Nat → Type u} {usesDefaultEvaluator : Nat → Prop}
    (profile : ThreeLispStyleReflectionProfile Layer usesDefaultEvaluator)
    (scopeProof : profile.Scoped) :
    profile.unrestrictedSelfModificationClaimed = false :=
  scopeProof.2

end ThreeLispStyleReflectionProfile

/-! ## Neural candidates contained in a rhetorical level -/

/--
A neural candidate step and its symbolic rhetorical representation.  The
certificate supplies an explicit state codec, proves its decode-after-encode
round trip, and proves that both the input frame and output frame encode the
corresponding concrete states.  Each frame is then quoted independently, so
evaluation and decoding recover the represented neural step rather than an
unrelated, untyped model output.  The codec does not establish factual truth,
natural-language semantic adequacy, or mutation authority.
-/
structure NeuralRhetoricalEnvelope
    (Layer : Nat → Type u)
    (tower : ReflectiveEvaluatorTower Layer)
    (State : Type*) [TopologicalSpace State] where
  level : Nat
  candidate : CertifiedNeuralCandidate State
  encodeState : State → Layer level
  decodeState : Layer level → Option State
  decodeEncode : ∀ state, decodeState (encodeState state) = some state
  candidateInput : State
  inputRhetoricalState : Layer level
  inputEncoded : inputRhetoricalState = encodeState candidateInput
  inputQuotedState : Layer (level + 1)
  inputQuotedByQuotation :
    inputQuotedState = tower.quote level inputRhetoricalState
  rhetoricalState : Layer level
  outputEncoded :
    rhetoricalState = encodeState (candidate.transform candidateInput)
  quotedState : Layer (level + 1)
  quotedByQuotation : quotedState = tower.quote level rhetoricalState
  sourceRecords : Set RecordId
  provenance : Set RecordId
  residuals : Set ResidualId
  candidateOnly : Bool
  mutationAuthority : Bool

namespace NeuralRhetoricalEnvelope

def CandidateScoped
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) : Prop :=
  envelope.candidate.CandidateScoped ∧
  envelope.candidateOnly = true ∧
  envelope.mutationAuthority = false

/-- Certified evaluation recovers the encoded neural input frame. -/
theorem evaluate_quoted_input
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) :
    tower.evaluate envelope.level envelope.inputQuotedState =
      some envelope.inputRhetoricalState := by
  rw [envelope.inputQuotedByQuotation]
  exact tower.evaluateQuote envelope.level envelope.inputRhetoricalState

/-- Certified evaluation recovers the encoded neural output frame. -/
theorem evaluate_quoted
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) :
    tower.evaluate envelope.level envelope.quotedState =
      some envelope.rhetoricalState := by
  rw [envelope.quotedByQuotation]
  exact tower.evaluateQuote envelope.level envelope.rhetoricalState

/-- The lower frames encode the exact input and realized candidate output. -/
theorem frames_encode_candidate_step
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) :
    envelope.inputRhetoricalState =
        envelope.encodeState envelope.candidateInput ∧
      envelope.rhetoricalState = envelope.encodeState
        (envelope.candidate.transform envelope.candidateInput) :=
  ⟨envelope.inputEncoded, envelope.outputEncoded⟩

/-- The certified codec recovers the exact concrete input and output states. -/
theorem frames_decode_candidate_step
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) :
    envelope.decodeState envelope.inputRhetoricalState =
        some envelope.candidateInput ∧
      envelope.decodeState envelope.rhetoricalState =
        some (envelope.candidate.transform envelope.candidateInput) := by
  constructor
  · rw [envelope.inputEncoded, envelope.decodeEncode]
  · rw [envelope.outputEncoded, envelope.decodeEncode]

/-- The exact codec makes the concrete-to-rhetorical encoding injective. -/
theorem encodeState_injective
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) :
    Function.Injective envelope.encodeState := by
  intro left right equalEncoding
  have decoded := congrArg envelope.decodeState equalEncoding
  simpa [envelope.decodeEncode] using decoded

/-- Both concrete ends of the neural step are recoverable as quoted frames. -/
theorem evaluate_quoted_step
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) :
    tower.evaluate envelope.level envelope.inputQuotedState =
        some (envelope.encodeState envelope.candidateInput) ∧
      tower.evaluate envelope.level envelope.quotedState =
        some (envelope.encodeState
          (envelope.candidate.transform envelope.candidateInput)) := by
  constructor
  · rw [envelope.evaluate_quoted_input, envelope.inputEncoded]
  · rw [envelope.evaluate_quoted, envelope.outputEncoded]

/-- Evaluation followed by decoding recovers both ends of the neural step. -/
theorem evaluate_decode_quoted_step
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) :
    (tower.evaluate envelope.level envelope.inputQuotedState).bind
          envelope.decodeState = some envelope.candidateInput ∧
      (tower.evaluate envelope.level envelope.quotedState).bind
          envelope.decodeState =
        some (envelope.candidate.transform envelope.candidateInput) := by
  constructor
  · rw [envelope.evaluate_quoted_input, envelope.inputEncoded]
    exact envelope.decodeEncode envelope.candidateInput
  · rw [envelope.evaluate_quoted, envelope.outputEncoded]
    exact envelope.decodeEncode
      (envelope.candidate.transform envelope.candidateInput)

/-- The envelope's quotation level is strictly above its represented level. -/
theorem strict_reflective_level
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State) :
    envelope.level < envelope.level + 1 :=
  Nat.lt_succ_self envelope.level

/-- Neither neural accuracy nor quotation creates authority. -/
theorem quotation_does_not_create_authority
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {State : Type*} [TopologicalSpace State]
    (envelope : NeuralRhetoricalEnvelope Layer tower State)
    (scopeProof : envelope.CandidateScoped) :
    envelope.mutationAuthority = false :=
  scopeProof.2.2

end NeuralRhetoricalEnvelope

/-! ## Agent coordination without authority escalation -/

inductive AgentStance
  | support
  | object
  | abstain
  deriving DecidableEq, Repr, Inhabited, Fintype

/-- A source-bearing proposal made by one agent. -/
structure AgentProposal (Agent Candidate : Type*) where
  agent : Agent
  candidate : Candidate
  predictedState : Option RecordId
  evidence : Set RecordId
  provenance : Set RecordId
  confidence : Option ModelConfidence
  stance : AgentStance

/--
A finite coordination certificate.  Support, objections, and evidence are
inspectable, but the certificate is candidate-only and nonauthoritative.
-/
structure AgentCoordinationCertificate
    (Agent Candidate : Type*) [DecidableEq Agent] where
  candidate : Candidate
  participants : Finset Agent
  stance : Agent → AgentStance
  evidence : Agent → Set RecordId
  objections : Set RecordId
  residuals : Set ResidualId
  accuracySelection : Option CertificateId
  candidateOnly : Bool
  mutationAuthority : Bool
  receipt : ReceiptId

namespace AgentCoordinationCertificate

def UnanimousSupport
    {Agent Candidate : Type*} [DecidableEq Agent]
    (certificate : AgentCoordinationCertificate Agent Candidate) : Prop :=
  ∀ agent ∈ certificate.participants,
    certificate.stance agent = .support

def WellFormedCandidate
    {Agent Candidate : Type*} [DecidableEq Agent]
    (certificate : AgentCoordinationCertificate Agent Candidate) : Prop :=
  certificate.participants.Nonempty ∧
  certificate.receipt.value ≠ 0 ∧
  certificate.candidateOnly = true ∧
  certificate.mutationAuthority = false

/-- Even unanimous support remains nonauthoritative under the candidate contract. -/
theorem unanimous_support_not_authority
    {Agent Candidate : Type*} [DecidableEq Agent]
    (certificate : AgentCoordinationCertificate Agent Candidate)
    (wellFormed : certificate.WellFormedCandidate)
    (_agreement : certificate.UnanimousSupport) :
    certificate.mutationAuthority = false :=
  wellFormed.2.2.2

/-- A concrete countermodel refutes the implication from agreement to authority. -/
theorem agreement_alone_does_not_entail_authority :
    ¬ (∀ certificate : AgentCoordinationCertificate Unit Unit,
      certificate.UnanimousSupport →
      certificate.mutationAuthority = true) := by
  intro claim
  let certificate : AgentCoordinationCertificate Unit Unit := {
    candidate := ()
    participants := {()}
    stance := fun _ => .support
    evidence := fun _ => ∅
    objections := ∅
    residuals := ∅
    accuracySelection := none
    candidateOnly := true
    mutationAuthority := false
    receipt := ⟨1⟩
  }
  have unanimous : certificate.UnanimousSupport := by
    intro agent _member
    cases agent
    rfl
  have impossible := claim certificate unanimous
  cases impossible

end AgentCoordinationCertificate

/-! ## Integrated reflective neural proposal -/

/--
An agent-coordinated neural proposal carries rhetorical containment, an
accuracy-selection certificate, and the ordinary nine-way admission gate.
-/
structure CoordinatedReflectiveNeuralProposal
    (Agent : Type*) [DecidableEq Agent]
    (Layer : Nat → Type u)
    (tower : ReflectiveEvaluatorTower Layer)
    (Symbol : Type*) [Fintype Symbol] where
  envelope : NeuralRhetoricalEnvelope Layer tower
    (NeuralRhetoricalState Symbol)
  coordination : AgentCoordinationCertificate Agent RecordId
  coordinatedCandidate : coordination.candidate = envelope.candidate.id
  accuracy : AccuracySelectionCertificate Symbol
  selectedCandidate : accuracy.selected = envelope.candidate.id
  selectedImplementation :
    accuracy.candidate accuracy.selected = envelope.candidate
  selectedInput :
    accuracy.input accuracy.selected = envelope.candidateInput
  admission : CorrectionAdmissionGate
  admissionCandidate : admission.candidate = envelope.candidate.id

namespace CoordinatedReflectiveNeuralProposal

/-- The integrated proposal remains recoverable as a symbolic rhetorical frame. -/
theorem contained_in_rhetorical_space
    {Agent : Type*} [DecidableEq Agent]
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {Symbol : Type*} [Fintype Symbol]
    (proposal :
      CoordinatedReflectiveNeuralProposal Agent Layer tower Symbol) :
    tower.evaluate proposal.envelope.level proposal.envelope.quotedState =
      some proposal.envelope.rhetoricalState :=
  proposal.envelope.evaluate_quoted

/-- Admission of the coordinated candidate still requires independent authority. -/
theorem admitted_requires_authority
    {Agent : Type*} [DecidableEq Agent]
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {Symbol : Type*} [Fintype Symbol]
    (proposal :
      CoordinatedReflectiveNeuralProposal Agent Layer tower Symbol)
    (admitted : proposal.admission.Admissible) :
    proposal.admission.authorityValid :=
  proposal.admission.admissible_authority_valid admitted

/--
The envelope's realized neural output is the exact selected pool realization,
so its target-relative error is no larger than any admitted pool alternative.
-/
theorem selected_output_minimizes_squared_error
    {Agent : Type*} [DecidableEq Agent]
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {Symbol : Type*} [Fintype Symbol]
    (proposal :
      CoordinatedReflectiveNeuralProposal Agent Layer tower Symbol)
    {candidateId : RecordId}
    (member : candidateId ∈ proposal.accuracy.pool) :
    rhetoricalSquaredError
        (proposal.envelope.candidate.transform
          proposal.envelope.candidateInput)
        proposal.accuracy.target ≤
      proposal.accuracy.error candidateId := by
  have minimal := proposal.accuracy.selected_dominates member
  simpa [AccuracySelectionCertificate.error,
    AccuracySelectionCertificate.output,
    proposal.selectedImplementation, proposal.selectedInput] using minimal

/-- Agent agreement and accuracy ranking cannot replace a missing authority gate. -/
theorem agreement_cannot_replace_missing_authority
    {Agent : Type*} [DecidableEq Agent]
    {Layer : Nat → Type u}
    {tower : ReflectiveEvaluatorTower Layer}
    {Symbol : Type*} [Fintype Symbol]
    (proposal :
      CoordinatedReflectiveNeuralProposal Agent Layer tower Symbol)
    (_agreement : proposal.coordination.UnanimousSupport)
    (missing : ¬ proposal.admission.authorityValid) :
    ¬ proposal.admission.Admissible :=
  proposal.admission.score_cannot_replace_missing_authority missing

end CoordinatedReflectiveNeuralProposal

end Cord
```
