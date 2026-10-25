# tryUnificationHints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b80c02ae164c62a8ceb149da00c065e899347b861b8f9b2c0d4765f0ea6a929b",
  "kind": "def",
  "lexical_name": "tryUnificationHints",
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
  "slug": "tryunificationhints--d789e142112595f4595f8756",
  "source": {
    "blob": "07535d273864f949114ced62bf7bcaf94e4b1e88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d789e142112595f4595f8756218d8e6e87b7573f83562008ab73e1c90f93afa6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b80c02ae164c62a8ceb149da00c065e899347b861b8f9b2c0d4765f0ea6a929b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryUnificationHints (t s : Expr) : MetaM Bool := do
  trace[Meta.isDefEq.hint] "{t} =?= {s}"
  unless (← getConfig).unificationHints do
    return false
  if t.isMVar then
    return false
  let hints := unificationHintExtension.getState (← getEnv)
  let candidates ← withConfigWithKey config <| hints.discrTree.getMatch t
  for candidate in candidates do
    if (← tryCandidate candidate) then
      return true
  return false
where
  isDefEqPattern p e :=
    withReducible <| Meta.isExprDefEqAux p e

  tryCandidate candidate : MetaM Bool :=
    withTraceNode `Meta.isDefEq.hint
      (fun _ => return m!"hint {candidate} at {t} =?= {s}") do
    checkpointDefEq do
      let cinfo ← getConstInfo candidate
      let us ← cinfo.levelParams.mapM fun _ => mkFreshLevelMVar
      let val ← instantiateValueLevelParams cinfo us
      let (xs, bis, body) ← lambdaMetaTelescope val
      let hint? ← withConfig (fun cfg => { cfg with unificationHints := false }) do
        match decodeUnificationHint body with
        | Except.error _ => return none
        | Except.ok hint =>
          if (← isDefEqPattern hint.pattern.lhs t <&&> isDefEqPattern hint.pattern.rhs s) then
            return some hint
          else
            return none
      match hint? with
      | none      => return false
      | some hint =>
        trace[Meta.isDefEq.hint] "{candidate} succeeded, applying constraints"
        for c in hint.constraints do
          unless (← Meta.isExprDefEqAux c.lhs c.rhs) do
            return false
        for x in xs, bi in bis do
          if bi == BinderInfo.instImplicit then
            match (← trySynthInstance (← inferType x)) with
            | LOption.some val => unless (← isDefEq x val) do return false
            | _                => return false
        return true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnificationHint/Variant9b08d9429970bab0917a7edaf698323f373eb18da10c1215899fa61f4caf10cb.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07535d273864f949114ced62bf7bcaf94e4b1e88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
