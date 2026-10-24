-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.CorrelationCompatibleFactorizationFlow.Variant726b33c035a252aeba96bd3ba945cf94f9bf7399930c9c54b867a145245d0bcf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"726b33c035a252aeba96bd3ba945cf94f9bf7399930c9c54b867a145245d0bcf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.CorrelationCompatibleFactorizationFlow.Variant726b33c035a252aeba96bd3ba945cf94f9bf7399930c9c54b867a145245d0bcf","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"726b33c035a252aeba96bd3ba945cf94f9bf7399930c9c54b867a145245d0bcf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/FactorizationFlow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.CutoffMatrix
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Tactic

/-!
# Correlation-compatible flow of an exact factorization

The arithmetic cutoff matrix does not evolve.  A finite curvature event may
move synthesis maps and incidence kernels only while the residual changes so
that the exact matrix identity remains true at every time.

The main theorem below is therefore an algebraic conservation law: the
derivative of the packet pairing is the negative derivative of the residual
pairing.  It does not assert that either derivative is small and it cannot
manufacture cancellation.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.CorrelationCompatibleFactorizationFlow.Variant726b33c035a252aeba96bd3ba945cf94f9bf7399930c9c54b867a145245d0bcf

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators InnerProductSpace InnerProduct

/-- A differentiable path of exact packet/residual factorizations of one
fixed product-prefix matrix family. -/
structure CorrelationCompatibleFactorizationFlow
    (Left Right LeftPacketSpace RightPacketSpace : Type*)
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace] [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace] [CompleteSpace RightPacketSpace]
    (leftIndex : Left → ℕ) (rightIndex : Right → ℕ) where
  leftCoefficient : EuclideanSpace ℂ Left
  rightCoefficient : EuclideanSpace ℂ Right

  leftSynthesis : ℝ →
    EuclideanSpace ℂ Left →L[ℂ] LeftPacketSpace
  rightSynthesis : ℝ →
    EuclideanSpace ℂ Right →L[ℂ] RightPacketSpace
  incidence : ℝ → ℕ → RightPacketSpace →L[ℂ] LeftPacketSpace
  residual : ℝ → ℕ → Matrix Left Right ℂ

  exactAtTime : ∀ t x left right,
    productCutoffMatrix leftIndex rightIndex x left right =
      ⟪leftSynthesis t (EuclideanSpace.single left 1),
        incidence t x
          (rightSynthesis t (EuclideanSpace.single right 1))⟫_ℂ +
      residual t x left right

  packetDerivative : ℝ → ℕ → ℂ
  residualDerivative : ℝ → ℕ → ℂ
  differentiablePacket : ∀ t x,
    HasDerivAt
      (fun s ↦ bilinearMatrixPairing leftCoefficient
        (fun left right ↦
          ⟪leftSynthesis s (EuclideanSpace.single left 1),
            incidence s x
              (rightSynthesis s (EuclideanSpace.single right 1))⟫_ℂ)
        rightCoefficient)
      (packetDerivative t x) t
  differentiableResidual : ∀ t x,
    HasDerivAt
      (fun s ↦ bilinearMatrixPairing leftCoefficient
        (residual s x) rightCoefficient)
      (residualDerivative t x) t

/-- Coordinate matrix of the packet part at a time and prefix. -/
@[expose]
def CorrelationCompatibleFactorizationFlow.packetMatrix
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace] [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace] [CompleteSpace RightPacketSpace]
    {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (flow : CorrelationCompatibleFactorizationFlow Left Right
      LeftPacketSpace RightPacketSpace leftIndex rightIndex)
    (t : ℝ) (x : ℕ) : Matrix Left Right ℂ :=
  fun left right ↦
    ⟪flow.leftSynthesis t (EuclideanSpace.single left 1),
      flow.incidence t x
        (flow.rightSynthesis t (EuclideanSpace.single right 1))⟫_ℂ

@[expose]
def CorrelationCompatibleFactorizationFlow.packetPairing
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace] [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace] [CompleteSpace RightPacketSpace]
    {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (flow : CorrelationCompatibleFactorizationFlow Left Right
      LeftPacketSpace RightPacketSpace leftIndex rightIndex)
    (t : ℝ) (x : ℕ) : ℂ :=
  bilinearMatrixPairing flow.leftCoefficient (flow.packetMatrix t x)
    flow.rightCoefficient

@[expose]
def CorrelationCompatibleFactorizationFlow.residualPairing
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace] [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace] [CompleteSpace RightPacketSpace]
    {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (flow : CorrelationCompatibleFactorizationFlow Left Right
      LeftPacketSpace RightPacketSpace leftIndex rightIndex)
    (t : ℝ) (x : ℕ) : ℂ :=
  bilinearMatrixPairing flow.leftCoefficient (flow.residual t x)
    flow.rightCoefficient

/-- Pairing-level form of the exact factorization at every time. -/
@[surface_novel, surface_published]
theorem CorrelationCompatibleFactorizationFlow.cutoffPairing_eq
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace] [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace] [CompleteSpace RightPacketSpace]
    {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (flow : CorrelationCompatibleFactorizationFlow Left Right
      LeftPacketSpace RightPacketSpace leftIndex rightIndex)
    (t : ℝ) (x : ℕ) :
    bilinearMatrixPairing flow.leftCoefficient
        (productCutoffMatrix leftIndex rightIndex x) flow.rightCoefficient =
      flow.packetPairing t x + flow.residualPairing t x := by
  have hmatrix :
      productCutoffMatrix leftIndex rightIndex x =
        flow.packetMatrix t x + flow.residual t x := by
    ext left right
    exact flow.exactAtTime t x left right
  rw [hmatrix, bilinearMatrixPairing_add]
  rfl

/-- The packet/residual derivatives cancel exactly because their sum is the
time-independent arithmetic cutoff pairing. -/
@[surface_novel, surface_published]
theorem derivative_packetPart_eq_neg_derivative_residual
    {Left Right LeftPacketSpace RightPacketSpace : Type*}
    [Fintype Left] [Fintype Right] [DecidableEq Left] [DecidableEq Right]
    [NormedAddCommGroup LeftPacketSpace]
    [InnerProductSpace ℂ LeftPacketSpace] [CompleteSpace LeftPacketSpace]
    [NormedAddCommGroup RightPacketSpace]
    [InnerProductSpace ℂ RightPacketSpace] [CompleteSpace RightPacketSpace]
    {leftIndex : Left → ℕ} {rightIndex : Right → ℕ}
    (flow : CorrelationCompatibleFactorizationFlow Left Right
      LeftPacketSpace RightPacketSpace leftIndex rightIndex)
    (t : ℝ) (x : ℕ) :
    flow.packetDerivative t x = -flow.residualDerivative t x := by
  have hsum := (flow.differentiablePacket t x).add
    (flow.differentiableResidual t x)
  have hconstant :
      HasDerivAt
        (fun _ : ℝ ↦ bilinearMatrixPairing flow.leftCoefficient
          (productCutoffMatrix leftIndex rightIndex x)
          flow.rightCoefficient)
        0 t := hasDerivAt_const t _
  have heq :
      (fun s ↦ flow.packetPairing s x + flow.residualPairing s x) =
        (fun _ : ℝ ↦ bilinearMatrixPairing flow.leftCoefficient
          (productCutoffMatrix leftIndex rightIndex x)
          flow.rightCoefficient) := by
    funext s
    exact (flow.cutoffPairing_eq s x).symm
  have hzero :
      HasDerivAt
        (fun s ↦ flow.packetPairing s x + flow.residualPairing s x)
        0 t := by
    simpa only [heq] using hconstant
  have hderivative :
      flow.packetDerivative t x + flow.residualDerivative t x = 0 :=
    hsum.unique hzero
  exact eq_neg_of_add_eq_zero_left hderivative

end

end Surface.Core.TypeII

end
