# checkParents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7b86b8e3c1223b48898698b716851b5582395b1296d1aa88a8b49e41f6b48c5",
  "kind": "def",
  "lexical_name": "checkParents",
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
  "slug": "checkparents--2ed0cc6395b33a7df598bc26",
  "source": {
    "blob": "c3fbd1f32fea23627163e6c5e23b6097dcf80637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ed0cc6395b33a7df598bc26e342881f65eef42d7186a516f25243cc774a16bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7b86b8e3c1223b48898698b716851b5582395b1296d1aa88a8b49e41f6b48c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkParents (e : Expr) : GoalM Unit := do
  -- **Note**: We skip `funCC` parents because the parent-child relationship uses
  -- one-level decomposition (`appFn!`/`appArg!`) rather than full `getAppArgs`/`getAppFn`.
  if (← isRoot e) then
    for parent in (← getParents e).elems do
      if parent.isApp && (← useFunCC parent) then
        pure ()
      else if isMatchCond parent then
        unless (← checkMatchCondParent e parent) do
          throwError "e: {e}, parent: {parent}"
        assert! (← checkMatchCondParent e parent)
      else
        let mut found := false
        -- There is an argument `arg` s.t. root of `arg` is `e`.
        for arg in parent.getAppArgs do
          if (← checkChild e arg) then
            found := true
            break
        -- Recall that we have support for `Expr.forallE` propagation. See `ForallProp.lean`.
        if let .forallE _ d b _ := parent then
          if (← checkChild e d) then
            found := true
          unless b.hasLooseBVars do
            if (← checkChild e b) then
              found := true
        unless found do
          unless (← checkChild e parent.getAppFn) do
            throwError "e: {e}, parent: {parent}"
          assert! (← checkChild e parent.getAppFn)
    else
      -- All the parents are stored in the root of the equivalence class.
      assert! (← getParents e).isEmpty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Varianta05c3255cdf76edf89dc6dc5a9f28e4556fc0d1e9755d5b151699ce6faa0faaf.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fbd1f32fea23627163e6c5e23b6097dcf80637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
