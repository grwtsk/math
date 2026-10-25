# isPointInequality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57d5bf9281d1641300a8f2fe570ef091c057f15a22023e9112a9418ca94df734",
  "kind": "def",
  "lexical_name": "isPointInequality",
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
  "slug": "ispointinequality--3e4c480b98a0a9cf83761290",
  "source": {
    "blob": "64e3dcd19901db54e0ee08a339dd4091a7a39711",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 48,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalAuto/Variant034fdc406e32429be8175b74125314205e3ed9a64b64432b1202dc5a47d26673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3e4c480b98a0a9cf83761290f048c66073a6f2c99b833059bf40a84d345b519f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalAuto/Variant034fdc406e32429be8175b74125314205e3ed9a64b64432b1202dc5a47d26673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57d5bf9281d1641300a8f2fe570ef091c057f15a22023e9112a9418ca94df734`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isPointInequality (goal : Lean.Expr) : MetaM Bool := do
  -- A point inequality is ≤, <, ≥, > without a leading ∀
  if goal.isForall then
    return false
  -- Check if it's a conjunction - recursively check both sides
  if goal.isAppOfArity ``And 2 then
    let args := goal.getAppArgs
    let left ← isPointInequality args[0]!
    let right ← isPointInequality args[1]!
    return left && right
  -- Check if it's a disjunction - recursively check both sides
  if goal.isAppOfArity ``Or 2 then
    let args := goal.getAppArgs
    let left ← isPointInequality args[0]!
    let right ← isPointInequality args[1]!
    return left || right  -- For OR, at least one side needs to be provable
  -- Check if it's a comparison
  let some (_, _, _, _) ← parsePointIneq goal
    | return false
  return true

/-- Unified tactic that handles both point inequalities and quantified bounds.
    - `interval_auto` - uses adaptive precision
    - `interval_auto 20` - uses fixed Taylor depth of 20

    This is the recommended entry point for interval arithmetic proofs.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalAuto/Variant034fdc406e32429be8175b74125314205e3ed9a64b64432b1202dc5a47d26673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalAuto/Variant034fdc406e32429be8175b74125314205e3ed9a64b64432b1202dc5a47d26673.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64e3dcd19901db54e0ee08a339dd4091a7a39711` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
