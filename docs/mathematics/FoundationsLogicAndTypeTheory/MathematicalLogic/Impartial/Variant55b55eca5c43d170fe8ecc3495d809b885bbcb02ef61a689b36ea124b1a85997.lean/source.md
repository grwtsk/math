# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Impartial.Variant55b55eca5c43d170fe8ecc3495d809b885bbcb02ef61a689b36ea124b1a85997

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9cd67a47880149ca91b45925655102f19815815b` · SHA-256 `063e9d716f1751aa53b229b17228079d98bd9f5a1090c48e9b7cafb29c380bf4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Impartial.Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Impartial.Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01","mathematical_subject":"Logic.Foundations","original_sha256":"ab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/SetTheory/Game/Impartial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Fox Thomson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Fox Thomson
-/
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.SetTheory.Game.Basic
import Mathlib.Tactic.NthRewrite

/-!
# Basic definitions about impartial (pre-)games

We will define an impartial game, one in which left and right can make exactly the same moves.
Our definition differs slightly by saying that the game is always equivalent to its negative,
no matter what moves are played. This allows for games such as poker-nim to be classified as
impartial.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Impartial.Variantab3cbb9045914d3ccc50986308ca170995df133ef182f46d258dff0cac807a01

universe u

namespace SetTheory

open scoped PGame

namespace PGame

private def ImpartialAux (G : PGame) : Prop :=
  (G ≈ -G) ∧ (∀ i, ImpartialAux (G.moveLeft i)) ∧ ∀ j, ImpartialAux (G.moveRight j)
termination_by G

/-- An impartial game is one that's equivalent to its negative, such that each left and right move
is also impartial.

Note that this is a slightly more general definition than the one that's usually in the literature,
as we don't require `G ≡ -G`. Despite this, the Sprague-Grundy theorem still holds: see
`SetTheory.PGame.equiv_nim_grundyValue`.

In such a game, both players have the same payoffs at any subposition. -/
class Impartial (G : PGame) : Prop where
  out : ImpartialAux G

private theorem impartial_iff_aux {G : PGame} : G.Impartial ↔ G.ImpartialAux :=
  ⟨fun h => h.1, fun h => ⟨h⟩⟩

theorem impartial_def {G : PGame} :
    G.Impartial ↔ G ≈ -G ∧ (∀ i, Impartial (G.moveLeft i)) ∧ ∀ j, Impartial (G.moveRight j) := by
  simp_rw [impartial_iff_aux]
  rw [ImpartialAux]

namespace Impartial

instance impartial_zero : Impartial 0 := by
  rw [impartial_def]
  simp

instance impartial_star : Impartial star := by
  rw [impartial_def]
  simpa using Impartial.impartial_zero

theorem neg_equiv_self (G : PGame) [h : G.Impartial] : G ≈ -G :=
  (impartial_def.1 h).1

@[simp]
theorem mk'_neg_equiv_self (G : PGame) [G.Impartial] : -(⟦G⟧ : Game) = ⟦G⟧ :=
  game_eq (Equiv.symm (neg_equiv_self G))

instance moveLeft_impartial {G : PGame} [h : G.Impartial] (i : G.LeftMoves) :
    (G.moveLeft i).Impartial :=
  (impartial_def.1 h).2.1 i

instance moveRight_impartial {G : PGame} [h : G.Impartial] (j : G.RightMoves) :
    (G.moveRight j).Impartial :=
  (impartial_def.1 h).2.2 j

theorem impartial_congr {G H : PGame} (e : G ≡r H) [G.Impartial] : H.Impartial :=
  impartial_def.2
    ⟨Equiv.trans e.symm.equiv (Equiv.trans (neg_equiv_self G) (neg_equiv_neg_iff.2 e.equiv)),
      fun i => impartial_congr (e.moveLeftSymm i), fun j => impartial_congr (e.moveRightSymm j)⟩
termination_by G

instance impartial_add (G H : PGame) [G.Impartial] [H.Impartial] : (G + H).Impartial := by
  rw [impartial_def]
  refine ⟨Equiv.trans (add_congr (neg_equiv_self G) (neg_equiv_self _))
      (Equiv.symm (negAddRelabelling _ _).equiv), fun k => ?_, fun k => ?_⟩
  · apply leftMoves_add_cases k
    all_goals
      intro i; simp only [add_moveLeft_inl, add_moveLeft_inr]
      apply impartial_add
  · apply rightMoves_add_cases k
    all_goals
      intro i; simp only [add_moveRight_inl, add_moveRight_inr]
      apply impartial_add
termination_by (G, H)

instance impartial_neg (G : PGame) [G.Impartial] : (-G).Impartial := by
  rw [impartial_def]
  refine ⟨?_, fun i => ?_, fun i => ?_⟩
  · rw [neg_neg]
    exact Equiv.symm (neg_equiv_self G)
  · rw [moveLeft_neg]
    exact impartial_neg _
  · rw [moveRight_neg]
    exact impartial_neg _
termination_by G

variable (G : PGame) [Impartial G]

theorem nonpos : ¬0 < G := by
  apply (lt_asymm · ?_)
  rwa [← neg_lt_neg_iff, neg_zero, ← lt_congr_right (neg_equiv_self G)]

theorem nonneg : ¬G < 0 := by
  simpa using nonpos (-G)

/-- In an impartial game, either the first player always wins, or the second player always wins. -/
theorem equiv_or_fuzzy_zero : G ≈ 0 ∨ G ‖ 0 := by
  rcases lt_or_equiv_or_gt_or_fuzzy G 0 with (h | h | h | h)
  · exact ((nonneg G) h).elim
  · exact Or.inl h
  · exact ((nonpos G) h).elim
  · exact Or.inr h

@[simp]
theorem not_equiv_zero_iff : ¬ G ≈ 0 ↔ G ‖ 0 :=
  ⟨(equiv_or_fuzzy_zero G).resolve_left, Fuzzy.not_equiv⟩

@[simp]
theorem not_fuzzy_zero_iff : ¬ G ‖ 0 ↔ G ≈ 0 :=
  ⟨(equiv_or_fuzzy_zero G).resolve_right, Equiv.not_fuzzy⟩

theorem add_self : G + G ≈ 0 :=
  Equiv.trans (add_congr_left (neg_equiv_self G)) (neg_add_cancel_equiv G)

@[simp]
theorem mk'_add_self : (⟦G⟧ : Game) + ⟦G⟧ = 0 :=
  game_eq (add_self G)

/-- This lemma doesn't require `H` to be impartial. -/
theorem equiv_iff_add_equiv_zero (H : PGame) : H ≈ G ↔ H + G ≈ 0 := by
  rw [equiv_iff_game_eq, ← add_right_cancel_iff (a := ⟦G⟧), mk'_add_self, ← quot_add,
    equiv_iff_game_eq, quot_zero]

/-- This lemma doesn't require `H` to be impartial. -/
theorem equiv_iff_add_equiv_zero' (H : PGame) : G ≈ H ↔ G + H ≈ 0 := by
  rw [equiv_iff_game_eq, ← add_left_cancel_iff, mk'_add_self, ← quot_add, equiv_iff_game_eq,
    Eq.comm, quot_zero]

theorem le_zero_iff {G : PGame} [G.Impartial] : G ≤ 0 ↔ 0 ≤ G := by
  rw [← zero_le_neg_iff, le_congr_right (neg_equiv_self G)]

theorem lf_zero_iff {G : PGame} [G.Impartial] : G ⧏ 0 ↔ 0 ⧏ G := by
  rw [← zero_lf_neg_iff, lf_congr_right (neg_equiv_self G)]

theorem equiv_zero_iff_le : (G ≈ 0) ↔ G ≤ 0 :=
  ⟨And.left, fun h => ⟨h, le_zero_iff.1 h⟩⟩

theorem fuzzy_zero_iff_lf : G ‖ 0 ↔ G ⧏ 0 :=
  ⟨And.left, fun h => ⟨h, lf_zero_iff.1 h⟩⟩

theorem equiv_zero_iff_ge : (G ≈ 0) ↔ 0 ≤ G :=
  ⟨And.right, fun h => ⟨le_zero_iff.2 h, h⟩⟩

theorem fuzzy_zero_iff_gf : G ‖ 0 ↔ 0 ⧏ G :=
  ⟨And.right, fun h => ⟨lf_zero_iff.2 h, h⟩⟩

theorem forall_leftMoves_fuzzy_iff_equiv_zero : (∀ i, G.moveLeft i ‖ 0) ↔ G ≈ 0 := by
  refine ⟨fun hb => ?_, fun hp i => ?_⟩
  · rw [equiv_zero_iff_le G, le_zero_lf]
    exact fun i => (hb i).1
  · rw [fuzzy_zero_iff_lf]
    exact hp.1.moveLeft_lf i

theorem forall_rightMoves_fuzzy_iff_equiv_zero : (∀ j, G.moveRight j ‖ 0) ↔ G ≈ 0 := by
  refine ⟨fun hb => ?_, fun hp i => ?_⟩
  · rw [equiv_zero_iff_ge G, zero_le_lf]
    exact fun i => (hb i).2
  · rw [fuzzy_zero_iff_gf]
    exact hp.2.lf_moveRight i

theorem exists_left_move_equiv_iff_fuzzy_zero : (∃ i, G.moveLeft i ≈ 0) ↔ G ‖ 0 := by
  refine ⟨fun ⟨i, hi⟩ => (fuzzy_zero_iff_gf G).2 (lf_of_le_moveLeft hi.2), fun hn => ?_⟩
  rw [fuzzy_zero_iff_gf G, zero_lf_le] at hn
  obtain ⟨i, hi⟩ := hn
  exact ⟨i, (equiv_zero_iff_ge _).2 hi⟩

theorem exists_right_move_equiv_iff_fuzzy_zero : (∃ j, G.moveRight j ≈ 0) ↔ G ‖ 0 := by
  refine ⟨fun ⟨i, hi⟩ => (fuzzy_zero_iff_lf G).2 (lf_of_moveRight_le hi.1), fun hn => ?_⟩
  rw [fuzzy_zero_iff_lf G, lf_zero_le] at hn
  obtain ⟨i, hi⟩ := hn
  exact ⟨i, (equiv_zero_iff_le _).2 hi⟩

end Impartial

end PGame

end SetTheory
```
