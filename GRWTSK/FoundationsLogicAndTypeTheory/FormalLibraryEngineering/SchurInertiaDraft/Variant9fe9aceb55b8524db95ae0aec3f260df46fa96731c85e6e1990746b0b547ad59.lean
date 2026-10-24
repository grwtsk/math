-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ComplexInertia.Variant97e994a6390406110d4583c101dbfc0346d147c393dafb7206342f8812fb4086","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97e994a6390406110d4583c101dbfc0346d147c393dafb7206342f8812fb4086","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ComplexInertia.Variant97e994a6390406110d4583c101dbfc0346d147c393dafb7206342f8812fb4086","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"97e994a6390406110d4583c101dbfc0346d147c393dafb7206342f8812fb4086","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass4/inertia_review/SchurInertiaDraft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import HermitianInertiaDraft
import SchurZeroDraft

/-! Research scratch: exact displayed finite-complex issue #266 obligation.
Human programme direction: grwtsk contributors. OpenAI Codex proof construction.
Canonical Feshbach definitions are pinned to PR267 source; no maintained integration. -/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ComplexInertia.Variant97e994a6390406110d4583c101dbfc0346d147c393dafb7206342f8812fb4086

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.SchurInertia
open Matrix FormalResearch.PositiveAtlas
open ContinuousResearch.HermitianInertia ContinuousResearch.SchurZero
open scoped ComplexOrder
variable {m n : Type*} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]

/-- Literal three counts indexed by all eigenvalue indices, retaining multiplicities. -/
def complexInertia {σ : Type*} [Fintype σ] [DecidableEq σ]
    (M : Matrix σ σ ℂ) (hM : M.IsHermitian) : ℕ × ℕ × ℕ :=
  (Fintype.card {i // 0 < hM.eigenvalues i},
    Fintype.card {i // hM.eigenvalues i < 0},
    Fintype.card {i // hM.eigenvalues i = 0})

theorem positive_count_schur (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.IsHermitian) :
    Fintype.card {i // 0 < (full_isHermitian A C B hA hB).eigenvalues i} =
      Fintype.card {i // 0 < (reduced_isHermitian A C B hA hB).eigenvalues i} := by
  have hp : (shear C B).det ≠ 0 := by rw [shear_det]; exact one_ne_zero
  have he := positive_count_congruence
    (fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B)
    (shear C B) (reduced_isHermitian A C B hA hB) hp
    (Matrix.isHermitian_conjTranspose_mul_mul (shear C B) (reduced_isHermitian A C B hA hB))
  simpa only [← exact_congruence A C B hB] using he

theorem negative_count_schur (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.IsHermitian) :
    Fintype.card {i // (full_isHermitian A C B hA hB).eigenvalues i < 0} =
      Fintype.card {i // (reduced_isHermitian A C B hA hB).eigenvalues i < 0} := by
  have hp : (shear C B).det ≠ 0 := by rw [shear_det]; exact one_ne_zero
  have he := negative_count_congruence
    (fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B)
    (shear C B) (reduced_isHermitian A C B hA hB) hp
    (Matrix.isHermitian_conjTranspose_mul_mul (shear C B) (reduced_isHermitian A C B hA hB))
  simpa only [← exact_congruence A C B hB] using he

theorem complexInertia_schur (A : Matrix m m ℂ) (C : Matrix n m ℂ) (B : Matrix n n ℂ)
    [Invertible B] (hA : A.IsHermitian) (hB : B.IsHermitian) :
    complexInertia (fromBlocks A Cᴴ C B) (full_isHermitian A C B hA hB) =
      complexInertia
        (fromBlocks (Feshbach.schur A Cᴴ C B) (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B)
        (reduced_isHermitian A C B hA hB) := by
  unfold complexInertia
  rw [positive_count_schur A C B hA hB, negative_count_schur A C B hA hB,
    zero_count_schur A C B hA hB]

/-- The displayed issue proposition, including its arbitrary explicit Hermiticity witnesses. -/
def ComplexFeshbachInertiaObligation (A : Matrix m m ℂ) (C : Matrix n m ℂ)
    (B : Matrix n n ℂ) [Invertible B] : Prop :=
  ∀ (_hA : A.IsHermitian) (_hB : B.PosDef)
    (hH : (fromBlocks A Cᴴ C B).IsHermitian)
    (hFB : (fromBlocks (Feshbach.schur A Cᴴ C B)
      (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B).IsHermitian),
    complexInertia (fromBlocks A Cᴴ C B) hH =
      complexInertia (fromBlocks (Feshbach.schur A Cᴴ C B)
        (0 : Matrix m n ℂ) (0 : Matrix n m ℂ) B) hFB

theorem issue266_obligation (A : Matrix m m ℂ) (C : Matrix n m ℂ)
    (B : Matrix n n ℂ) [Invertible B] : ComplexFeshbachInertiaObligation A C B := by
  intro hA hB hH hFB
  exact complexInertia_schur A C B hA hB.isHermitian

#print axioms complexInertia
#print axioms positive_count_schur
#print axioms negative_count_schur
#print axioms complexInertia_schur
#print axioms ComplexFeshbachInertiaObligation
#print axioms issue266_obligation
end ContinuousResearch.SchurInertia
