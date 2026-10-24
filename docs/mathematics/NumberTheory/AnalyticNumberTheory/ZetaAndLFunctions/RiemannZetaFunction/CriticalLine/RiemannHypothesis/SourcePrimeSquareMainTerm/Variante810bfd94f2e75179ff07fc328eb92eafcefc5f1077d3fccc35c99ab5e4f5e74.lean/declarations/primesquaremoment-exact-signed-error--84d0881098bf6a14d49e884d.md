# primeSquareMoment_exact_signed_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54b809f0-20e0-d6a5-e856-1f69f698b86d",
  "kind": "theorem",
  "lexical_name": "primeSquareMoment_exact_signed_error",
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
  "slug": "primesquaremoment-exact-signed-error--84d0881098bf6a14d49e884d",
  "source": {
    "blob": "993c82c3de61371ab6cf514c9b531cdf29c954ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variante810bfd94f2e75179ff07fc328eb92eafcefc5f1077d3fccc35c99ab5e4f5e74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84d0881098bf6a14d49e884d4b9d5b9741a986280192a9ae88b8feb605b6b6a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variante810bfd94f2e75179ff07fc328eb92eafcefc5f1077d3fccc35c99ab5e4f5e74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54b809f0-20e0-d6a5-e856-1f69f698b86d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquareMoment_exact_signed_error (A : ℝ) (hA : 1 ≤ A) :
    primeSquareMoment A - diagonalMainCoefficient A * A =
      -(∫ t in 0..A, primeLogError t * deriv (diagonalCorrelation A) t) := by
  have he := primeLogWindow_sub_integral 0 A (by norm_num) (by linarith)
    (diagonalCorrelation A) (diagonalCorrelation_contDiff A (by linarith))
  rw [← primeSquareMoment_eq_primeLogWindow, diagonalCorrelation_integral A hA,
    diagonalCorrelation_at_upper A (by linarith), diagonalCorrelation_at_zero A hA] at he
  simpa only [primeLogError, primeLogPrefix_zero, sub_self, zero_mul, mul_zero,
    sub_zero, zero_sub] using he

/-- A literal weighted-prime Mertens witness gives the source square sector
an 11-times witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variante810bfd94f2e75179ff07fc328eb92eafcefc5f1077d3fccc35c99ab5e4f5e74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variante810bfd94f2e75179ff07fc328eb92eafcefc5f1077d3fccc35c99ab5e4f5e74.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `993c82c3de61371ab6cf514c9b531cdf29c954ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
