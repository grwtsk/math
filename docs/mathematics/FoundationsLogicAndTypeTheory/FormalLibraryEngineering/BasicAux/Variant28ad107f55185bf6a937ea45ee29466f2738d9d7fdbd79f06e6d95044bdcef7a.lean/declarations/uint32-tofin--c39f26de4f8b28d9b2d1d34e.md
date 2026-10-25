# UInt32.toFin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5285910741a0af54ed2c784fba18038f5f825de33f286330ee10c52aa12ff44c",
  "kind": "def",
  "lexical_name": "UInt32.toFin",
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
  "slug": "uint32-tofin--c39f26de4f8b28d9b2d1d34e",
  "source": {
    "blob": "59e640b45f328b4820de1fefa134541279ee18e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 149,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant28ad107f55185bf6a937ea45ee29466f2738d9d7fdbd79f06e6d95044bdcef7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c39f26de4f8b28d9b2d1d34e2a499572b5be2935c1d21a93790626b18fb963d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant28ad107f55185bf6a937ea45ee29466f2738d9d7fdbd79f06e6d95044bdcef7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5285910741a0af54ed2c784fba18038f5f825de33f286330ee10c52aa12ff44c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UInt32.toFin (x : UInt32) : Fin UInt32.size := x.toBitVec.toFin

/--
Converts a natural number to a 32-bit unsigned integer, wrapping on overflow.

This function is overridden at runtime with an efficient implementation.

Examples:
 * `UInt32.ofNat 5 = 5`
 * `UInt32.ofNat 65539 = 65539`
 * `UInt32.ofNat 4_294_967_299 = 3`
-/
@[extern "lean_uint32_of_nat", implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant28ad107f55185bf6a937ea45ee29466f2738d9d7fdbd79f06e6d95044bdcef7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BasicAux/Variant28ad107f55185bf6a937ea45ee29466f2738d9d7fdbd79f06e6d95044bdcef7a.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e640b45f328b4820de1fefa134541279ee18e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
