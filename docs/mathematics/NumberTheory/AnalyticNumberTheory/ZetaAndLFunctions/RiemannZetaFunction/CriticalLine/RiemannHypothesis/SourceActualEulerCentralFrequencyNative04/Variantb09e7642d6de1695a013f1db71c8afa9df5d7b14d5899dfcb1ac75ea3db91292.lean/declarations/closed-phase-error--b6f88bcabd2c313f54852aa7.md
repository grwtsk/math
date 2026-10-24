# closed_phase_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a13273c4-d7df-c15c-301a-0baa8a7de8c0",
  "kind": "theorem",
  "lexical_name": "closed_phase_error",
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
  "slug": "closed-phase-error--b6f88bcabd2c313f54852aa7",
  "source": {
    "blob": "74b1683f513f9633a1f756145b119b392c23ab58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 126,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative04/Variantb09e7642d6de1695a013f1db71c8afa9df5d7b14d5899dfcb1ac75ea3db91292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6f88bcabd2c313f54852aa7c6f2067e4edcffaac97514d54b015448c8a25723",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative04/Variantb09e7642d6de1695a013f1db71c8afa9df5d7b14d5899dfcb1ac75ea3db91292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13273c4-d7df-c15c-301a-0baa8a7de8c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem closed_phase_error {A t : ℝ} (hA : 1 ≤ A)
    (ht : |t| ≤ 1/(100*A)) :
    ‖actualClosedPrimeDirichletPolynomial A ((3/2 : ℂ)+(t : ℂ)*I) -
      (closedRealMass A : ℂ)‖ ≤ closedRealMass A / 50 := by
  have hp : 0 < A := by linarith
  have htA : |t| * A ≤ 1/100 := by
    have hh := (le_div_iff₀ (by positivity : 0 < 100*A)).mp ht
    nlinarith
  unfold actualClosedPrimeDirichletPolynomial closedRealMass
  push_cast
  rw [← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖LSeries.term actualMangoldtCoefficients ((3/2 : ℂ)+(t : ℂ)*I) n -
          ((if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
            (n : ℝ)^(3/2 : ℝ) : ℝ) : ℂ)‖ := norm_sum_le _ _
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        (if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
          (n : ℝ)^(3/2 : ℝ)) / 50 := by
      apply Finset.sum_le_sum
      intro n hn
      rcases eq_or_ne n 0 with rfl | hn0
      · simp
      have hnR : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn0
      have hl0 : 0 ≤ Real.log n := Real.log_nonneg (by
        exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn0)
      have hle : (n : ℝ) ≤ Real.exp (2*A) :=
        (Nat.le_floor_iff (Real.exp_pos _).le).mp (by
          have hh := Finset.mem_range.mp hn
          omega)
      have hl : Real.log n ≤ 2*A := (Real.log_le_iff_le_exp hnR).mpr hle
      have hph : |-t*Real.log n| ≤ 1/50 := by
        rw [abs_mul, abs_neg, abs_of_nonneg hl0]
        nlinarith
      rw [if_neg hn0, term_phase n t hn0]
      rw [show ((ArithmeticFunction.vonMangoldt n / (n : ℝ)^(3/2 : ℝ) : ℝ) : ℂ)*
          Complex.exp (I*(-t*Real.log n : ℝ)) -
        ((ArithmeticFunction.vonMangoldt n / (n : ℝ)^(3/2 : ℝ) : ℝ) : ℂ) =
        ((ArithmeticFunction.vonMangoldt n / (n : ℝ)^(3/2 : ℝ) : ℝ) : ℂ)*
          (Complex.exp (I*(-t*Real.log n : ℝ))-1) by ring,
        norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
      exact (mul_le_mul_of_nonneg_left ((norm_phase_sub_one _).trans hph)
        (by positivity)).trans_eq (by ring)
    _ = _ := by rw [Finset.sum_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative04/Variantb09e7642d6de1695a013f1db71c8afa9df5d7b14d5899dfcb1ac75ea3db91292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative04/Variantb09e7642d6de1695a013f1db71c8afa9df5d7b14d5899dfcb1ac75ea3db91292.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b1683f513f9633a1f756145b119b392c23ab58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
