# Float.toUInt8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdfbd7f2af7a80559c9f88a4c72cb7dfb87f1526eeac41590e0a157ea4a69fa6",
  "kind": "def",
  "lexical_name": "Float.toUInt8",
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
  "slug": "float-touint8--6ccbfd4567925f15d7603df1",
  "source": {
    "blob": "8997b54b8802973fd63c471e0f5709ddb933dae2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant5f19582ab47be783ea83cdfbf9472084c0d9f120e38ffb02c8c73aa70dc96524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ccbfd4567925f15d7603df1d6e264fe48a9b7fc484fe680c01811ef40243c44",
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

Occurrence: `declaration:cdfbd7f2af7a80559c9f88a4c72cb7dfb87f1526eeac41590e0a157ea4a69fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[extern "lean_float_to_uint8"] def Float.toUInt8 : Float → UInt8 :=
  fun a => a.toModel.toUInt8
/--
Converts a floating-point number to a 16-bit unsigned integer.

If the given `Float` is non-negative, truncates the value to a positive integer, rounding down and
clamping to the range of `UInt16`. Returns `0` if the `Float` is negative or `NaN`, and returns the
largest `UInt16` value (i.e. `UInt16.size - 1`) if the float is larger than it.

This function has a logical model in terms of `Float.Model`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant5f19582ab47be783ea83cdfbf9472084c0d9f120e38ffb02c8c73aa70dc96524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Float/Variant5f19582ab47be783ea83cdfbf9472084c0d9f120e38ffb02c8c73aa70dc96524.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8997b54b8802973fd63c471e0f5709ddb933dae2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
