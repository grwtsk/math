# instNNRatCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cbf40ce0ba930e24b7c831dbad6711fd8fbd93ea1172ed33477d7a8e54b98fa",
  "kind": "instance",
  "lexical_name": "instNNRatCast",
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
  "slug": "instnnratcast--b04b22eb9537b94f49c19262",
  "source": {
    "blob": "4382656328a27afbee8b1306e9d7d907d9691d3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 35,
    "path": "GRWTSK/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b04b22eb9537b94f49c1926258d827450f2edb5ced111a013b104e06c118a1bc",
  "verification": {
    "reference": "docs/verification/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cbf40ce0ba930e24b7c831dbad6711fd8fbd93ea1172ed33477d7a8e54b98fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instNNRatCast [NNRatCast α] : NNRatCast (ULift α) where nnratCast q := up q
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ULift/Variant0a75fdbca1f73ce4f6ea224d6bad4e95d8e289be6cd49f2898ae2d97ac5d1418.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4382656328a27afbee8b1306e9d7d907d9691d3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
