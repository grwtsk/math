# Irrelevant.setHasTrivialStructure?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a8b6d2b90542888c6a9fd2133b75e3ad80dd70370090659cf40ce5213fa1345",
  "kind": "def",
  "lexical_name": "Irrelevant.setHasTrivialStructure?",
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
  "slug": "irrelevant-sethastrivialstructure--30e64693806879f99159bd93",
  "source": {
    "blob": "b2d9c5d99fb832c517b87d15b29ac7a30e1e3ec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variantf51c7072e7c778c1c13ce2719dd7bff53a0a624235998b31dd44d4a706b1f0fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:30e64693806879f99159bd93446485f7683c69cc9ceb137be64e032c8c79a6ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variantf51c7072e7c778c1c13ce2719dd7bff53a0a624235998b31dd44d4a706b1f0fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a8b6d2b90542888c6a9fd2133b75e3ad80dd70370090659cf40ce5213fa1345`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Irrelevant.setHasTrivialStructure?
    (infoExt : MapDeclarationExtension (Option TrivialStructureInfo))
    (trivialType : Expr → MetaM Bool) (declName : Name) : CoreM Unit := do
  unless (infoExt.find? (← getEnv) declName).isSome do
    modifyEnv (infoExt.insert · declName (← computeHasTrivialStructure? trivialType declName))

/-- Trivial-structure info for `declName` (`none` for non-inductives); requires `compileDecls` to
have been run for inductive `declName`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variantf51c7072e7c778c1c13ce2719dd7bff53a0a624235998b31dd44d4a706b1f0fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Irrelevant/Variantf51c7072e7c778c1c13ce2719dd7bff53a0a624235998b31dd44d4a706b1f0fe.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2d9c5d99fb832c517b87d15b29ac7a30e1e3ec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
