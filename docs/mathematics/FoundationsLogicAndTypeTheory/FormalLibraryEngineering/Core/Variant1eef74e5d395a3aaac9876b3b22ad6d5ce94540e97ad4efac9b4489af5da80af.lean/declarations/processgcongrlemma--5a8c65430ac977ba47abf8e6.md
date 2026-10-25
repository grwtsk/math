# processGCongrLemma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01d3e7c030026fcd28c43a2ad5e884439d3ea41b45004d35cd381959305afce2",
  "kind": "def",
  "lexical_name": "processGCongrLemma",
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
  "slug": "processgcongrlemma--5a8c65430ac977ba47abf8e6",
  "source": {
    "blob": "ab49a281dea040b7acb0241da450ca4b497e2c57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 269,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a8c65430ac977ba47abf8e697b48a0cd94816c80ffd4854b93b7f76d644ee2e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01d3e7c030026fcd28c43a2ad5e884439d3ea41b45004d35cd381959305afce2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def processGCongrLemma (goal : MVarId) (lem : GCongrLemma) (forward : Bool)
    (config : Config) : GRewriteM Bool :=
  withTraceNode `Meta.grewrite (fun _ ↦
    return m!"applying `gcongr` lemma {.ofConstName lem.declName}") do
  let (mainGoals, sideGoals) ← try applyGCongrLemma goal lem catch _ => return false
  -- Recursively rewrite in the main subgoals
  let mut anyProgress := false
  for (goal, isContra) in mainGoals do
    -- Any of the rewrites in this loop could make a match that is out of scope here.
    -- In that case we should stop rewriting, and the remaining goals should be closed `by rfl`.
    unless (← get).progress matches .matchedOutOfScope _ do
      if ← processGCongrHypothesis goal (forward != isContra) config then
        anyProgress := true
        continue
    try
      -- Due to an issue in `rfl`, we need this transparency bump. See https://leanprover.zulipchat.com/#narrow/channel/270676-lean4/topic/.60with_reducible.20rfl.60.20failing/with/590957602
      withReducibleAndInstances goal.applyRflOrId
    catch ex =>
      -- In principle, this case should not happen.
      trace[Meta.grewrite] "{← goal.getType} could not be closed with `rfl`:\n{ex.toMessageData}"
      return false
  -- Only continue if at least one rewrite happened
  unless anyProgress do return false
  -- Finally, run the discharger on the side goals.
  for mvarId in sideGoals do
    let type ← mvarId.getType
    -- There may be instance side goals that still had metavariables before recursively rewriting.
    if (← isClass? type).isSome then
      if let some inst ← synthInstance? type then
        mvarId.assign inst
        continue
    else
      dischargeSide mvarId
  return true

/-- The core of the `grw` implementation. Rewrite in the expression `e` which occurs under the
relation `relName`/`rel?`, using the `GRewriteLemma` stored in `GRewriteM`.
If `e` itself cannot be rewritten, descend into subexpressions of `e` using `@[gcongr]` lemmas.

`rel?` should be an expression with head symbol `relName`,
unless the relation is `→`: `relName` is `_Implies` and `rel?` is `none`.

Returns the new expression and a proof that it is related to `e`, if a rewrite was found. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variant1eef74e5d395a3aaac9876b3b22ad6d5ce94540e97ad4efac9b4489af5da80af.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab49a281dea040b7acb0241da450ca4b497e2c57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
