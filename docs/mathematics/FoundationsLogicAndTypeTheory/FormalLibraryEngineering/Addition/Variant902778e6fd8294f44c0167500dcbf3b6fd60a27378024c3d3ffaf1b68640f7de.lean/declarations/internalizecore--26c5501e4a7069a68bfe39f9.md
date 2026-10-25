# internalizeCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3fc72f21583c3885cf67c3c2edeb6abcf2507ad1d2bd88d4d70223ea0a90272e",
  "kind": "def",
  "lexical_name": "internalizeCore",
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
  "slug": "internalizecore--26c5501e4a7069a68bfe39f9",
  "source": {
    "blob": "cab91cdf92ef91ceb61392d33d99236b369fae4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 700,
    "line": 656,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26c5501e4a7069a68bfe39f98b02bcafd517eb23e226dc8d2c626d00948c6235",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3fc72f21583c3885cf67c3c2edeb6abcf2507ad1d2bd88d4d70223ea0a90272e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 656–700.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def internalizeCore (e : Expr) (parent? : Option Expr) : CCM Unit := do
  guard !e.hasLooseBVars
  /- We allow metavariables after partitions have been frozen. -/
  if e.hasExprMVar && !(← get).frozePartitions then
    return
  /- Check whether `e` has already been internalized. -/
  if (← getEntry e).isNone then
    match e with
    | .bvar _ => unreachable!
    | .sort _ => pure ()
    | .const _ _ | .mvar _ => mkEntry e false
    | .lam _ _ _ _ | .letE _ _ _ _ _ => mkEntry e false
    | .fvar f =>
      mkEntry e false
      if let some v ← f.getValue? then
        pushReflEq e v
    | .mdata _ e' =>
      mkEntry e false
      internalizeCore e' e
      addOccurrence e e' false
      pushReflEq e e'
    | .forallE _ t b _ =>
      if e.isArrow then
        if ← isProp t <&&> isProp b then
          internalizeCore t e
          internalizeCore b e
          addOccurrence e t false
          addOccurrence e b false
          propagateImpUp e
      if ← isProp e then
        mkEntry e false
    | .app _ _ | .lit _ => internalizeAppLit e
    | .proj sn i pe =>
      mkEntry e false
      let some fn := (getStructureFields (← getEnv) sn)[i]? | failure
      let e' ← pe.mkDirectProjection fn
      internalizeAppLit e'
      pushReflEq e e'

  /- Remark: if should invoke `internalizeAC` even if the test `(← getEntry e).isNone` above failed.
     Reason, the first time `e` was visited, it may have been visited with a different parent. -/
  if (← get).ac then
    internalizeAC e parent?

/-- Propagate equality from `a` and `b` to `a ↔ b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Addition/Variant902778e6fd8294f44c0167500dcbf3b6fd60a27378024c3d3ffaf1b68640f7de.lean#L656).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cab91cdf92ef91ceb61392d33d99236b369fae4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
