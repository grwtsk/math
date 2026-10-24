# monotone_filter_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47bbaba5-4c27-9590-988c-2aa237287e29",
  "kind": "theorem",
  "lexical_name": "monotone_filter_right",
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
  "slug": "monotone-filter-right--f9a15de922f22373bbc5c973",
  "source": {
    "blob": "91e86144086125c3c7743582c50fee4b6c156c76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 198,
    "path": "GRWTSK/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9a15de922f22373bbc5c9738a22826d493307035222ee970bb80b5e06478e40",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47bbaba5-4c27-9590-988c-2aa237287e29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monotone_filter_right (s : Finset α) ⦃p q : α → Prop⦄ [DecidablePred p] [DecidablePred q]
    (h : p ≤ q) : s.filter p ⊆ s.filter q :=
  Multiset.subset_of_le (Multiset.monotone_filter_right s.val h)

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Filter/Variant81352620f4ff53c3a38d932e2b87c2ddd282fdf8c2ddc529cb6b5b324bdd4918.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91e86144086125c3c7743582c50fee4b6c156c76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
