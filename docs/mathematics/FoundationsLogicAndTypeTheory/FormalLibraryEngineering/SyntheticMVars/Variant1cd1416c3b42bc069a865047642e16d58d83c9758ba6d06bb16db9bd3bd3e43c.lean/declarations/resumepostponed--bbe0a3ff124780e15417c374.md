# resumePostponed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6b8c80a33ebb25df9e9f479fa962b625ac16752e4cc28f1623e69427d47d925",
  "kind": "def",
  "lexical_name": "resumePostponed",
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
  "slug": "resumepostponed--bbe0a3ff124780e15417c374",
  "source": {
    "blob": "948a9b0971ccdcf4096224a5ea1c3f245959c2f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbe0a3ff124780e15417c374b203e27ac192b7b86375d458fadcf74e7ee041c3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e6b8c80a33ebb25df9e9f479fa962b625ac16752e4cc28f1623e69427d47d925`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def resumePostponed (savedContext : SavedContext) (stx : Syntax) (mvarId : MVarId) (postponeOnError : Bool) : TermElabM Bool :=
  withRef stx <| mvarId.withContext do
    let s ← saveState
    try
      withSavedContext savedContext do
        let mvarDecl     ← getMVarDecl mvarId
        let expectedType ← instantiateMVars mvarDecl.type
        withInfoHole mvarId do
          /-
          NOTE: `withInfoTree` discards all but the last info tree pushed inside this `do` block.
          `resumeElabTerm` usually pushes the term info node and `ensureHasType` sometimes
          pushes a custom info node with information about the coercions that were applied.

          In order for both trees to be preserved, we use `withTermInfoContext'` to wrap these
          trees into a single node. Although this results in two nested term nodes for the same
          syntax element, this should be unproblematic. For example, `hoverableInfoAtM?` selects
          the innermost info tree.
          -/
          let result ← withTermInfoContext' .anonymous stx do
            let result ← resumeElabTerm stx expectedType (!postponeOnError)
            /- We must ensure `result` has the expected type because it is the one expected by the method that postponed stx.
              That is, the method does not have an opportunity to check whether `result` has the expected type or not. -/
            withRef stx <| ensureHasType expectedType result
          /- We must perform `occursCheck` here since `result` may contain `mvarId` when it has synthetic `sorry`s. -/
          if (← occursCheck mvarId result) then
            mvarId.assign result
            return true
          else
            return false
    catch
     | ex@(.internal id _) =>
       if id == postponeExceptionId then
         s.restore (restoreInfo := true)
         return false
       else
         throw ex
     | ex@(.error ..) =>
       if postponeOnError then
         s.restore (restoreInfo := true)
         return false
       else
         logException ex
         return true

/--
  Similar to `synthesizeInstMVarCore`, but makes sure that `instMVar` local context and instances
  are used. It also logs any error message produced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variant1cd1416c3b42bc069a865047642e16d58d83c9758ba6d06bb16db9bd3bd3e43c.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `948a9b0971ccdcf4096224a5ea1c3f245959c2f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
