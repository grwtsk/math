-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ZeroCountEqDimSubRank.Variant34b3cfca076f72b997a260083a4ee4f96e414e4b22bb94a566d13a083c07129b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34b3cfca076f72b997a260083a4ee4f96e414e4b22bb94a566d13a083c07129b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ZeroCountEqDimSubRank.Variant34b3cfca076f72b997a260083a4ee4f96e414e4b22bb94a566d13a083c07129b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"34b3cfca076f72b997a260083a4ee4f96e414e4b22bb94a566d13a083c07129b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass4/coordinator_inertia/ZeroMultiplicity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.LinearAlgebra.Matrix.Rank

/-! Research scratch: zero eigenvalue multiplicity, using the full complex
Hermitian spectral index rather than distinct spectral support. This is only
the zero-count part of issue 266; positive and negative counts remain separate.
Human program direction: grwtsk contributors; OpenAI Codex proof/review work.
-/

namespace GRWTSK.Algebra.LinearAlgebra.ZeroCountEqDimSubRank.Variant34b3cfca076f72b997a260083a4ee4f96e414e4b22bb94a566d13a083c07129b

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ZeroMultiplicity
open Matrix
variable {n : Type*} [Fintype n] [DecidableEq n]

theorem zero_count_eq_dim_sub_rank (M : Matrix n n ℂ) (hM : M.IsHermitian) :
    Fintype.card {i // hM.eigenvalues i = 0} = Fintype.card n - M.rank := by
  classical
  rw [hM.rank_eq_card_non_zero_eigs]
  simpa using Fintype.card_subtype_compl (fun i => hM.eigenvalues i ≠ 0)

theorem rank_congruence (M P : Matrix n n ℂ) (hP : P.det ≠ 0) :
    (Pᴴ * M * P).rank = M.rank := by
  have hPs : Pᴴ.det ≠ 0 := by simpa using hP
  rw [Matrix.rank_mul_eq_left_of_det_ne_zero P (Pᴴ * M) hP,
    Matrix.rank_mul_eq_right_of_det_ne_zero Pᴴ M hPs]

theorem zero_count_congruence (M P : Matrix n n ℂ) (hM : M.IsHermitian)
    (hP : P.det ≠ 0) (hN : (Pᴴ * M * P).IsHermitian) :
    Fintype.card {i // hN.eigenvalues i = 0} =
      Fintype.card {i // hM.eigenvalues i = 0} := by
  rw [zero_count_eq_dim_sub_rank _ hN, zero_count_eq_dim_sub_rank _ hM,
    rank_congruence M P hP]

theorem zero_count_constructed_congruence (M P : Matrix n n ℂ)
    (hM : M.IsHermitian) (hP : P.det ≠ 0) :
    Fintype.card {i // (Matrix.isHermitian_conjTranspose_mul_mul P hM).eigenvalues i = 0} =
      Fintype.card {i // hM.eigenvalues i = 0} :=
  zero_count_congruence M P hM hP (Matrix.isHermitian_conjTranspose_mul_mul P hM)

#print axioms zero_count_eq_dim_sub_rank
#print axioms rank_congruence
#print axioms zero_count_congruence
#print axioms zero_count_constructed_congruence
#check zero_count_constructed_congruence
end ContinuousResearch.ZeroMultiplicity
