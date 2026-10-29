-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/QSeries/JacobiCompression.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.QSeries.OnePrimeMoment
import Mathlib.Data.Matrix.Basic

/-!
# Exact Jacobi compression data
-/


namespace GRWTSK.Algebra.LinearAlgebra.JacobiCompression.Variant25151e7dbaac477fe9eaf3b1d22f83735908af9a490198ea94048a6b723cdcb1

namespace Mathematics.SemiLocalDefect.QSeries

open scoped BigOperators

abbrev RationalMatrix (rank : Nat) :=
  Matrix (Fin rank) (Fin rank) ℚ

def rationalQuadraticForm
    {rank : Nat}
    (matrix : RationalMatrix rank)
    (vector : Fin rank → ℚ) : ℚ :=
  ∑ row, ∑ column,
    vector row * matrix row column * vector column

structure JacobiCompression
    (system : OnePrimeMomentSystem)
    (rank : Nat) where
  defect : RationalMatrix rank
  symmetric :
    ∀ row column,
      defect row column =
        defect column row
  exactEvaluation :
    ∀ row column,
      defect row column =
        (system.moment
          (row.val + column.val)).evaluateThrough
            rank system.q
  compressionDigest : CompressionId

end Mathematics.SemiLocalDefect.QSeries
