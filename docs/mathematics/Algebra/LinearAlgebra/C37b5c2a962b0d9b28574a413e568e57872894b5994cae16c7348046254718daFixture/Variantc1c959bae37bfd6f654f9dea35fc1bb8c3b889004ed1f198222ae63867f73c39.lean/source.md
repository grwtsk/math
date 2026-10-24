# Complete source: GRWTSK.Algebra.LinearAlgebra.C37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718daFixture.Variantc1c959bae37bfd6f654f9dea35fc1bb8c3b889004ed1f198222ae63867f73c39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc01d88fbc73aaf839d086350862c775d34e790b` · SHA-256 `04815585cf379ee3bf15f761cfa7c429aeee08511dcd4bd2e29a4b87e348dac6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.A.Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.A.Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/c3/c37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da--Fixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.NormNum

-- Compiler fixture only. Not a supplied ChatGPT candidate or a general recognition theorem.

namespace GRWTSK.Algebra.LinearAlgebra.A.Variantc37b5c2a962b0d9b28574a413e568e57872894b5994cae16c7348046254718da

set_option pp.proofs false
namespace CompilerProbe

def A : Matrix (Fin 2) (Fin 4) ℝ := !![1, 0, -1, -2; 0, 1, 1, 1]

-- Fin indices are zero-based; columns 0,1 correspond to the author's labels 1,2.
theorem six_ordered_minors :
    (A.submatrix id ![0, 1]).det = 1 ∧
    (A.submatrix id ![0, 2]).det = 1 ∧
    (A.submatrix id ![0, 3]).det = 1 ∧
    (A.submatrix id ![1, 2]).det = 1 ∧
    (A.submatrix id ![1, 3]).det = 2 ∧
    (A.submatrix id ![2, 3]).det = 1 := by
  norm_num [A, Matrix.det_fin_two, Matrix.submatrix, Matrix.cons_val_two, Matrix.cons_val_three]

-- Swapping the selected column order changes the sign.
example : (A.submatrix id ![1, 0]).det = -1 := by
  norm_num [A, Matrix.det_fin_two, Matrix.submatrix]

#print six_ordered_minors
#print axioms six_ordered_minors
#check Matrix.det_fin_two
#check Matrix.det_fin_two_of
#check Matrix.submatrix
#check Matrix.cons_val_two
#check Matrix.cons_val_three
#check Matrix.det_permute

end CompilerProbe
```
