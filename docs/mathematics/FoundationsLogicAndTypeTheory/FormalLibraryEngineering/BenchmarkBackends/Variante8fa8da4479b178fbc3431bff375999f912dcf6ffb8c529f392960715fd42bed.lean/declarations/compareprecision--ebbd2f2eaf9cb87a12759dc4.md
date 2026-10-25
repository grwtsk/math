# comparePrecision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6636e495433e4fb195b4ac1c1fff9fdbc35b8f848cb7640e6e3a3bde0ab3d3c5",
  "kind": "def",
  "lexical_name": "comparePrecision",
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
  "slug": "compareprecision--ebbd2f2eaf9cb87a12759dc4",
  "source": {
    "blob": "9a8e5683fd73b8b7d17296f443499cee1f9205e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 232,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebbd2f2eaf9cb87a12759dc440dec388c15f71c9e0f8196b462b5e083ac2d4f0",
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

Occurrence: `declaration:6636e495433e4fb195b4ac1c1fff9fdbc35b8f848cb7640e6e3a3bde0ab3d3c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comparePrecision (e : Expr) (I : IntervalDyadic) : String :=
  let fast := evalDyadic e I DyadicConfig.fast
  let standard := evalDyadic e I {}
  let highPrec := evalDyadic e I DyadicConfig.highPrecision
  let fastWidth := fast.hi.toRat - fast.lo.toRat
  let stdWidth := standard.hi.toRat - standard.lo.toRat
  let highWidth := highPrec.hi.toRat - highPrec.lo.toRat
  s!"fast: {fastWidth}, std: {stdWidth}, high: {highWidth}"

#eval comparePrecision nestedSin5 testIntervalDyadic
#eval comparePrecision horner10 testIntervalDyadic
#eval comparePrecision mkMixedExpr testIntervalDyadic

/-! ### Verification: Results are sound -/

-- The dyadic results should contain the rational results (they're both sound)
-- Dyadic may have slightly wider intervals due to rounding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BenchmarkBackends/Variante8fa8da4479b178fbc3431bff375999f912dcf6ffb8c529f392960715fd42bed.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a8e5683fd73b8b7d17296f443499cee1f9205e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
