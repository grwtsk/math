# exists_basis_of_base

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d053fb3-5864-44f8-9bdf-3edc6c1a2bc1",
  "kind": "lemma",
  "lexical_name": "exists_basis_of_base",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "exists-basis-of-base--7ba9e54a8cb9d4950ee7639b",
  "source": {
    "blob": "fcd966880c88aac6c2fc3ba90614088bf6597a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 219,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ba9e54a8cb9d4950ee7639b32b37d3e9c5e8429162e5269e1aaeb2baef72928",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d053fb3-5864-44f8-9bdf-3edc6c1a2bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_basis_of_base [IsKilling K L] (b : (rootSystem H).Base) :
    ∃ B : Basis b.support H, B.A = b.cartanMatrix ∧ (∀ i, B.h i = (rootSystem H).coroot i) := by
  have nonZero (α : b.support) : (α : Weight K H L).IsNonZero := by
    obtain ⟨⟨α, hα⟩, -⟩ := α
    simpa using hα
  choose h e f ef_sl2 e_mem f_mem using fun α ↦ exists_isSl2Triple_of_weight_isNonZero (nonZero α)
  have h_coroot (i : b.support) : h i = (rootSystem H).coroot i :=
    (ef_sl2 i).h_eq_coroot (nonZero i) (e_mem i) (f_mem i)
  simp_rw [h_coroot] at ef_sl2
  let B : Basis b.support H :=
    { A := b.cartanMatrix
      h i := (rootSystem H).coroot i
      e i := e i
      f i := f i
      cartan_eq_lieSpan := cartan_eq_lieSpan b
      linInd := b.linearIndepOn_coroot.map_injOn H.incl.toLinearMap <| by simp
      nondegen := b.cartanMatrix_nondegenerate
      sl2 i := ef_sl2 i
      lie_h_h := by simp [← coe_bracket, trivial_lie_zero]
      span_ef := lieSpan_range_union_eq_top_of_mem_rootSpace b e f ef_sl2 e_mem f_mem
      lie_h_e i j := by
        have : (b.cartanMatrix i j : K) = algebraMap ℤ K (b.cartanMatrix i j) := by simp
        rw [← LieSubalgebra.coe_bracket_of_module, lie_eq_smul_of_mem_rootSpace (e_mem i),
          ← Int.cast_smul_eq_zsmul K, this, Base.cartanMatrix, Base.cartanMatrixIn_def,
          algebraMap_pairingIn, rootSystem_coroot_apply, rootSystem_pairing_apply]
      lie_h_f i j := by
        have : (b.cartanMatrix i j : K) = algebraMap ℤ K (b.cartanMatrix i j) := by simp
        rw [neg_smul, ← LieSubalgebra.coe_bracket_of_module, lie_eq_smul_of_mem_rootSpace (f_mem i),
          ← Int.cast_smul_eq_zsmul K, this, Base.cartanMatrix, Base.cartanMatrixIn_def,
          algebraMap_pairingIn, rootSystem_coroot_apply, rootSystem_pairing_apply, Pi.neg_apply,
          neg_smul]
      lie_e_f_ne i j hij := by
        set χ : H → K := ⇑i.val.val - ⇑j.val.val with hχ
        suffices rootSpace H χ = ⊥ by
          have aux : ⁅e i, f j⁆ ∈ rootSpace H χ := by
            rw [hχ, sub_eq_add_neg]
            exact mapsTo_toEnd_genWeightSpace_add_of_mem_rootSpace K L H L _ _ (e_mem i) (f_mem j)
          simpa [this] using aux
        replace hij : χ ≠ 0 := by contrapose hij; rw [hχ, sub_eq_zero] at hij; aesop
        have := b.sub_notMem_range_root i.property j.property
        simp only [rootSystem_root_apply, mem_range, Subtype.exists, Finset.mem_filter,
          Finset.mem_univ, true_and, exists_prop, not_exists, not_and, ne_eq] at this
        contrapose! this
        exact ⟨⟨χ, this⟩, hij, LinearMap.ext fun x ↦ by simp [hχ]⟩ }
  exact ⟨B, rfl, by simp [B]⟩

open scoped Classical in
/-- Lie algebras with equivalent root systems are equivalent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd966880c88aac6c2fc3ba90614088bf6597a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
