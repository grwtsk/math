# primeSquareMoment_tail_main_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a4fbfb5-9bf2-32fb-37ba-3aa5a8259ff3",
  "kind": "theorem",
  "lexical_name": "primeSquareMoment_tail_main_error",
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
  "slug": "primesquaremoment-tail-main-error--6abd3de48a0a91d3ea7ed993",
  "source": {
    "blob": "0ad104db261b6e0280dafa39eb13c65b7c1717cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpPrimeSquareConsumer/Variantcbcd28db46e34d1a10d007bbe7c7c1a14b7330a24fa483a47052da8ebce6d13f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6abd3de48a0a91d3ea7ed99388efc43793ade8db7a3e459afac3c94ea05f8675",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpPrimeSquareConsumer/Variantcbcd28db46e34d1a10d007bbe7c7c1a14b7330a24fa483a47052da8ebce6d13f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a4fbfb5-9bf2-32fb-37ba-3aa5a8259ff3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquareMoment_tail_main_error {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |primeSquareMoment A - diagonalMainCoefficient A * A| ≤
      2 * (Real.log 4 + 4) * Real.sqrt (tailEnergyCoefficient Q) := by
  have he := cutoffOnePrimeDiagonal_tail_error hQ hQA
  rw [cutoffOnePrimeDiagonal_eq_window A (hQ.trans hQA)] at he
  rw [primeSquareMoment_eq_primeLogWindow]
  have hid : -WeightedPrimeAbel.primeLogWindow 0 A (SourceDiagonalPrimeAbel.diagonalCorrelation A) +
      diagonalMainCoefficient A * A =
        -(WeightedPrimeAbel.primeLogWindow 0 A (SourceDiagonalPrimeAbel.diagonalCorrelation A) -
          diagonalMainCoefficient A * A) := by ring
  rw [hid, abs_neg] at he
  exact he

/-- Explicit all-real square-sector cost, before its separate physical anchor traces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpPrimeSquareConsumer/Variantcbcd28db46e34d1a10d007bbe7c7c1a14b7330a24fa483a47052da8ebce6d13f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSharpPrimeSquareConsumer/Variantcbcd28db46e34d1a10d007bbe7c7c1a14b7330a24fa483a47052da8ebce6d13f.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ad104db261b6e0280dafa39eb13c65b7c1717cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
