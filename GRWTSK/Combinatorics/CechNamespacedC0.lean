-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ObstructionMeaning.Variant7ac9a3576ee84ebda67c13761e88531f7f2490f4a2c72ad5a0e0e01ee5540594","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7ac9a3576ee84ebda67c13761e88531f7f2490f4a2c72ad5a0e0e01ee5540594","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ObstructionMeaning.Variant7ac9a3576ee84ebda67c13761e88531f7f2490f4a2c72ad5a0e0e01ee5540594","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7ac9a3576ee84ebda67c13761e88531f7f2490f4a2c72ad5a0e0e01ee5540594","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/WorldModel/Cech.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.WorldModel.Presheaf
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.Abel

/-!
# Degree-two finite Cech obstruction complex

For a finite vertex type, cochains are all functions on ordered tuples with
coefficients in `ZMod 2`. The explicit orientation convention is

`d0 f (i,j) = f j - f i`

and

`d1 c (i,j,k) = c(j,k) - c(i,k) + c(i,j)`.

Only degrees zero through two are represented.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ObstructionMeaning.Variant7ac9a3576ee84ebda67c13761e88531f7f2490f4a2c72ad5a0e0e01ee5540594

universe u

namespace Surface.ContinuousAssurance.WorldModel

namespace Cech

abbrev C0 (Vertex : Type u) := Vertex → ZMod 2
abbrev C1 (Vertex : Type u) := Vertex → Vertex → ZMod 2
abbrev C2 (Vertex : Type u) := Vertex → Vertex → Vertex → ZMod 2

/-- Oriented degree-zero differential. -/
def d0 {Vertex : Type u} (cochain : C0 Vertex) : C1 Vertex :=
  fun first second ↦ cochain second - cochain first

/-- Oriented degree-one differential. -/
def d1 {Vertex : Type u} (cochain : C1 Vertex) : C2 Vertex :=
  fun first second third ↦
    cochain second third - cochain first third + cochain first second

/-- CECH-01: the explicit differentials compose to zero. -/
theorem d1_d0
    {Vertex : Type u}
    (cochain : C0 Vertex) :
    d1 (d0 cochain) = 0 := by
  funext first second third
  simp only [d1, d0, Pi.zero_apply]
  abel

/-- Degree-one cocycles. -/
def IsCocycle {Vertex : Type u} (cochain : C1 Vertex) : Prop :=
  d1 cochain = 0

/-- Degree-one coboundaries. -/
def IsCoboundary {Vertex : Type u} (cochain : C1 Vertex) : Prop :=
  ∃ source : C0 Vertex, d0 source = cochain

/-- CECH-02: every coboundary is a cocycle. -/
theorem coboundary_is_cocycle
    {Vertex : Type u}
    {cochain : C1 Vertex}
    (boundary : IsCoboundary cochain) :
    IsCocycle cochain := by
  obtain ⟨source, rfl⟩ := boundary
  exact d1_d0 source

/-- Finite support of a degree-two cochain. -/
def support
    {Vertex : Type u}
    [Fintype Vertex] [DecidableEq Vertex]
    (cochain : C2 Vertex) : Finset (Vertex × Vertex × Vertex) :=
  Finset.univ.filter fun point ↦
    cochain point.1 point.2.1 point.2.2 ≠ 0

end Cech

/-- One exact interpretation of a cochain or obstruction class. -/
inductive ObstructionMeaning
  | translationNoncommutativity
  | failedGluing
  | reflectionInconsistency
  | proofProvenanceDiscontinuity
  | authorityMismatch
  | missingRefinementBridge
  | versionIncompatibility
  deriving DecidableEq, Repr

/-- Degree-two defect with a single declared meaning and open obligations. -/
structure CechObstruction (Vertex : Type u) where
  cochain : Cech.C2 Vertex
  meaning : ObstructionMeaning
  affectedObjects : List MathematicalObjectId
  obligations : List ObligationId

/-- A detector is complete only when an explicit implication is supplied. -/
structure ObstructionDetector (System : Type u) (Vertex : Type u) where
  defect : System → Cech.C2 Vertex

def ObstructionDetector.Complete
    {System Vertex : Type u}
    (detector : ObstructionDetector System Vertex)
    (Compatible : System → Prop) : Prop :=
  ∀ system, detector.defect system = 0 → Compatible system

/-- OBS-02 negative example: a zero detector need not establish compatibility. -/
theorem zero_defect_not_compatibility_theorem :
    ∃ detector : ObstructionDetector Bool (Fin 1),
      ¬ detector.Complete (fun system ↦ system = true) := by
  let detector : ObstructionDetector Bool (Fin 1) :=
    ⟨fun _ ↦ 0⟩
  refine ⟨detector, ?_⟩
  intro complete
  have := complete false rfl
  simp at this

/-- A concrete nonzero higher triangle defect. -/
def threeVertexDefect : Cech.C2 (Fin 3) :=
  fun first second third ↦
    if first = 0 ∧ second = 1 ∧ third = 2 then 1 else 0

/-- OBS-01 example: the declared triangle has a nonzero degree-two defect. -/
theorem threeVertexDefect_nonzero :
    threeVertexDefect (0 : Fin 3) (1 : Fin 3) (2 : Fin 3) = 1 := by
  simp [threeVertexDefect]

end Surface.ContinuousAssurance.WorldModel
