# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.AngularTriangleLiteralCheck.Variant3dd5b2cd6552c87e3ffda6016b228a4d767e34166bb18abb595981ae85535c79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20fcb2cb410e4ccfc67548e241e6e57aa8bbe0c9` · SHA-256 `a13070b02431390fe1104d4b389dc03f8653939d35fd3666f0ba6d21764d3746`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SqrtNormalizedIntegralEqNorm.Variant03358a870f943a8dc0d4dc9d0f41e14bae6c95f0178562acaf9094e07a2bd3d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03358a870f943a8dc0d4dc9d0f41e14bae6c95f0178562acaf9094e07a2bd3d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SqrtNormalizedIntegralEqNorm.Variant03358a870f943a8dc0d4dc9d0f41e14bae6c95f0178562acaf9094e07a2bd3d7","mathematical_subject":"Analysis.Integration","original_sha256":"03358a870f943a8dc0d4dc9d0f41e14bae6c95f0178562acaf9094e07a2bd3d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/angular-triangle-literal-check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel

/-! The angularly normalized triangle inequality for genuine full-line L2 functions. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SqrtNormalizedIntegralEqNorm.Variant03358a870f943a8dc0d4dc9d0f41e14bae6c95f0178562acaf9094e07a2bd3d7

set_option autoImplicit false
namespace AngularL2TriangleScratch
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
noncomputable section

/-- The angular square-integral norm equals the scaled norm of the admitted full-line vector. -/
theorem sqrt_normalized_integral_eq_norm (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) =
      Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f‖ := by
  rw [← norm_sq_toLp f hf, Real.sqrt_mul (by positivity), Real.sqrt_sq (norm_nonneg _)]

/-- Minkowski's inequality retains the complete angular square integrals of both summands. -/
theorem sqrt_normalized_integral_add_le (f g : ℝ → ℂ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t + g t‖ ^ 2) ≤
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖g t‖ ^ 2) := by
  have hs := sqrt_normalized_integral_eq_norm (f + g) (hf.add hg)
  simp only [Pi.add_apply] at hs
  rw [hs,
    sqrt_normalized_integral_eq_norm f hf, sqrt_normalized_integral_eq_norm g hg]
  rw [MemLp.toLp_add hf hg]
  calc
    Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f + hg.toLp g‖ ≤
        Real.sqrt (1 / (2 * Real.pi)) * (‖hf.toLp f‖ + ‖hg.toLp g‖) :=
      mul_le_mul_of_nonneg_left (norm_add_le _ _) (Real.sqrt_nonneg _)
    _ = _ := mul_add _ _ _

end
end AngularL2TriangleScratch

open MeasureTheory
open AngularL2TriangleScratch

example (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) =
      Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f‖ :=
  sqrt_normalized_integral_eq_norm f hf

example (f g : ℝ → ℂ) (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t + g t‖ ^ 2) ≤
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖g t‖ ^ 2) :=
  sqrt_normalized_integral_add_le f g hf hg
```
