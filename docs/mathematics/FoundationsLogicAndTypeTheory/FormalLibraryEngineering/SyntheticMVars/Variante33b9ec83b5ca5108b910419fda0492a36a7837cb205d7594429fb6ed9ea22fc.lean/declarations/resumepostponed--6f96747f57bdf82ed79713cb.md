# resumePostponed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18c863b75708b6da2fd61e85169d1991b35d20bbcbd18cf8fd36dd6ed42c1b4a",
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
  "slug": "resumepostponed--6f96747f57bdf82ed79713cb",
  "source": {
    "blob": "7b7f039bfa57aef97a3e44348d0f6194fa95fda9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f96747f57bdf82ed79713cb27fce770acaec27e144c3a56b0abbaad513706aa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18c863b75708b6da2fd61e85169d1991b35d20bbcbd18cf8fd36dd6ed42c1b4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–78.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SyntheticMVars/Variante33b9ec83b5ca5108b910419fda0492a36a7837cb205d7594429fb6ed9ea22fc.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b7f039bfa57aef97a3e44348d0f6194fa95fda9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
