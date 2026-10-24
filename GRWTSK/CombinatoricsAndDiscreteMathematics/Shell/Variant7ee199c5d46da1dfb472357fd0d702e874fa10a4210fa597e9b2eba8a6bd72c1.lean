-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ExpandedShape.Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ExpandedShape.Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Expansion/Shell.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.Grid

/-!
# Folder.Expansion.Shell

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: expansion.shell
Pivot role: none
Zero typology: shell
Contract boundary: definition
Composite stack role: shell
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ExpandedShape.Variant1ff3629a28f32261834bfdfac871049866e63f929402a111aa01c66d297f6d3c

namespace Folder
namespace Expansion

open Carrier

def expandedShape (s : GridShape) : GridShape :=
  ⟨s.rows + 2, s.cols + 2⟩

def centerCell {s : GridShape} (c : Cell s) : Cell (expandedShape s) :=
  (⟨c.1.val + 1, by
      have h := c.1.isLt
      change c.1.val + 1 < s.rows + 2
      omega⟩,
   ⟨c.2.val + 1, by
      have h := c.2.isLt
      change c.2.val + 1 < s.cols + 2
      omega⟩)

def IsCenterCell {s : GridShape} (c : Cell (expandedShape s)) : Prop :=
  0 < c.1.val ∧ c.1.val < s.rows + 1 ∧
  0 < c.2.val ∧ c.2.val < s.cols + 1

def IsShellCell {s : GridShape} (c : Cell (expandedShape s)) : Prop :=
  ¬ IsCenterCell c

noncomputable instance instFintypeCenterCell {s : GridShape} :
    Fintype {c : Cell (expandedShape s) // IsCenterCell c} := by
  classical
  infer_instance

noncomputable instance instFintypeShellCell {s : GridShape} :
    Fintype {c : Cell (expandedShape s) // IsShellCell c} := by
  classical
  infer_instance

theorem centerCell_isCenter {s : GridShape} (c : Cell s) :
    IsCenterCell (centerCell c) := by
  constructor
  · simp [centerCell]
  constructor
  · have h := c.1.isLt
    simp [centerCell]
  constructor
  · simp [centerCell]
  · have h := c.2.isLt
    simp [centerCell]

theorem shell_or_center {s : GridShape} (c : Cell (expandedShape s)) :
    IsShellCell c ∨ IsCenterCell c := by
  by_cases h : IsCenterCell c
  · exact Or.inr h
  · exact Or.inl h

theorem not_shell_and_center {s : GridShape} (c : Cell (expandedShape s)) :
    ¬ (IsShellCell c ∧ IsCenterCell c) := by
  intro h
  exact h.1 h.2

def centerRow {s : GridShape}
    (c : Cell (expandedShape s))
    (h : IsCenterCell c) :
    Fin s.rows :=
  ⟨c.1.val - 1, by
    rcases h with ⟨h0, h1, _⟩
    omega⟩

def centerCol {s : GridShape}
    (c : Cell (expandedShape s))
    (h : IsCenterCell c) :
    Fin s.cols :=
  ⟨c.2.val - 1, by
    rcases h with ⟨_, _, h0, h1⟩
    omega⟩

def centerOf {s : GridShape}
    (c : Cell (expandedShape s))
    (h : IsCenterCell c) :
    Cell s :=
  (centerRow c h, centerCol c h)

theorem centerCell_centerOf {s : GridShape}
    (c : Cell (expandedShape s))
    (h : IsCenterCell c) :
    centerCell (centerOf c h) = c := by
  ext <;> simp [centerCell, centerOf, centerRow, centerCol]
  · rcases h with ⟨h0, h1, _⟩
    omega
  · rcases h with ⟨_, _, h0, h1⟩
    omega

theorem centerOf_centerCell {s : GridShape} (c : Cell s) :
    centerOf (centerCell c) (centerCell_isCenter c) = c := by
  ext <;> simp [centerOf, centerRow, centerCol, centerCell]

def centerSubtypeEquiv (s : GridShape) :
    Cell s ≃ {c : Cell (expandedShape s) // IsCenterCell c} where
  toFun c := ⟨centerCell c, centerCell_isCenter c⟩
  invFun c := centerOf c.1 c.2
  left_inv c := centerOf_centerCell c
  right_inv c := by
    ext <;> simp [centerCell_centerOf]

def shellCardinality (m n : Nat) : Nat :=
  2 * m + 2 * n + 4

theorem center_cardinality_eq (s : GridShape) :
    Fintype.card {c : Cell (expandedShape s) // IsCenterCell c}
      = s.rows * s.cols := by
  calc
    Fintype.card {c : Cell (expandedShape s) // IsCenterCell c}
        = Fintype.card (Cell s) := by
          exact (Fintype.card_congr (centerSubtypeEquiv s).symm)
    _ = s.rows * s.cols := by
          simp [Cell, Fintype.card_prod, Fintype.card_fin]

theorem shell_cardinality_eq
    (s : GridShape) :
    Fintype.card {c : Cell (expandedShape s) // IsShellCell c}
      = shellCardinality s.rows s.cols := by
  classical
  let centerSet : Set (Cell (expandedShape s)) := {c | IsCenterCell c}
  haveI : Fintype (↥(centerSetᶜ) : Sort _) := by
    dsimp [centerSet, Set.compl]
    infer_instance
  have hs :
      Fintype.card {c : Cell (expandedShape s) // IsShellCell c}
        = Fintype.card (↥(centerSetᶜ) : Sort _) := by
    refine Fintype.card_congr ?e
    refine
      { toFun := ?toFun
        invFun := ?invFun
        left_inv := ?left_inv
        right_inv := ?right_inv }
    · intro c
      exact ⟨c.1, by
        change ¬ IsCenterCell c.1
        exact c.2⟩
    · intro c
      exact ⟨c.1, by
        change ¬ IsCenterCell c.1
        exact c.2⟩
    · intro c
      cases c
      rfl
    · intro c
      cases c
      rfl
  have hcompl :
      Fintype.card (↥(centerSetᶜ) : Sort _) =
        Fintype.card (Cell (expandedShape s)) -
          Fintype.card (↥centerSet : Sort _) := by
    exact Fintype.card_compl_set centerSet
  have htotal :
      Fintype.card (Cell (expandedShape s)) =
        (s.rows + 2) * (s.cols + 2) := by
    change Fintype.card (Fin (s.rows + 2) × Fin (s.cols + 2)) =
      (s.rows + 2) * (s.cols + 2)
    calc
      Fintype.card (Fin (s.rows + 2) × Fin (s.cols + 2))
          = Fintype.card (Fin (s.rows + 2)) *
              Fintype.card (Fin (s.cols + 2)) := by
            exact Fintype.card_prod (Fin (s.rows + 2)) (Fin (s.cols + 2))
      _ = (s.rows + 2) * (s.cols + 2) := by
            rw [Fintype.card_fin, Fintype.card_fin]
  have hcenter :
      Fintype.card (↥centerSet : Sort _) = s.rows * s.cols := by
    change Fintype.card {c : Cell (expandedShape s) // IsCenterCell c} =
      s.rows * s.cols
    exact center_cardinality_eq s
  rw [hs, hcompl, htotal, hcenter]
  have hexpand :
      (s.rows + 2) * (s.cols + 2) =
        s.rows * s.cols + shellCardinality s.rows s.cols := by
    simp [shellCardinality]
    ring
  rw [hexpand, Nat.add_sub_cancel_left]

end Expansion
end Folder
