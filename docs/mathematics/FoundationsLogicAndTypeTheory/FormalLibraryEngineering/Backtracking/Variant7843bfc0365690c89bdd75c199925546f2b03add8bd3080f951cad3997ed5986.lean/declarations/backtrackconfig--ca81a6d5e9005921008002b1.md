# BacktrackConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f8a3353584d5098645895e53f433ba203660aeaea15d895066e044abfd30a94",
  "kind": "structure",
  "lexical_name": "BacktrackConfig",
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
  "slug": "backtrackconfig--ca81a6d5e9005921008002b1",
  "source": {
    "blob": "984691ce69a73bca2b2d3285b2fc228c502fe71f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca81a6d5e9005921008002b1d2ae5f63402eaf60f7085189f9e7f38af09c2950",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f8a3353584d5098645895e53f433ba203660aeaea15d895066e044abfd30a94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BacktrackConfig where
  /-- Maximum recursion depth. -/
  maxDepth : Nat := 6
  /-- An arbitrary procedure which can be used to modify the list of goals
  before each attempt to apply a lemma.
  Called as `proc goals curr`, where `goals` are the original goals for `backtracking`,
  and `curr` are the current goals.
  Returning `some l` will replace the current goals with `l` and recurse
  (consuming one step of maximum depth).
  Returning `none` will proceed to applying lemmas without changing goals.
  Failure will cause backtracking.
  (defaults to `none`) -/
  proc : List MVarId → List MVarId → MetaM (Option (List MVarId)) := fun _ _ => pure none
  /-- If `suspend g`, then we do not attempt to apply any further lemmas,
  but return `g` as a new subgoal. (defaults to `false`) -/
  suspend : MVarId → MetaM Bool := fun _ => pure false
  /-- `discharge g` is called on goals for which no lemmas apply.
  If `none` we return `g` as a new subgoal.
  If `some l`, we replace `g` by `l` in the list of active goals, and recurse.
  If failure, we backtrack. (defaults to failure) -/
  discharge : MVarId → MetaM (Option (List MVarId)) := fun _ => failure
  /-- If we solve any "independent" goals, don't fail. -/
  commitIndependentGoals : Bool := false

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Backtracking/Variant7843bfc0365690c89bdd75c199925546f2b03add8bd3080f951cad3997ed5986.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `984691ce69a73bca2b2d3285b2fc228c502fe71f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
