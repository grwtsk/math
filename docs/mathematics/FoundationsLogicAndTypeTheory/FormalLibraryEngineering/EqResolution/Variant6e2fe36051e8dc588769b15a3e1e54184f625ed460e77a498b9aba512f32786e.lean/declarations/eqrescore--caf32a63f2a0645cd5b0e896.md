# eqResCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3149bd3d34653fdc160cb77b59c514dfa8ef3bba639b77560d6108b0ea93da91",
  "kind": "def",
  "lexical_name": "eqResCore",
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
  "slug": "eqrescore--caf32a63f2a0645cd5b0e896",
  "source": {
    "blob": "2d996801e15064e637d3bb0895b7557fffc0a2db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:caf32a63f2a0645cd5b0e896dc29cd36411c9d0ef6b45de0b10d74f4f40cbe64",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3149bd3d34653fdc160cb77b59c514dfa8ef3bba639b77560d6108b0ea93da91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def eqResCore (prop proof : Expr) : MetaM (Option (Expr × Expr)) := withNewMCtxDepth do
  /-
  We use `forallMetaTelescopeReducingAndUnfoldingNot` because we want to treat
  ```
  ∀ x, ¬ f x = f a
  ```
  as
  ```
  ∀ x, f x = f a → False
  ```
  recall that `¬` is not reducible.
  -/
  let (ms, type) ← forallMetaTelescopeReducingAndUnfoldingNot prop
  if ms.isEmpty then return none
  let mut progress := false
  for m in ms do
    let type ← inferType m
    let_expr Eq _ lhs rhs ← type
      | pure ()
    if (← isDefEq lhs rhs) then
      unless (← m.mvarId!.checkedAssign (← mkEqRefl lhs)) do
        return none
      progress := true
  unless progress do
    return none
  if (← ms.anyM fun m => m.mvarId!.isDelayedAssigned) then
    return none
  let prop' ← instantiateMVars type
  let proof' ← instantiateMVars (mkAppN proof ms)
  let ms ← ms.filterM fun m => return !(← m.mvarId!.isAssigned)
  let some ms ← topsortMVars? ms | return none
  let prop' ← mkForallFVars ms prop' (binderInfoForMVars := .default)
  let proof' ← mkLambdaFVars ms proof'
  return some (prop', proof')

/--
A basic "equality resolution" procedure: Given a proposition `prop` with a proof `proof`, it attempts to resolve equality hypotheses using `isDefEq`. For example, it reduces `∀ x y, f x = f (g y y) → g x y = y` to `∀ y, g (g y y) y = y`, and `∀ (x : Nat), f x ≠ f a` to `False`.
If successful, the result is a pair `(prop', proof)`, where `prop'` is the simplified proposition,
and `proof : prop → prop'`
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EqResolution/Variant6e2fe36051e8dc588769b15a3e1e54184f625ed460e77a498b9aba512f32786e.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d996801e15064e637d3bb0895b7557fffc0a2db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
