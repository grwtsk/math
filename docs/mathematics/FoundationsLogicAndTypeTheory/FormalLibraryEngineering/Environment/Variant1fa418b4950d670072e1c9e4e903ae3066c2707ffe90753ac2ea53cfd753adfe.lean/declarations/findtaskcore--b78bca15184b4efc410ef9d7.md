# findTaskCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08d20091433a45769d0a4369c5a2a1029cdc565a19bd6ce03d5ae13041b8a8e8",
  "kind": "def",
  "lexical_name": "findTaskCore",
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
  "slug": "findtaskcore--b78bca15184b4efc410ef9d7",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 822,
    "line": 789,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b78bca15184b4efc410ef9d718c3944bb98502d7ffda2b5783115cbe9083c707",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08d20091433a45769d0a4369c5a2a1029cdc565a19bd6ce03d5ae13041b8a8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 789–822.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def findTaskCore (env : Environment) (n : Name) (skipRealize := false) :
    Task (Option AsyncConstantInfo) := Id.run do
  if let some c := env.asyncConsts.find? n then
    -- Constant for which an asynchronous elaboration task was spawned
    -- (this is an optimized special case of the next branch)
    return .pure c.constInfo
  env.asyncConsts.findRecTask n |>.bind (sync := true) fun
  | some c =>
    -- Constant generated in a different environment branch
    .pure c.constInfo
  | _ => Id.run do
    if isReservedName env n && !skipRealize then
      return env.allRealizations.map (sync := true) fun allRealizations => do
        if let some c := allRealizations.find? n then
          return c.constInfo
        none
    -- Not in the kernel environment nor in the name prefix of a known environment branch: undefined
    -- by `addDeclCore` invariant.
    .pure none

/--
Looks up the given declaration name in the environment, avoiding forcing any in-progress elaboration
tasks unless necessary. This can usually be done efficiently because `addConstAsync` ensures that
declarations added in an environment branch have that branch's declaration name as a prefix, so we
know exactly what tasks to wait for to find a declaration. However, this is not true for
declarations from `realizeConst`, which are not restricted to the current prefix, and reference to
which may escape the branch(es) they have been realized on such as when looking into the type `Expr`
of a declaration found on another branch. Thus when we cannot find the declaration using the fast
prefix-based lookup, we fall back to waiting for and looking at the realizations from all branches.
To avoid this expensive search for realizations from other branches, `skipRealize` can be set to ensure
negative lookups are as fast as positive ones.

Use `findTask` instead if any blocking should be avoided.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L789).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
