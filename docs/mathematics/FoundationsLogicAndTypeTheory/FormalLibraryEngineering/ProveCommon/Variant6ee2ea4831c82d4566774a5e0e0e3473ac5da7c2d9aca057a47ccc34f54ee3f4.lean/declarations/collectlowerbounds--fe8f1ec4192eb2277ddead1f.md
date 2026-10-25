# collectLowerBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f49552aa06676aa2c10f5c00667285a4e7b82638d321e0d3bdc1d86dbecc2e7",
  "kind": "def",
  "lexical_name": "collectLowerBounds",
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
  "slug": "collectlowerbounds--fe8f1ec4192eb2277ddead1f",
  "source": {
    "blob": "cdd2b980fee1eb11803a5dd134185de9f3ea42a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe8f1ec4192eb2277ddead1f4fa873d2736d007c187078a7a7c722454e871dc0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f49552aa06676aa2c10f5c00667285a4e7b82638d321e0d3bdc1d86dbecc2e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def collectLowerBounds (target : Lean.Expr) : TacticM (Array (ℚ × Lean.Expr × Lean.Expr)) := do
  let mut out : Array (ℚ × Lean.Expr × Lean.Expr) := #[]
  for ldecl in (← getLCtx) do
    if ldecl.isImplementationDetail || ldecl.isAuxDecl then
      continue
    let h := mkFVar ldecl.fvarId
    let tyWhnf ← whnf ldecl.type

    -- Direct lower-bound hypothesis: lo ≤ target.
    if let some (lo, rhs) := parseLe? tyWhnf then
      if (← isDefEq rhs target) then
        if let some q ← extractRatFromReal lo then
          out := out.push (q, lo, h)

    -- Strict lower-bound hypothesis: lo < target.
    if let some (lo, rhs) := parseLt? tyWhnf then
      if (← isDefEq rhs target) then
        if let some q ← extractRatFromReal lo then
          let hle ← mkAppM ``le_of_lt #[h]
          out := out.push (q, lo, hle)

    -- Membership/app-style Set.Icc hypotheses.
    if let some (x, lo, _hi) := parseIccProp? tyWhnf then
      if (← isDefEq x target) then
        if let some q ← extractRatFromReal lo then
          let hLoLe ← mkAppM ``And.left #[h]
          out := out.push (q, lo, hLoLe)

    -- Conjunctive hypotheses (e.g. from Set.Icc): extract both sides.
    let fn := tyWhnf.getAppFn
    let args := tyWhnf.getAppArgs
    if fn.isConstOf ``And && args.size >= 2 then
      let leftProp := args[0]!
      let rightProp := args[1]!
      let hLeft ← mkAppM ``And.left #[h]
      let hRight ← mkAppM ``And.right #[h]

      if let some (lo, rhs) := parseLe? leftProp then
        if (← isDefEq rhs target) then
          if let some q ← extractRatFromReal lo then
            out := out.push (q, lo, hLeft)
      if let some (lo, rhs) := parseLt? leftProp then
        if (← isDefEq rhs target) then
          if let some q ← extractRatFromReal lo then
            let hle ← mkAppM ``le_of_lt #[hLeft]
            out := out.push (q, lo, hle)

      if let some (lo, rhs) := parseLe? rightProp then
        if (← isDefEq rhs target) then
          if let some q ← extractRatFromReal lo then
            out := out.push (q, lo, hRight)
      if let some (lo, rhs) := parseLt? rightProp then
        if (← isDefEq rhs target) then
          if let some q ← extractRatFromReal lo then
            let hle ← mkAppM ``le_of_lt #[hRight]
            out := out.push (q, lo, hle)
  return out

/-- Try to prove `0 < target` from collected lower bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveCommon/Variant6ee2ea4831c82d4566774a5e0e0e3473ac5da7c2d9aca057a47ccc34f54ee3f4.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdd2b980fee1eb11803a5dd134185de9f3ea42a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
