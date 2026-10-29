-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SpectralShellEncoded.Variante92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.SpectralShellEncoded.Variante92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6","mathematical_subject":"Logic.Foundations","original_sha256":"e92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Expansion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Spectral.Fiber

/-!
# Folder.Spectral.Expansion

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: spectral.expansion
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.SpectralShellEncoded.Variante92975a1f55379d5ca50e7c05e85d1552b8bd36a59de8ceb2aec0da835d53ac6

namespace Folder
namespace Spectral

open Carrier

structure SpectralShellEncoded (s : GridShape) (k : Nat) where
  center : SpectralTensor s k
  shell : SpectralShellFiber s k

namespace SpectralShellEncoded

@[ext]
theorem ext {s : GridShape} {k : Nat}
    {E F : SpectralShellEncoded s k}
    (hcenter : E.center = F.center)
    (hshell : E.shell = F.shell) :
    E = F := by
  cases E
  cases F
  simp at hcenter hshell
  subst hcenter
  subst hshell
  rfl

end SpectralShellEncoded

noncomputable def encodeShell {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    SpectralShellEncoded s k :=
  { center :=
      { value := fun c q => X.value (Expansion.centerCell c) q }
    shell :=
      { value := fun c q => X.value c.1 q } }

noncomputable def decodeShell {s : GridShape} {k : Nat}
    (E : SpectralShellEncoded s k) :
    SpectralTensor (Expansion.expandedShape s) k := by
  classical
  exact
    { value := fun c q =>
        if h : Expansion.IsCenterCell c then
          E.center.value (Expansion.centerOf c h) q
        else
          E.shell.value ⟨c, h⟩ q }

@[simp]
theorem encodeShell_center_value {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k)
    (c : Cell s)
    (q : Fin k) :
    (encodeShell X).center.value c q =
      X.value (Expansion.centerCell c) q :=
  rfl

@[simp]
theorem encodeShell_shell_value {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k)
    (c : {c : Cell (Expansion.expandedShape s) // Expansion.IsShellCell c})
    (q : Fin k) :
    (encodeShell X).shell.value c q = X.value c.1 q :=
  rfl

theorem decode_encode_shell {s : GridShape} {k : Nat}
    (X : SpectralTensor (Expansion.expandedShape s) k) :
    decodeShell (encodeShell X) = X := by
  classical
  ext c q
  by_cases h : Expansion.IsCenterCell c
  · simp [decodeShell, Expansion.centerCell_centerOf]
  · simp [decodeShell, h]

theorem encode_decode_shell {s : GridShape} {k : Nat}
    (E : SpectralShellEncoded s k) :
    encodeShell (decodeShell E) = E := by
  classical
  apply SpectralShellEncoded.ext
  · ext c q
    simp [decodeShell, Expansion.centerCell_isCenter, Expansion.centerOf_centerCell]
  · ext c q
    have hs : ¬ Expansion.IsCenterCell c.1 := c.2
    simp [decodeShell, hs]

end Spectral
end Folder
