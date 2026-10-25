# runDyadicOnly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:686b14f3c962b43a810ea5905e0551a6f68413aacae80126eccc4ce3c98b8943",
  "kind": "def",
  "lexical_name": "runDyadicOnly",
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
  "slug": "rundyadiconly--f6b7ea3b553a7db5e2b76076",
  "source": {
    "blob": "c73afb9b7fcf26b825ef73998e22d9c2fe83b52a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 225,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6b7ea3b553a7db5e2b76076314da9bf5f7d9fef7c30b60e0b8d55e29c6845c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:686b14f3c962b43a810ea5905e0551a6f68413aacae80126eccc4ce3c98b8943`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runDyadicOnly (name : String) (e : Expr) (I : IntervalDyadic)
    (cfg : DyadicConfig := {}) : String :=
  let result := evalDyadic e I cfg
  s!"{name}: [{result.lo.toRat}, {result.hi.toRat}]"

-- These would timeout with rational backend
#eval runDyadicOnly "poly20_dyadic" polyExpr20 testIntervalDyadic
#eval runDyadicOnly "deepMul50_dyadic" deepMul50 testIntervalDyadic
#eval runDyadicOnly "deepMul100_dyadic" (mkDeepMulExpr 100) testIntervalDyadic
#eval runDyadicOnly "nestedSin10_dyadic" (mkNestedSin 10) testIntervalDyadic
#eval runDyadicOnly "binomial20_dyadic" (mkExpandedBinomial 20) testIntervalDyadic

/-! ### Precision Comparison -/

/-- Compare precision at different dyadic settings -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variant40679161c96f6919ebbe15dce40a03302d2263a96b037bd972ed92ad8866f41b.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c73afb9b7fcf26b825ef73998e22d9c2fe83b52a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
