# getConstUnfoldEqnFor?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57c12509086c06681b19cdaf8522fbd209f32ce468705855cf3fa4c1e46679b1",
  "kind": "def",
  "lexical_name": "getConstUnfoldEqnFor?",
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
  "slug": "getconstunfoldeqnfor--cac3b8ddbe0b66b9e1219021",
  "source": {
    "blob": "501b162885f68d425b2893cf78df46c799152248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqUnfold/Variant3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cac3b8ddbe0b66b9e1219021fc3aa5a982afac939497246225ce749364131c20",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqUnfold/Variant3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57c12509086c06681b19cdaf8522fbd209f32ce468705855cf3fa4c1e46679b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getConstUnfoldEqnFor? (declName : Name) : MetaM (Option Name) := do
  if (← getUnfoldEqnFor? (nonRec := true) declName).isNone then
    trace[ReservedNameAction] "getConstUnfoldEqnFor? {declName} failed, no unfold theorem available"
    return none
  let name := mkEqLikeNameFor (← getEnv) declName eqUnfoldThmSuffix
  realizeConst declName name <| withEqnOptions declName do
    -- we have to call `getUnfoldEqnFor?` again to make `unfoldEqnName` available in this context
    let some unfoldEqnName ← getUnfoldEqnFor? (nonRec := true) declName | unreachable!
    let info ← getConstInfo unfoldEqnName
    let type ← forallTelescope info.type fun xs eq => do
      let some (_, lhs, rhs) := eq.eq? | throwError "Unexpected unfold theorem type {info.type}"
      unless lhs.getAppFn.isConstOf declName do
        throwError "Unexpected unfold theorem type {info.type}"
      unless lhs.getAppArgs == xs do
        throwError "Unexpected unfold theorem type {info.type}"
      let type ← mkEq lhs.getAppFn (← mkLambdaFVars xs rhs)
      return type
    let value ← withNewMCtxDepth do
      let main ← mkFreshExprSyntheticOpaqueMVar type
      if (← tryURefl main.mvarId!) then -- try to make a rfl lemma if possible
        instantiateMVars main
      else forallTelescope info.type fun xs _eq => do
        let mut proof ← mkConstWithLevelParams unfoldEqnName
        proof := mkAppN proof xs
        for x in xs.reverse do
          proof ← mkLambdaFVars #[x] proof
          proof ← mkAppM ``funext #[proof]
        return proof
    addDecl <| Declaration.thmDecl {
      name, type, value
      levelParams := info.levelParams
    }
    inferDefEqAttr name
  return some name


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqUnfold/Variant3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqUnfold/Variant3ff8d6ae2d8cf4ade5f969d60ffeb9c2b166f762b7cf62078b1b9f17c7ac35e7.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `501b162885f68d425b2893cf78df46c799152248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
