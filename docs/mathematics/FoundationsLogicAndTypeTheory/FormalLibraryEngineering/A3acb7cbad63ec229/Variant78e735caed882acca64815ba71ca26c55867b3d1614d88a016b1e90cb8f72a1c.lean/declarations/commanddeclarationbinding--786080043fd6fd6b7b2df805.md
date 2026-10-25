# CommandDeclarationBinding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:287388fd59d78ef2c44714828fca769caceb8cc443d0c47e1c74a88a644e0752",
  "kind": "structure",
  "lexical_name": "CommandDeclarationBinding",
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
  "slug": "commanddeclarationbinding--786080043fd6fd6b7b2df805",
  "source": {
    "blob": "2c861e8b32d07e16f42dc78fd8973fdc0d0fac99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A3acb7cbad63ec229/Variant78e735caed882acca64815ba71ca26c55867b3d1614d88a016b1e90cb8f72a1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:786080043fd6fd6b7b2df805f689da82b9c780ca041439fe2397fca6d2ab67fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A3acb7cbad63ec229/Variant78e735caed882acca64815ba71ca26c55867b3d1614d88a016b1e90cb8f72a1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:287388fd59d78ef2c44714828fca769caceb8cc443d0c47e1c74a88a644e0752`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CommandDeclarationBinding where
  commandId : SourceCommandId
  declarationId : Option ExtractorDeclarationId
  classification : BindingClassification
  evidenceDigest : Digest
  exact : Bool
  deriving DecidableEq, Repr

end Mathematics.SourceAnalysis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A3acb7cbad63ec229/Variant78e735caed882acca64815ba71ca26c55867b3d1614d88a016b1e90cb8f72a1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A3acb7cbad63ec229/Variant78e735caed882acca64815ba71ca26c55867b3d1614d88a016b1e90cb8f72a1c.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c861e8b32d07e16f42dc78fd8973fdc0d0fac99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
