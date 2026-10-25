# DvdCnstr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b08e262ccabf85d1534822df80e6daa64a133fc119c508eff3ff5b8e371f1c26",
  "kind": "structure",
  "lexical_name": "DvdCnstr",
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
  "slug": "dvdcnstr--8af612b955f76d5db347b5c3",
  "source": {
    "blob": "e9fb4e37a45cef9b4b19668870832e192994fbcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant33bd39eec0a4f52e71455559c7132071773b05d412eb088421803c4d7691a176.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8af612b955f76d5db347b5c313aafc20c46ee38ab3f653633be3a7df49b2f924",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant33bd39eec0a4f52e71455559c7132071773b05d412eb088421803c4d7691a176.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b08e262ccabf85d1534822df80e6daa64a133fc119c508eff3ff5b8e371f1c26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DvdCnstr where
  d  : Int
  p  : Poly
  h  : DvdCnstrProof

/--
The predicate of type `Nat → Prop`, which serves as the conclusion of the
`cooper_left`, `cooper_right`, `cooper_dvd_left`, and `cooper_dvd_right` theorems.

The specific predicate used is determined as follows:
- `cooper_left_split` (if `left` is `true` and `c₃?` is `none`)
- `cooper_right_split` (if `left` is `false` and `c₃?` is `none`)
- `cooper_dvd_left_split` (if `left` is `true` and `c₃?` is `some`)
- `cooper_dvd_right_split` (if `left` is `false` and `c₃?` is `some`)

See `CooperSplit`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant33bd39eec0a4f52e71455559c7132071773b05d412eb088421803c4d7691a176.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant33bd39eec0a4f52e71455559c7132071773b05d412eb088421803c4d7691a176.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9fb4e37a45cef9b4b19668870832e192994fbcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
