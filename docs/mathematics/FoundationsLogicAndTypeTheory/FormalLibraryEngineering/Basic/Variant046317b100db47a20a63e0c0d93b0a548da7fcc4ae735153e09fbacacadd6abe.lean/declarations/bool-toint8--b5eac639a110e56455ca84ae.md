# Bool.toInt8

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4326637ad7499f8ce3fa7b2f84e265b62984d47b83a3aec1da93690882f57f67",
  "kind": "def",
  "lexical_name": "Bool.toInt8",
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
  "slug": "bool-toint8--b5eac639a110e56455ca84ae",
  "source": {
    "blob": "c16b2c0b6e153761aa92388558d4ef12cd7ec7d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 412,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant046317b100db47a20a63e0c0d93b0a548da7fcc4ae735153e09fbacacadd6abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5eac639a110e56455ca84aec505489048cbaf535e3b9b5445bad1f8046edff3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant046317b100db47a20a63e0c0d93b0a548da7fcc4ae735153e09fbacacadd6abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4326637ad7499f8ce3fa7b2f84e265b62984d47b83a3aec1da93690882f57f67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 412–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Bool.toInt8 (b : Bool) : Int8 := if b then 1 else 0

/--
Decides whether one 8-bit signed integer is strictly less than another. Usually accessed via the
`DecidableLT Int8` instance.

This function is overridden at runtime with an efficient implementation.

Examples:
 * `(if ((-7) : Int8) < 7 then "yes" else "no") = "yes"`
 * `(if (5 : Int8) < 5 then "yes" else "no") = "no"`
 * `show ¬((7 : Int8) < 7) by decide`
-/
@[extern "lean_int8_dec_lt", instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant046317b100db47a20a63e0c0d93b0a548da7fcc4ae735153e09fbacacadd6abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant046317b100db47a20a63e0c0d93b0a548da7fcc4ae735153e09fbacacadd6abe.lean#L412).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16b2c0b6e153761aa92388558d4ef12cd7ec7d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
