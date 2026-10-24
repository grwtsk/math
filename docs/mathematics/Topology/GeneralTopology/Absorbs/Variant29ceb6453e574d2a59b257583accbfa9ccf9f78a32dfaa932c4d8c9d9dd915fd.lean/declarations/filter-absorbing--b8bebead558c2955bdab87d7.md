# Filter.absorbing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e319d57c121bb2a732ea06c6bac828959b38fcf69a4cfa94aa8a372951afa50a",
  "kind": "def",
  "lexical_name": "Filter.absorbing",
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
  "slug": "filter-absorbing--b8bebead558c2955bdab87d7",
  "source": {
    "blob": "e4545e268bb769d269f5530f5c36ba1d4cabff1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 166,
    "path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b8bebead558c2955bdab87d74b75a80968e7897b34172e5dc7329018ddee1c8c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e319d57c121bb2a732ea06c6bac828959b38fcf69a4cfa94aa8a372951afa50a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Filter.absorbing : Filter α where
  sets := {s | Absorbs G₀ s u}
  univ_sets := .univ
  sets_of_superset h := h.mono_left
  inter_sets := .inter

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absorbs/Variant29ceb6453e574d2a59b257583accbfa9ccf9f78a32dfaa932c4d8c9d9dd915fd.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4545e268bb769d269f5530f5c36ba1d4cabff1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
