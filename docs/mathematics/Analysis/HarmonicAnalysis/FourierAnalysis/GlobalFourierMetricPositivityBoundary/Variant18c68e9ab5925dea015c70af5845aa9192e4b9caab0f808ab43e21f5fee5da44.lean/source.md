# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.GlobalFourierMetricPositivityBoundary.Variant18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3208c8bc11c49d26daa691aabba714cc0fd9ff24` · SHA-256 `18c68e9ab5925dea015c70af5845aa9192e4b9caab0f808ab43e21f5fee5da44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Arithmetic.Basic

set_option autoImplicit false

namespace Think.Arithmetic.GlobalFourierMetricPositivityBoundary

/-
Metric-first positivity boundary for the global Fourier / exact-torsion
spectral framework.

Fourier duality may preserve an already constructed positive metric.  It does
not manufacture strict positivity from signed Möbius coefficients, adelic
distributions, or an uncompleted pre-Hilbert form.  This file records the gate:
positive metric, null quotient, Hilbert completion, unitary Fourier action,
orthogonal positive exact projector, and Fourier/projector commutation.
-/

inductive ClaimStatus where
  | admitted
  | refused
  | openResidue
deriving Repr, DecidableEq

inductive RefusalReason where
  | refused_as_theorem_language
  | missing_positive_metric
  | missing_null_quotient
  | missing_hilbert_completion
  | missing_orthogonal_exact_projector
  | missing_fourier_projector_commutation
deriving Repr, DecidableEq

structure RefusalMetadata where
  status : ClaimStatus
  refusalReason : RefusalReason
  statusText : String
  refusalReasonText : String
  theoremAuthorityClaim : Bool
  residueOpen : Bool
deriving Repr, DecidableEq

/-- Required refusal record for premature promotion of Fourier/Möbius duality
into theorem authority. -/
def refusedAsTheoremLanguageMetadata : RefusalMetadata :=
  { status := ClaimStatus.refused
    refusalReason := RefusalReason.refused_as_theorem_language
    statusText := "refused"
    refusalReasonText := "refused_as_theorem_language"
    theoremAuthorityClaim := false
    residueOpen := true }

/-- Boundary surface for the metric-first positivity gate. -/
structure GlobalFourierMetricPositivityBoundary where
  positiveMetricConstructed : Bool
  nullSpaceQuotiented : Bool
  hilbertCompletionTaken : Bool
  globalFourierUnitary : Bool
  exactProjectorIdempotent : Bool
  exactProjectorSelfAdjoint : Bool
  exactProjectorPositive : Bool
  fourierCommutesWithExactProjector : Bool
  strictPositiveExactMetric : Bool
  hilbertPolyaPromotionGateOpen : Bool
  unconditionalHilbertPolyaClaim : Bool
  prematurePromotionRefusal : RefusalMetadata
  strictPositiveExactMetric_of_complete_gate :
    positiveMetricConstructed = true →
    nullSpaceQuotiented = true →
    hilbertCompletionTaken = true →
    globalFourierUnitary = true →
    exactProjectorIdempotent = true →
    exactProjectorSelfAdjoint = true →
    exactProjectorPositive = true →
    fourierCommutesWithExactProjector = true →
    strictPositiveExactMetric = true
  fourier_duality_does_not_manufacture_metric :
    globalFourierUnitary = true →
    positiveMetricConstructed = false →
    strictPositiveExactMetric = false
  unconditional_hp_requires_separate_spectral_authority :
    unconditionalHilbertPolyaClaim = false

/-- Default posture: Fourier unitarity may be admitted, but the metric,
quotient/completion, orthogonal exact projection, and commutation obligations
remain open; therefore strict positivity and Hilbert--Pólya authority are not
promoted. -/
def defaultGlobalFourierMetricPositivityBoundary :
    GlobalFourierMetricPositivityBoundary :=
  { positiveMetricConstructed := false
    nullSpaceQuotiented := false
    hilbertCompletionTaken := false
    globalFourierUnitary := true
    exactProjectorIdempotent := false
    exactProjectorSelfAdjoint := false
    exactProjectorPositive := false
    fourierCommutesWithExactProjector := false
    strictPositiveExactMetric := false
    hilbertPolyaPromotionGateOpen := false
    unconditionalHilbertPolyaClaim := false
    prematurePromotionRefusal := refusedAsTheoremLanguageMetadata
    strictPositiveExactMetric_of_complete_gate := by
      intro hMetric
      cases hMetric
    fourier_duality_does_not_manufacture_metric := by
      intro _hFourier _hMetric
      rfl
    unconditional_hp_requires_separate_spectral_authority := rfl }

/-- Completed metric gate witness.  This opens strict positivity of the exact
metric and the promotion gate, but still does not assert unconditional
Hilbert--Pólya/RH authority without a separate determinant/spectral theorem. -/
def completedMetricGateBoundary : GlobalFourierMetricPositivityBoundary :=
  { positiveMetricConstructed := true
    nullSpaceQuotiented := true
    hilbertCompletionTaken := true
    globalFourierUnitary := true
    exactProjectorIdempotent := true
    exactProjectorSelfAdjoint := true
    exactProjectorPositive := true
    fourierCommutesWithExactProjector := true
    strictPositiveExactMetric := true
    hilbertPolyaPromotionGateOpen := true
    unconditionalHilbertPolyaClaim := false
    prematurePromotionRefusal := refusedAsTheoremLanguageMetadata
    strictPositiveExactMetric_of_complete_gate := by
      intro _hMetric _hNull _hComplete _hFourier _hIdem _hSelf _hPositive _hCommute
      rfl
    fourier_duality_does_not_manufacture_metric := by
      intro _hFourier hMetric
      cases hMetric
    unconditional_hp_requires_separate_spectral_authority := rfl }

/-- The complete metric-first chain is sufficient for strict positivity of the
exact-sector metric. -/
theorem strict_positivity_requires_metric_and_orthogonal_projection
    (boundary : GlobalFourierMetricPositivityBoundary)
    (hMetric : boundary.positiveMetricConstructed = true)
    (hNull : boundary.nullSpaceQuotiented = true)
    (hCompletion : boundary.hilbertCompletionTaken = true)
    (hFourier : boundary.globalFourierUnitary = true)
    (hIdempotent : boundary.exactProjectorIdempotent = true)
    (hSelfAdjoint : boundary.exactProjectorSelfAdjoint = true)
    (hPositive : boundary.exactProjectorPositive = true)
    (hCommute : boundary.fourierCommutesWithExactProjector = true) :
    boundary.strictPositiveExactMetric = true :=
  boundary.strictPositiveExactMetric_of_complete_gate
    hMetric hNull hCompletion hFourier hIdempotent hSelfAdjoint hPositive hCommute

/-- Fourier duality alone does not manufacture a strict positive exact-sector
metric. -/
theorem fourier_duality_does_not_manufacture_strict_positivity :
    defaultGlobalFourierMetricPositivityBoundary.globalFourierUnitary = true ∧
      defaultGlobalFourierMetricPositivityBoundary.positiveMetricConstructed = false ∧
      defaultGlobalFourierMetricPositivityBoundary.strictPositiveExactMetric = false := by
  exact ⟨rfl, rfl, rfl⟩

/-- Default posture retains all metric/projection obligations as open gates. -/
theorem default_boundary_retains_metric_first_obligations :
    defaultGlobalFourierMetricPositivityBoundary.positiveMetricConstructed = false ∧
      defaultGlobalFourierMetricPositivityBoundary.nullSpaceQuotiented = false ∧
      defaultGlobalFourierMetricPositivityBoundary.hilbertCompletionTaken = false ∧
      defaultGlobalFourierMetricPositivityBoundary.exactProjectorIdempotent = false ∧
      defaultGlobalFourierMetricPositivityBoundary.exactProjectorSelfAdjoint = false ∧
      defaultGlobalFourierMetricPositivityBoundary.exactProjectorPositive = false ∧
      defaultGlobalFourierMetricPositivityBoundary.fourierCommutesWithExactProjector = false := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

/-- A completed metric gate opens strict positivity of the exact sector. -/
theorem completed_gate_opens_strict_positive_exact_metric :
    completedMetricGateBoundary.strictPositiveExactMetric = true ∧
      completedMetricGateBoundary.hilbertPolyaPromotionGateOpen = true := by
  exact ⟨rfl, rfl⟩

/-- Even the completed metric gate does not itself assert Hilbert--Pólya or RH;
that remains a separate determinant/spectral authority obligation. -/
theorem completed_gate_does_not_claim_unconditional_hilbert_polya :
    completedMetricGateBoundary.unconditionalHilbertPolyaClaim = false := by
  rfl

/-- Premature Fourier/Möbius positivity promotion is refused with the exact
required metadata. -/
theorem premature_fourier_mobius_positivity_claim_refused :
    defaultGlobalFourierMetricPositivityBoundary.prematurePromotionRefusal.status =
        ClaimStatus.refused ∧
      defaultGlobalFourierMetricPositivityBoundary.prematurePromotionRefusal.refusalReason =
        RefusalReason.refused_as_theorem_language ∧
      defaultGlobalFourierMetricPositivityBoundary.prematurePromotionRefusal.statusText =
        "refused" ∧
      defaultGlobalFourierMetricPositivityBoundary.prematurePromotionRefusal.refusalReasonText =
        "refused_as_theorem_language" := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/-- The metadata explicitly denies theorem authority for the premature claim and
keeps the residue open. -/
theorem premature_claim_has_no_theorem_authority :
    defaultGlobalFourierMetricPositivityBoundary.prematurePromotionRefusal.theoremAuthorityClaim = false ∧
      defaultGlobalFourierMetricPositivityBoundary.prematurePromotionRefusal.residueOpen = true := by
  exact ⟨rfl, rfl⟩

/-- The complete chain is represented as metric construction, null quotient,
completion, Fourier unitarity, orthogonal positive exact projection, and
Fourier/projector commutation. -/
theorem completed_gate_contains_full_positive_metric_chain :
    completedMetricGateBoundary.positiveMetricConstructed = true ∧
      completedMetricGateBoundary.nullSpaceQuotiented = true ∧
      completedMetricGateBoundary.hilbertCompletionTaken = true ∧
      completedMetricGateBoundary.globalFourierUnitary = true ∧
      completedMetricGateBoundary.exactProjectorIdempotent = true ∧
      completedMetricGateBoundary.exactProjectorSelfAdjoint = true ∧
      completedMetricGateBoundary.exactProjectorPositive = true ∧
      completedMetricGateBoundary.fourierCommutesWithExactProjector = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl, rfl, rfl, rfl⟩

end Think.Arithmetic.GlobalFourierMetricPositivityBoundary
```
