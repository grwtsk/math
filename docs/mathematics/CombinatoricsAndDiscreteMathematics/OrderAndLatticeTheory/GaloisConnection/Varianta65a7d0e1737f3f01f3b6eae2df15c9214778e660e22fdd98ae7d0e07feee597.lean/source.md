# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.GaloisConnection.Varianta65a7d0e1737f3f01f3b6eae2df15c9214778e660e22fdd98ae7d0e07feee597

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a221e9edca86155dd34b10a5550287c7b6fa815` · SHA-256 `abf03a675f1802bea9592f2c6313091dd7697196cb9cf4fb3a0cde9a03b26ad5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LeftDual.Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.LeftDual.Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160","mathematical_subject":"Algebra.OrderTheory","original_sha256":"bc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Rel/GaloisConnection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lagrange Mathematics and Computing Research Center. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anthony Bordg
-/
import Mathlib.Data.Rel

/-!
# The Galois Connection Induced by a Relation

In this file, we show that an arbitrary relation `R` between a pair of types `α` and `β` defines
a pair `toDual ∘ R.leftDual` and `R.rightDual ∘ ofDual` of adjoint order-preserving maps between the
corresponding posets `Set α` and `(Set β)ᵒᵈ`.
We define `R.leftFixedPoints` (resp. `R.rightFixedPoints`) as the set of fixed points `J`
(resp. `I`) of `Set α` (resp. `Set β`) such that `rightDual (leftDual J) = J`
(resp. `leftDual (rightDual I) = I`).

## Main Results

⋆ `Rel.gc_leftDual_rightDual`: we prove that the maps `toDual ∘ R.leftDual` and
  `R.rightDual ∘ ofDual` form a Galois connection.
⋆ `Rel.equivFixedPoints`: we prove that the maps `R.leftDual` and `R.rightDual` induce inverse
  bijections between the sets of fixed points.

## References

⋆ Engendrement de topologies, démontrabilité et opérations sur les sous-topos, Olivia Caramello and
  Laurent Lafforgue (in preparation)

## Tags

relation, Galois connection, induced bijection, fixed points
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LeftDual.Variantbc35d42bf3bc97b896777bc9f2f2023aa71e98aaa823dfe6b8e061b79abd5160

variable {α β : Type*} (R : Rel α β)

namespace Rel

/-! ### Pairs of adjoint maps defined by relations -/

open OrderDual

/-- `leftDual` maps any set `J` of elements of type `α` to the set `{b : β | ∀ a ∈ J, R a b}` of
elements `b` of type `β` such that `R a b` for every element `a` of `J`. -/
def leftDual (J : Set α) : Set β := {b : β | ∀ ⦃a⦄, a ∈ J → R a b}

/-- `rightDual` maps any set `I` of elements of type `β` to the set `{a : α | ∀ b ∈ I, R a b}`
of elements `a` of type `α` such that `R a b` for every element `b` of `I`. -/
def rightDual (I : Set β) : Set α := {a : α | ∀ ⦃b⦄, b ∈ I → R a b}

/-- The pair of functions `toDual ∘ leftDual` and `rightDual ∘ ofDual` forms a Galois connection. -/
theorem gc_leftDual_rightDual : GaloisConnection (toDual ∘ R.leftDual) (R.rightDual ∘ ofDual) :=
  fun _ _ ↦ ⟨fun h _ ha _ hb ↦ h (by simpa) ha, fun h _ hb _ ha ↦ h (by simpa) hb⟩

/-! ### Induced equivalences between fixed points -/

/-- `leftFixedPoints` is the set of elements `J : Set α` satisfying `rightDual (leftDual J) = J`. -/
def leftFixedPoints := {J : Set α | R.rightDual (R.leftDual J) = J}

/-- `rightFixedPoints` is the set of elements `I : Set β` satisfying `leftDual (rightDual I) = I`.
-/
def rightFixedPoints := {I : Set β | R.leftDual (R.rightDual I) = I}

open GaloisConnection

/-- `leftDual` maps every element `J` to `rightFixedPoints`. -/
theorem leftDual_mem_rightFixedPoint (J : Set α) : R.leftDual J ∈ R.rightFixedPoints := by
  apply le_antisymm
  · apply R.gc_leftDual_rightDual.monotone_l; exact R.gc_leftDual_rightDual.le_u_l J
  · exact R.gc_leftDual_rightDual.l_u_le (R.leftDual J)

/-- `rightDual` maps every element `I` to `leftFixedPoints`. -/
theorem rightDual_mem_leftFixedPoint (I : Set β) : R.rightDual I ∈ R.leftFixedPoints := by
  apply le_antisymm
  · apply R.gc_leftDual_rightDual.monotone_u; exact R.gc_leftDual_rightDual.l_u_le I
  · exact R.gc_leftDual_rightDual.le_u_l (R.rightDual I)

/-- The maps `leftDual` and `rightDual` induce inverse bijections between the sets of fixed points.
-/
def equivFixedPoints : R.leftFixedPoints ≃ R.rightFixedPoints where
  toFun := fun ⟨J, _⟩ => ⟨R.leftDual J, R.leftDual_mem_rightFixedPoint J⟩
  invFun := fun ⟨I, _⟩ => ⟨R.rightDual I, R.rightDual_mem_leftFixedPoint I⟩
  left_inv J := by obtain ⟨J, hJ⟩ := J; rw [Subtype.mk.injEq, hJ]
  right_inv I := by obtain ⟨I, hI⟩ := I; rw [Subtype.mk.injEq, hI]

theorem rightDual_leftDual_le_of_le {J J' : Set α} (h : J' ∈ R.leftFixedPoints) (h₁ : J ≤ J') :
    R.rightDual (R.leftDual J) ≤ J' := by
  rw [← h]
  apply R.gc_leftDual_rightDual.monotone_u
  apply R.gc_leftDual_rightDual.monotone_l
  exact h₁

theorem leftDual_rightDual_le_of_le {I I' : Set β} (h : I' ∈ R.rightFixedPoints) (h₁ : I ≤ I') :
    R.leftDual (R.rightDual I) ≤ I' := by
  rw [← h]
  apply R.gc_leftDual_rightDual.monotone_l
  apply R.gc_leftDual_rightDual.monotone_u
  exact h₁

end Rel
```
