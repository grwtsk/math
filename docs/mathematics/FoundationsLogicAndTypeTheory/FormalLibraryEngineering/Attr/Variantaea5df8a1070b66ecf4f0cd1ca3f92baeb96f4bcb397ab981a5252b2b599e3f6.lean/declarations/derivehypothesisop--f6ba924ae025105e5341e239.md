# deriveHypothesisOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4693a092a56d300e91e019349e018385ce3e0d38f4235c9be32ce3bc67e946b8",
  "kind": "def",
  "lexical_name": "deriveHypothesisOp",
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
  "slug": "derivehypothesisop--f6ba924ae025105e5341e239",
  "source": {
    "blob": "a18d476099d762f60a45c052bcc98b7a1ecd440f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaea5df8a1070b66ecf4f0cd1ca3f92baeb96f4bcb397ab981a5252b2b599e3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6ba924ae025105e5341e239f1fa4565fbcefb3d1ff99724a5f7e3efdbc5ef47",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaea5df8a1070b66ecf4f0cd1ca3f92baeb96f4bcb397ab981a5252b2b599e3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4693a092a56d300e91e019349e018385ce3e0d38f4235c9be32ce3bc67e946b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveHypothesisOp (theoremName : Name) (sourceIdx : Nat) (hypArgs : Array HypArg)
    (paramArgs : Array ParamArg) (h : Expr) : HypothesisM Unit := do
  let hypType ← instantiateMVars (← inferType h)
  let theoremExpr ← mkConstWithFreshMVarLevels theoremName
  let (args, binderInfos, conclusion) ← forallMetaTelescopeReducing (← inferType theoremExpr)
  let sourceId := args[sourceIdx]!.mvarId!
  unless ← isDefEq (← sourceId.getType) hypType do failure
  sourceId.assign h
  let some (e, s, _) := toSetMem? conclusion | failure
  let e ← instantiateMVars e
  let some iVar ← findIVar? e | failure
  for ⟨name, idx⟩ in paramArgs do
    unless ← isDefEq args[idx]! (← HypothesisM.getParam name) do failure
  for ⟨elemIdx, setIdx, proofIdx⟩ in hypArgs do
    let inputExpr ← instantiateMVars args[elemIdx]!
    let body ← mkHypExprInclusionBody inputExpr
    unless ← isDefEq args[setIdx]! body.inclusionBody do failure
    unless ← isDefEq args[proofIdx]! body.proofBody do failure
  for h : i in [:args.size] do
    let argId := args[i].mvarId!
    unless ← argId.isAssigned do
      if binderInfos[i]!.isInstImplicit then
        argId.assign (← synthInstance (← argId.getType))
      else
        throwError "Could not infer theorem argument `{(← argId.getDecl).userName}` in \
          hypothesis extension generated from `{.ofConstName theoremName}`"
  let inclusionBody ← instantiateMVars s
  let proofBody ← instantiateMVars (mkAppN theoremExpr args)
  addInclusionHyp iVar.iExpr { inclusionBody, proofBody }

/-- Extract the `HypArg` and `ParamArg` metadata from a theorem declaration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaea5df8a1070b66ecf4f0cd1ca3f92baeb96f4bcb397ab981a5252b2b599e3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaea5df8a1070b66ecf4f0cd1ca3f92baeb96f4bcb397ab981a5252b2b599e3f6.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a18d476099d762f60a45c052bcc98b7a1ecd440f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
