# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf1cf065c7fd130b934f5571e9164017992459f820eeaa1f59c0645a7948e71d",
  "kind": "elab",
  "lexical_name": null,
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
  "slug": "elab--2b771bee47b708db31ce67ff",
  "source": {
    "blob": "7869334523c39aa8c20998fe3c396a994d73b6ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 279,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant40364a6cfbbcf0d49059bdfa554263e8e046ef73334b54742fd7ee7ed47899a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2b771bee47b708db31ce67ff567a55dfcdf9e0551cc92157472c532edf1bace6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant40364a6cfbbcf0d49059bdfa554263e8e046ef73334b54742fd7ee7ed47899a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf1cf065c7fd130b934f5571e9164017992459f820eeaa1f59c0645a7948e71d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "#explode " stx:term : command => withoutModifyingEnv <| Command.runTermElabM fun _ => do
  let (heading, e) ← try
    -- Adapted from `#check` implementation
    let theoremName : Name ← resolveGlobalConstNoOverloadWithInfo stx
    addCompletionInfo <| .id stx theoremName (danglingDot := false) {} none
    let decl ← getConstInfo theoremName
    let c : Expr := .const theoremName (decl.levelParams.map mkLevelParam)
    pure (m!"{ppConst c} : {decl.type}", decl.value!)
  catch _ =>
    let e ← Term.elabTerm stx none
    Term.synthesizeSyntheticMVarsNoPostponing
    let e ← Term.levelMVarToParam (← instantiateMVars e)
    pure (m!"{e} : {← Meta.inferType e}", e)
  unless e.isSyntheticSorry do
    let entries ← explode e
    let fitchTable : MessageData ← entriesToMessageData entries
    logInfo <|← addMessageContext m!"{heading}\n\n{fitchTable}\n"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant40364a6cfbbcf0d49059bdfa554263e8e046ef73334b54742fd7ee7ed47899a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Explode/Variant40364a6cfbbcf0d49059bdfa554263e8e046ef73334b54742fd7ee7ed47899a1.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7869334523c39aa8c20998fe3c396a994d73b6ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
