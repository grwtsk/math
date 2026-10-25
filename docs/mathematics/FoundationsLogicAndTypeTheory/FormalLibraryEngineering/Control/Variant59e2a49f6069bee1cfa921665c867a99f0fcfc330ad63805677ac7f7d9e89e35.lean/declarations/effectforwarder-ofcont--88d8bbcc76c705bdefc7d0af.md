# EffectForwarder.ofCont

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b7bbfa8b82e3f05a06101b0c792a94a07dbb5183b11e655c2976b17135a4d96",
  "kind": "def",
  "lexical_name": "EffectForwarder.ofCont",
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
  "slug": "effectforwarder-ofcont--88d8bbcc76c705bdefc7d0af",
  "source": {
    "blob": "afef07b33d862c522e2396634e5e2d4bf5e10da5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88d8bbcc76c705bdefc7d0af6cc82fa5457c63176e6b01b221e4d3c17706af35",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b7bbfa8b82e3f05a06101b0c792a94a07dbb5183b11e655c2976b17135a4d96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EffectForwarder.ofCont (info : ControlInfo) (dec : DoElemCont) : DoElabM EffectForwarder := do
  let mi := (← read).monadInfo
  let reassignedMutVars := (← read).mutVars |>.filter (info.reassigns.contains ·.getId)
  let reassignedMutVarNames := reassignedMutVars.map (·.getId)
  let ρ := (← getReturnCont).resultType
  let σ ← mkProdN (← reassignedMutVarNames.mapM (LocalDecl.type <$> getLocalDeclFromUserName ·)) mi.u

  let needEarlyReturn := if info.returnsEarly then some ρ else none
  let needBreak := info.breaks && (← getBreakCont).isSome
  let needContinue := info.continues && (← getContinueCont).isSome
  let needState := if reassignedMutVars.isEmpty then none else some (reassignedMutVars, σ)
  let mut returnBase? := none
  let mut breakBase? := none
  let mut continueBase? := none
  let mut controlStack := ControlStack.base mi

  if let some ρ := needEarlyReturn then
    returnBase? := some controlStack -- Yes, this is correct. We need to store the super layer
    controlStack := ControlStack.earlyReturnT mi ρ controlStack
  if let some (reassignedMutVars, σ) := needState then
    controlStack := ControlStack.stateT mi reassignedMutVars σ controlStack
  if needBreak then
    breakBase? := some controlStack
    controlStack := ControlStack.breakT mi controlStack
  if needContinue then
    continueBase? := some controlStack
    controlStack := ControlStack.continueT mi controlStack
  return {
    origCont := dec,
    returnBase?,
    breakBase?,
    continueBase?,
    liftedStack := controlStack,
    liftedDoBlockResultType := (← controlStack.stM dec.resultType),
  }

/--
Elaborate `elabElem` in the lifted stack: install `break`/`continue`/`return`
handlers funnelling into `liftedStack` and set the doBlock result type to
`liftedDoBlockResultType`. Semantically
`MonadControl.liftWith fun runInBase => elabElem (runInBase pure)`. Conts
passed to `elabElem` are implicitly wrapped in `runInBase`, realised later by
`ControlStack.mkBreak`/`mkContinue`/`mkReturn` once the transformer stack `t` is fixed by
aggregating effects across *all* `lift` sites for this lifter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Control/Variant59e2a49f6069bee1cfa921665c867a99f0fcfc330ad63805677ac7f7d9e89e35.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afef07b33d862c522e2396634e5e2d4bf5e10da5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
