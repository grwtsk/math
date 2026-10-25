# collectRecCalls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b2f7784f5e8fe5feba9984318e42002757da841d5918c47ad9b74e03087c109",
  "kind": "def",
  "lexical_name": "collectRecCalls",
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
  "slug": "collectreccalls--1d1e6eccff48fe5e3d38e904",
  "source": {
    "blob": "d7e8f582f2bcabce625f8ec04c422992da61f27e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 347,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d1e6eccff48fe5e3d38e9043b46e3083e15cbe1c0284082f44138ba9fc0ee28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b2f7784f5e8fe5feba9984318e42002757da841d5918c47ad9b74e03087c109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectRecCalls (unaryPreDef : PreDefinition) (fixedParamPerms : FixedParamPerms)
    (argsPacker : ArgsPacker) : MetaM (Array RecCallWithContext) := withoutModifyingState do
  addAsAxiom unaryPreDef
  lambdaBoundedTelescope unaryPreDef.value (fixedParamPerms.numFixed + 1) fun xs body => do
    unless xs.size == fixedParamPerms.numFixed + 1 do
      throwError "Unexpected number of lambdas in unary pre-definition"
    let ys := xs[*...fixedParamPerms.numFixed]
    let param := xs[fixedParamPerms.numFixed]!
    withRecApps unaryPreDef.declName fixedParamPerms.numFixed param body fun param args => do
      unless args.size ≥ fixedParamPerms.numFixed + 1 do
        throwError "Insufficient arguments in recursive call"
      let arg := args[fixedParamPerms.numFixed]!
      trace[Elab.definition.wf] "collectRecCalls: {unaryPreDef.declName} ({param}) → {unaryPreDef.declName} ({arg})"
      let some (caller, params) := argsPacker.unpack param
        | throwError "Cannot unpack param, unexpected expression:{indentExpr param}"
      let some (callee, args) := argsPacker.unpack arg
        | throwError "Cannot unpack arg, unexpected expression:{indentExpr arg}"
      let callerParams := fixedParamPerms.perms[caller]!.buildArgs ys params
      let calleeArgs := fixedParamPerms.perms[callee]!.buildArgs ys args
      RecCallWithContext.create (← getRef) caller callerParams callee calleeArgs

/-- Is the expression a `<`-like comparison of `Nat` expressions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GuessLex/Variant977fc49d05765c90b70a4d7c1ed9d671d77be0365c0d2e5e1b71acee5a15270c.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e8f582f2bcabce625f8ec04c422992da61f27e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
