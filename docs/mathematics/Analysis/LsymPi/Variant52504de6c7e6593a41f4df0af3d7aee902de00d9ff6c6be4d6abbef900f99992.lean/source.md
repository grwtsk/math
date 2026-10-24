# Complete source: GRWTSK.Analysis.LsymPi.Variant52504de6c7e6593a41f4df0af3d7aee902de00d9ff6c6be4d6abbef900f99992

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef35d2514286156c748f7e631ab204b7e73b0cea` · SHA-256 `e0816444251fc91b1fc287b969982c773f772a6a8a32d673abeddb0d6c2a1d38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.LsymPi.Varianta4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.LsymPi.Varianta4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"a4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/SpectralProof/Operators/LsymPi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SpectralProof.Operators.LtPi
import SpectralProof.Core.Integrability
import Mathlib.Analysis.Trace
import Mathlib.Analysis.NormedSpace.OperatorNorm
import Mathlib.Topology.Algebra.Module.Basic


namespace GRWTSK.Analysis.LsymPi.Varianta4b85ddc8ad66bf3482dcb3666c1224c48d09075386e17e7a5e79d15cd829595

noncomputable section

open Real Complex MeasureTheory Filter

namespace SpectralProof.Operators

variable {ϕ : ℝ → ℝ}

/--
Canonical operator \( L_{\text{sym}}^\varphi := \lim_{t → 0^+} L_t^\varphi \),
defined as a limit in the trace-norm topology of `Hϕ := L²(ℝ, e^{ϕ(x)} dx)`.
Assumes exponential decay of Φ via Paley–Wiener and ϕ(x) ≥ α|x| for α > π.
-/
noncomputable def Lsym_pi
    (Φ : ℝ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    Hϕ ϕ →ₗ[ℂ] Hϕ ϕ :=
  let seq := fun n : ℕ ↦ Lt_pi Φ (1 / (n + 1 : ℝ))
  let ops : ℕ → TraceClass ℂ (Hϕ ϕ) := fun n =>
    TraceClass.mk' (seq n) (by
      apply SpectralProof.Core.integrable_KtWeighted Φ (1 / (n + 1 : ℝ)) ϕ hϕ
      -- Use Paley–Wiener decay for Φ here
      sorry)
  let lim := Metric.completeSpace.hasLimit (ops : ℕ → TraceClass ℂ (Hϕ ϕ))
  TraceClass.continuousLinearMap lim.some

/--
Trace-class inclusion of `Lsym_pi`, via closure of the trace-class ideal.
-/
lemma trace_class_Lsym_pi
    (Φ : ℝ → ℂ) (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    TraceClass ℂ (Hϕ ϕ) (Lsym_pi Φ hϕ) := by
  let seq := fun n : ℕ ↦ Lt_pi Φ (1 / (n + 1 : ℝ))
  let ops := fun n ↦ TraceClass.mk' (seq n)
    (SpectralProof.Core.integrable_KtWeighted Φ _ ϕ hϕ sorry)
  exact TraceClass.limit_closed ops

/--
If Φ is real on the real axis (i.e. Φ(-λ) = conj Φ(λ)), then Lsym_π is symmetric.
This implies self-adjointness since Lsym_π is compact.
-/
lemma self_adjoint_Lsym_pi
    (Φ : ℝ → ℂ)
    (hΦ_symm : ∀ λ, Φ (-λ) = Complex.conj (Φ λ))
    (hϕ : ∃ α > π, ∀ x, ϕ x ≥ α * |x|) :
    IsSelfAdjoint (Lsym_pi Φ hϕ) := by
  -- Strategy: show kernel k_t is real-valued and even ⇒ kernel symmetric
  -- then L_t are symmetric ⇒ limit is symmetric
  sorry

end SpectralProof.Operators
```
