# mkInitialForwardState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af2f6f3ff2dee42921418be306bb22c09382abc717e3549430a54fc3f63a952a",
  "kind": "def",
  "lexical_name": "mkInitialForwardState",
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
  "slug": "mkinitialforwardstate--abf6236c881b37a0eae6fe63",
  "source": {
    "blob": "75706da925aa0c22974be4cde19a76c3a16e5ced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Initial/Variantd5748cc47c4831dd43c8812d1a018f6c4ea8648e4cc9128b670d51fc08a18411.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abf6236c881b37a0eae6fe63c6ee26b8be801570176cd353f093550e3c709ad0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Initial/Variantd5748cc47c4831dd43c8812d1a018f6c4ea8648e4cc9128b670d51fc08a18411.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af2f6f3ff2dee42921418be306bb22c09382abc717e3549430a54fc3f63a952a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkInitialForwardState (goal : MVarId) (rs : LocalRuleSet) :
    BaseM (ForwardState × Array ForwardRuleMatch) :=
  profilingForwardState do
  goal.withContext do
    if ! aesop.dev.statefulForward.get (← getOptions) then
      return (∅, #[])
    let mut fs : ForwardState := ∅
    for ldecl in ← show MetaM _ from getLCtx do
      if ldecl.isImplementationDetail then
        continue
      let rules ← rs.applicableForwardRules ldecl.type
      let patInsts ← rs.forwardRulePatternSubstsInLocalDecl ldecl
      fs := fs.enqueueHypWithPatSubsts ldecl.fvarId rules patInsts
    let patInsts ← rs.forwardRulePatternSubstsInExpr (← goal.getType)
    fs := fs.enqueueTargetPatSubsts patInsts
    let ruleMatches := rs.constForwardRuleMatches
    aesop_trace[forward] do
      for m in ruleMatches do
        aesop_trace![forward] "match for constant rule {m.rule.name}"
    return (fs, ruleMatches)

end Aesop.LocalRuleSet
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Initial/Variantd5748cc47c4831dd43c8812d1a018f6c4ea8648e4cc9128b670d51fc08a18411.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Initial/Variantd5748cc47c4831dd43c8812d1a018f6c4ea8648e4cc9128b670d51fc08a18411.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75706da925aa0c22974be4cde19a76c3a16e5ced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
