# LocalGaloisGroupAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25cba9b47829cb209087e85962ba3468fc69313e690da3c8544a0cbbd3a5124b",
  "kind": "structure",
  "lexical_name": "LocalGaloisGroupAdapter",
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
  "slug": "localgaloisgroupadapter--4de93d8580d49d6bbb0c7747",
  "source": {
    "blob": "13a77d143694ddb3c6308fe0de59141cae087cce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4de93d8580d49d6bbb0c7747632ebbda9f74962072b8733749750f6b90ba2151",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25cba9b47829cb209087e85962ba3468fc69313e690da3c8544a0cbbd3a5124b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalGaloisGroupAdapter
    (K : ArithmeticFieldLabel)
    (global : AbsoluteGaloisGroupAdapter K) where
  placeName : String
  group : ProfiniteGroupLike
  mapsToGlobal : Prop
  mapsToGlobalCertified : mapsToGlobal
  boundary : List String

/--
An absolute finite module is a continuous finite module whose profinite label is
identified with an absolute Galois adapter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absolute/Variant53e9579de95660a16615acc857aacaee9c872dc9b6baa5429084a59a9fd4d58d.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13a77d143694ddb3c6308fe0de59141cae087cce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
