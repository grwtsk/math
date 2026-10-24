# isMaxRank_iff_closure_finiteIndex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad681e27c1d3f32611e63ec7e8a96012e3cb096e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6fbca88-01b6-eca6-f593-d888534cb2f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dda5520c-0f0b-6f66-e091-09655f3e42c8",
  "kind": "theorem",
  "lexical_name": "isMaxRank_iff_closure_finiteIndex",
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
  "slug": "ismaxrank-iff-closure-finiteindex--9ee995746bb6638852689c63",
  "source": {
    "blob": "ad681e27c1d3f32611e63ec7e8a96012e3cb096e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 108,
    "path": "GRWTSK/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ee995746bb6638852689c63e55ee30993bea2a7307411c92386a28a52cfa9b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dda5520c-0f0b-6f66-e091-09655f3e42c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMaxRank_iff_closure_finiteIndex {u : Fin (rank K) → (𝓞 K)ˣ} :
    IsMaxRank u ↔ (closure (Set.range u)).FiniteIndex := by
  classical
  have h₁ : (closure (Set.range u) ⊔ torsion K).index ≠ 0 ↔
      Finite (unitLattice K ⧸ span ℤ (Set.range ((logEmbeddingEquiv K) ∘ Additive.toMul.symm ∘
        QuotientGroup.mk ∘ u))) := by
    change _ ↔ Finite ((unitLattice K).toAddSubgroup ⧸ (span ℤ (Set.range _)).toAddSubgroup)
    rw [← AddSubgroup.index_ne_zero_iff_finite]
    have := index_map (closure (Set.range u)) (QuotientGroup.mk' (torsion K))
    rw [QuotientGroup.ker_mk', QuotientGroup.range_mk', index_top, mul_one] at this
    rw [← this, ← index_toAddSubgroup, ← AddSubgroup.index_map_equiv
        _ (logEmbeddingEquiv K).toAddEquiv, Set.range_comp, ← LinearEquiv.coe_coe,
      ← map_span (logEmbeddingEquiv K).toLinearMap,
      map_toAddSubgroup, span_int_eq_addSubgroupClosure,
      MonoidHom.map_closure, toAddSubgroup_closure, Set.range_comp, Set.range_comp,
      QuotientGroup.coe_mk', ← Equiv.image_symm_eq_preimage]
    rfl
  have h₂ : DiscreteTopology
      (span ℤ (Set.range fun i ↦ (logEmbedding K) (Additive.ofMul (u i)))) := by
    rw [← SetLike.isDiscrete_iff_discreteTopology]
    refine (inferInstance : DiscreteTopology (unitLattice K)).isDiscrete.mono ?_
    rw [SetLike.coe_subset_coe, Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    exact ⟨Additive.ofMul (u i), mem_top, rfl⟩
  rw [finiteIndex_iff_sup_torsion_finiteIndex, finiteIndex_iff, h₁, finiteQuotient_iff,
    unitLattice_rank, ← Set.finrank, IsMaxRank, linearIndependent_iff_card_eq_finrank_span,
    Real.finrank_eq_int_finrank_of_discrete h₂, Set.finrank, Set.finrank, ← finrank_map_subtype_eq,
    map_span, ← Set.range_comp', eq_comm]
  simp

open scoped Classical in
/--
The regulator of a family of units of `K`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Varianted32349527de7a8098b2d644c3ed24a31025047449da48e7e97676888d0e4f73.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad681e27c1d3f32611e63ec7e8a96012e3cb096e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
