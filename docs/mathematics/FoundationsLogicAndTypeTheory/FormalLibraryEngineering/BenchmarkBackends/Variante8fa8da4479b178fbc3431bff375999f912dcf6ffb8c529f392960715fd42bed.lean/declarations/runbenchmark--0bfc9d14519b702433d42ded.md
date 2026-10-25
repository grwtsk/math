# runBenchmark

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:524403e9bfb7947d2fbccef0a988803509abe857f443016c4d151d6d54736fa4",
  "kind": "def",
  "lexical_name": "runBenchmark",
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
  "slug": "runbenchmark--0bfc9d14519b702433d42ded",
  "source": {
    "blob": "9a8e5683fd73b8b7d17296f443499cee1f9205e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0bfc9d14519b702433d42ded74a29998375b42983c1fa5be0788f271d0614d56",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:524403e9bfb7947d2fbccef0a988803509abe857f443016c4d151d6d54736fa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runBenchmark (name : String) (e : Expr) (Irat : IntervalRat) (Idyad : IntervalDyadic)
    (ratCfg : EvalConfig := {}) (dyadCfg : DyadicConfig := {}) : BenchResult :=
  let ratResult := evalRational e Irat ratCfg
  let dyadResult := evalDyadic e Idyad dyadCfg
  { name := name
    ratLo := ratResult.lo
    ratHi := ratResult.hi
    dyadLo := dyadResult.lo.toRat
    dyadHi := dyadResult.hi.toRat }

/-! ### Benchmark Execution -/

-- Polynomial benchmarks
#eval runBenchmark "poly5" polyExpr5 testIntervalRat testIntervalDyadic
#eval runBenchmark "poly10" polyExpr10 testIntervalRat testIntervalDyadic
#eval runBenchmark "poly15" polyExpr15 testIntervalRat testIntervalDyadic
-- #eval runBenchmark "poly20" polyExpr20 testIntervalRat testIntervalDyadic  -- May be slow for rational

-- Deep multiplication benchmarks
#eval runBenchmark "deepMul10" deepMul10 testIntervalRat testIntervalDyadic
#eval runBenchmark "deepMul20" deepMul20 testIntervalRat testIntervalDyadic
#eval runBenchmark "deepMul30" deepMul30 testIntervalRat testIntervalDyadic
-- #eval runBenchmark "deepMul50" deepMul50 testIntervalRat testIntervalDyadic  -- May timeout for rational

-- Nested sin benchmarks
#eval runBenchmark "nestedSin3" nestedSin3 testIntervalRat testIntervalDyadic
#eval runBenchmark "nestedSin5" nestedSin5 testIntervalRat testIntervalDyadic
-- #eval runBenchmark "nestedSin7" nestedSin7 testIntervalRat testIntervalDyadic  -- Slow for rational

-- Nested exp benchmarks (small interval to prevent overflow)
#eval runBenchmark "nestedExp2" nestedExp2 smallIntervalRat smallIntervalDyadic
#eval runBenchmark "nestedExp3" nestedExp3 smallIntervalRat smallIntervalDyadic

-- Horner polynomial benchmarks
#eval runBenchmark "horner10" horner10 testIntervalRat testIntervalDyadic
#eval runBenchmark "horner20" horner20 testIntervalRat testIntervalDyadic

-- Binomial expansion benchmarks
#eval runBenchmark "binomial5" binomial5 testIntervalRat testIntervalDyadic
#eval runBenchmark "binomial10" binomial10 testIntervalRat testIntervalDyadic
-- #eval runBenchmark "binomial15" binomial15 testIntervalRat testIntervalDyadic  -- May be slow

-- Mixed expression benchmark
#eval runBenchmark "mixed" mkMixedExpr testIntervalRat testIntervalDyadic

/-! ### Dyadic-Only Benchmarks (for expressions too slow with rational) -/

/-- Run dyadic-only benchmark -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a8e5683fd73b8b7d17296f443499cee1f9205e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
