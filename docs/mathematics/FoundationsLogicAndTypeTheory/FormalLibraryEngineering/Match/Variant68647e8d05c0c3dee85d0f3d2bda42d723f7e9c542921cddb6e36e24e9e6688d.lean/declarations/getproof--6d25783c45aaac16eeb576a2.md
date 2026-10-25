# getProof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4399c47086a1856bf68418a229f5658a82c8c993163ffa69343b28e3ec93ec57",
  "kind": "def",
  "lexical_name": "getProof",
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
  "slug": "getproof--6d25783c45aaac16eeb576a2",
  "source": {
    "blob": "9ba97bdde1a24dcfbaea6c0e8fb1895279ff2e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d25783c45aaac16eeb576a243c05b78e27593a9f3f87e6230b793ec13c300a5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4399c47086a1856bf68418a229f5658a82c8c993163ffa69343b28e3ec93ec57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getProof (goal : MVarId) (m : ForwardRuleMatch) : MetaM (Option Expr) :=
  withExceptionPrefix s!"while constructing a new hyp for forward rule {m.rule.name}:\n" do
  withConstAesopTraceNode .forward (return m!"proof construction for forward rule match") do
  goal.withContext do
  withNewMCtxDepth do
    aesop_trace[forward] "rule: {m.rule.name}"
    let e ← elabForwardRuleTerm goal m.rule.term
    let lmvars := collectLevelMVars {} e |>.result
    let eType ← instantiateMVars (← inferType e)
    aesop_trace[forward] "term: {e} : {eType}"
    let (argMVars, binderInfos, _) ← withReducible do
      forallMetaTelescope (← inferType e)
    if argMVars.size != m.rule.numPremises then
      throwError "rule term{indentExpr e}\nwith type{indentExpr eType}\n was expected to have {m.rule.numPremises} arguments, but has {argMVars.size}"
    if lmvars.size != m.rule.numLevelParams then
      throwError "rule term{indentExpr e}\nwith type{indentExpr eType}\n was expected to have {m.rule.numLevelParams} level metavariables, but has {lmvars.size}"
    let (args, levels) := m.match.reconstructArgs m.rule
    aesop_trace[forward] "args:   {args.map λ | none => m!"_" | some e => m!"{e}"}"
    aesop_trace[forward] "levels: {levels.map λ | none => m!"_" | some l => m!"{l}"}"
    for level? in levels, lmvarId in lmvars do
      if let some level := level? then
        assignLevelMVar lmvarId level
    for arg? in args, mvar in argMVars do
      if let some arg := arg? then
        mvar.mvarId!.assign arg
    try
      synthAppInstances `aesop goal argMVars binderInfos
        (synthAssignedInstances := false) (allowSynthFailures := false)
    catch _ =>
      aesop_trace[forward] "instance synthesis failed"
      return none
    let result := (← abstractMVars $ mkAppN e argMVars).expr
    aesop_trace[forward] "result: {result}"
    return result

/-- Apply a forward rule match to a goal. This adds the hypothesis corresponding
to the match to the local context. Returns the new goal, the added hypothesis
and the hypotheses that were removed (if any). Hypotheses may be removed if the
match is for a `destruct` rule. If `skipExistingProps` is `true`, propositional
hypotheses are not added if another hypothesis with the same type is already
present in the goal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant68647e8d05c0c3dee85d0f3d2bda42d723f7e9c542921cddb6e36e24e9e6688d.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba97bdde1a24dcfbaea6c0e8fb1895279ff2e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
