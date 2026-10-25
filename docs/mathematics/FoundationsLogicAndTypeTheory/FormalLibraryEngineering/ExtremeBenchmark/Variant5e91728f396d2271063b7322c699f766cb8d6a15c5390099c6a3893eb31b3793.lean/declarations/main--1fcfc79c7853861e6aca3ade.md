# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3c3381351a3615b348e533309ddb9cba0c9798825f363274ce5e02f50b4a1047",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--1fcfc79c7853861e6aca3ade",
  "source": {
    "blob": "c832cc9b4ad71df6f196a765bbc6c93338bd6ded",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1fcfc79c7853861e6aca3ade0a7bfcd0ffbb915ae2dc58cc470739190a232881",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3c3381351a3615b348e533309ddb9cba0c9798825f363274ce5e02f50b4a1047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main : IO Unit := do
  IO.println "╔═══════════════════════════════════════════════════════════════════════╗"
  IO.println "║          EXTREME BENCHMARK: Where Dyadic Shines                       ║"
  IO.println "╚═══════════════════════════════════════════════════════════════════════╝"
  IO.println ""

  -- Test deeply nested expressions with dyadic only
  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ DEEPLY NESTED EXPRESSIONS (Dyadic Only - Rational would timeout)     │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  for depth in [5, 10, 15, 20] do
    let expr := mkDeepNested depth
    let startTime ← IO.monoNanosNow
    let result := evalDyadic expr smallIntervalDyadic
    let endTime ← IO.monoNanosNow
    let timeUs := (endTime - startTime) / 1000
    IO.println s!"  depth={depth}: [{result.lo.toRat.num}/{result.lo.toRat.den}, {result.hi.toRat.num}/{result.hi.toRat.den}] in {timeUs}μs"
  IO.println ""

  -- Test nestedExp at various depths
  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ NESTED EXP (exp(exp(exp(...)))) - Extreme denominator explosion      │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  for depth in [2, 3, 4, 5] do
    let expr := mkNestedExp depth
    let startTime ← IO.monoNanosNow
    let result := evalDyadic expr smallIntervalDyadic
    let endTime ← IO.monoNanosNow
    let timeUs := (endTime - startTime) / 1000
    IO.println s!"  depth={depth}: time={timeUs}μs"
    IO.println s!"           mantissa size: {countDigits result.lo.mantissa.natAbs}-{countDigits result.hi.mantissa.natAbs} digits"
  IO.println ""

  -- Show what happens with rational for comparison (only safe depths)
  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ RATIONAL DENOMINATOR GROWTH (showing explosion pattern)              │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  for depth in [2, 3] do
    let expr := mkNestedExp depth
    let result := evalIntervalCore expr (fun _ => smallIntervalRat)
    IO.println s!"  nestedExp{depth} rational denominators:"
    IO.println s!"    lo.den: {countDigits result.lo.den} digits"
    IO.println s!"    hi.den: {countDigits result.hi.den} digits"
  IO.println ""

  IO.println "  Note: nestedExp4+ would have 10,000+ digit denominators with rational!"
  IO.println "        Dyadic stays at ~17 digits regardless of depth."
  IO.println ""

  -- Precision comparison at different settings
  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ DYADIC PRECISION MODES                                               │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  let testExpr := mkNestedExp 3

  let fastResult := evalIntervalDyadic testExpr (fun _ => smallIntervalDyadic) DyadicConfig.fast
  let stdResult := evalIntervalDyadic testExpr (fun _ => smallIntervalDyadic) {}
  let highResult := evalIntervalDyadic testExpr (fun _ => smallIntervalDyadic) DyadicConfig.highPrecision

  let fastWidth := fastResult.hi.toRat - fastResult.lo.toRat
  let stdWidth := stdResult.hi.toRat - stdResult.lo.toRat
  let highWidth := highResult.hi.toRat - highResult.lo.toRat

  IO.println s!"  nestedExp3 interval widths:"
  IO.println s!"    fast (-30 bits):  {fastWidth}"
  IO.println s!"    std  (-53 bits):  {stdWidth}"
  IO.println s!"    high (-100 bits): {highWidth}"
  IO.println ""

  IO.println "╔═══════════════════════════════════════════════════════════════════════╗"
  IO.println "║                       CONCLUSION                                      ║"
  IO.println "╠═══════════════════════════════════════════════════════════════════════╣"
  IO.println "║ The dyadic backend enables interval evaluation of expressions that    ║"
  IO.println "║ are IMPOSSIBLE with rational arithmetic due to denominator explosion. ║"
  IO.println "║                                                                       ║"
  IO.println "║ • Rational: denominators grow EXPONENTIALLY with expression depth    ║"
  IO.println "║   - nestedExp2: ~200 digits                                           ║"
  IO.println "║   - nestedExp3: ~2000 digits                                          ║"
  IO.println "║   - nestedExp4: ~20,000 digits (estimated)                            ║"
  IO.println "║                                                                       ║"
  IO.println "║ • Dyadic: precision FIXED regardless of depth                         ║"
  IO.println "║   - Standard: 53 bits = ~16 decimal digits                            ║"
  IO.println "║   - High precision: 100 bits = ~30 decimal digits                     ║"
  IO.println "║                                                                       ║"
  IO.println "║ Use cases where dyadic is essential:                                  ║"
  IO.println "║   - Neural network verification (1000s of operations)                 ║"
  IO.println "║   - Optimization (100s of iterations)                                 ║"
  IO.println "║   - Taylor series approximation (many terms)                          ║"
  IO.println "║   - Any deeply nested expression tree                                 ║"
  IO.println "╚═══════════════════════════════════════════════════════════════════════╝"

end LeanCert.Benchmark.Extreme

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c832cc9b4ad71df6f196a765bbc6c93338bd6ded` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
