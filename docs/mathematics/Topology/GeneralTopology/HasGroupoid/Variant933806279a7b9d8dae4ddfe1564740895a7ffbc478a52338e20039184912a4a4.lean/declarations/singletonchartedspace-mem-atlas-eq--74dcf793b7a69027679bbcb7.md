# singletonChartedSpace_mem_atlas_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2141e30e-21e5-fcf0-8a89-bc71ee0dd11f",
  "kind": "theorem",
  "lexical_name": "singletonChartedSpace_mem_atlas_eq",
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
  "slug": "singletonchartedspace-mem-atlas-eq--74dcf793b7a69027679bbcb7",
  "source": {
    "blob": "6501cdb014cd733473f22b64d4e147f04ba12ea7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 240,
    "path": "GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74dcf793b7a69027679bbcb757a847f2fc6ca3795eb5c3b9fa133b5e672f7911",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2141e30e-21e5-fcf0-8a89-bc71ee0dd11f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem singletonChartedSpace_mem_atlas_eq (h : e.source = Set.univ)
    (e' : OpenPartialHomeomorph α H) (h' : e' ∈ (e.singletonChartedSpace h).atlas) : e' = e :=
  h'

/-- Given an open partial homeomorphism `e` from a space `α` into `H`, if its source covers the
whole space `α`, then the induced charted space structure on `α` is `HasGroupoid G` for any
structure groupoid `G` which is closed under restrictions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6501cdb014cd733473f22b64d4e147f04ba12ea7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
