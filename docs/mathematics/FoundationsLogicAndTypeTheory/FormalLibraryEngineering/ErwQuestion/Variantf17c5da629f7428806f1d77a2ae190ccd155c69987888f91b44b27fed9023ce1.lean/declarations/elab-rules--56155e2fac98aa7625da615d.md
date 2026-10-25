# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b5dba020aafa14bfa086e93f8618122b7ffaaca93c30ff05ee25d4f5b3f9020",
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
  "slug": "elab-rules--56155e2fac98aa7625da615d",
  "source": {
    "blob": "57e47d862869fc601ac3d5fcc7abca08df27cb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56155e2fac98aa7625da615d89ad5564b6ea257a57b7933e1dd47c30cf00a181",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b5dba020aafa14bfa086e93f8618122b7ffaaca93c30ff05ee25d4f5b3f9020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
  | `(tactic| erw?%$tk [$r]) => withMainContext do
    logInfoAt r "Debugging `erw?`"
    let verbose := (← getOptions).get `tactic.erw?.verbose (defVal := false)
    let g ← getMainGoal
    evalTactic (← `(tactic| erw [$r]))
    let e := (← instantiateMVars (.mvar g)).headBeta
    let (tgt, inferred) ← withRef tk do extractRewriteEq e
    let (_, msgs) ← (logDiffs tk tgt inferred).run #[]
    if verbose then
      logInfoAt tk <| .joinSep
        (m!"Expression appearing in target:{indentD tgt}" ::
          m!"Expression from `erw`: {inferred}" :: msgs.toList.map (· ())) "\n\n"

end Mathlib.Tactic.Erw?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErwQuestion/Variantf17c5da629f7428806f1d77a2ae190ccd155c69987888f91b44b27fed9023ce1.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57e47d862869fc601ac3d5fcc7abca08df27cb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
