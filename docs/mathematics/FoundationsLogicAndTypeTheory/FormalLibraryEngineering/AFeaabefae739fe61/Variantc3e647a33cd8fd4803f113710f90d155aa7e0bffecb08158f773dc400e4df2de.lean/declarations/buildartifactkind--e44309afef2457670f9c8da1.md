# BuildArtifactKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3badfb6af81f5f2cd9dcb568dcca62e61fdc8fb8ea6f39668296a2650969d1da",
  "kind": "inductive",
  "lexical_name": "BuildArtifactKind",
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
  "slug": "buildartifactkind--e44309afef2457670f9c8da1",
  "source": {
    "blob": "6cba0e492eeede32d1ab43935bb8255e29447709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 17,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AFeaabefae739fe61/Variantc3e647a33cd8fd4803f113710f90d155aa7e0bffecb08158f773dc400e4df2de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e44309afef2457670f9c8da1f84a1d9eb4f58d8854709adcc4346a7b8576b744",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AFeaabefae739fe61/Variantc3e647a33cd8fd4803f113710f90d155aa7e0bffecb08158f773dc400e4df2de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3badfb6af81f5f2cd9dcb568dcca62e61fdc8fb8ea6f39668296a2650969d1da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive BuildArtifactKind
  | source
  | olean
  | library
  | executable
  | lakefile
  | lakeManifest
  | leanToolchain
  | other
  deriving DecidableEq, Repr, Inhabited

namespace BuildArtifactRecord

end BuildArtifactRecord

namespace ModuleBuildReceipt

end ModuleBuildReceipt

namespace BuildReceipt

end BuildReceipt

end Mathematics.Extractor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AFeaabefae739fe61/Variantc3e647a33cd8fd4803f113710f90d155aa7e0bffecb08158f773dc400e4df2de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AFeaabefae739fe61/Variantc3e647a33cd8fd4803f113710f90d155aa7e0bffecb08158f773dc400e4df2de.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cba0e492eeede32d1ab43935bb8255e29447709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
