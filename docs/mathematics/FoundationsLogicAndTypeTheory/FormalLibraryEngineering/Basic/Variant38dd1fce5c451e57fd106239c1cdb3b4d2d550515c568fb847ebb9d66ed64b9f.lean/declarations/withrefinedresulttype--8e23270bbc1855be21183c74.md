# withRefinedResultType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a6e97579f4c0cac6e67a8249327f7d4ba7999e4f4501a16bdc5bcc7520853d9",
  "kind": "def",
  "lexical_name": "withRefinedResultType",
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
  "slug": "withrefinedresulttype--8e23270bbc1855be21183c74",
  "source": {
    "blob": "8989d99b84b6c7ee7db899a0ac9d1716f4853e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 744,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e23270bbc1855be21183c74df58134141ddd18a730a0c11b54e92e36884f2d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a6e97579f4c0cac6e67a8249327f7d4ba7999e4f4501a16bdc5bcc7520853d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 744–753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withRefinedResultType (doBlockResultType : Expr) (k : DoElabM α) : DoElabM α := do
  let contInfo := (← read).contInfo.toContInfo
  let contInfo := { contInfo with returnCont.resultType := doBlockResultType }
  withReader (fun ctx => { ctx with doBlockResultType, contInfo := contInfo.toContInfoRef }) k

/--
Prepare the context for elaborating the body of a loop.
This includes setting the return continuation, break continuation, continue continuation, as
well as the changed result type of the `do` block in the loop body.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant38dd1fce5c451e57fd106239c1cdb3b4d2d550515c568fb847ebb9d66ed64b9f.lean#L744).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8989d99b84b6c7ee7db899a0ac9d1716f4853e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
