# parseCeilPlusOffset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4af1257a881a47effe6715314bf18d3d914b5bf5cf7e7baecb27bc93427977a",
  "kind": "def",
  "lexical_name": "parseCeilPlusOffset",
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
  "slug": "parseceilplusoffset--0aceb21884c8931e34a49d6b",
  "source": {
    "blob": "9300903d3adf07184fdb1782d46095a325e1cda1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 704,
    "line": 672,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0aceb21884c8931e34a49d6bbc7d35a4fed225bfdfaa27425dfdeab8996d7b5d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4af1257a881a47effe6715314bf18d3d914b5bf5cf7e7baecb27bc93427977a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 672–704.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def parseCeilPlusOffset (e : Lean.Expr) : MetaM (Option (Lean.Expr × Lean.Expr × ℕ)) := do
  -- Direct: e = Nat.ceil ... (offset = 0)
  let eFn := e.getAppFn
  if eFn.isConstOf ``Nat.ceil && e.getAppArgs.size >= 2 then
    return some (e, e.getAppArgs.back!, 0)
  -- Addition: e = a + b
  let eArgs := e.getAppArgs
  if eFn.isConstOf ``HAdd.hAdd && eArgs.size >= 6 then
    let a := eArgs[4]!
    let b := eArgs[5]!
    -- a = ⌈inner⌉₊, b = k
    let aFn := a.getAppFn
    if aFn.isConstOf ``Nat.ceil && a.getAppArgs.size >= 2 then
      let bRed ← withTransparency TransparencyMode.all <| reduce b
      if let some k := bRed.rawNatLit? then
        return some (a, a.getAppArgs.back!, k)
    -- b = ⌈inner⌉₊, a = k
    let bFn := b.getAppFn
    if bFn.isConstOf ``Nat.ceil && b.getAppArgs.size >= 2 then
      let aRed ← withTransparency TransparencyMode.all <| reduce a
      if let some k := aRed.rawNatLit? then
        return some (b, b.getAppArgs.back!, k)
  return none

/-- Try to close a goal of the form `⌈e⌉₊ + k ≤ n` (or `⌈e⌉₊ ≤ n`, `n ≥ ⌈e⌉₊ + k`, …)
    by proving a sufficient real-valued inequality.

    Strategy:
    1. Create a sub-goal `innerExpr ≤ ↑(n − k)` and prove it with `intervalDecideCore`
    2. Derive `⌈innerExpr⌉₊ ≤ n − k` via `Nat.ceil_le`
    3. Close the original goal with `omega`

    Returns `true` if the goal was closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PointIneq/Variantfee6cfe83f4cdfc4b6b771a04f73bbd6010575f4dc5909c5b10d5e3bad34cc0a.lean#L672).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9300903d3adf07184fdb1782d46095a325e1cda1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
