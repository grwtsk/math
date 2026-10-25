# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f34d93f1222064bd177928cc373ae15b3611aedb2f5e5b01137214e4816c449",
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
  "slug": "main--6c6f3b5aef5f1b33af9b6c0a",
  "source": {
    "blob": "454dbeb1f0ca82065576fe357ed1d5ebb96dd4bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 146,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c6f3b5aef5f1b33af9b6c0a031b3abb6be77149a2df6a019bc1946dad4f7672",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f34d93f1222064bd177928cc373ae15b3611aedb2f5e5b01137214e4816c449`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main : IO Unit := do
  IO.println "╔═══════════════════════════════════════════════════════════════════════╗"
  IO.println "║          Intensive Dyadic vs Rational Backend Benchmark               ║"
  IO.println "╚═══════════════════════════════════════════════════════════════════════╝"
  IO.println ""

  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ 1. POLYNOMIAL EXPRESSIONS (denominator growth test)                   │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"
  benchmarkBoth "poly5  (1 + x + x² + ... + x⁵)" (mkPolynomialExpr 5) testIntervalRat testIntervalDyadic 10000
  benchmarkBoth "poly10 (1 + x + x² + ... + x¹⁰)" (mkPolynomialExpr 10) testIntervalRat testIntervalDyadic 5000
  benchmarkBoth "poly15 (1 + x + x² + ... + x¹⁵)" (mkPolynomialExpr 15) testIntervalRat testIntervalDyadic 2000
  benchmarkDyadicOnly "poly25" (mkPolynomialExpr 25) testIntervalDyadic 2000
  IO.println ""

  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ 2. NESTED TRANSCENDENTALS (Taylor series accumulation)                │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"
  benchmarkBoth "nestedSin3 (sin(sin(sin(x))))" (mkNestedSin 3) testIntervalRat testIntervalDyadic 500
  benchmarkBoth "nestedSin4" (mkNestedSin 4) testIntervalRat testIntervalDyadic 200
  benchmarkBoth "nestedSin5" (mkNestedSin 5) testIntervalRat testIntervalDyadic 100
  benchmarkDyadicOnly "nestedSin8" (mkNestedSin 8) testIntervalDyadic 50
  IO.println ""

  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ 3. NESTED EXP (extreme denominator explosion in rational)             │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"
  benchmarkBoth "nestedExp2 (exp(exp(x)))" (mkNestedExp 2) smallIntervalRat smallIntervalDyadic 100
  benchmarkBoth "nestedExp3 (exp(exp(exp(x))))" (mkNestedExp 3) smallIntervalRat smallIntervalDyadic 20
  benchmarkDyadicOnly "nestedExp4" (mkNestedExp 4) smallIntervalDyadic 10
  IO.println ""

  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ 4. BINOMIAL EXPANSION ((x+1)ⁿ fully expanded)                         │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"
  benchmarkBoth "binomial8  ((x+1)⁸)" (mkExpandedBinomial 8) testIntervalRat testIntervalDyadic 5000
  benchmarkBoth "binomial12 ((x+1)¹²)" (mkExpandedBinomial 12) testIntervalRat testIntervalDyadic 2000
  benchmarkDyadicOnly "binomial18" (mkExpandedBinomial 18) testIntervalDyadic 1000
  IO.println ""

  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ 5. COMPLEX MIXED (sin(x²) * cos(x) + exp(-x))                         │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"
  benchmarkBoth "complexMixed" mkComplexMixed testIntervalRat testIntervalDyadic 1000
  IO.println ""

  IO.println "┌───────────────────────────────────────────────────────────────────────┐"
  IO.println "│ 6. DENOMINATOR SIZE COMPARISON                                        │"
  IO.println "└───────────────────────────────────────────────────────────────────────┘"

  -- Show actual denominator sizes for nested exp
  let ratResult := evalRational (mkNestedExp 2) smallIntervalRat
  let dyadResult := evalDyadic (mkNestedExp 2) smallIntervalDyadic

  IO.println "  nestedExp2 rational result:"
  IO.println s!"    lo = {ratResult.lo}"
  IO.println s!"    hi = {ratResult.hi}"
  IO.println s!"    lo denominator digits: ~{ratResult.lo.den.repr.length}"
  IO.println s!"    hi denominator digits: ~{ratResult.hi.den.repr.length}"
  IO.println ""
  IO.println "  nestedExp2 dyadic result:"
  IO.println s!"    lo = {dyadResult.lo.toRat}"
  IO.println s!"    hi = {dyadResult.hi.toRat}"
  IO.println s!"    lo mantissa: {dyadResult.lo.mantissa}, exp: {dyadResult.lo.exponent}"
  IO.println s!"    hi mantissa: {dyadResult.hi.mantissa}, exp: {dyadResult.hi.exponent}"
  IO.println ""

  let ratResult3 := evalRational (mkNestedExp 3) smallIntervalRat
  let dyadResult3 := evalDyadic (mkNestedExp 3) smallIntervalDyadic

  IO.println "  nestedExp3 rational result:"
  IO.println s!"    lo denominator digits: ~{ratResult3.lo.den.repr.length}"
  IO.println s!"    hi denominator digits: ~{ratResult3.hi.den.repr.length}"
  IO.println ""
  IO.println "  nestedExp3 dyadic result:"
  IO.println s!"    lo mantissa: {dyadResult3.lo.mantissa}, exp: {dyadResult3.lo.exponent}"
  IO.println s!"    hi mantissa: {dyadResult3.hi.mantissa}, exp: {dyadResult3.hi.exponent}"
  IO.println ""

  IO.println "╔═══════════════════════════════════════════════════════════════════════╗"
  IO.println "║                           KEY INSIGHTS                                ║"
  IO.println "╠═══════════════════════════════════════════════════════════════════════╣"
  IO.println "║ 1. Rational denominators EXPLODE with nested operations               ║"
  IO.println "║    - nestedExp2: ~200 digit denominators                              ║"
  IO.println "║    - nestedExp3: ~2000+ digit denominators                            ║"
  IO.println "║                                                                       ║"
  IO.println "║ 2. Dyadic numbers stay BOUNDED regardless of expression depth         ║"
  IO.println "║    - Precision fixed at 53 bits (standard) or configurable            ║"
  IO.println "║    - No GCD normalization needed (bit-shift operations)               ║"
  IO.println "║                                                                       ║"
  IO.println "║ 3. Both backends are SOUND (verified interval containment)            ║"
  IO.println "║    - Dyadic may have slightly wider intervals                         ║"
  IO.println "║    - But speedup can be 10-100x for deep expressions                  ║"
  IO.println "╚═══════════════════════════════════════════════════════════════════════╝"

end LeanCert.Benchmark.Intensive

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `454dbeb1f0ca82065576fe357ed1d5ebb96dd4bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
