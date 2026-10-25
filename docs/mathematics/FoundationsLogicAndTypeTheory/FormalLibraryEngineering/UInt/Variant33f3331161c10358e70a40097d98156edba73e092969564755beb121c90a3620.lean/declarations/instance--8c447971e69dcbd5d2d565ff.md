# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baa4fc99fb3c78ac115cb6edef523101a696b0a0fb449cebaf24ca99e0cb1a97",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8c447971e69dcbd5d2d565ff",
  "source": {
    "blob": "0712f759c8bd7995dd67be339dc0014f209fc663",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 238,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant33f3331161c10358e70a40097d98156edba73e092969564755beb121c90a3620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c447971e69dcbd5d2d565ff659125aec3205ee2a5e9604e65339f14d43d96ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant33f3331161c10358e70a40097d98156edba73e092969564755beb121c90a3620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baa4fc99fb3c78ac115cb6edef523101a696b0a0fb449cebaf24ca99e0cb1a97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LawfulUpwardEnumerable UInt32 where
  ne_of_lt x y := by
    cases x; cases y
    simpa [upwardEnumerableLT_ofBitVec] using LawfulUpwardEnumerable.ne_of_lt _ _
  succMany?_zero x := by
    cases x
    simpa [succMany?_ofBitVec] using succMany?_zero
  succMany?_add_one n x := by
    cases x
    simp [succMany?_ofBitVec, succMany?_add_one, Option.bind_map, Function.comp_def,
      succ?_ofBitVec]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant33f3331161c10358e70a40097d98156edba73e092969564755beb121c90a3620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UInt/Variant33f3331161c10358e70a40097d98156edba73e092969564755beb121c90a3620.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0712f759c8bd7995dd67be339dc0014f209fc663` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
