# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Anchor.Variant05e86cb6e2b8a52d803c8ed3c679680634ea766e467c14df78375cd2a1af6f18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `143de28e7e5b035708ba341f065179e86b2d64dc` · SHA-256 `6a5f7adbcbf6e6b887603700a57ce4307c2f3d646ce95fbfbb385922e76c9ef2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnchorKey.Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AnchorKey.Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33","mathematical_subject":"Foundations.Unclassified","original_sha256":"5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/TensorNetwork/Anchor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.TensorNetwork.Decoder
import Mathematics.TensorNetwork.Factorization

/-!
# Reproductive context anchors

Boundary exit and semantic reproduction are independent obligations.  A tensor
product state or a matching role label is not an anchor without both.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnchorKey.Variant5a3ba858d1263f00c779047570d6647064e20fe515978cede6a40d206f60ac33

namespace Mathematics.TensorNetwork

universe u

/-- Stable registry identity for one destination-context anchor. -/
structure AnchorKey where
  roleId : String
  focusClass : String
  schemaDigest : String
  modelDigest : String
  policyDigest : String
  continuationCoverDigest : String
  deriving DecidableEq, Repr

/-- Additive error budget for chainization, representation, and transport. -/
structure AnchorErrorBudget where
  chain : ℝ
  mps : ℝ
  condensation : ℝ
  encoding : ℝ
  transport : ℝ
  continuationCover : ℝ
  nonnegative :
    0 ≤ chain ∧
    0 ≤ mps ∧
    0 ≤ condensation ∧
    0 ≤ encoding ∧
    0 ≤ transport ∧
    0 ≤ continuationCover

def AnchorErrorBudget.total
    (budget : AnchorErrorBudget) : ℝ :=
  budget.chain +
    budget.mps +
    budget.condensation +
    budget.encoding +
    budget.transport +
    budget.continuationCover

theorem AnchorErrorBudget.total_nonnegative
    (budget : AnchorErrorBudget) :
    0 ≤ budget.total := by
  rcases budget.nonnegative with
    ⟨chain, mps, condensation, encoding, transport, cover⟩
  unfold AnchorErrorBudget.total
  positivity

/-- Complete certificate for one reproductive context anchor. -/
structure ReproductiveAnchorCertificate
    (Context : Type u)
    (N D : Nat) where
  key : AnchorKey
  targetContext : Context
  anchorState : TensorState N D
  network : OpenMPS N D
  representation :
    MPSRepresentationCertificate anchorState network
  decode : TensorState N D → Option Context
  decodeCorrect : decode anchorState = some targetContext
  behavioralDiameter : ℝ
  reproductiveError : ℝ
  reproductiveError_nonnegative : 0 ≤ reproductiveError
  reproductiveBound :
    behavioralDiameter ≤ reproductiveError
  boundaryObservable : HermitianObservable N D
  boundaryInterval :
    ExpectationIntervalCertificate
      boundaryObservable anchorState
  exitThreshold : ℝ
  boundaryExit :
    OutsideBand boundaryInterval.interval exitThreshold
  errorBudget : AnchorErrorBudget
  allowedError : ℝ
  allowedError_nonnegative : 0 ≤ allowedError
  totalErrorAccepted :
    errorBudget.total ≤ allowedError
  continuationCovered : Prop
  continuationCovered_proved : continuationCovered
  authorityAdmitted : Prop
  authorityAdmitted_proved : authorityAdmitted
  privacyAdmitted : Prop
  privacyAdmitted_proved : privacyAdmitted
  lineageDigest : String
  rollbackDigest : String

/-- Eligible anchors satisfy both semantic and boundary obligations. -/
theorem ReproductiveAnchorCertificate.eligible
    (anchor : ReproductiveAnchorCertificate Context N D) :
    anchor.behavioralDiameter ≤ anchor.reproductiveError ∧
      OutsideBand anchor.boundaryInterval.interval
        anchor.exitThreshold ∧
      anchor.errorBudget.total ≤ anchor.allowedError :=
  ⟨anchor.reproductiveBound,
    anchor.boundaryExit,
    anchor.totalErrorAccepted⟩

end Mathematics.TensorNetwork
```
