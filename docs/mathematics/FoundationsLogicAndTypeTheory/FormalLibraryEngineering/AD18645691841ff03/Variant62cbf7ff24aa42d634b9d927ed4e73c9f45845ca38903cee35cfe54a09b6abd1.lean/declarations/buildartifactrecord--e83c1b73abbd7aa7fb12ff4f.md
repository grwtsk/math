# BuildArtifactRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1534cb44cbfc04b5ce84fbec0619e45e3847eef79aa2e0aca381b363b53c90d3",
  "kind": "structure",
  "lexical_name": "BuildArtifactRecord",
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
  "slug": "buildartifactrecord--e83c1b73abbd7aa7fb12ff4f",
  "source": {
    "blob": "a52e3fecc6d2a769e8221ca4f8d011e03d35936e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD18645691841ff03/Variant62cbf7ff24aa42d634b9d927ed4e73c9f45845ca38903cee35cfe54a09b6abd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e83c1b73abbd7aa7fb12ff4f08553735a8bcd19f5c5bacf7857c5056cb4b02f6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD18645691841ff03/Variant62cbf7ff24aa42d634b9d927ed4e73c9f45845ca38903cee35cfe54a09b6abd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1534cb44cbfc04b5ce84fbec0619e45e3847eef79aa2e0aca381b363b53c90d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BuildArtifactRecord where
  kind : BuildArtifactKind
  path : Option CanonicalPath
  digest : Option Digest
  required : Bool
  present : Bool
  authority : ExtractionAuthority := .buildSystem
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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD18645691841ff03/Variant62cbf7ff24aa42d634b9d927ed4e73c9f45845ca38903cee35cfe54a09b6abd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AD18645691841ff03/Variant62cbf7ff24aa42d634b9d927ed4e73c9f45845ca38903cee35cfe54a09b6abd1.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a52e3fecc6d2a769e8221ca4f8d011e03d35936e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
