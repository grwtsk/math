# SuccessorAutomorphismCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8027621d503a700bfd922541f1e91cf68d8f98183fdac8a955b45243af4a8b46",
  "kind": "structure",
  "lexical_name": "SuccessorAutomorphismCompatibility",
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
  "slug": "successorautomorphismcompatibility--09237bea02e30daf6332bc3f",
  "source": {
    "blob": "dbee7d1c801af1b62fff6004180f552c441439e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 10,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCompatibility/Varianteb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09237bea02e30daf6332bc3f5585920f8c2a92737802dd5bc28411afaf52e012",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCompatibility/Varianteb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8027621d503a700bfd922541f1e91cf68d8f98183fdac8a955b45243af4a8b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SuccessorAutomorphismCompatibility
    (SuccessorGroup PredecessorGroup
      SuccessorState PredecessorState : Type u) where
  successorAction :
    CutAutomorphismAction SuccessorGroup SuccessorState
  predecessorAction :
    CutAutomorphismAction PredecessorGroup PredecessorState
  connector :
    SuccessorStateConnector PredecessorState SuccessorState
  restrictGroup : SuccessorGroup → PredecessorGroup
  projects :
    ∀ groupElement state,
      connector.project
          (successorAction.act groupElement state) =
        predecessorAction.act
          (restrictGroup groupElement)
          (connector.project state)

end Mathematics.StratifiedBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCompatibility/Varianteb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorCompatibility/Varianteb16128a0cf786e6b848f526e45ef70cb7cce6e5326a860961e6e85212a7b271.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbee7d1c801af1b62fff6004180f552c441439e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
