# Complete source: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variant4d28dbe63b40ccb243c4847bec71eb464fae4405203244594f69aa13299e8802

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa83780036cc7b8bfa0322c7c3048c23a6725c81` · SHA-256 `3dd7a573befa32d94b8525346dfbc2e7e8325567316824f8d5f08ef56a2dbeb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/FieldTheory/Finiteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
module

public import Mathlib.LinearAlgebra.Basis.VectorSpace
public import Mathlib.LinearAlgebra.Dimension.Finite

/-!
# A module over a division ring is Noetherian if and only if it is finite.

-/


namespace GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00

@[expose] public section


universe u v

open Cardinal Submodule Module

namespace IsNoetherian

variable {K : Type u} {V : Type v} [DivisionRing K] [AddCommGroup V] [Module K V]

/-- A module over a division ring is Noetherian if and only if
its dimension (as a cardinal) is strictly less than the first infinite cardinal `ℵ₀`.
-/
theorem iff_rank_lt_aleph0 : IsNoetherian K V ↔ Module.rank K V < ℵ₀ := by
  let b := Basis.ofVectorSpace K V
  rw [← b.mk_eq_rank'', lt_aleph0_iff_set_finite]
  constructor
  · intro
    exact (Basis.ofVectorSpaceIndex.linearIndependent K V).set_finite_of_isNoetherian
  · intro hbfinite
    refine
      @isNoetherian_of_linearEquiv K K (⊤ : Submodule K V) V _ _ _ _ _ _ (RingHom.id K) _ _ _
        (LinearEquiv.ofTop _ rfl) (id ?_)
    refine isNoetherian_of_fg_of_noetherian _ ⟨Set.Finite.toFinset hbfinite, ?_⟩
    rw [Set.Finite.coe_toFinset, ← b.span_eq, Basis.coe_ofVectorSpace, Subtype.range_coe]

/-- In a Noetherian module over a division ring, all bases are indexed by a finite type. -/
@[instance_reducible]
noncomputable def fintypeBasisIndex {ι : Type*} [IsNoetherian K V] (b : Basis ι K V) : Fintype ι :=
  b.fintypeIndexOfRankLtAleph0 (rank_lt_aleph0 K V)

/-- In a Noetherian module over a division ring,
`Basis.ofVectorSpace` is indexed by a finite type. -/
noncomputable instance [IsNoetherian K V] : Fintype (Basis.ofVectorSpaceIndex K V) :=
  fintypeBasisIndex (Basis.ofVectorSpace K V)

/-- In a Noetherian module over a division ring,
if a basis is indexed by a set, that set is finite. -/
theorem finite_basis_index {ι : Type*} {s : Set ι} [IsNoetherian K V] (b : Basis s K V) :
    s.Finite :=
  b.finite_index_of_rank_lt_aleph0 (rank_lt_aleph0 K V)

variable (K V)

/-- In a Noetherian module over a division ring,
there exists a finite basis. This is the indexing `Finset`. -/
noncomputable def finsetBasisIndex [IsNoetherian K V] : Finset V :=
  (finite_basis_index (Basis.ofVectorSpace K V)).toFinset

@[simp]
theorem coe_finsetBasisIndex [IsNoetherian K V] :
    (↑(finsetBasisIndex K V) : Set V) = Basis.ofVectorSpaceIndex K V :=
  Set.Finite.coe_toFinset _

@[simp]
theorem coeSort_finsetBasisIndex [IsNoetherian K V] :
    (finsetBasisIndex K V : Type _) = Basis.ofVectorSpaceIndex K V :=
  Set.Finite.coeSort_toFinset _

/-- In a Noetherian module over a division ring, there exists a finite basis.
This is indexed by the `Finset` `IsNoetherian.finsetBasisIndex`.
This is in contrast to the result `finite_basis_index (Basis.ofVectorSpace K V)`,
which provides a set and a `Set.Finite`.
-/
noncomputable def finsetBasis [IsNoetherian K V] : Basis (finsetBasisIndex K V) K V :=
  (Basis.ofVectorSpace K V).reindex (by rw [coeSort_finsetBasisIndex])

@[simp]
theorem range_finsetBasis [IsNoetherian K V] :
    Set.range (finsetBasis K V) = Basis.ofVectorSpaceIndex K V := by
  rw [finsetBasis, Basis.range_reindex, Basis.range_ofVectorSpace]

variable {K V}

theorem _root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.Module.card_eq_pow_finrank [Fintype K] [Fintype V] :
    Fintype.card V = Fintype.card K ^ Module.finrank K V := by
  let b := IsNoetherian.finsetBasis K V
  rw [Module.card_fintype b, ← Module.finrank_eq_card_basis b]

theorem _root_.GRWTSK.Algebra.LinearAlgebra.IffRankLtAleph0.Variant05316f2a785ab572626eabca5545306095b329a9ad19e305d740c83e83a6ac00.Module.natCard_eq_pow_finrank [Module.Finite K V] :
    Nat.card V = Nat.card K ^ finrank K V := by
  let b := IsNoetherian.finsetBasis K V
  rw [Nat.card_congr b.equivFun.toEquiv, Nat.card_fun, finrank_eq_nat_card_basis b]

/-- A module over a division ring is Noetherian if and only if it is finitely generated. -/
theorem iff_fg : IsNoetherian K V ↔ Module.Finite K V :=
  ⟨fun _ ↦ IsNoetherian.finite _ _, fun _ ↦ isNoetherian_of_isNoetherianRing_of_finite _ _⟩

end IsNoetherian
```
