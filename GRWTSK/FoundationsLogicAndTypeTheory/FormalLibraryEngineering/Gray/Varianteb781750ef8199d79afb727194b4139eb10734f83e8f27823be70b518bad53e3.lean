-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HypercubeAdjacent.Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HypercubeAdjacent.Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/Hypercube/Gray.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.Hypercube
import Lean.Elab.Tactic.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HypercubeAdjacent.Variant9813024f99476e5515448699d0aa3b5a08da5fc56b99a7662ad4e9e296adaa8b

namespace Boolean.Cube

/-!
# Gray-code traversals

Adjacency and length facts for reflected Gray-code walks on Boolean cubes.
-/

/-- Two cube vertices are adjacent when one coordinate flip carries one to the other. -/
def Hypercube.Adjacent {n : Nat}
    (x y : Hypercube.Point n) : Prop :=
  ∃ i : Fin n, y = Hypercube.flip x i

/-- Consecutive vertices in a path are adjacent. -/
def Hypercube.AdjacentPath {n : Nat} :
    List (Hypercube.Point n) → Prop
  | [] => True
  | [_] => True
  | x :: y :: rest =>
      Hypercube.Adjacent x y ∧
        Hypercube.AdjacentPath (y :: rest)

/-- The all-false vertex of a Boolean cube. -/
def Hypercube.zeroPoint (n : Nat) : Hypercube.Point n :=
  fun _ => false

/--
Coordinate flips for the reflected Gray traversal.

For `n + 1` coordinates, first traverse the tail coordinates, flip the leading
coordinate, then traverse the tail coordinates in reverse.
-/
def Hypercube.graySteps : (n : Nat) → List (Fin n)
  | 0 => []
  | n + 1 =>
      let lower := Hypercube.graySteps n
      lower.map Fin.succ ++
        [⟨0, Nat.succ_pos n⟩] ++
          lower.reverse.map Fin.succ

/-- Walk a cube by flipping the listed coordinates. -/
def Hypercube.walkFrom {n : Nat}
    (x : Hypercube.Point n) :
    List (Fin n) → List (Hypercube.Point n)
  | [] => [x]
  | i :: steps =>
      x :: Hypercube.walkFrom (Hypercube.flip x i) steps

/-- Reflected Gray-code traversal of all positions of an axis. -/
def Hypercube.grayTraversal (n : Nat) : List (Hypercube.Point n) :=
  Hypercube.walkFrom (Hypercube.zeroPoint n) (Hypercube.graySteps n)

@[simp] theorem Hypercube.walkFrom_length {n : Nat}
    (x : Hypercube.Point n)
    (steps : List (Fin n)) :
    (Hypercube.walkFrom x steps).length = steps.length + 1 := by
  induction steps generalizing x with
  | nil => rfl
  | cons i steps ih =>
      simp [Hypercube.walkFrom, ih]

/-- A coordinate-flip walk is adjacent at every consecutive step. -/
theorem Hypercube.walkFrom_adjacentPath {n : Nat}
    (x : Hypercube.Point n)
    (steps : List (Fin n)) :
    Hypercube.AdjacentPath (Hypercube.walkFrom x steps) := by
  induction steps generalizing x with
  | nil =>
      simp [Hypercube.walkFrom, Hypercube.AdjacentPath]
  | cons i steps ih =>
      cases steps with
      | nil =>
          change
            Hypercube.Adjacent x (Hypercube.flip x i) ∧ True
          exact ⟨⟨i, rfl⟩, trivial⟩
      | cons j rest =>
          change
            Hypercube.Adjacent x (Hypercube.flip x i) ∧
              Hypercube.AdjacentPath
                (Hypercube.walkFrom (Hypercube.flip x i) (j :: rest))
          exact ⟨⟨i, rfl⟩, ih (Hypercube.flip x i)⟩

@[simp] theorem Hypercube.graySteps_length_add_one (n : Nat) :
    (Hypercube.graySteps n).length + 1 = 2 ^ n := by
  induction n with
  | zero => rfl
  | succ n ih =>
      simp [Hypercube.graySteps, ih, Nat.pow_succ]
      omega

@[simp] theorem Hypercube.grayTraversal_length (n : Nat) :
    (Hypercube.grayTraversal n).length = 2 ^ n := by
  simp [Hypercube.grayTraversal]

/-- The Gray traversal has the same number of cells as the cube vertex table. -/
theorem Hypercube.grayTraversal_optimalLength (n : Nat) :
    (Hypercube.grayTraversal n).length =
      (Hypercube.vertices n).length := by
  simp [Hypercube.grayTraversal_length]

/-- The Gray traversal uses exactly one move for each noninitial axis cell. -/
theorem Hypercube.grayTraversal_transitionCount (n : Nat) :
    (Hypercube.grayTraversal n).length - 1 = 2 ^ n - 1 := by
  simp [Hypercube.grayTraversal_length]

/-- Every consecutive pair in the reflected Gray traversal is adjacent. -/
theorem Hypercube.grayTraversal_adjacentPath (n : Nat) :
    Hypercube.AdjacentPath (Hypercube.grayTraversal n) := by
  simp [Hypercube.grayTraversal, Hypercube.walkFrom_adjacentPath]

end Boolean.Cube
