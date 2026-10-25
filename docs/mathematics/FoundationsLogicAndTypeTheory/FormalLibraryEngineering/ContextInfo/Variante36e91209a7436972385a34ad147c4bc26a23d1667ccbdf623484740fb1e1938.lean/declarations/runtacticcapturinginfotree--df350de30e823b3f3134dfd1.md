# runTacticCapturingInfoTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a80763c71016ac540f0e02fed8dcbd08dc5ace6ae684193660c36f11e75a673d",
  "kind": "def",
  "lexical_name": "runTacticCapturingInfoTree",
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
  "slug": "runtacticcapturinginfotree--df350de30e823b3f3134dfd1",
  "source": {
    "blob": "d448e126d5eb94d4df621a9f484662eceec30a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 129,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variante36e91209a7436972385a34ad147c4bc26a23d1667ccbdf623484740fb1e1938.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df350de30e823b3f3134dfd16b059cada42ac504ebec960af31da040b5fc3e59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variante36e91209a7436972385a34ad147c4bc26a23d1667ccbdf623484740fb1e1938.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a80763c71016ac540f0e02fed8dcbd08dc5ace6ae684193660c36f11e75a673d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runTacticCapturingInfoTree (ctx : ContextInfo) (i : TacticInfo) (goal : MVarId)
    (x : MVarId → MetaM α) : CommandElabM (α × PersistentArray InfoTree) := do
  if !i.goalsBefore.contains goal then
    panic!"ContextInfo.runTacticCapturingInfoTree: `goal` must be an element of `i.goalsBefore`"
  let mctx := i.mctxBefore
  let lctx := (mctx.decls.find! goal).2
  ctx.runMetaMCapturingInfoTree lctx do
    let type ← goal.getType
    let goal ← Meta.mkFreshExprSyntheticOpaqueMVar type
    x goal.mvarId!

/-- Run tactic code in the context of an infotree node, capturing InfoTrees for suggestion extraction.

Returns both the resulting goals and the InfoTrees produced during tactic execution.
Use `collectTryThisSuggestions` from `Mathlib.Lean.Elab.InfoTree` to extract suggestions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variante36e91209a7436972385a34ad147c4bc26a23d1667ccbdf623484740fb1e1938.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextInfo/Variante36e91209a7436972385a34ad147c4bc26a23d1667ccbdf623484740fb1e1938.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d448e126d5eb94d4df621a9f484662eceec30a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
