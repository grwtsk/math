-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsBoundaryCell.Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.IsBoundaryCell.Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f","mathematical_subject":"Logic.Foundations","original_sha256":"1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Cellular/ShellFiltration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Cellular.Cube

/-!
# Folder.Cellular.ShellFiltration

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: cellular.shell_filtration
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.IsBoundaryCell.Variant1e9fbfd68666611d35989171c297907034ee48209c2f2910e8ef50affe38ea6f

namespace Folder
namespace Cellular

def IsBoundaryCell
    {d k : Nat}
    (x : CubeAddress d k) : Prop :=
  ∃ i : Fin d,
    (x i).val = 0 ∨ (x i).val + 1 = cubeSide k

def IsInteriorCell
    {d k : Nat}
    (x : CubeAddress d k) : Prop :=
  ∀ i : Fin d,
    0 < (x i).val ∧ (x i).val + 1 < cubeSide k

abbrev BoundaryShell (d k : Nat) :=
  {x : CubeAddress d k // IsBoundaryCell x}

def IsNewChildCell
    {d k : Nat}
    (y : CubeAddress d (k + 1)) : Prop :=
  ¬ ∃ x : CubeAddress d k, y = embedLow x

theorem boundary_or_not_boundary
    {d k : Nat}
    (x : CubeAddress d k) :
    IsBoundaryCell x ∨ ¬ IsBoundaryCell x := by
  classical
  exact em _

theorem not_interior_of_boundary
    {d k : Nat}
    {x : CubeAddress d k} :
    IsBoundaryCell x → ¬ IsInteriorCell x := by
  intro hb hi
  rcases hb with ⟨i, h0 | hmax⟩
  · have hpos := (hi i).1
    omega
  · have hlt := (hi i).2
    omega

theorem all_boundary_level_zero
    {d : Nat}
    (hd : 0 < d)
    (x : CubeAddress d 0) :
    IsBoundaryCell x := by
  refine ⟨⟨0, hd⟩, Or.inl ?_⟩
  have h : (x ⟨0, hd⟩).val < 1 := by
    simp [cubeSide] at *
  omega

end Cellular
end Folder
