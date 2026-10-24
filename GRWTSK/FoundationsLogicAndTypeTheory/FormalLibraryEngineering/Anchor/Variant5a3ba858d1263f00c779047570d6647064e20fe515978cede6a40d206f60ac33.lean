import Mathematics.TensorNetwork.Decoder
import Mathematics.TensorNetwork.Factorization

/-!
# Reproductive context anchors

Boundary exit and semantic reproduction are independent obligations.  A tensor
product state or a matching role label is not an anchor without both.
-/

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
