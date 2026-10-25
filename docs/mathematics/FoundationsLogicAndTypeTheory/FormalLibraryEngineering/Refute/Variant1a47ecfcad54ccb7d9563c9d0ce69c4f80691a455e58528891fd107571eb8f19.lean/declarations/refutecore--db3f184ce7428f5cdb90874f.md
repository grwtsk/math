# refuteCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:892fde17d78852cab6642d82d6b398743e030e44b460f19448e53a16c2887572",
  "kind": "def",
  "lexical_name": "refuteCore",
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
  "slug": "refutecore--db3f184ce7428f5cdb90874f",
  "source": {
    "blob": "f55ae713b9ff6ad700fe6038b4408283e1edbbe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db3f184ce7428f5cdb90874fb2bf6b43bf0d6a26699311aef591d70414f0b451",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:892fde17d78852cab6642d82d6b398743e030e44b460f19448e53a16c2887572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def refuteCore (cfg : RefuteConfig) : TacticM Unit := do
  let goal ← getMainGoal
  let goalType ← goal.getType

  -- Parse the goal
  let some boundGoal ← parseBoundGoal goalType
    | throwError "interval_refute: Goal is not a bound.\n\
                  Expected: ∀ x ∈ I, f(x) ≤ c or ∀ x ∈ I, c ≤ f(x)"

  match boundGoal with
  | .forallLe _name interval func bound =>
    -- Goal: ∀ x ∈ I, f(x) ≤ c
    -- To refute: find x where f(x) > c
    refuteUpperBound interval func bound cfg

  | .forallGe _name interval func bound =>
    -- Goal: ∀ x ∈ I, c ≤ f(x)
    -- To refute: find x where f(x) < c
    refuteLowerBound interval func bound cfg

  | .forallLt _name interval func bound =>
    -- Goal: ∀ x ∈ I, f(x) < c
    -- To refute: find x where f(x) ≥ c
    refuteStrictUpperBound interval func bound cfg

  | .forallGt _name interval func bound =>
    -- Goal: ∀ x ∈ I, c < f(x)
    -- To refute: find x where f(x) ≤ c
    refuteStrictLowerBound interval func bound cfg

where
  /-- Refute ∀ x ∈ I, f(x) ≤ c -/
  refuteUpperBound (interval : IntervalInfo) (func bound : Lean.Expr)
      (cfg : RefuteConfig) : TacticM Unit := do
    -- Extract bounds
    let (lo, hi) ← extractIntervalBounds interval
    let box := mkBox lo hi

    -- Extract the limit value
    let limitOpt ← extractRatFromReal bound
    let some limit := limitOpt
      | throwError "interval_refute: Cannot extract rational from bound: {bound}"

    -- Reify the function
    let ast ← reifyFunc func

    -- Build optimization config
    let optCfg : GlobalOptConfig := {
      maxIterations := cfg.maxIterations
      taylorDepth := cfg.taylorDepth
      tolerance := cfg.tolerance
    }

    -- Search for violation
    let result := findViolation ast box limit optCfg

    match result with
    | none =>
      logInfo m!"✅ No counter-example found for f(x) ≤ {limit} on [{lo}, {hi}].\n\
                 The theorem appears to be TRUE.\n\
                 Try: interval_bound"

    | some ce =>
      let pointStr := ce.point.map toString |>.intersperse ", " |> String.join
      match ce.status with
      | .Verified =>
        throwError m!"❌ Counter-example FOUND!\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Violation: Lower bound {ce.valueLo} > limit {limit}\n\
                      The theorem is FALSE.\n\
                      Iterations: {ce.iterations}"
      | .Candidate =>
        logWarning m!"⚠️ Potential counter-example found.\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Upper bound {ce.valueHi} > limit, but lower bound {ce.valueLo} ≤ limit.\n\
                      This might be:\n\
                      • A true violation (precision too low)\n\
                      • A false positive (interval wrapping)\n\
                      Try increasing maxIterations or taylorDepth."

  /-- Refute ∀ x ∈ I, c ≤ f(x) -/
  refuteLowerBound (interval : IntervalInfo) (func bound : Lean.Expr)
      (cfg : RefuteConfig) : TacticM Unit := do
    let (lo, hi) ← extractIntervalBounds interval
    let box := mkBox lo hi

    let limitOpt ← extractRatFromReal bound
    let some limit := limitOpt
      | throwError "interval_refute: Cannot extract rational from bound: {bound}"

    let ast ← reifyFunc func

    let optCfg : GlobalOptConfig := {
      maxIterations := cfg.maxIterations
      taylorDepth := cfg.taylorDepth
      tolerance := cfg.tolerance
    }

    let result := findViolationLower ast box limit optCfg

    match result with
    | none =>
      logInfo m!"✅ No counter-example found for {limit} ≤ f(x) on [{lo}, {hi}].\n\
                 The theorem appears to be TRUE.\n\
                 Try: interval_bound"

    | some ce =>
      let pointStr := ce.point.map toString |>.intersperse ", " |> String.join
      match ce.status with
      | .Verified =>
        throwError m!"❌ Counter-example FOUND!\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Violation: Upper bound {ce.valueHi} < limit {limit}\n\
                      The theorem is FALSE.\n\
                      Iterations: {ce.iterations}"
      | .Candidate =>
        logWarning m!"⚠️ Potential counter-example found.\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Lower bound {ce.valueLo} < limit, but upper bound {ce.valueHi} ≥ limit.\n\
                      This might be a precision issue."

  /-- Refute ∀ x ∈ I, f(x) < c -/
  refuteStrictUpperBound (interval : IntervalInfo) (func bound : Lean.Expr)
      (cfg : RefuteConfig) : TacticM Unit := do
    let (lo, hi) ← extractIntervalBounds interval
    let box := mkBox lo hi

    let limitOpt ← extractRatFromReal bound
    let some limit := limitOpt
      | throwError "interval_refute: Cannot extract rational from bound: {bound}"

    let ast ← reifyFunc func

    let optCfg : GlobalOptConfig := {
      maxIterations := cfg.maxIterations
      taylorDepth := cfg.taylorDepth
      tolerance := cfg.tolerance
    }

    let result := findViolationStrict ast box limit optCfg

    match result with
    | none =>
      logInfo m!"✅ No counter-example found for f(x) < {limit} on [{lo}, {hi}].\n\
                 The theorem appears to be TRUE."

    | some ce =>
      let pointStr := ce.point.map toString |>.intersperse ", " |> String.join
      match ce.status with
      | .Verified =>
        throwError m!"❌ Counter-example FOUND!\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Violation: Lower bound {ce.valueLo} ≥ limit {limit}\n\
                      The theorem is FALSE."
      | .Candidate =>
        logWarning m!"⚠️ Potential counter-example found at ({pointStr})."

  /-- Refute ∀ x ∈ I, c < f(x) -/
  refuteStrictLowerBound (interval : IntervalInfo) (func bound : Lean.Expr)
      (cfg : RefuteConfig) : TacticM Unit := do
    let (lo, hi) ← extractIntervalBounds interval
    let box := mkBox lo hi

    let limitOpt ← extractRatFromReal bound
    let some limit := limitOpt
      | throwError "interval_refute: Cannot extract rational from bound: {bound}"

    let ast ← reifyFunc func

    let optCfg : GlobalOptConfig := {
      maxIterations := cfg.maxIterations
      taylorDepth := cfg.taylorDepth
      tolerance := cfg.tolerance
    }

    let result := findViolationStrictLower ast box limit optCfg

    match result with
    | none =>
      logInfo m!"✅ No counter-example found for {limit} < f(x) on [{lo}, {hi}].\n\
                 The theorem appears to be TRUE."

    | some ce =>
      let pointStr := ce.point.map toString |>.intersperse ", " |> String.join
      match ce.status with
      | .Verified =>
        throwError m!"❌ Counter-example FOUND!\n\
                      Input: x = ({pointStr})\n\
                      Output: [{ce.valueLo}, {ce.valueHi}]\n\
                      Limit: {limit}\n\
                      Violation: Upper bound {ce.valueHi} ≤ limit {limit}\n\
                      The theorem is FALSE."
      | .Candidate =>
        logWarning m!"⚠️ Potential counter-example found at ({pointStr})."

/-! ## Syntax and tactic -/

/-- Syntax for the refute tactic -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Refute/Variant1a47ecfcad54ccb7d9563c9d0ce69c4f80691a455e58528891fd107571eb8f19.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f55ae713b9ff6ad700fe6038b4408283e1edbbe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
