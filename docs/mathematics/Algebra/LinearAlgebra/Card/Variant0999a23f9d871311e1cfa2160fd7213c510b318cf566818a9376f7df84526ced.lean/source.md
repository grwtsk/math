# Complete source: GRWTSK.Algebra.LinearAlgebra.Card.Variant0999a23f9d871311e1cfa2160fd7213c510b318cf566818a9376f7df84526ced

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `601a7993b6d2db8e5e8fed60bd1ccf640df5828a` · SHA-256 `aafd94d024231d47e41687e07aff785697bd415a95449bd2520252683379d463`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CardLinearIndependent.Variantac31f64e47ba76f80c1c9bab4e58645175a13c23c9175449c41acd22b1e44f1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac31f64e47ba76f80c1c9bab4e58645175a13c23c9175449c41acd22b1e44f1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CardLinearIndependent.Variantac31f64e47ba76f80c1c9bab4e58645175a13c23c9175449c41acd22b1e44f1f","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ac31f64e47ba76f80c1c9bab4e58645175a13c23c9175449c41acd22b1e44f1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Card.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Thomas Lanard. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck, Inna Capdeboscq, Johan Commelin, Thomas Lanard, Peiran Wu
-/
module

public import Mathlib.FieldTheory.Finiteness
public import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Mathlib.LinearAlgebra.Matrix.Basis
/-!
# Cardinal of the general linear group over finite rings

This file computes the cardinal of the general linear group over finite rings.

## Main statements

* `card_linearIndependent` gives the cardinal of the set of linearly independent vectors over a
  finite-dimensional vector space over a finite field.
* `Matrix.card_GL_field` gives the cardinal of the general linear group over a finite field.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CardLinearIndependent.Variantac31f64e47ba76f80c1c9bab4e58645175a13c23c9175449c41acd22b1e44f1f

@[expose] public section

open LinearMap Module

section LinearIndependent

variable {K V : Type*} [DivisionRing K] [AddCommGroup V] [Module K V]
variable [Fintype K] [Finite V]

local notation "q" => Fintype.card K
local notation "n" => Module.finrank K V

attribute [local instance] Fintype.ofFinite in
open Fintype in
/-- The cardinal of the set of linearly independent vectors over a finite-dimensional vector space
over a finite field. -/
theorem card_linearIndependent {k : ℕ} (hk : k ≤ n) :
    Nat.card { s : Fin k → V // LinearIndependent K s } =
      ∏ i : Fin k, (q ^ n - q ^ i.val) := by
  rw [Nat.card_eq_fintype_card]
  induction k with
  | zero =>
      have : Unique { s : Fin 0 → V // (⊤ : Submodule K (Fin 0 →₀ K)) = ⊥ } :=
        uniqueOfSubsingleton ⟨0, Subsingleton.elim ..⟩
      simp_rw [linearIndependent_iff_ker, Finsupp.linearCombination_fin_zero, ker_zero,
        Finset.univ_eq_empty, Finset.prod_empty, card_unique]
  | succ k ih =>
      have (s : { s : Fin k → V // LinearIndependent K s }) :
          card ((Submodule.span K (Set.range (s : Fin k → V)))ᶜ : Set (V)) =
          (q) ^ n - (q) ^ k := by
            rw [card_compl_set, Module.card_eq_pow_finrank (K := K)
            (V := ((Submodule.span K (Set.range (s : Fin k → V))) : Set (V)))]
            simp only [SetLike.coe_sort_coe, finrank_span_eq_card s.2, card_fin]
            rw [Module.card_eq_pow_finrank (K := K)]
      simp [card_congr (equiv_linearIndependent k), sum_congr _ _ this, ih (Nat.le_of_succ_le hk),
        mul_comm, Fin.prod_univ_succAbove _ (Fin.last k), -Set.fintypeCard_eq_ncard]

end LinearIndependent

namespace Matrix

/-- The cardinal of a matrix. -/
theorem card_matrix {m n α} [Finite m] [Finite n] :
    Nat.card (Matrix m n α) = Nat.card α ^ (Nat.card n * Nat.card m) := by
  simp [Matrix, Nat.card_fun, ← pow_mul]

theorem enatCard_matrix {m n α} :
    ENat.card (Matrix m n α) = ENat.card α ^ (ENat.card n * ENat.card m) := by
  simp [Matrix, ENat.card_fun, ←ENat.epow_mul]

section field

variable {𝔽 : Type*} [Field 𝔽] [Fintype 𝔽]

local notation "q" => Fintype.card 𝔽

variable (n : ℕ)

/-- Equivalence between `GL n F` and `n` vectors of length `n` that are linearly independent. Given
by sending a matrix to its columns. -/
noncomputable def equiv_GL_linearindependent :
    GL (Fin n) 𝔽 ≃ { s : Fin n → Fin n → 𝔽 // LinearIndependent 𝔽 s } where
  toFun M := ⟨M.1.col, by
    apply linearIndependent_iff_card_eq_finrank_span.2
    rw [Set.finrank, ← rank_eq_finrank_span_cols, rank_unit]⟩
  invFun M := GeneralLinearGroup.mk'' (transpose (M.1)) <| by
    classical
    let b := basisOfPiSpaceOfLinearIndependent M.2
    have := (Pi.basisFun 𝔽 (Fin n)).invertibleToMatrix b
    rw [← Basis.coePiBasisFun.toMatrix_eq_transpose,
      ← coe_basisOfPiSpaceOfLinearIndependent M.2]
    exact isUnit_det_of_invertible _
  right_inv := by exact congrFun rfl

/-- The cardinal of the general linear group over a finite field. -/
theorem card_GL_field :
    Nat.card (GL (Fin n) 𝔽) = ∏ i : (Fin n), (q ^ n - q ^ (i : ℕ)) := by
  rw [Nat.card_congr (equiv_GL_linearindependent n), card_linearIndependent,
    Module.finrank_fintype_fun_eq_card, Fintype.card_fin]
  simp only [Module.finrank_fintype_fun_eq_card, Fintype.card_fin, le_refl]

end field

end Matrix
```
