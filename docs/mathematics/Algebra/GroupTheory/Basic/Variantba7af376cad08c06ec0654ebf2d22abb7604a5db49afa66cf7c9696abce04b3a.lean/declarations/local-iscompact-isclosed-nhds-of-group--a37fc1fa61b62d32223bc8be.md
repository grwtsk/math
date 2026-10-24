# local_isCompact_isClosed_nhds_of_group

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7ba8631-d72f-58bb-e3e7-a2697a795e2e",
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
  "slug": "local-iscompact-isclosed-nhds-of-group--a37fc1fa61b62d32223bc8be",
  "source": {
    "blob": "3d76f71efd3510cef483a2a09972884f71518245",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1754,
    "line": 1742,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a37fc1fa61b62d32223bc8be2186a7420d1472b231fc122137f1d9971932b311",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7ba8631-d72f-58bb-e3e7-a2697a795e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1742–1754.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variantba7af376cad08c06ec0654ebf2d22abb7604a5db49afa66cf7c9696abce04b3a.lean#L1742).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d76f71efd3510cef483a2a09972884f71518245` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
