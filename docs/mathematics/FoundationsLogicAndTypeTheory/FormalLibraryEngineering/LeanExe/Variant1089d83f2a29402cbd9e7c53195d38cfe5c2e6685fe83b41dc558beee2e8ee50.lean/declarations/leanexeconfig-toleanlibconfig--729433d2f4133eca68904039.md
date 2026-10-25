# LeanExeConfig.toLeanLibConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e6f0655a1568d1d00b5e7ca032162ed6dfddcb1dd4a201633bc4e635be28eb2",
  "kind": "def",
  "lexical_name": "LeanExeConfig.toLeanLibConfig",
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
  "slug": "leanexeconfig-toleanlibconfig--729433d2f4133eca68904039",
  "source": {
    "blob": "e427c3775735603ab7d986aa4efbab6486bcc80f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExe/Variant1089d83f2a29402cbd9e7c53195d38cfe5c2e6685fe83b41dc558beee2e8ee50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:729433d2f4133eca6890403967a8bd9c47422b33ecb42b4a7c9d3d9cc5ef6cf8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExe/Variant1089d83f2a29402cbd9e7c53195d38cfe5c2e6685fe83b41dc558beee2e8ee50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e6f0655a1568d1d00b5e7ca032162ed6dfddcb1dd4a201633bc4e635be28eb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def LeanExeConfig.toLeanLibConfig (self : LeanExeConfig n) : LeanLibConfig n where
  srcDir := self.srcDir
  roots := #[]
  libName := self.exeName
  needs := self.needs
  extraDepTargets := self.extraDepTargets
  nativeFacets := self.nativeFacets
  toLeanConfig := self.toLeanConfig

namespace LeanExe

/-- The executable's user-defined configuration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExe/Variant1089d83f2a29402cbd9e7c53195d38cfe5c2e6685fe83b41dc558beee2e8ee50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExe/Variant1089d83f2a29402cbd9e7c53195d38cfe5c2e6685fe83b41dc558beee2e8ee50.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e427c3775735603ab7d986aa4efbab6486bcc80f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
