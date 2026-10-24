# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ZetaRealHalfPlane.Variant7cfa8e569f17fc78c1bdd355088579c9273105567e3759309b7aec65707ce113

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54a0cd686faa5d7b39af61d4ea2eff9d807bf4fe` · SHA-256 `c99256c727174d9ceece454ad4a0796b10bbee40bc53fe41deb4ee8be3599b98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.ZetaRealHalfPlane.Variant1efe991d78f4e361731696493367a20559ec5e52bb776073a1a7c6a8ca8facfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1efe991d78f4e361731696493367a20559ec5e52bb776073a1a7c6a8ca8facfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.ZetaRealHalfPlane.Variant1efe991d78f4e361731696493367a20559ec5e52bb776073a1a7c6a8ca8facfb","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"1efe991d78f4e361731696493367a20559ec5e52bb776073a1a7c6a8ca8facfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/ZetaRealHalfPlane.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.DirichletSeries

/-!
# Folder.Rebuild.AnalyticNumberTheory.ZetaRealHalfPlane

Real half-plane zeta series positivity for `σ > 1`.
-/


namespace GRWTSK.Analysis.AsymptoticAnalysis.ZetaRealHalfPlane.Variant1efe991d78f4e361731696493367a20559ec5e52bb776073a1a7c6a8ca8facfb

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def zetaRealHalfPlane
    (σ : Real) : Real :=
  ∑' n : Nat, posWeightReal σ n

theorem zetaRealHalfPlane_summable
    {σ : Real}
    (hσ : 1 < σ) :
    Summable fun n : Nat => posWeightReal σ n :=
  summable_posWeightReal_of_one_lt hσ

theorem zetaRealHalfPlane_ge_one
    {σ : Real}
    (hσ : 1 < σ) :
    1 ≤ zetaRealHalfPlane σ := by
  have hs := zetaRealHalfPlane_summable hσ
  have hle :=
    hs.sum_le_tsum ({1} : Finset Nat)
      (fun n _hn => posWeightReal_nonneg σ n)
  simpa [zetaRealHalfPlane, posWeightReal] using hle

/--
Checked real-half-plane nonvanishing of the positive zeta Dirichlet series.

This proves only the elementary real statement `zetaRealHalfPlane σ > 0` for
real `σ > 1` under the local Dirichlet-series definition. It is not the complex
zero-free half-plane theorem, not analytic continuation, and not PNT.
-/
theorem zetaRealHalfPlane_pos
    {σ : Real}
    (hσ : 1 < σ) :
    0 < zetaRealHalfPlane σ :=
  lt_of_lt_of_le zero_lt_one (zetaRealHalfPlane_ge_one hσ)

theorem zetaRealHalfPlane_ne_zero
    {σ : Real}
    (hσ : 1 < σ) :
    zetaRealHalfPlane σ ≠ 0 :=
  ne_of_gt (zetaRealHalfPlane_pos hσ)

end AnalyticNumberTheory
end Rebuild
end Folder
```
