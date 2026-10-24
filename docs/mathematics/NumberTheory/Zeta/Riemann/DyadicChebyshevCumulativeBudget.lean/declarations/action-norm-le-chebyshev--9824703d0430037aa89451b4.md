# action_norm_le_chebyshev

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd74ef1a-e399-17f0-a938-fcec078c3efc",
  "kind": "theorem",
  "lexical_name": "action_norm_le_chebyshev",
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
  "slug": "action-norm-le-chebyshev--9824703d0430037aa89451b4",
  "source": {
    "blob": "bc83bf1f65d66d02e65534c5056b86b00f6a4d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 138,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9824703d0430037aa89451b406a806464939696e2dcd53b78ea513b221c79f10",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd74ef1a-e399-17f0-a938-fcec078c3efc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem action_norm_le_chebyshev
    {X : ℕ} (hX : 0 < X)
    {s : ℂ} {M : ℝ} (hM : 0 ≤ M) (hs : ‖s‖ ≤ M) :
    ‖action X (mellinTest s)‖ ≤
      (chebyshevOctaveMassConstant + 1) * radiusFactor M := by
  have hatom :
      ‖∑ n ∈ window X,
          (coefficient n : ℂ) * mellinTest s (location X n)‖ ≤
        chebyshevOctaveMassConstant * radiusFactor M := by
    calc
      ‖∑ n ∈ window X,
          (coefficient n : ℂ) * mellinTest s (location X n)‖
          ≤ ∑ n ∈ window X,
              ‖(coefficient n : ℂ) * mellinTest s (location X n)‖ :=
        norm_sum_le _ _
      _ ≤ ∑ n ∈ window X,
            coefficient n * radiusFactor M := by
        apply Finset.sum_le_sum
        intro n hn
        have hc : 0 ≤ coefficient n := by
          unfold coefficient mangoldt
          exact div_nonneg ArithmeticFunction.vonMangoldt_nonneg
            (Nat.cast_nonneg _)
        rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hc]
        exact mul_le_mul_of_nonneg_left
          (test_norm_bound hM hs (location_mem hX hn)) hc
      _ = windowCoefficientMass X * radiusFactor M := by
        rw [← Finset.sum_mul]
        rfl
      _ ≤ chebyshevOctaveMassConstant * radiusFactor M :=
        mul_le_mul_of_nonneg_right
          (windowCoefficientMass_le_constant X hX)
          (by unfold radiusFactor; positivity)
  have hbackground :
      ‖∫ t in (0 : ℝ)..1,
          mellinTest s t / (1 + (t : ℂ))‖ ≤
        radiusFactor M := by
    calc
      ‖∫ t in (0 : ℝ)..1,
          mellinTest s t / (1 + (t : ℂ))‖
          ≤ radiusFactor M * |(1 : ℝ) - 0| := by
        apply intervalIntegral.norm_integral_le_of_norm_le_const
        intro t ht
        rw [uIoc_of_le (show (0 : ℝ) ≤ 1 by norm_num)] at ht
        have htI : t ∈ Icc (0 : ℝ) 1 := Ioc_subset_Icc_self ht
        rw [norm_div]
        have hden :
            ‖(1 : ℂ) + (t : ℂ)‖ = 1 + t := by
          rw [show (1 : ℂ) + (t : ℂ) = ((1 + t : ℝ) : ℂ) by
            push_cast
            rfl,
            Complex.norm_real, Real.norm_eq_abs,
            abs_of_nonneg (by linarith [htI.1])]
        rw [hden]
        exact
          (div_le_self (norm_nonneg _)
            (by linarith [htI.1])).trans
              (test_norm_bound hM hs htI)
      _ = radiusFactor M := by norm_num
  unfold action
  calc
    ‖(∑ n ∈ window X,
        (coefficient n : ℂ) * mellinTest s (location X n)) -
        ∫ t in (0 : ℝ)..1,
          mellinTest s t / (1 + (t : ℂ))‖
        ≤
      ‖∑ n ∈ window X,
        (coefficient n : ℂ) * mellinTest s (location X n)‖ +
      ‖∫ t in (0 : ℝ)..1,
        mellinTest s t / (1 + (t : ℂ))‖ :=
      norm_sub_le _ _
    _ ≤ chebyshevOctaveMassConstant * radiusFactor M +
        radiusFactor M :=
      add_le_add hatom hbackground
    _ = (chebyshevOctaveMassConstant + 1) * radiusFactor M := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc83bf1f65d66d02e65534c5056b86b00f6a4d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
