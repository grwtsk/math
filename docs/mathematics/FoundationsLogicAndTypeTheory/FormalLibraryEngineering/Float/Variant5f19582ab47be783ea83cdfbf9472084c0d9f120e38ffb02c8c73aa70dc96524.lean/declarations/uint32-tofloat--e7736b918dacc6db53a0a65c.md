# UInt32.toFloat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c68b2328b60dba498d3cb7785f367d8e238c4e06182e25c8ceae58ffbf59cc94",
  "kind": "def",
  "lexical_name": "UInt32.toFloat",
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
  "slug": "uint32-tofloat--e7736b918dacc6db53a0a65c",
  "source": {
    "blob": "8997b54b8802973fd63c471e0f5709ddb933dae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 286,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant5f19582ab47be783ea83cdfbf9472084c0d9f120e38ffb02c8c73aa70dc96524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7736b918dacc6db53a0a65c4ba641b13fd802ddc8e2ea542d57580ed91da763",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant5f19582ab47be783ea83cdfbf9472084c0d9f120e38ffb02c8c73aa70dc96524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c68b2328b60dba498d3cb7785f367d8e238c4e06182e25c8ceae58ffbf59cc94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[extern "lean_uint32_to_float"] def UInt32.toFloat (n : UInt32) : Float :=
  .ofModel (.ofUInt32 n)
/--
Obtains a `Float` whose value is near the given `UInt64`.

It will be exactly the value of the given `UInt64` if such a `Float` exists. If no such `Float`
exists, the returned value will either be the smallest `Float` that is larger than the given value,
or the largest `Float` that is smaller than the given value.

This function has a logical model in terms of `Float.Model`, but is overridden at runtime with an
efficient implementation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant5f19582ab47be783ea83cdfbf9472084c0d9f120e38ffb02c8c73aa70dc96524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant5f19582ab47be783ea83cdfbf9472084c0d9f120e38ffb02c8c73aa70dc96524.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8997b54b8802973fd63c471e0f5709ddb933dae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
