# multiGoalLinter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1401589162021201c6288e6ff963afc48d35e7d244aebb2f87d6ce89256a4acc",
  "kind": "def",
  "lexical_name": "multiGoalLinter",
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
  "slug": "multigoallinter--a33e3fb26cb0250a64687942",
  "source": {
    "blob": "010879b9e55d20ec7d13038e813b633621514186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a33e3fb26cb0250a6468794226f05a3bafeed2d5975f434c4d6da4ac0deab572",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1401589162021201c6288e6ff963afc48d35e7d244aebb2f87d6ce89256a4acc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def multiGoalLinter : Linter where run := withSetOptionIn fun _stx ↦ do
    unless Linter.getLinterValue linter.style.multiGoal (← getOptions) do
      return
    if (← get).messages.hasErrors then
      return
    let trees ← getInfoTrees
    for t in trees do
      for (s, before, after, n) in getManyGoals t do
        let goals (k : Nat) := if k == 1 then f!"1 goal" else f!"{k} goals"
        let fmt ← Command.liftCoreM
          try PrettyPrinter.ppTactic ⟨s⟩ catch _ => pure f!"(failed to pretty print)"
        Linter.logLint linter.style.multiGoal s m!"\
          The following tactic starts with {goals before} and ends with {goals after}, \
          {n} of which {if n == 1 then "is" else "are"} not operated on.\
          {indentD fmt}\n\
          Please focus on the current goal, for instance using `·` (typed as \"\\.\")."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `010879b9e55d20ec7d13038e813b633621514186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
