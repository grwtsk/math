# material_integral_eq_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2cddbf8d-29e9-5e2c-0484-8063bde6327e",
  "kind": "theorem",
  "lexical_name": "material_integral_eq_finite",
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
  "slug": "material-integral-eq-finite--3ba737404641dd6dcae7bec4",
  "source": {
    "blob": "ca7fa70f797788aa2f0162c3c26e24f5f65b3906",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 202,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba737404641dd6dcae7bec4c6d86475d5eb3021fe76287dc264d6b735906004",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2cddbf8d-29e9-5e2c-0484-8063bde6327e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem material_integral_eq_finite {x : ℝ} (hx : 1 ≤ x) :
    (∫ y in Ioc 1 x, mertens y / y ^ (3 / 2 : ℝ)) = finitePickupAt x := by
  have hdiff : ∀ y ∈ Icc 1 x,
      DifferentiableAt ℝ (fun z : ℝ ↦ z ^ (-(1 / 2 : ℝ))) y := by
    intro y hy
    exact (Real.hasDerivAt_rpow_const
      (Or.inl (lt_of_lt_of_le zero_lt_one hy.1).ne')).differentiableAt
  have hderiv : deriv (fun y : ℝ ↦ y ^ (-(1 / 2 : ℝ))) =
      fun y ↦ -(1 / 2 : ℝ) * y ^ (-(3 / 2 : ℝ)) :=
    funext inverse_half_derivative
  have hcontinuous : ContinuousOn (fun y : ℝ ↦ y ^ (-(3 / 2 : ℝ))) (Icc 1 x) :=
    continuousOn_id.rpow_const
      (fun y hy ↦ Or.inl (lt_of_lt_of_le zero_lt_one hy.1).ne')
  have hint : IntegrableOn (deriv (fun y : ℝ ↦ y ^ (-(1 / 2 : ℝ)))) (Icc 1 x) := by
    rw [hderiv]
    exact (continuousOn_const.mul hcontinuous).integrableOn_Icc
  have habel := sum_mul_eq_sub_sub_integral_mul moebiusCoefficient zero_le_one hx hdiff hint
  have hzeroPrefixOne : (∑ n ∈ Finset.Icc 0 1, moebiusCoefficient n) = 1 := by
    simpa using zero_prefix_eq_mertens (1 : ℝ)
  simp only [zero_prefix_eq_mertens, Nat.floor_one, Real.one_rpow, hzeroPrefixOne, one_mul]
    at habel
  have hintegral :
      (∫ y in Ioc 1 x,
        deriv (fun z : ℝ ↦ z ^ (-(1 / 2 : ℝ))) y * mertens y) =
      -(1 / 2 : ℝ) * ∫ y in Ioc 1 x, mertens y / y ^ (3 / 2 : ℝ) := by
    calc
      _ = ∫ y in Ioc 1 x, -(1 / 2 : ℝ) * (mertens y / y ^ (3 / 2 : ℝ)) := by
        apply setIntegral_congr_fun measurableSet_Ioc
        intro y hy
        change deriv (fun z : ℝ ↦ z ^ (-(1 / 2 : ℝ))) y * mertens y =
          -(1 / 2 : ℝ) * (mertens y / y ^ (3 / 2 : ℝ))
        rw [inverse_half_derivative, Real.rpow_neg (lt_trans zero_lt_one hy.1).le]
        ring
      _ = _ := integral_const_mul _ _
  rw [hintegral] at habel
  have hfloor : 1 ≤ ⌊x⌋₊ := by simpa using Nat.floor_mono hx
  have hsum :
      (∑ n ∈ Finset.Icc 1 ⌊x⌋₊,
        moebiusCoefficient n * (n : ℝ) ^ (-(1 / 2 : ℝ))) =
      1 + ∑ n ∈ Finset.Ioc 1 ⌊x⌋₊,
        (n : ℝ) ^ (-(1 / 2 : ℝ)) * moebiusCoefficient n := by
    rw [← Finset.Ioc_insert_left hfloor, Finset.sum_insert (by simp)]
    simp only [Nat.cast_one, Real.one_rpow, moebius_coefficient_one, one_mul]
    congr 1
    apply Finset.sum_congr rfl
    intro n _
    exact mul_comm _ _
  rw [finite_pickup_prefix_flux, hsum, habel]
  ring

/-- The actual exact integral-to-finite proposition, discharged below. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedSummatoryIntegral.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca7fa70f797788aa2f0162c3c26e24f5f65b3906` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
