# UScript.optimize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2bd920f16f6c2ccd6404bfb1c48bbc28dc40b8b7c4cd5252e4c96e4888105b5c",
  "kind": "def",
  "lexical_name": "UScript.optimize",
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
  "slug": "uscript-optimize--ffa10a7ae70442b09d2b25ed",
  "source": {
    "blob": "7acc42fce91456fbbe7e510ef3e148ff5673b356",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffa10a7ae70442b09d2b25ed3f8f86581f9cbded1166ba8b760e9c7d97920691",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2bd920f16f6c2ccd6404bfb1c48bbc28dc40b8b7c4cd5252e4c96e4888105b5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def UScript.optimize (uscript : UScript) (proofHasMVar : Bool)
    (preState : Meta.SavedState) (goal : MVarId) :
    MetaM (Option (TSyntax ``tacticSeq × ScriptGenerated)) := do
  let structureResult? ← do
    let opts ← getOptions
    if aesop.dev.dynamicStructuring.get opts &&
       ! (aesop.dev.optimizedDynamicStructuring.get opts && ! proofHasMVar) then
      structureDynamic
    else
      structureStatic
  let some (sscript, gen) := structureResult?
    | return none
  let tacticSeq ← `(tacticSeq| $(← sscript.render):tactic*)
  let tacticSeq ← optimizeSyntax tacticSeq
  return some (tacticSeq, gen)
where
  structureStatic : MetaM (Option (SScript × ScriptGenerated)) := do
    let tacticState ← preState.runMetaM' $ TacticState.mkInitial goal
    let (sscript, perfect) ← uscript.toSScriptStatic tacticState
    let gen := {
      method := .static
      hasMVar := proofHasMVar
      perfect
    }
    pure $ some (sscript, gen)

  structureDynamic : MetaM (Option (SScript × ScriptGenerated)) := do
    let some (script, perfect) ← uscript.toSScriptDynamic preState goal
      | return none
    let gen := {
      method := .dynamic
      hasMVar := proofHasMVar
      perfect
    }
    return some (script, gen)

end Script

open Script

variable [Monad m] [MonadLog m] [MonadRef m] [MonadError m] [AddMessageContext m]
  [MonadStats m] [MonadLiftT MetaM m] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantc2db929766d316e142a87fb21dee362ac55c8470e346a8532bb7a6cc1ba9c926.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7acc42fce91456fbbe7e510ef3e148ff5673b356` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
