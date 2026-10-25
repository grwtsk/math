# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestStressMultivar.Variant4a70c7fa82bba241bbb2340599e0333ef03d1b7521a552cb56864b59ee6eb26e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `180aa0b642b218db6f5486c4af393804e461bd4c` · SHA-256 `dc6a34650fdbb288220fba8eaa814433ba4b77957066e81e3084a04e6dc7807d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Variant59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.I01.Variant59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_stress_multivar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.I01.Variant59d9c813be4bb8b8ec83f81234d0285d2f028c6745267571c6e556cbf6aae7f9

open LeanCert.Core
open LeanCert.Engine
open LeanCert.Engine.Optimization
open LeanCert.Validity.GlobalOpt

-- Box domains for global optimization.
def I01 : IntervalRat := ⟨0, 1, by norm_num⟩
def B01_2D : Box := [I01, I01]
def B01_3D : Box := [I01, I01, I01]

-- Multivariate stress tests via global optimization theorems.
theorem stress_opt_2d_sum_sq :
    ∀ ρ, Box.envMem ρ B01_2D → (∀ i, i ≥ B01_2D.length → ρ i = 0) →
      Expr.eval ρ (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0))
                           (Expr.mul (Expr.var 1) (Expr.var 1))) ≤ (2 : ℚ) :=
  verify_global_upper_bound
    (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.mul (Expr.var 1) (Expr.var 1)))
    (ExprSupportedCore.add
      (ExprSupportedCore.mul (ExprSupportedCore.var 0) (ExprSupportedCore.var 0))
      (ExprSupportedCore.mul (ExprSupportedCore.var 1) (ExprSupportedCore.var 1)))
    B01_2D 2 ⟨1500, 1/1000, false, 10⟩
    (by native_decide)

theorem stress_opt_2d_xy_nonneg :
    ∀ ρ, Box.envMem ρ B01_2D → (∀ i, i ≥ B01_2D.length → ρ i = 0) →
      (0 : ℚ) ≤ Expr.eval ρ (Expr.mul (Expr.var 0) (Expr.var 1)) :=
  verify_global_lower_bound
    (Expr.mul (Expr.var 0) (Expr.var 1))
    (ExprSupportedCore.mul (ExprSupportedCore.var 0) (ExprSupportedCore.var 1))
    B01_2D 0 ⟨1500, 1/1000, false, 10⟩
    (by native_decide)

theorem stress_opt_3d_sum_sq :
    ∀ ρ, Box.envMem ρ B01_3D → (∀ i, i ≥ B01_3D.length → ρ i = 0) →
      Expr.eval ρ
        (Expr.add (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0))
                             (Expr.mul (Expr.var 1) (Expr.var 1)))
                  (Expr.mul (Expr.var 2) (Expr.var 2))) ≤ (3 : ℚ) :=
  verify_global_upper_bound
    (Expr.add (Expr.add (Expr.mul (Expr.var 0) (Expr.var 0)) (Expr.mul (Expr.var 1) (Expr.var 1)))
              (Expr.mul (Expr.var 2) (Expr.var 2)))
    (ExprSupportedCore.add
      (ExprSupportedCore.add
        (ExprSupportedCore.mul (ExprSupportedCore.var 0) (ExprSupportedCore.var 0))
        (ExprSupportedCore.mul (ExprSupportedCore.var 1) (ExprSupportedCore.var 1)))
      (ExprSupportedCore.mul (ExprSupportedCore.var 2) (ExprSupportedCore.var 2)))
    B01_3D 3 ⟨2000, 1/1000, false, 10⟩
    (by native_decide)
```
