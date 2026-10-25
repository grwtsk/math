# destructProductsCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d311a3ecaa45ca62a9ea526cb888eb3be137d82ccb581e85fef02fc0acb5a3cd",
  "kind": "def",
  "lexical_name": "destructProductsCore",
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
  "slug": "destructproductscore--fa739629b9bf5f3d386cda0a",
  "source": {
    "blob": "ba01982c1bbe8b0fbf16d9132042eed29c6a4bfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DestructProducts/Variant6626554bb0f7b24d95f0b91ab6afcaaa3acf9c17662d4b2d7b367933f0efd15b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa739629b9bf5f3d386cda0ad3d85bc84f873a96a77d702510689623dfa32a9b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DestructProducts/Variant6626554bb0f7b24d95f0b91ab6afcaaa3acf9c17662d4b2d7b367933f0efd15b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d311a3ecaa45ca62a9ea526cb888eb3be137d82ccb581e85fef02fc0acb5a3cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta partial def destructProductsCore (goal : MVarId) (md : TransparencyMode) :
    BaseM (MVarId × Array LazyStep) := do
  let result ← go 0 goal |>.run
  if result.fst == goal then
    throwError "destructProducts: found no hypothesis with a product-like type"
  return result
where
  go (i : Nat) (goal : MVarId) : ScriptM MVarId := do
    withIncRecDepth $ goal.withContext do
      let lctx ← getLCtx
      if h : i < lctx.decls.size then
        match lctx.decls[i] with
        | none => go (i + 1) goal
        | some ldecl =>
          if ldecl.isImplementationDetail then
            go (i + 1) goal
          else
            let result? ← destructProductHyp? goal ldecl.fvarId md
            if let some (newScriptStep, newGoal) := result? then
              recordScriptStep newScriptStep
              go i newGoal
            else
              go (i + 1) goal
      else
        return goal

-- This tactic splits hypotheses of product-like types: `And`, `Prod`, `PProd`,
-- `MProd`, `Exists`, `Subtype`, `Sigma` and `PSigma`. It's a restricted version
-- of `cases`. We have this separate tactic because `cases` interacts badly with
-- metavariables and therefore can't be used for norm rules.
--
-- NOTE: If `destructProductsTransparency` != `.reducible`, then this rule is
-- moved from the by-hyp index to the unindexed rules. The rule is identified by
-- name, so if you change its name, you must also adjust the function
-- responsible for dynamically unindexing rules.
@[aesop norm 0 (rule_sets := [builtin]) tactic
    (index := [hyp And _ _, hyp Prod _ _, hyp PProd _ _, hyp MProd _ _,
               hyp Exists _, hyp Subtype _, hyp Sigma _, hyp PSigma _])]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DestructProducts/Variant6626554bb0f7b24d95f0b91ab6afcaaa3acf9c17662d4b2d7b367933f0efd15b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DestructProducts/Variant6626554bb0f7b24d95f0b91ab6afcaaa3acf9c17662d4b2d7b367933f0efd15b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba01982c1bbe8b0fbf16d9132042eed29c6a4bfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
