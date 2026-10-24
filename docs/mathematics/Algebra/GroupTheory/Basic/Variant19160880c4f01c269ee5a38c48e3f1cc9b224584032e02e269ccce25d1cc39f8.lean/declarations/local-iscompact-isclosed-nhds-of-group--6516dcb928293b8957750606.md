# local_isCompact_isClosed_nhds_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57a280e7f399390f3ff1a54e1c573e98a615ae5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1734,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d81cc569-f6c2-0bab-dbc3-56e3e585ac60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7cc8d53-9442-4aaa-dc90-0e384aa8d890",
  "kind": "theorem",
  "lexical_name": "local_isCompact_isClosed_nhds_of_group",
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
  "slug": "local-iscompact-isclosed-nhds-of-group--6516dcb928293b8957750606",
  "source": {
    "blob": "c57a280e7f399390f3ff1a54e1c573e98a615ae5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1746,
    "line": 1734,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6516dcb928293b8957750606e4944b456a822a415349ee9f5528dd9080bc608b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7cc8d53-9442-4aaa-dc90-0e384aa8d890`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1734–1746.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_isCompact_isClosed_nhds_of_group [LocallyCompactSpace G] {U : Set G}
    (hU : U ∈ 𝓝 (1 : G)) :
    ∃ K : Set G, IsCompact K ∧ IsClosed K ∧ K ⊆ U ∧ (1 : G) ∈ interior K := by
  obtain ⟨L, L1, LU, Lcomp⟩ : ∃ (L : Set G), L ∈ 𝓝 (1 : G) ∧ L ⊆ U ∧ IsCompact L :=
    local_compact_nhds hU
  obtain ⟨K, Kcomp, Kcl, KL, K1⟩ := exists_isCompact_isClosed_subset_isCompact_nhds_one Lcomp L1
  exact ⟨K, Kcomp, Kcl, KL.trans LU, mem_interior_iff_mem_nhds.2 K1⟩
#align local_is_compact_is_closed_nhds_of_group local_isCompact_isClosed_nhds_of_group
#align local_is_compact_is_closed_nhds_of_add_group local_isCompact_isClosed_nhds_of_addGroup

variable (G)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant19160880c4f01c269ee5a38c48e3f1cc9b224584032e02e269ccce25d1cc39f8.lean#L1734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57a280e7f399390f3ff1a54e1c573e98a615ae5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
