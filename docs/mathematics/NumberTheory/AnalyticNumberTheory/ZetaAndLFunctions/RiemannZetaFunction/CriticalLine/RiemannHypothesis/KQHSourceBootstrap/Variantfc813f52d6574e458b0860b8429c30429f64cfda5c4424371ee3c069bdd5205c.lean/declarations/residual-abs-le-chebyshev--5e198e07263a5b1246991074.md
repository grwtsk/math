# residual_abs_le_chebyshev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6238098a-abbd-8b5e-788a-64a3cafe6ad5",
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
  "slug": "residual-abs-le-chebyshev--5e198e07263a5b1246991074",
  "source": {
    "blob": "65cb55bf3e99b33a13632404ca2adabd5bb1c038",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e198e07263a5b1246991074f3599d3dcf43188b391bcbe910a8091035c83dcb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6238098a-abbd-8b5e-788a-64a3cafe6ad5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–77.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/KQHSourceBootstrap/Variantfc813f52d6574e458b0860b8429c30429f64cfda5c4424371ee3c069bdd5205c.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65cb55bf3e99b33a13632404ca2adabd5bb1c038` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
