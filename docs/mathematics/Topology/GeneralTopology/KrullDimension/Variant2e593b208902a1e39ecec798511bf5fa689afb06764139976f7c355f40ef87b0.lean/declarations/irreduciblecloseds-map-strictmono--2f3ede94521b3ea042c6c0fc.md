# IrreducibleCloseds.map_strictMono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c2225b2-1d46-d1f7-a182-a422c85e6c29",
  "kind": "lemma",
  "lexical_name": "IrreducibleCloseds.map_strictMono",
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
  "slug": "irreduciblecloseds-map-strictmono--2f3ede94521b3ea042c6c0fc",
  "source": {
    "blob": "1f28ed8f4918e021d08519bb5bcb45c2bb91beea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 52,
    "path": "GRWTSK/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f3ede94521b3ea042c6c0fcf99964b8bd98fdd6691c5a783244470e9ec74fe1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c2225b2-1d46-d1f7-a182-a422c85e6c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IrreducibleCloseds.map_strictMono {f : X → Y} (hf : IsClosedEmbedding f) :
    StrictMono (IrreducibleCloseds.map hf.continuous hf.isClosedMap) :=
  fun ⦃_ _⦄ UltV ↦ hf.injective.image_strictMono UltV

/--
If `f : X → Y` is a closed embedding, then the Krull dimension of `X` is less than or equal
to the Krull dimension of `Y`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullDimension/Variant2e593b208902a1e39ecec798511bf5fa689afb06764139976f7c355f40ef87b0.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f28ed8f4918e021d08519bb5bcb45c2bb91beea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
