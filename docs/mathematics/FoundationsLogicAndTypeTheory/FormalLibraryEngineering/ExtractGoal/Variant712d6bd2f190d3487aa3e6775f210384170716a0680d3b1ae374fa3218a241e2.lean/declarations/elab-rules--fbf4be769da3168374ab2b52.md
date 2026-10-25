# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81c9b8f1e835b36cae77912c763ebd7c22ec9da25276dda9e19cd19afed2ce82",
  "kind": "elab_rules",
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
  "slug": "elab-rules--fbf4be769da3168374ab2b52",
  "source": {
    "blob": "90dde267d682ddb36470c6e51c46dd141fa3f1ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 141,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbf4be769da3168374ab2b521ee57f583dfca2ad3345725f19facaa6c38ae8f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81c9b8f1e835b36cae77912c763ebd7c22ec9da25276dda9e19cd19afed2ce82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| extract_goal $cfg:config $[using $name?]?) => do
    let name ← if let some name := name?
                then pure name.getId
                else mkAuxName ((← getCurrNamespace) ++ `extracted) 1
    let msg ← withoutModifyingEnv <| withoutModifyingState do
      let g ← getMainGoal
      let g ← do match cfg with
        | `(config| *) => pure g
        | `(config| ) =>
          if (← g.getType >>= instantiateMVars).consumeMData.isConstOf ``False then
            -- In a contradiction proof, it is not very helpful to clear all hypotheses!
            pure g
          else
            g.cleanup
        | `(config| $fvars:ident*) =>
          -- Note: `getFVarIds` does `withMainContext`
          g.cleanup (toPreserve := (← getFVarIds fvars)) (indirectProps := false)
        | _ => throwUnsupportedSyntax
      let (g, _) ← g.renameInaccessibleFVars
      let (_, g) ← g.revert (clearAuxDeclsInsteadOfRevert := true) (← g.getDecl).lctx.getFVarIds
      let ty ← instantiateMVars (← g.getType)
      if ty.hasExprMVar then
        -- TODO: turn metavariables into new hypotheses?
        throwError "Extracted goal has metavariables: {ty}"
      let ty ← Term.levelMVarToParam ty
      let seenLevels := collectLevelParams {} ty
      let levels := (← Term.getLevelNames).filter
                      fun u => seenLevels.visitedLevel.contains (.param u)
      addAndCompile <| Declaration.axiomDecl
        { name := name
          levelParams := levels
          isUnsafe := false
          type := ty }
      let sig ← addMessageContext <| MessageData.signature name
      let cmd := if ← Meta.isProp ty then "theorem" else "def"
      pure m!"{cmd} {sig} := sorry"
    logInfo msg

end Mathlib.Tactic.ExtractGoal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtractGoal/Variant712d6bd2f190d3487aa3e6775f210384170716a0680d3b1ae374fa3218a241e2.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90dde267d682ddb36470c6e51c46dd141fa3f1ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
