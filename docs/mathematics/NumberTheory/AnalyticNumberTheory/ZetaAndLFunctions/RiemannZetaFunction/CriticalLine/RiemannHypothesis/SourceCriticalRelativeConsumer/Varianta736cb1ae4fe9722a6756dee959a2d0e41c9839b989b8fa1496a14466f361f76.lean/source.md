# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalRelativeConsumer.Varianta736cb1ae4fe9722a6756dee959a2d0e41c9839b989b8fa1496a14466f361f76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f332986727fee7bceec8bf374facba31de2ff978` · SHA-256 `8beb060d4cededc9fef3e0ec4844b17e126b8f7d91bbe08c128fa042d09062e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegerBoundAtRadius.Variant41237701c9a902717c36791d2e959beeec4c64a14ea42a36ad716fd29abb020b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41237701c9a902717c36791d2e959beeec4c64a14ea42a36ad716fd29abb020b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.IntegerBoundAtRadius.Variant41237701c9a902717c36791d2e959beeec4c64a14ea42a36ad716fd29abb020b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"41237701c9a902717c36791d2e959beeec4c64a14ea42a36ad716fd29abb020b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/incremental-20261006T162441Z/proofs/SourceCriticalRelativeConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CriticalRelativePairing
import IntegerWitnessTransfer

/-!
Same-radius actual-source critical pairing consumer. The all-real uniform pairing
bound is an explicit premise, not a constructed witness. The original actual
integer calibration and unchanged residual estimate consumer are reused.
Direction: grwtsk contributors. Scratch proof: OpenAI Codex (issue ingestion).
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IntegerBoundAtRadius.Variant41237701c9a902717c36791d2e959beeec4c64a14ea42a36ad716fd29abb020b

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCriticalRelativeConsumer
open OmegaResearch.CriticalRelativePairing
open ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- The actual lattice correction has the sharper loss at the original radius. -/
theorem integer_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    ∀ A : ℝ, R ≤ A → integerJ A ≤ K + 1 + 10 / R := by
  intro A hRA
  have hp : 0 < R := by linarith
  have hd : 10 / A ≤ 10 / R :=
    div_le_div_of_nonneg_left (by norm_num) hp hRA
  have hi := integerJ_le_critical (hR.trans hRA)
  linarith [hcritical A hRA]

/-- Actual residual upper bound, retaining both quantitative correction losses. -/
theorem residual_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    ∀ A : ℝ, R ≤ A → mertensResidual A ≤
      K + 1 + 10 / R + (riemannZeta (1 / 2)).re + 260 / R ^ 2 := by
  exact ContinuousResearch.IntegerWitnessTransfer.residual_bound_at_radius hR
    (integer_bound_at_radius hR hcritical)

/-- The unchanged original estimate follows conditionally; no K or R is supplied. -/
theorem estimate_of_criticalRelativePairing_bound_at_radius {K R : ℝ} (hR : 1 ≤ R)
    (hcritical : ∀ A : ℝ, R ≤ A → criticalRelativePairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (K + 1 + 10 / R + (riemannZeta (1 / 2)).re + 260 / R ^ 2),
    le_max_left _ _, R, hR, ?_⟩
  intro A hRA
  exact (residual_bound_at_radius hR hcritical A hRA).trans (le_max_right _ _)

end FormalResearch.RiemannHypothesis.SourceCriticalRelativeConsumer
```
