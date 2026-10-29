-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SupportAbstractionLoss.Varianta50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SupportAbstractionLoss.Varianta50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"a50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Integration/WorldModelPrototype/SupportGraphAbstraction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Core.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic.FinCases

/-!
# Sound undirected-support abstraction

The prototype support graph forgets edge orientation by symmetrizing a square
Boolean matrix.  Every directed edge remains visible, but the abstraction is
not faithful: orientation, invertibility, and permutation information can be
lost.  Those losses are demonstrated below rather than hidden in a generic
`translationSucceeded` flag.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SupportAbstractionLoss.Varianta50f31488edcce13b1f676d2f2f5f31570bc3366bbf23957070c21d0bf89541a

namespace DAF.Integration.WorldModelPrototype

/-- Symmetrized Boolean support of a square Boolean matrix. -/
def undirectedSupport
    {n : Nat}
    (matrix : BitMatrix n n) :
    BitMatrix n n :=
  fun i j => matrix i j || matrix j i

/-- Every directed edge is retained by the support abstraction. -/
theorem directed_edge_visible
    {n : Nat}
    (matrix : BitMatrix n n)
    {i j : Fin n}
    (edge : matrix i j = true) :
    undirectedSupport matrix i j = true := by
  simp [undirectedSupport, edge]

/-- The abstract support is symmetric. -/
theorem undirectedSupport_symmetric
    {n : Nat}
    (matrix : BitMatrix n n)
    (i j : Fin n) :
    undirectedSupport matrix i j = undirectedSupport matrix j i := by
  simp [undirectedSupport, Bool.or_comm]

/-- Convert a Boolean matrix to its coefficient matrix over `ZMod 2`. -/
def boolZModMatrix
    {m n : Nat}
    (matrix : BitMatrix m n) :
    Matrix (Fin m) (Fin n) (ZMod 2) :=
  fun i j => if matrix i j then 1 else 0

/-- The two-state swap matrix. -/
def swapSupportExample : BitMatrix 2 2 :=
  fun i j => decide (i ≠ j)

/-- A single oriented edge with the same undirected support as the swap. -/
def orientedSupportExample : BitMatrix 2 2 :=
  fun i j => decide (i = 0 ∧ j = 1)

/-- Orientation is genuinely forgotten. -/
theorem support_examples_distinct :
    swapSupportExample ≠ orientedSupportExample := by
  intro equal
  have entry := congrFun (congrFun equal (1 : Fin 2)) (0 : Fin 2)
  simp [swapSupportExample, orientedSupportExample] at entry

/-- The two distinct matrices have exactly the same abstract support. -/
theorem support_examples_same_abstraction :
    undirectedSupport swapSupportExample =
      undirectedSupport orientedSupportExample := by
  funext i j
  fin_cases i <;> fin_cases j <;> decide

/-- The swap representation remains nonsingular over `ZMod 2`. -/
theorem swapSupportExample_det :
    (boolZModMatrix swapSupportExample).det = 1 := by
  native_decide

/-- The single-edge representation is singular over `ZMod 2`. -/
theorem orientedSupportExample_det :
    (boolZModMatrix orientedSupportExample).det = 0 := by
  native_decide

/--
Equal undirected support does not determine matrix invertibility.  This is a
concrete sound-abstraction defect, not a theorem-authority failure.
-/
theorem support_does_not_determine_invertibility :
    ∃ left right : BitMatrix 2 2,
      left ≠ right ∧
      undirectedSupport left = undirectedSupport right ∧
      (boolZModMatrix left).det = 1 ∧
      (boolZModMatrix right).det = 0 :=
  ⟨swapSupportExample, orientedSupportExample,
    support_examples_distinct,
    support_examples_same_abstraction,
    swapSupportExample_det,
    orientedSupportExample_det⟩

/-- Machine-readable declaration of what the chosen abstraction forgets. -/
structure SupportAbstractionLoss where
  orientation : Bool
  invertibility : Bool
  permutationParity : Bool
  coefficientInterpretation : Bool
  deriving DecidableEq, Repr

/-- Loss profile for the undirected-support route. -/
def undirectedSupportLoss : SupportAbstractionLoss where
  orientation := true
  invertibility := true
  permutationParity := true
  coefficientInterpretation := true

end DAF.Integration.WorldModelPrototype
