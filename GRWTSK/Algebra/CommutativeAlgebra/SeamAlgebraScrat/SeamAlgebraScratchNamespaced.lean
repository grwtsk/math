-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.BumpCorrelation.Variant1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.BumpCorrelation.Variant1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be","mathematical_subject":"Algebra.Polynomials","original_sha256":"1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/1f/1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be--SeamAlgebraScratch.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

namespace GRWTSK.Algebra.CommutativeAlgebra.BumpCorrelation.Variant1f69468a2dcf1f1b8d57259880ee12a8defb5d023b06e910307c2fab93ccf2be

set_option autoImplicit false
noncomputable section
namespace SeamScratch
/-- The order-0 polynomial in the unit displacement variable. -/
def bumpCorrelation (v : ℝ) : ℝ :=
  (2 - v)^9 * (7 * v^8 + 126 * v^7 + 988 * v^6 + 4344 * v^5 + 11376 * v^4 + 17376 * v^3 + 15808 *
    v^2 + 8064 * v + 1792) / 1531530

/-- The order-1 polynomial in the unit displacement variable. -/
def bumpCorrelationFirst (v : ℝ) : ℝ :=
  (2 - v)^8 * (-7 * v^8 - 112 * v^7 - 768 * v^6 - 2880 * v^5 - 6144 * v^4 - 6912 * v^3 - 4096 *
    v^2 - 1024 * v) / 90090

/-- The order-2 polynomial in the unit displacement variable. -/
def bumpCorrelationSecond (v : ℝ) : ℝ :=
  (2 - v)^7 * (56 * v^8 + 784 * v^7 + 4592 * v^6 + 14112 * v^5 + 22464 * v^4 + 13440 * v^3 - 256 *
    v^2 - 3584 * v - 1024) / 45045

/-- The order-3 polynomial in the unit displacement variable. -/
def bumpCorrelationThird (v : ℝ) : ℝ :=
  (2 - v)^6 * (-280 * v^8 - 3360 * v^7 - 16240 * v^6 - 38080 * v^5 - 35328 * v^4 + 15104 * v^3 +
    27648 * v^2 + 9216 * v) / 15015

/-- The order-4 polynomial in the unit displacement variable. -/
def bumpCorrelationFourth (v : ℝ) : ℝ :=
  (2 - v)^5 * (3920 * v^8 + 39200 * v^7 + 147840 * v^6 + 224000 * v^5 - 27520 * v^4 - 418560 * v^3
    - 130560 * v^2 + 46080 * v + 18432) / 15015

theorem seam_algebra (A : ℝ) (hAn : A ≠ 0) : bumpCorrelation (2 - 15 / A) / 16 -
      (1 / A ^ 2) * bumpCorrelationSecond (2 - 15 / A) / 2 +
      (1 / A ^ 2) ^ 2 * bumpCorrelationFourth (2 - 15 / A) =
      -(455625 * (21152708708203125 + 39698670531093750 * (A - 15) +
        19438586772750000 * (A - 15)^2 + 4578940532700000 * (A - 15)^3 +
        614846274300000 * (A - 15)^4 + 49701147912000 * (A - 15)^5 +
        2395655558400 * (A - 15)^6 + 63360028160 * (A - 15)^7 +
        705106688 * (A - 15)^8)) / (544544 * A^17) := by
    dsimp [bumpCorrelation, bumpCorrelationSecond, bumpCorrelationFourth]
    field_simp
    ring

end SeamScratch
