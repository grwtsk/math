# checkParents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97ae400e862a5d47cfb9cc8e219be523e10a8ae4fce5c9e2bfba9dc25c93f891",
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
  "slug": "checkparents--63af07b1495d036d698abaef",
  "source": {
    "blob": "6f40e75612b05e898b7b3563fcf83828076b760f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 73,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantbdc4cb8798f1bd398583408d1b5a4f8837e41750e10fc811115e83c0ac07504c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63af07b1495d036d698abaef38e3a642bd906c5917adcc1eda069399e38ccc21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantbdc4cb8798f1bd398583408d1b5a4f8837e41750e10fc811115e83c0ac07504c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97ae400e862a5d47cfb9cc8e219be523e10a8ae4fce5c9e2bfba9dc25c93f891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–105.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantbdc4cb8798f1bd398583408d1b5a4f8837e41750e10fc811115e83c0ac07504c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inv/Variantbdc4cb8798f1bd398583408d1b5a4f8837e41750e10fc811115e83c0ac07504c.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f40e75612b05e898b7b3563fcf83828076b760f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
