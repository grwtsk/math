# truncated_coefficient_eq_full_sub_missing_sectors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cfef8b2-1180-09ee-781e-916e69235ebf",
  "kind": "theorem",
  "lexical_name": "truncated_coefficient_eq_full_sub_missing_sectors",
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
  "slug": "truncated-coefficient-eq-full-sub-missing-sectors--88586106d4eec2b3ec5d2194",
  "source": {
    "blob": "32d6d3a5300399be51975a8f0032f1b771235ab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedPaymentMissingFringe/Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88586106d4eec2b3ec5d2194b09af20e1301056f1caaa47ef822fa6007b1bdb5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedPaymentMissingFringe/Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cfef8b2-1180-09ee-781e-916e69235ebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncated_coefficient_eq_full_sub_missing_sectors
    (U n : ℕ) (hn : n ≤ U * U) :
    (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n =
      ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n -
        (∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.1),
          (moebius p.1 : ℝ) * vonMangoldt p.2) -
        ∑ p ∈ n.divisorsAntidiagonal.filter (fun p => U < p.2),
          (moebius p.1 : ℝ) * vonMangoldt p.2 := by
  have hi :
      shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt =
        (moebius : ArithmeticFunction ℝ) * vonMangoldt -
          longPart U (moebius : ArithmeticFunction ℝ) * vonMangoldt -
          (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt +
          longPart U (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt := by
    unfold longPart
    ring
  have he := congrArg (fun f : ArithmeticFunction ℝ => f n) hi
  change (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n =
    ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n -
      (longPart U (moebius : ArithmeticFunction ℝ) * vonMangoldt) n -
      ((moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt) n +
      (longPart U (moebius : ArithmeticFunction ℝ) * longPart U vonMangoldt) n at he
  rw [long_long_zero_on_square U n hn, add_zero,
    first_long_eq_divisor_complement, second_long_eq_divisor_complement] at he
  exact he

/-- Completing the product payment requires adding both signed normalized complements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedPaymentMissingFringe/Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedPaymentMissingFringe/Variantc5f5ddbb26232e80f1280dff6c47a5eecc796c70bb34d4d2c72192f5e62e518f.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32d6d3a5300399be51975a8f0032f1b771235ab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
