# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflExtConfig.Variant5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df.Lean.MVarId.applyRfl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:061995bcba0ce35031a4d26b4471bee61ec941c6565eaf70eacf80384b297a2f",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflExtConfig.Variant5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df.Lean.MVarId.applyRfl",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-refle--7c0831aaa2cdf64ce856cf95",
  "source": {
    "blob": "b39ab646a9eabb4942cc334d02463d779a81c17e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant97f11b4aa65de97c26237b7a52abc5bf14c380dc88b800b37445c97784573cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c0831aaa2cdf64ce856cf950806bf0d39be02e2fb4ec80f797723619c62762b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant97f11b4aa65de97c26237b7a52abc5bf14c380dc88b800b37445c97784573cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:061995bcba0ce35031a4d26b4471bee61ec941c6565eaf70eacf80384b297a2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReflExtConfig.Variant5c4a043b6ae0a5ad1ccac919680f6d12af7486fcef48852e6ce209490bd200df.Lean.MVarId.applyRfl (goal : MVarId) : MetaM Unit := do
  let .app (.app rel _) _ ← whnfR <|← instantiateMVars <|← goal.getType
    | throwError "reflexivity lemmas only apply to binary relations, not{
        indentExpr (← goal.getType)}"
  let s ← saveState
  let mut ex? := none
  for lem in ← (reflExt.getState (← getEnv)).getMatch rel reflExt.config do
    try
      let gs ← goal.apply (← mkConstWithFreshMVarLevels lem)
      if gs.isEmpty then return () else
        logError <| MessageData.tagged `Tactic.unsolvedGoals <| m!"unsolved goals\n{
          goalsToMessageData gs}"
    catch e =>
      ex? := ex? <|> (some (← saveState, e)) -- stash the first failure of `apply`
    s.restore
  if let some (sErr, e) := ex? then
    sErr.restore
    throw e
  else
    throwError "rfl failed, no lemma with @[refl] applies"

/--
This tactic applies to a goal whose target has the form `x ~ x`, where `~` is a reflexive
relation, that is, a relation which has a reflexive lemma tagged with the attribute [refl].
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant97f11b4aa65de97c26237b7a52abc5bf14c380dc88b800b37445c97784573cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variant97f11b4aa65de97c26237b7a52abc5bf14c380dc88b800b37445c97784573cf0.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b39ab646a9eabb4942cc334d02463d779a81c17e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
