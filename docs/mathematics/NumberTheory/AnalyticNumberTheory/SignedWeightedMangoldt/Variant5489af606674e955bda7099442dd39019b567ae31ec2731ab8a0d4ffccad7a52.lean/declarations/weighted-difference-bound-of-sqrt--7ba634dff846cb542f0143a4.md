# weighted_difference_bound_of_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76b5a5b8-120d-8b0d-bcbe-e6dfb791b912",
  "kind": "theorem",
  "lexical_name": "weighted_difference_bound_of_sqrt",
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
  "slug": "weighted-difference-bound-of-sqrt--7ba634dff846cb542f0143a4",
  "source": {
    "blob": "ab79fc8f41264567f32b4d0cfd52227cabf3fe74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 214,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ba634dff846cb542f0143a48426ae199b35a2b781bf985442b4807ed2323c0f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b5a5b8-120d-8b0d-bcbe-e6dfb791b912`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_difference_bound_of_sqrt
    (C : ℝ) (hC0 : 0 ≤ C)
    (hC : ∀ x : ℝ, Chebyshev.psi x - Chebyshev.theta x ≤ C * Real.sqrt x)
    (N : ℕ) (hN : 1 ≤ N) :
    weightedMangoldt N - weightedPrime N ≤ 3 * C := by
  have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hN0 : (0 : ℝ) < N := by linarith
  have hsqrt : Real.sqrt (N : ℝ) ≤ N := by
    have hsq := Real.sq_sqrt (le_of_lt hN0)
    have hs1 := Real.one_le_sqrt.mpr hN1
    nlinarith
  have hb : (Chebyshev.psi N - Chebyshev.theta N) / (N : ℝ) ≤ C := by
    apply (div_le_iff₀ hN0).2
    exact (hC N).trans (by nlinarith)
  have hgcont : ContinuousOn (fun x : ℝ => C * x ^ (-(3 / 2 : ℝ)))
      (Set.Icc 1 (N : ℝ)) :=
    continuousOn_const.mul (continuousOn_id.rpow_const
      (by intro x hx; exact Or.inl (by linarith [hx.1] : x ≠ 0)))
  have hm : (∫ x in Set.Ioc 1 (N : ℝ), (Chebyshev.psi x - Chebyshev.theta x) / x ^ 2) ≤
      ∫ x in Set.Ioc 1 (N : ℝ), C * x ^ (-(3 / 2 : ℝ)) := by
    apply setIntegral_mono_on
      ((properPower_integrand_integrable N).mono_set Set.Ioc_subset_Icc_self)
      (hgcont.integrableOn_Icc.mono_set Set.Ioc_subset_Icc_self) measurableSet_Ioc
    intro x hx
    have hx0 : 0 < x := by linarith [hx.1]
    calc
      (Chebyshev.psi x - Chebyshev.theta x) / x ^ 2 ≤
          (C * Real.sqrt x) / x ^ 2 := div_le_div_of_nonneg_right (hC x) (sq_nonneg x)
      _ = C * x ^ (-(3 / 2 : ℝ)) := by rw [mul_div_assoc, sqrt_div_square x hx0]
  have hg : (∫ x in Set.Ioc 1 (N : ℝ), C * x ^ (-(3 / 2 : ℝ))) ≤ 2 * C := by
    rw [← intervalIntegral.integral_of_le hN1, intervalIntegral.integral_const_mul,
      integral_rpow]
    · norm_num
      have hp := mul_nonneg hC0 (Real.rpow_nonneg (le_of_lt hN0) (-(1 / 2 : ℝ)))
      nlinarith
    · right
      constructor
      · norm_num
      · rw [Set.uIcc_of_le hN1]
        simp
  rw [weighted_difference_abel]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SignedWeightedMangoldt/Variant5489af606674e955bda7099442dd39019b567ae31ec2731ab8a0d4ffccad7a52.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab79fc8f41264567f32b4d0cfd52227cabf3fe74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
