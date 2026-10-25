# mkTagDeclarationExtension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df7c3a990ac3fe4aecb48811baa8afffad163bae9c0b6d57b9e5d1d499d480f2",
  "kind": "def",
  "lexical_name": "mkTagDeclarationExtension",
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
  "slug": "mktagdeclarationextension--17ba992a769c02ad5e5e52f9",
  "source": {
    "blob": "8a962e9c4b3da96e3aa33a5ae8794b9942a63b58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant4d4135d94041047f3b7721c242ba7b1565c6461d0d840c0645f89c29951981c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17ba992a769c02ad5e5e52f9e8d3d74a02a96c94ff41cea8a69c534a649d4f8f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant4d4135d94041047f3b7721c242ba7b1565c6461d0d840c0645f89c29951981c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df7c3a990ac3fe4aecb48811baa8afffad163bae9c0b6d57b9e5d1d499d480f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkTagDeclarationExtension (name : Name := by exact decl_name%)
  (asyncMode : EnvExtension.AsyncMode := .mainOnly) : IO TagDeclarationExtension :=
  registerSimplePersistentEnvExtension {
    name          := name,
    addImportedFn := fun _ => {},
    addEntryFn    := fun s n => s.insert n,
    toArrayFn     := fun es => es.toArray.qsort Name.quickLt
    asyncMode
    replay?       := some <|
      SimplePersistentEnvExtension.replayOfFilter (!·.contains ·) (·.insert ·)
  }

namespace TagDeclarationExtension

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant4d4135d94041047f3b7721c242ba7b1565c6461d0d840c0645f89c29951981c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EnvExtension/Variant4d4135d94041047f3b7721c242ba7b1565c6461d0d840c0645f89c29951981c7.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a962e9c4b3da96e3aa33a5ae8794b9942a63b58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
