# librarySearch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5dbcd50a1a21f3931c32b19e5616fd26141829ac547874a7947e8d43b84bf24b",
  "kind": "def",
  "lexical_name": "librarySearch",
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
  "slug": "librarysearch--a60a912eee5c58d261e85762",
  "source": {
    "blob": "9526a4826dc2d07f7a058e26812a74db8a681f87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a60a912eee5c58d261e85762ecaa27db81fa452f6be1ac701e97e930278cb18b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5dbcd50a1a21f3931c32b19e5616fd26141829ac547874a7947e8d43b84bf24b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def librarySearch (goal : MVarId) (required : List Expr)
    (solveByElimDepth := 6) (leavePercentHeartbeats : Nat := 10) :
    MetaM (Option (Array (MetavarContext × List MVarId))) := do
  let librarySearchEmoji := fun
    | .error _ => bombEmoji
    | .ok (some _) => crossEmoji
    | .ok none => checkEmoji
  withTraceNode `Tactic.librarySearch (return m!"{librarySearchEmoji ·} {← goal.getType}") do
  profileitM Exception "librarySearch" (← getOptions) do
  (do
    _ ← solveByElim [goal] required (exfalso := true) (depth := solveByElimDepth)
    return none) <|>
  (do
    let results ← librarySearchSymm goal required solveByElimDepth
      -- Don't use too many heartbeats.
      |>.whileAtLeastHeartbeatsPercent leavePercentHeartbeats
      -- Stop if we find something that closes the goal
      |>.takeUpToFirst (·.2.isEmpty)
      |>.asArray
    match results.find? (·.2.isEmpty) with
    | none => return (← sortResults goal results)
    | some (ctx, _) => do
      setMCtx ctx
      return none)

open Lean.Parser.Tactic

-- TODO: implement the additional options for `library_search` from Lean 3,
-- in particular including additional lemmas
-- with `exact? [X, Y, Z]` or `exact? with attr`.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9526a4826dc2d07f7a058e26812a74db8a681f87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
