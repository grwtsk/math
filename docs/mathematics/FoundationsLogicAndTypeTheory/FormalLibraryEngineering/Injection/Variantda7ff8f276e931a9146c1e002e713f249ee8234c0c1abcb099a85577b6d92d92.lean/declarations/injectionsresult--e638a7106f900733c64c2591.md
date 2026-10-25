# InjectionsResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3840dfae79ff8efb3f7c67fc450aa74a7b6bee33003076ead53736c3d07f969d",
  "kind": "inductive",
  "lexical_name": "InjectionsResult",
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
  "slug": "injectionsresult--e638a7106f900733c64c2591",
  "source": {
    "blob": "6e6241b42d7b14fccc333a66aca3c0a90eb8e289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e638a7106f900733c64c25911a0afb73d7bc109d7410609d2f3b3fec551155a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3840dfae79ff8efb3f7c67fc450aa74a7b6bee33003076ead53736c3d07f969d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive InjectionsResult where
  /-- `injections` closed the input goal. -/
  | solved
  /--
  `injections` produces a new goal `mvarId`. `remainingNames` contains the user-facing names that have not been used.
  `forbidden` contains all local declarations to which `injection` has been applied.
  Recall that some of these declarations may not have been eliminated from the local context due to forward dependencies, and
  we use `forbidden` to avoid non-termination when using `injections` in a loop.
  -/
  | subgoal (mvarId : MVarId) (remainingNames : List Name) (forbidden : FVarIdSet)

/--
Applies `injection` to local declarations in `mvarId`. It uses `newNames` to name the new local declarations.
`maxDepth` is the maximum recursion depth. Only local declarations that are not in `forbidden` are considered.
Recall that some of local declarations may not have been eliminated from the local context due to forward dependencies, and
we use `forbidden` to avoid non-termination when using `injections` in a loop.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Injection/Variantda7ff8f276e931a9146c1e002e713f249ee8234c0c1abcb099a85577b6d92d92.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e6241b42d7b14fccc333a66aca3c0a90eb8e289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
