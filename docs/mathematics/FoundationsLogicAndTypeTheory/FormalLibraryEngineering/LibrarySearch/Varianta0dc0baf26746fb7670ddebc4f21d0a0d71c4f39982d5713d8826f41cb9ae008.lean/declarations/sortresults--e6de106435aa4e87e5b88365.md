# sortResults

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53cb9c246a4a9505a6d20e31c44f18f508fd6d00e258a7dc6fd36b3accea4749",
  "kind": "def",
  "lexical_name": "sortResults",
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
  "slug": "sortresults--e6de106435aa4e87e5b88365",
  "source": {
    "blob": "5a9431afaa4b9078a4923ccc5c56da4cafd5b333",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 194,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6de106435aa4e87e5b883651bcb865249f084be3b5cd9b5545a3bda7a7f8bde",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53cb9c246a4a9505a6d20e31c44f18f508fd6d00e258a7dc6fd36b3accea4749`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sortResults (goal : MVarId) (R : Array (MetavarContext × List MVarId)) :
    MetaM (Array (MetavarContext × List MVarId)) := do
  let R' ← R.mapM fun (ctx, gs) => do
    return (← withMCtx ctx (subgoalRanking goal gs), ctx, gs)
  let R'' := R'.qsort fun a b => compare a.1 b.1 = Ordering.gt
  return R''.map (·.2)

/--
Try to solve the goal either by:
* calling `solveByElim`
* or applying a library lemma then calling `solveByElim` on the resulting goals.

If it successfully closes the goal, returns `none`.
Otherwise, it returns `some a`, where `a : Array (MetavarContext × List MVarId)`,
with an entry for each library lemma which was successfully applied,
containing the metavariable context after the application, and a list of the subsidiary goals.

(Always succeeds, and the metavariable context stored in the monad is reverted,
unless the goal was completely solved.)

(Note that if `solveByElim` solves some but not all subsidiary goals,
this is not currently tracked.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Varianta0dc0baf26746fb7670ddebc4f21d0a0d71c4f39982d5713d8826f41cb9ae008.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a9431afaa4b9078a4923ccc5c56da4cafd5b333` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
