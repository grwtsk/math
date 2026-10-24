# isClosedMap_snd_of_compactSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bb4ad14-fa5c-5e30-2ab0-9571e930efde",
  "kind": "theorem",
  "lexical_name": "isClosedMap_snd_of_compactSpace",
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
  "slug": "isclosedmap-snd-of-compactspace--7c8100d3f5e8dab293790672",
  "source": {
    "blob": "96337d3377ca238edfedb7e53e5dc4ed42a5058d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c8100d3f5e8dab293790672c71785b039752543a1b2add4c14020d1ae11ad50",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bb4ad14-fa5c-5e30-2ab0-9571e930efde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosedMap_snd_of_compactSpace [CompactSpace X] :
    IsClosedMap (Prod.snd : X × Y → Y) :=
  isProperMap_snd_of_compactSpace.isClosedMap

/-- A proper map `f : X → Y` is **universally closed**: for any topological space `Z`, the map
`Prod.map f id : X × Z → Y × Z` is closed. We will prove in `isProperMap_iff_universally_closed`
that proper maps are exactly continuous maps which have this property, but this result should be
easier to use because it allows `Z` to live in any universe. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96337d3377ca238edfedb7e53e5dc4ed42a5058d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
