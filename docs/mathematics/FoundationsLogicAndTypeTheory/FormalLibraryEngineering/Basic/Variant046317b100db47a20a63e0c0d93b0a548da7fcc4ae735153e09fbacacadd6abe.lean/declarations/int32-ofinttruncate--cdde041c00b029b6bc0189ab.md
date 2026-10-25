# Int32.ofIntTruncate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e9077ded4a626ff62342cb740578d59db86e14ced6d14f5028e61de1f17b53ac",
  "kind": "def",
  "lexical_name": "Int32.ofIntTruncate",
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
  "slug": "int32-ofinttruncate--cdde041c00b029b6bc0189ab",
  "source": {
    "blob": "c16b2c0b6e153761aa92388558d4ef12cd7ec7d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 974,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant046317b100db47a20a63e0c0d93b0a548da7fcc4ae735153e09fbacacadd6abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdde041c00b029b6bc0189ab280f9811fa543af99f332d5a61a7f3dc6051f5fe",
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

Occurrence: `declaration:e9077ded4a626ff62342cb740578d59db86e14ced6d14f5028e61de1f17b53ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 974–983.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Int32.ofIntTruncate (i : Int) : Int32 :=
  Int32.ofIntClamp i

/--
Adds two 32-bit signed integers, wrapping around on over- or underflow.  Usually accessed via the
`+` operator.

This function is overridden at runtime with an efficient implementation.
-/
@[extern "lean_int32_add", implicit_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant046317b100db47a20a63e0c0d93b0a548da7fcc4ae735153e09fbacacadd6abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant046317b100db47a20a63e0c0d93b0a548da7fcc4ae735153e09fbacacadd6abe.lean#L974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c16b2c0b6e153761aa92388558d4ef12cd7ec7d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
