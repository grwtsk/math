-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ShellEncoded.Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ShellEncoded.Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06","mathematical_subject":"Logic.Foundations","original_sha256":"147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Expansion/ShellBijection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Expansion.ShellFiber
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Expansion.ShellBijection

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: expansion.shell_bijection
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ShellEncoded.Variant147254d1df8e3261ab1e2a12e9404491ee20b2ef23f4206f4330d45d742edd06

namespace Folder
namespace Expansion

open Carrier

def shellMatrix (s : GridShape) :=
  Fin (s.rows + 2) → Fin (s.cols + 2) → Bit

def matrixCenter {s : GridShape} (M : shellMatrix s) :
    Fin s.rows → Fin s.cols → Bit :=
  fun i j => M (centerCell (s := s) (i, j)).1 (centerCell (s := s) (i, j)).2

def matrixShell {s : GridShape} (M : shellMatrix s) : ShellFiber s :=
  ⟨fun c => M c.1.1 c.1.2⟩

structure ShellEncoded (s : GridShape) where
  center : Fin s.rows → Fin s.cols → Bit
  shell : ShellFiber s

namespace ShellEncoded

@[ext]
theorem ext {s : GridShape} {E F : ShellEncoded s}
    (hcenter : ∀ i j, E.center i j = F.center i j)
    (hshell : ∀ c, E.shell.value c = F.shell.value c) :
    E = F := by
  cases E with
  | mk Ec Es =>
    cases F with
    | mk Fc Fs =>
      have hc : Ec = Fc := funext fun i => funext fun j => hcenter i j
      have hs : Es = Fs := ShellFiber.ext hshell
      cases hc
      cases hs
      rfl

end ShellEncoded

def encodeShell
    {s : GridShape}
    (M : BinaryMatrix)
    (hm : M.m = s.rows + 2)
    (hn : M.n = s.cols + 2) :
    ShellEncoded s :=
  let matrix : shellMatrix s :=
    fun i j => M.get (Fin.cast hm.symm i) (Fin.cast hn.symm j)
  { center := matrixCenter matrix
    shell := matrixShell matrix }

noncomputable def decodedEntry {s : GridShape}
    (E : ShellEncoded s)
    (c : Cell (expandedShape s)) : Bit := by
  classical
  exact
    if h : IsCenterCell c then
      E.center (centerRow c h) (centerCol c h)
    else
      E.shell.value ⟨c, h⟩

@[simp]
theorem decodedEntry_center {s : GridShape}
    (E : ShellEncoded s)
    (c : Cell s) :
    decodedEntry E (centerCell c) = E.center c.1 c.2 := by
  classical
  simp only [decodedEntry, dif_pos (centerCell_isCenter c)]
  exact congrArg (fun d : Cell s => E.center d.1 d.2)
    (centerOf_centerCell c)

@[simp]
theorem decodedEntry_shell {s : GridShape}
    (E : ShellEncoded s)
    (c : {c : Cell (expandedShape s) // IsShellCell c}) :
    decodedEntry E c.1 = E.shell.value c := by
  classical
  have hnot : ¬ IsCenterCell c.1 := c.2
  simp only [decodedEntry, dif_neg hnot]

noncomputable def decodeShell {s : GridShape} (E : ShellEncoded s) : BinaryMatrix := by
  classical
  exact BinaryMatrix.ofFunction (s.rows + 2) (s.cols + 2)
    (fun i j => decodedEntry E ((i, j) : Cell (expandedShape s)))

@[simp]
theorem get_decodeShell {s : GridShape}
    (E : ShellEncoded s)
    (i : Fin (s.rows + 2))
    (j : Fin (s.cols + 2)) :
    (decodeShell E).get i j =
      decodedEntry E ((i, j) : Cell (expandedShape s)) := by
  rfl

@[simp]
theorem decodeShell_rows {s : GridShape} (E : ShellEncoded s) :
    (decodeShell E).m = s.rows + 2 :=
  rfl

@[simp]
theorem decodeShell_cols {s : GridShape} (E : ShellEncoded s) :
    (decodeShell E).n = s.cols + 2 :=
  rfl

theorem decode_encode_shell
    {s : GridShape}
    (M : BinaryMatrix)
    (hm : M.m = s.rows + 2)
    (hn : M.n = s.cols + 2) :
    decodeShell (encodeShell M hm hn) = M := by
  cases M with
  | mk m n A =>
    simp at hm hn
    subst hm
    subst hn
    apply BinaryMatrix.ext_entries
    intro i j
    by_cases h : IsCenterCell ((i, j) : Cell (expandedShape s))
    · simpa [decodeShell, encodeShell, matrixCenter, decodedEntry, centerOf, h] using
        congrArg (fun c : Cell (expandedShape s) => A c.1 c.2)
          (centerCell_centerOf ((i, j) : Cell (expandedShape s)) h)
    · simp [encodeShell, matrixShell, decodedEntry, h]

theorem encode_decode_shell
    {s : GridShape}
    (E : ShellEncoded s) :
    encodeShell (decodeShell E) rfl rfl = E := by
  apply ShellEncoded.ext
  · intro i j
    simp only [encodeShell, matrixCenter]
    calc
      (decodeShell E).A
          (centerCell ((i, j) : Cell s)).1
          (centerCell ((i, j) : Cell s)).2
          =
        (decodeShell E).get
          (centerCell ((i, j) : Cell s)).1
          (centerCell ((i, j) : Cell s)).2 := rfl
      _ = decodedEntry E (centerCell ((i, j) : Cell s)) :=
        get_decodeShell E
          (centerCell ((i, j) : Cell s)).1
          (centerCell ((i, j) : Cell s)).2
      _ = E.center i j := decodedEntry_center E ((i, j) : Cell s)
  · intro c
    simp only [encodeShell, matrixShell]
    calc
      (decodeShell E).A c.1.1 c.1.2 =
        (decodeShell E).get c.1.1 c.1.2 := rfl
      _ = decodedEntry E c.1 :=
        get_decodeShell E c.1.1 c.1.2
      _ = E.shell.value c := decodedEntry_shell E c

end Expansion
end Folder
