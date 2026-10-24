# residual_abs_le_chebyshev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0757c4df-115b-4a5d-8db8-7502452fa249",
  "kind": "theorem",
  "lexical_name": "residual_abs_le_chebyshev",
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
  "slug": "residual-abs-le-chebyshev--e90e99067b5f85fef00ac8bf",
  "source": {
    "blob": "ddcd553f1740bc39b9ac235e1d594bf9d6cc5692",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e90e99067b5f85fef00ac8bfb4c45189a53994667fb682be79e044109d21b533",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0757c4df-115b-4a5d-8db8-7502452fa249`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_abs_le_chebyshev (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A| ≤ chebyshevPrimePower (Real.exp (2 * A)) := by
  rw [mertensResidual_eq_closedPrimeMoment A hA]
  unfold closedPrimeMoment
  apply (Finset.abs_sum_le_sum_abs _ _).trans
  change (∑ n ∈ primePowerInventory (2 * A),
    |ArithmeticFunction.vonMangoldt n *
      exponentialTest (sourceCorrelation explicitSecondDerivative A) (Real.log n)|) ≤
    ∑ n ∈ primePowerInventory (2 * A), ArithmeticFunction.vonMangoldt n
  apply Finset.sum_le_sum
  intro n hn
  have hnlog := (mangoldtInventory_log_bounds (2 * A) n hn).1
  have he : Real.exp (-Real.log (n : ℝ) / 2) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by linarith)
  have hc := actual_correlation_abs_le_one A (Real.log n) hA
  have hm := ArithmeticFunction.vonMangoldt_nonneg (n := n)
  unfold exponentialTest
  rw [abs_mul, abs_mul, abs_of_nonneg hm, abs_of_pos (Real.exp_pos _)]
  rw [← mul_assoc]
  calc
    _ ≤ ArithmeticFunction.vonMangoldt n * Real.exp (-Real.log (n : ℝ) / 2) * 1 :=
      mul_le_mul_of_nonneg_left hc (mul_nonneg hm (Real.exp_pos _).le)
    _ ≤ ArithmeticFunction.vonMangoldt n := by
      simpa using mul_le_mul_of_nonneg_left he hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variant73d37c90c0e71fca11690ca73d963d056546e473bb932bb33efedab251da22e4.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcd553f1740bc39b9ac235e1d594bf9d6cc5692` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
