-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixWord.Variant9fa3b372c1d6d61bc93cb2c68e91e3ed02f5b964ca8e3ef885e6c4e6714f4e50","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9fa3b372c1d6d61bc93cb2c68e91e3ed02f5b964ca8e3ef885e6c4e6714f4e50","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixWord.Variant9fa3b372c1d6d61bc93cb2c68e91e3ed02f5b964ca8e3ef885e6c4e6714f4e50","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9fa3b372c1d6d61bc93cb2c68e91e3ed02f5b964ca8e3ef885e6c4e6714f4e50","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/provenance-reuse/FutureObservableProvenance.verified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FutureObservable

/-!+# Checked parent reuse for exact provenance words

The word executes its head first. Its composed state matrix therefore appends
the head generator on the right of the parent's already checked matrix. The
fold theorem binds this recursive computation to independent full-word replay;
it permits reuse of a source-local parent product, not omission of any source
link, local expansion or final readout comparison.

Direction and formation of the medium: grwtsk contributors. Implementation and
proof construction: OpenAI Codex. Efficacy and integration remain separate.
-/


namespace GRWTSK.Algebra.LinearAlgebra.MatrixWord.Variant9fa3b372c1d6d61bc93cb2c68e91e3ed02f5b964ca8e3ef885e6c4e6714f4e50

set_option autoImplicit false

namespace FormalResearch.PositiveAtlas.FutureObservableProvenance

open FutureObservable

variable {ι Move : Type*} [Fintype ι] [DecidableEq ι]

/-- Chronological word composition, with the head generator acting first. -/
def matrixWord (generators : Move → Matrix ι ι ℚ) : List Move → Matrix ι ι ℚ
  | [] => 1
  | g :: word => matrixWord generators word * generators g

/-- Exact parent reuse has a fixed multiplication orientation. -/
theorem matrixWord_cons (generators : Move → Matrix ι ι ℚ)
    (g : Move) (word : List Move) :
    matrixWord generators (g :: word) = matrixWord generators word * generators g := rfl

/-- Complete left-to-right replay with any initial matrix agrees with the
recursive word product; no commutativity or involution is assumed. -/
theorem matrixWord_fold (generators : Move → Matrix ι ι ℚ) (word : List Move)
    (initial : Matrix ι ι ℚ) :
    word.foldl (fun accumulated g => generators g * accumulated) initial =
      matrixWord generators word * initial := by
  induction word generalizing initial with
  | nil => simp [matrixWord]
  | cons g word ih =>
    simp only [List.foldl_cons, matrixWord, ih, Matrix.mul_assoc]

/-- Recursive parent products reproduce the original state execution. -/
theorem matrixWord_execute (generators : Move → Matrix ι ι ℚ)
    (word : List Move) (x : ι → ℚ) :
    (matrixWord generators word).mulVec x =
      execute (fun g => (generators g).mulVec) word x := by
  induction word generalizing x with
  | nil => simp [matrixWord, execute]
  | cons g word ih =>
    simp only [matrixWord, execute, ← Matrix.mulVec_mulVec, ih]

/-- A checked parent and checked local expansion imply the complete child
provenance equation, with the unchanged target and every signed entry retained. -/
theorem provenance_extension (generators : Move → Matrix ι ι ℚ)
    (H parent child : Matrix ι ι ℚ) (word : List Move) (g : Move)
    (parent_checked : parent = pullback H (matrixWord generators word))
    (child_checked : child = pullback parent (generators g)) :
    child = pullback H (matrixWord generators (g :: word)) := by
  rw [matrixWord_cons, pullback_comp, ← parent_checked]
  exact child_checked

/-- The retained complete child readout is an actual finite future. -/
theorem quadratic_matrixWord (generators : Move → Matrix ι ι ℚ)
    (H : Matrix ι ι ℚ) (word : List Move) (x : ι → ℚ) :
    quadratic (pullback H (matrixWord generators word)) x =
      quadratic H (execute (fun g => (generators g).mulVec) word x) := by
  rw [quadratic_pullback, matrixWord_execute]

end FormalResearch.PositiveAtlas.FutureObservableProvenance
