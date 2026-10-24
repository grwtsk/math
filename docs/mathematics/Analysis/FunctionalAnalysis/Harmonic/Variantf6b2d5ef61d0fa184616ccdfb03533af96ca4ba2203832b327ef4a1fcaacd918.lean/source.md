# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Harmonic.Variantf6b2d5ef61d0fa184616ccdfb03533af96ca4ba2203832b327ef4a1fcaacd918

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba048cbe0bb65101ca49cf17a26e3196f0693ddc` · SHA-256 `8ee1a96d9ae3adb595b9da965a372e9315defbda9c180e81f42704b63bb93ceb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.IsHarmonic.Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.IsHarmonic.Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"b9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Hilbert/Harmonic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Hilbert.Bicomplex

/-!
# Finite harmonic terrain states

Harmonicity is the kernel of the exact finite Hodge Laplacian.  Positivity is
proved from the Hermitian Hodge--Dirac matrix; it is not a numerical
eigenvalue check.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.IsHarmonic.Variantb9c2e21c256246a9e57e7159ef2e33a147eb0bdb8a0f8a2acee7fd6b978d5b82

noncomputable section

namespace DAF.Hilbert

open scoped InnerProductSpace

universe u

variable {Index : Type u} [Fintype Index] [DecidableEq Index]

namespace FiniteDifferentialComplex

/-- A finite cochain is harmonic precisely when its Laplacian vanishes. -/
def IsHarmonic (complex : FiniteDifferentialComplex Index)
    (vector : FiniteHilbert Index) : Prop :=
  complex.laplacianOperator vector = 0

theorem harmonic_iff_mem_ker_laplacian
    (complex : FiniteDifferentialComplex Index)
    (vector : FiniteHilbert Index) :
    complex.IsHarmonic vector ↔
      vector ∈ LinearMap.ker complex.laplacianOperator :=
  Iff.rfl

/-- The finite Hodge Laplacian has nonnegative quadratic form. -/
theorem laplacian_positive
    (complex : FiniteDifferentialComplex Index)
    (vector : FiniteHilbert Index) :
    0 ≤ (inner ℂ (complex.laplacianOperator vector) vector).re := by
  let dirac := complex.hodgeDirac
  have symmetric : dirac.toLinearMap.IsSymmetric :=
    FiniteOperator.isSymmetric_toLinearMap_iff dirac |>.mpr
      complex.hodgeDirac_isHermitian
  change 0 ≤ (inner ℂ (complex.laplacian.toLinearMap vector) vector).re
  rw [← complex.hodgeDirac_square]
  have square_apply :
      FiniteOperator.toLinearMap (dirac * dirac) vector =
        dirac.toLinearMap (dirac.toLinearMap vector) := by
    apply PiLp.ext
    intro index
    change Matrix.mulVec (dirac * dirac) vector.ofLp index =
      Matrix.mulVec dirac (Matrix.mulVec dirac vector.ofLp) index
    rw [Matrix.mulVec_mulVec]
  rw [square_apply]
  rw [symmetric (dirac.toLinearMap vector) vector]
  exact inner_self_nonneg (𝕜 := ℂ) (x := dirac.toLinearMap vector)

end FiniteDifferentialComplex

end DAF.Hilbert
```
