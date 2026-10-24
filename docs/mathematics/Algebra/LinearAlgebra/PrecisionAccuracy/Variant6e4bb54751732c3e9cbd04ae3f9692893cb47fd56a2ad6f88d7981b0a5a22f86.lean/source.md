# Complete source: GRWTSK.Algebra.LinearAlgebra.PrecisionAccuracy.Variant6e4bb54751732c3e9cbd04ae3f9692893cb47fd56a2ad6f88d7981b0a5a22f86

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5612833464e4e9819f01eaa258f0ef0650a5094` · SHA-256 `507512593176030e20f1ea88a95dfc4ee4ca3ba09dbc694ad02b4f8084427724`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.PrecisionDimension.Variant91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.PrecisionDimension.Variant91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/N/cord/src/theory/CordTheory/PrecisionAccuracy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","lake_or_runtime_control","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CordTheory.SpectralTopology

/-!
# Structured precision, accuracy, and normative bounds

Precision is the degree to which language narrows a declared distinction space.
Accuracy is correspondence to an admitted target under evidence, authority, and
validation.  Normative precision is the lesser of extensional precision and the
resolution supported by the admitted evidence.
-/


namespace GRWTSK.Algebra.LinearAlgebra.PrecisionDimension.Variant91c22210e538fbefb4560ae2298feb55f2296ffe13bddeb85051987528e0fa27

namespace Cord

inductive PrecisionDimension
  | referential
  | temporal
  | quantitative
  | modal
  | scope
  | authority
  | terminological
  | causal
  | reflectiveLevel
  deriving DecidableEq, Repr, Inhabited, Ord

/-- Fixed-point score in the closed interval `[0, 1]`, measured in millionths. -/
@[ext] structure ScoreMillionths where
  value : Nat
  valid : value ≤ 1_000_000
  deriving DecidableEq, Repr

namespace ScoreMillionths

instance : LE ScoreMillionths where
  le a b := a.value ≤ b.value

instance : LT ScoreMillionths where
  lt a b := a.value < b.value

instance : DecidableRel (fun a b : ScoreMillionths => a ≤ b) :=
  fun _ _ => inferInstance

instance : DecidableRel (fun a b : ScoreMillionths => a < b) :=
  fun _ _ => inferInstance

/-- Zero precision. -/
def zero : ScoreMillionths := ⟨0, by decide⟩

/-- Maximal precision. -/
def one : ScoreMillionths := ⟨1_000_000, by decide⟩

/-- The minimum of two certified scores. -/
def min (a b : ScoreMillionths) : ScoreMillionths :=
  ⟨Nat.min a.value b.value, le_trans (Nat.min_le_left _ _) a.valid⟩

@[simp] theorem min_value (a b : ScoreMillionths) :
    (min a b).value = Nat.min a.value b.value := rfl

@[simp] theorem min_le_left (a b : ScoreMillionths) : min a b ≤ a :=
  Nat.min_le_left _ _

@[simp] theorem min_le_right (a b : ScoreMillionths) : min a b ≤ b :=
  Nat.min_le_right _ _

@[simp] theorem min_eq_left_iff (a b : ScoreMillionths) :
    min a b = a ↔ a ≤ b := by
  constructor
  · intro h
    have hv : Nat.min a.value b.value = a.value :=
      congrArg ScoreMillionths.value h
    change a.value ≤ b.value
    exact _root_.min_eq_left_iff.mp hv
  · intro h
    apply ScoreMillionths.ext
    change Nat.min a.value b.value = a.value
    change a.value ≤ b.value at h
    exact Nat.min_eq_left h

end ScoreMillionths

inductive PrecisionStatus
  | established
  | bounded
  | unevaluable
  | notApplicable
  deriving DecidableEq, Repr, Inhabited

structure PrecisionDimensionRecord where
  dimension : PrecisionDimension
  status : PrecisionStatus
  extensional : Option ScoreMillionths
  normative : Option ScoreMillionths
  method : String
  basis : Set RecordId
  scope : String
  limitations : Set String

structure PrecisionRecord where
  id : RecordId
  profile : ProfileId
  dimensions : PrecisionDimension → Option PrecisionDimensionRecord
  aggregationRule : Option RecordId
  residuals : Set ResidualId

inductive AccuracyJudgment
  | established
  | refuted
  | bounded
  | unevaluable
  | sourceAccurate
  | referentiallyAccurate
  | procedurallyAccurate
  | formallyAccurate
  | empiricallySupported
  | factuallyEstablished
  | internallyConsistent
  | transformationAccurate
  deriving DecidableEq, Repr, Inhabited

structure AccuracyDimensionRecord where
  dimension : PrecisionDimension
  judgment : AccuracyJudgment
  metricScore : Option ScoreMillionths
  target : Option RecordId
  metric : Option RecordId
  evidence : Set RecordId
  authority : IndependentStatus
  validation : IndependentStatus
  limitations : Set String

structure AccuracyRecord where
  id : RecordId
  profile : ProfileId
  dimensions : PrecisionDimension → Option AccuracyDimensionRecord
  residuals : Set ResidualId

/-- Metric expression accuracy over an admitted interpretation locus. -/
def metricAccuracy {X : Type*}
    (distance : X → X → ScoreMillionths)
    (locus : Set X) (target : X) (candidateBound : ScoreMillionths) : Prop :=
  ∃ selected ∈ locus,
    candidateBound.value = 1_000_000 - (distance selected target).value ∧
    ∀ candidate ∈ locus,
      (distance selected target).value ≤ (distance candidate target).value

/-- Selection accuracy remains a separate relation. -/
def selectionAccuracy {X : Type*}
    (distance : X → X → ScoreMillionths)
    (selected target : X) : Nat :=
  1_000_000 - (distance selected target).value

structure EvidenceSupportedTargetLocus where
  id : RecordId
  profile : ProfileId
  dimension : PrecisionDimension
  distinctionSpace : Set RecordId
  admittedTargets : Set RecordId
  evidence : Set RecordId
  authority : IndependentStatus
  validation : IndependentStatus
  resolvingPrecision : Option ScoreMillionths
  residuals : Set ResidualId

structure EvidenceLocusAdmission where
  locus : RecordId
  evidenceRelation : RecordId
  authorityDecision : RecordId
  validationResult : RecordId

/-- Normative precision is the minimum of asserted and supported resolution. -/
def normativePrecision
    (extensional evidenceResolution : ScoreMillionths) : ScoreMillionths :=
  ScoreMillionths.min extensional evidenceResolution

@[simp] theorem normativePrecision_le_extensional
    (extensional evidenceResolution : ScoreMillionths) :
    normativePrecision extensional evidenceResolution ≤ extensional :=
  ScoreMillionths.min_le_left _ _

@[simp] theorem normativePrecision_le_evidence
    (extensional evidenceResolution : ScoreMillionths) :
    normativePrecision extensional evidenceResolution ≤ evidenceResolution :=
  ScoreMillionths.min_le_right _ _

@[simp] theorem normativePrecision_eq_extensional_iff
    (extensional evidenceResolution : ScoreMillionths) :
    normativePrecision extensional evidenceResolution = extensional ↔
      extensional ≤ evidenceResolution :=
  ScoreMillionths.min_eq_left_iff _ _

structure NormativePrecisionRecord where
  id : RecordId
  expression : RecordId
  dimension : PrecisionDimension
  extensionalPrecision : ScoreMillionths
  evidenceResolution : ScoreMillionths
  normativePrecision : ScoreMillionths
  equationCertified : Prop

namespace NormativePrecisionRecord

/-- Exact record validity for the normative minimum. -/
def Valid (r : NormativePrecisionRecord) : Prop :=
  r.equationCertified ∧
  r.normativePrecision =
    Cord.normativePrecision r.extensionalPrecision r.evidenceResolution

end NormativePrecisionRecord

/-- Excess specificity unsupported by evidence resolution. -/
def precisionAccuracyTension
    (extensional evidenceResolution : ScoreMillionths) : Nat :=
  extensional.value - evidenceResolution.value

@[simp] theorem tension_eq_zero_iff
    (extensional evidenceResolution : ScoreMillionths) :
    precisionAccuracyTension extensional evidenceResolution = 0 ↔
      extensional ≤ evidenceResolution := by
  change extensional.value - evidenceResolution.value = 0 ↔
    extensional.value ≤ evidenceResolution.value
  omega

@[simp] theorem tension_positive_iff
    (extensional evidenceResolution : ScoreMillionths) :
    0 < precisionAccuracyTension extensional evidenceResolution ↔
      evidenceResolution < extensional := by
  change 0 < extensional.value - evidenceResolution.value ↔
    evidenceResolution.value < extensional.value
  omega

/-- States still permitted by evidence but excluded by the expression. -/
def unsupportedExclusion {X : Type*}
    (languageLocus evidenceLocus : Set X) : Set X :=
  evidenceLocus \ languageLocus

inductive TensionDisposition
  | strengthenEvidence
  | broadenExpression
  | addAuthorizedDistinction
  | narrowScope
  | qualifyModality
  | changeAuthorityClaim
  | recordConflict
  | recordUnknown
  | recordResidual
  | rejectExpression
  deriving DecidableEq, Repr, Inhabited

structure PrecisionAccuracyTension where
  id : RecordId
  expression : RecordId
  dimension : PrecisionDimension
  extensionalPrecision : ScoreMillionths
  evidenceResolution : ScoreMillionths
  tension : Nat
  unsupportedExclusions : Set RecordId
  disposition : Option TensionDisposition
  residual : Option ResidualId

namespace PrecisionAccuracyTension

/-- A positive tension must be discharged or preserved as residue. -/
def Closed (t : PrecisionAccuracyTension) : Prop :=
  t.tension = precisionAccuracyTension t.extensionalPrecision t.evidenceResolution ∧
  (t.tension = 0 ∨ t.disposition ≠ none ∨ t.residual ≠ none)

end PrecisionAccuracyTension

inductive SpectralConsistencyClass
  | accurateAndPrecise
  | accurateButImprecise
  | preciseButInaccurate
  | inaccurateAndImprecise
  | overprecise
  | accuracyLimited
  | precisionLimited
  | conflicting
  | unresolved
  | unevaluable
  deriving DecidableEq, Repr, Inhabited

/-- A language locus and evidence locus remain independently inspectable. -/
structure RhetoricalQualityClassification where
  expression : RecordId
  extensionalPrecision : PrecisionDimension → Option ScoreMillionths
  normativePrecision : PrecisionDimension → Option ScoreMillionths
  accuracy : PrecisionDimension → Option AccuracyJudgment
  tension : PrecisionDimension → Option Nat
  completeness : IndependentStatus
  residuals : Set ResidualId
  primaryClass : SpectralConsistencyClass

end Cord
```
