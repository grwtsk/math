# lie_top_eq_of_span_sup_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:253e2a50-2756-eae5-5ad7-96a94a67c074",
  "kind": "theorem",
  "lexical_name": "lie_top_eq_of_span_sup_eq_top",
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
  "slug": "lie-top-eq-of-span-sup-eq-top--b7c730aa92c16597d92a1f0d",
  "source": {
    "blob": "ecb6345b6368a15891b73cb41922a92b121870bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 100,
    "path": "GRWTSK/Algebra/Engel/Variant42e7e7ec383a1179b51fc5dbe7671478a0c1ac7d2e97b9d976399c5a11fe2166.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b7c730aa92c16597d92a1f0da6b13218bb6995d3a0b3f0f28115c30711f20def",
  "verification": {
    "reference": "docs/verification/Algebra/Engel/Variant42e7e7ec383a1179b51fc5dbe7671478a0c1ac7d2e97b9d976399c5a11fe2166.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:253e2a50-2756-eae5-5ad7-96a94a67c074`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lie_top_eq_of_span_sup_eq_top (N : LieSubmodule R L M) :
    (↑⁅(⊤ : LieIdeal R L), N⁆ : Submodule R M) =
      (N : Submodule R M).map (toEnd R L M x) ⊔ (↑⁅I, N⁆ : Submodule R M) := by
  simp only [lieIdeal_oper_eq_linear_span', Submodule.sup_span, mem_top, true_and,
    Submodule.map_coe, toEnd_apply_apply]
  refine le_antisymm (Submodule.span_le.mpr ?_) (Submodule.span_mono fun z hz => ?_)
  · rintro z ⟨y, n, hn : n ∈ N, rfl⟩
    obtain ⟨t, z, hz, rfl⟩ := exists_smul_add_of_span_sup_eq_top hxI y
    simp only [SetLike.mem_coe, Submodule.span_union, Submodule.mem_sup]
    exact
      ⟨t • ⁅x, n⁆, Submodule.subset_span ⟨t • n, N.smul_mem' t hn, lie_smul t x n⟩, ⁅z, n⁆,
        Submodule.subset_span ⟨z, hz, n, hn, rfl⟩, by simp⟩
  · rcases hz with (⟨m, hm, rfl⟩ | ⟨y, -, m, hm, rfl⟩)
    exacts [⟨x, m, hm, rfl⟩, ⟨y, m, hm, rfl⟩]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Engel/Variant42e7e7ec383a1179b51fc5dbe7671478a0c1ac7d2e97b9d976399c5a11fe2166.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Engel/Variant42e7e7ec383a1179b51fc5dbe7671478a0c1ac7d2e97b9d976399c5a11fe2166.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecb6345b6368a15891b73cb41922a92b121870bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
