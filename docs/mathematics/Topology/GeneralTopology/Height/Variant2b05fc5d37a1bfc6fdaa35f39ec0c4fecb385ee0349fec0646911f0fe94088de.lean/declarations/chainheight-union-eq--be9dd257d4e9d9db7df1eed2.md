# chainHeight_union_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f8cb2c20-c25f-5f69-a450-b863c10fc71d",
  "kind": "theorem",
  "lexical_name": "chainHeight_union_eq",
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
  "slug": "chainheight-union-eq--be9dd257d4e9d9db7df1eed2",
  "source": {
    "blob": "b9e91d9826e1c6a06557f242ca2bca1374a91406",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 340,
    "path": "GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be9dd257d4e9d9db7df1eed2e00b40045fd04fca05b5718a3d17ec01153ab9bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8cb2c20-c25f-5f69-a450-b863c10fc71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chainHeight_union_eq (s t : Set α) (H : ∀ a ∈ s, ∀ b ∈ t, a < b) :
    (s ∪ t).chainHeight = s.chainHeight + t.chainHeight := by
  cases h : t.chainHeight
  · rw [WithTop.none_eq_top, add_top, eq_top_iff, ← WithTop.none_eq_top, ← h]
    exact Set.chainHeight_mono (Set.subset_union_right _ _)
  apply le_antisymm
  · rw [← h]
    exact chainHeight_union_le
  rw [WithTop.some_eq_coe, ← add_zero (s ∪ t).chainHeight, ← WithTop.coe_zero,
    ENat.some_eq_coe, chainHeight_add_le_chainHeight_add]
  intro l hl
  obtain ⟨l', hl', rfl⟩ := exists_chain_of_le_chainHeight t h.symm.le
  refine' ⟨l ++ l', ⟨Chain'.append hl.1 hl'.1 fun x hx y hy ↦ _, fun i hi ↦ _⟩, by simp⟩
  · exact H x (hl.2 _ <| mem_of_mem_getLast? hx) y (hl'.2 _ <| mem_of_mem_head? hy)
  · rw [mem_append] at hi
    cases' hi with hi hi
    exacts [Or.inl (hl.2 _ hi), Or.inr (hl'.2 _ hi)]
#align set.chain_height_union_eq Set.chainHeight_union_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Height/Variant2b05fc5d37a1bfc6fdaa35f39ec0c4fecb385ee0349fec0646911f0fe94088de.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9e91d9826e1c6a06557f242ca2bca1374a91406` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
