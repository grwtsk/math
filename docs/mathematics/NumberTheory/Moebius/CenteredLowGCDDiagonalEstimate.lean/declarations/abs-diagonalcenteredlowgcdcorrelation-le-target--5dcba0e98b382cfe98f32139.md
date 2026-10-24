# abs_diagonalCenteredLowGCDCorrelation_le_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09f839f8-8f3a-b252-834d-743728a76d3e",
  "kind": "theorem",
  "lexical_name": "abs_diagonalCenteredLowGCDCorrelation_le_target",
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
  "slug": "abs-diagonalcenteredlowgcdcorrelation-le-target--5dcba0e98b382cfe98f32139",
  "source": {
    "blob": "8c792bb10372d3333f5f654f2cc5440da9c3de57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 35,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dcba0e98b382cfe98f321398cbaf79a23041e14f128367394c841cc51bc94cb",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09f839f8-8f3a-b252-834d-743728a76d3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_diagonalCenteredLowGCDCorrelation_le_target
    {X Y : ℕ}
    (hX : 4 ≤ X)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X, w n ∈ Set.Icc (0 : ℝ) 1) :
    |diagonalCenteredLowGCDCorrelation X Y w| ≤
      300 * centeredLowGCDTargetScale X := by
  let L : ℝ := Real.log ((4 * X : ℕ) : ℝ)
  let ell : ℝ := Real.log (X : ℝ)
  have hXone : 1 ≤ X := by omega
  have hXposR : 0 < (X : ℝ) := by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hX)
  have hsqrtNonneg : 0 ≤ Real.sqrt (X : ℝ) := Real.sqrt_nonneg _
  have hsqrtOne : 1 ≤ Real.sqrt (X : ℝ) := by
    rw [Real.one_le_sqrt]
    exact_mod_cast hXone
  have hellOne : 1 ≤ ell := by
    unfold ell
    rw [Real.le_log_iff_exp_le hXposR]
    exact (Real.exp_one_lt_three.le.trans <| by
      exact_mod_cast (show 3 ≤ X by omega))
  have hellNonneg : 0 ≤ ell := zero_le_one.trans hellOne
  have hlogFour_le : Real.log (4 : ℝ) ≤ ell := by
    unfold ell
    exact Real.log_le_log (by norm_num) (by exact_mod_cast hX)
  have hL_eq : L = Real.log (4 : ℝ) + ell := by
    unfold L ell
    rw [show (((4 * X : ℕ) : ℝ)) = (4 : ℝ) * (X : ℝ) by norm_num,
      Real.log_mul (by norm_num : (4 : ℝ) ≠ 0) hXposR.ne']
  have hL_le : L ≤ 2 * ell := by linarith
  have honeL_le : 1 + L ≤ 3 * ell := by linarith
  have hLnonneg : 0 ≤ L := by
    unfold L
    exact Real.log_nonneg (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  have hdivsq := octaveDivisorSquareMass_le hXone
  have hcard : (octaveIndexSet X).card = 2 * X := by
    simp [octaveIndexSet]
    omega
  have hraw :
      |diagonalCenteredLowGCDCorrelation X Y w| ≤
        (L ^ 2) * octaveDivisorSquareMass X +
          ((2 * X : ℕ) : ℝ) * (2 * L + 1) := by
    unfold diagonalCenteredLowGCDCorrelation
    calc
      |∑ n ∈ octaveIndexSet X,
          w n ^ 2 * centeredLowGCDPairKernel X Y n n| ≤
        ∑ n ∈ octaveIndexSet X,
          |w n ^ 2 * centeredLowGCDPairKernel X Y n n| := by
        exact Finset.abs_sum_le_sum_abs _ _
      _ ≤
        ∑ n ∈ octaveIndexSet X,
          (((n.divisors.card : ℝ) ^ 2) * L ^ 2 +
            2 * L + 1) := by
        apply Finset.sum_le_sum
        intro n hn
        have hwn := hw n hn
        have hwSq : |w n ^ 2| ≤ 1 := by
          rw [abs_of_nonneg (sq_nonneg _)]
          nlinarith [sq_nonneg (w n), mul_self_le_mul_self hwn.1 hwn.2]
        have hk := abs_centeredLowGCDPairKernel_diagonal_le
          (Y := Y) hn
        change
          |w n ^ 2 * centeredLowGCDPairKernel X Y n n| ≤
            ((n.divisors.card : ℝ) ^ 2) * L ^ 2 + 2 * L + 1
        rw [abs_mul]
        calc
          |w n ^ 2| * |centeredLowGCDPairKernel X Y n n| ≤
              1 * |centeredLowGCDPairKernel X Y n n| := by
            exact mul_le_mul_of_nonneg_right hwSq (abs_nonneg _)
          _ ≤ ((n.divisors.card : ℝ) ^ 2) * L ^ 2 +
              2 * L + 1 := by simpa [L]
      _ = (L ^ 2) * octaveDivisorSquareMass X +
          ((2 * X : ℕ) : ℝ) * (2 * L + 1) := by
        unfold octaveDivisorSquareMass
        rw [Finset.sum_add_distrib]
        simp only [Finset.sum_const, nsmul_eq_mul, hcard]
        rw [← Finset.sum_mul]
        ring
  have hLsq_le : L ^ 2 ≤ 4 * ell ^ 2 := by
    calc
      L ^ 2 ≤ (2 * ell) ^ 2 := by
        simpa [pow_two] using
          (mul_self_le_mul_self hLnonneg hL_le)
      _ = 4 * ell ^ 2 := by ring
  have hell3le4 : ell ^ 3 ≤ ell ^ 4 := by
    calc
      ell ^ 3 = ell ^ 3 * 1 := by ring
      _ ≤ ell ^ 3 * ell := by
        exact mul_le_mul_of_nonneg_left
          hellOne (pow_nonneg ell 3)
      _ = ell ^ 4 := by ring
  have hell_le_four : ell ≤ ell ^ 4 := by
    calc
      ell = ell * 1 := by ring
      _ ≤ ell * ell ^ 3 := by
        exact mul_le_mul_of_nonneg_left
          (one_le_pow₀ hellOne)
          hellNonneg
      _ = ell ^ 4 := by ring
  have hdivterm :
      (L ^ 2) * octaveDivisorSquareMass X ≤
        288 * centeredLowGCDTargetScale X := by
    have hA :
        0 ≤ 24 * (X : ℝ) * Real.sqrt (X : ℝ) := by
      positivity
    have h1L : 0 ≤ 1 + L := by linarith
    calc
      (L ^ 2) * octaveDivisorSquareMass X ≤
          (L ^ 2) *
            (24 * (X : ℝ) * Real.sqrt (X : ℝ) * (1 + L)) := by
        exact mul_le_mul_of_nonneg_left
          (by simpa [L] using hdivsq)
          (sq_nonneg L)
      _ ≤ (4 * ell ^ 2) *
            (24 * (X : ℝ) * Real.sqrt (X : ℝ) * (1 + L)) := by
        exact mul_le_mul_of_nonneg_right
          hLsq_le (mul_nonneg hA h1L)
      _ ≤ (4 * ell ^ 2) *
            (24 * (X : ℝ) * Real.sqrt (X : ℝ) * (3 * ell)) := by
        exact mul_le_mul_of_nonneg_left
          (mul_le_mul_of_nonneg_left honeL_le hA)
          (by positivity)
      _ = 288 * (X : ℝ) * Real.sqrt (X : ℝ) * ell ^ 3 := by
        ring
      _ ≤ 288 * (X : ℝ) * Real.sqrt (X : ℝ) * ell ^ 4 := by
        exact mul_le_mul_of_nonneg_left hell3le4 (by positivity)
      _ = 288 * centeredLowGCDTargetScale X := by
        unfold centeredLowGCDTargetScale ell
        ring
  have hconstterm :
      (((2 * X : ℕ) : ℝ) * (2 * L + 1)) ≤
        10 * centeredLowGCDTargetScale X := by
    have htwoL : 2 * L + 1 ≤ 5 * ell := by linarith
    have hell_sqrt :
        ell ≤ Real.sqrt (X : ℝ) * ell ^ 4 := by
      calc
        ell ≤ ell ^ 4 := hell_le_four
        _ = 1 * ell ^ 4 := by ring
        _ ≤ Real.sqrt (X : ℝ) * ell ^ 4 := by
          exact mul_le_mul_of_nonneg_right
            hsqrtOne (pow_nonneg ell 4)
    calc
      (((2 * X : ℕ) : ℝ) * (2 * L + 1)) ≤
          (((2 * X : ℕ) : ℝ) * (5 * ell)) := by
        exact mul_le_mul_of_nonneg_left htwoL (by positivity)
      _ = 10 * (X : ℝ) * ell := by
        push_cast
        ring
      _ ≤ 10 * (X : ℝ) *
          (Real.sqrt (X : ℝ) * ell ^ 4) := by
        exact mul_le_mul_of_nonneg_left hell_sqrt (by positivity)
      _ = 10 * centeredLowGCDTargetScale X := by
        unfold centeredLowGCDTargetScale ell
        ring
  calc
    |diagonalCenteredLowGCDCorrelation X Y w| ≤
        (L ^ 2) * octaveDivisorSquareMass X +
          ((2 * X : ℕ) : ℝ) * (2 * L + 1) := hraw
    _ ≤ 298 * centeredLowGCDTargetScale X := by linarith
    _ ≤ 300 * centeredLowGCDTargetScale X := by
      have hscale : 0 ≤ centeredLowGCDTargetScale X := by
        unfold centeredLowGCDTargetScale
        positivity
      nlinarith


end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDDiagonalEstimate.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c792bb10372d3333f5f654f2cc5440da9c3de57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
