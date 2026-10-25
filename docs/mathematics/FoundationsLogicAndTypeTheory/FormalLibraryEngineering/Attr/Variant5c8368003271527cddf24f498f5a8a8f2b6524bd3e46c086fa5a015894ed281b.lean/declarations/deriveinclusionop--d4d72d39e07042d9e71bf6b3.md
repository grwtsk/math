# deriveInclusionOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3569282b9709b18da057fc9cde574eb579635e82a4309c9bed1372cdf5e48e6",
  "kind": "def",
  "lexical_name": "deriveInclusionOp",
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
  "slug": "deriveinclusionop--d4d72d39e07042d9e71bf6b3",
  "source": {
    "blob": "cc33b7cd9a758ed21a52a50b2ab5a5b3df8e468a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 131,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4d72d39e07042d9e71bf6b30e30e0b04151fcb4a36611e9f6ab9c7dd700fcc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3569282b9709b18da057fc9cde574eb579635e82a4309c9bed1372cdf5e48e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deriveInclusionOp (theoremName : Name) (hypArgs : Array HypArg) (paramArgs : Array ParamArg)
    (e : Expr) : InclusionM ExprInclusionBody := do
  let theoremExpr ← mkConstWithFreshMVarLevels theoremName
  let (args, binderInfos, conclusion) ← forallMetaTelescopeReducing (← inferType theoremExpr)
  let some (expr, inclusionBody, _) := toSetMem? conclusion | failure
  unless ← isDefEq expr e do failure
  for ⟨name, idx⟩ in paramArgs do
    unless ← isDefEq args[idx]! (← InclusionM.getParam name) do failure
  for ⟨elemIdx, setIdx, proofIdx⟩ in hypArgs do
    let inputExpr ← instantiateMVars args[elemIdx]!
    let body ← mkExprInclusionBody inputExpr
    unless ← isDefEq args[setIdx]! body.inclusionBody do failure
    unless ← isDefEq args[proofIdx]! body.proofBody do failure
  for h : i in [:args.size] do
    let argId := args[i].mvarId!
    unless ← argId.isAssigned do
      if binderInfos[i]!.isInstImplicit then
        argId.assign (← synthInstance (← argId.getType))
      else
        throwError "Could not infer theorem argument `{(← argId.getDecl).userName}` in inclusion \
          extension generated from `{.ofConstName theoremName}`"
  let inclusionBody ← instantiateMVars inclusionBody
  let proofBody ← instantiateMVars (mkAppN theoremExpr args)
  return { inclusionBody, proofBody }

/-- Apply the hypothesis theorem `theoremName` to `h` as its source hypothesis at `sourceIdx`,
recursively constructing the closed inclusion bodies specified by `hypArgs` and filling the
registered parameter arguments specified by `paramArgs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant5c8368003271527cddf24f498f5a8a8f2b6524bd3e46c086fa5a015894ed281b.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc33b7cd9a758ed21a52a50b2ab5a5b3df8e468a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
