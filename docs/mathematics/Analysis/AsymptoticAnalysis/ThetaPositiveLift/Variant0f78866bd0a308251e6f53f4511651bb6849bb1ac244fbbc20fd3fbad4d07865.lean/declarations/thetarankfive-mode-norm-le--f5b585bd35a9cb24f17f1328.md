# thetaRankFive_mode_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b56e871-bab9-10cc-5bc7-fd8e7664ca2b",
  "kind": "theorem",
  "lexical_name": "thetaRankFive_mode_norm_le",
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
  "slug": "thetarankfive-mode-norm-le--f5b585bd35a9cb24f17f1328",
  "source": {
    "blob": "89b02f0366a2bf2f0fe7fd6537c1cc94e4423cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 138,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5b585bd35a9cb24f17f1328d8a15f0c743c490b7fd03c23e8839804cc26c37f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b56e871-bab9-10cc-5bc7-fd8e7664ca2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFive_mode_norm_le (n : ℕ) (C : ℝ) (hC : 0 ≤ C)
    (hpoly : ∀ y : ℝ, 1 ≤ y →
      |(thetaPhiDerivativePolynomial n).eval y| ≤ C * y ^ (n + 1))
    (m : ℕ) :
    ‖thetaPhiDerivativeModeValue n (m + 4) 0‖ ≤
      (C * 4 ^ (n + 2)) * thetaRankFiveGaussianTailTerm (2 * (n + 2)) m := by
  have hm : (0 : ℝ) ≤ m := Nat.cast_nonneg m
  have hs : (1 : ℝ) ≤ ((m : ℝ) + 5) ^ 2 := by nlinarith
  have hy : 1 ≤ Real.pi * ((m : ℝ) + 5) ^ 2 := by
    nlinarith [Real.pi_gt_three]
  have hpi : Real.pi * ((m : ℝ) + 5) ^ 2 ≤ 4 * ((m : ℝ) + 5) ^ 2 :=
    mul_le_mul_of_nonneg_right Real.pi_lt_four.le (sq_nonneg _)
  have he : Real.exp (-(Real.pi * ((m : ℝ) + 5) ^ 2)) ≤
      Real.exp (-3 * ((m : ℝ) + 5) ^ 2) := by
    apply Real.exp_le_exp.mpr
    nlinarith [Real.pi_gt_three]
  have hmode : thetaPhiDerivativeModeValue n (m + 4) 0 =
      (Real.pi * ((m : ℝ) + 5) ^ 2) *
        (thetaPhiDerivativePolynomial n).eval (Real.pi * ((m : ℝ) + 5) ^ 2) *
        Real.exp (-(Real.pi * ((m : ℝ) + 5) ^ 2)) := by
    unfold thetaPhiDerivativeModeValue thetaPhiDerivativeModeWeight thetaModeY thetaModeA
    simp only [mul_zero, Real.exp_zero, mul_one, Nat.cast_add, Nat.cast_ofNat]
    rw [show (m : ℝ) + 4 + 1 = m + 5 by ring]
    ring
  rw [hmode, norm_mul, norm_mul, Real.norm_of_nonneg (by positivity),
    Real.norm_of_nonneg (Real.exp_pos _).le, Real.norm_eq_abs]
  calc
    _ ≤ (Real.pi * ((m : ℝ) + 5) ^ 2) *
        (C * (Real.pi * ((m : ℝ) + 5) ^ 2) ^ (n + 1)) *
        Real.exp (-(Real.pi * ((m : ℝ) + 5) ^ 2)) :=
      mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left (hpoly _ hy) (by positivity)) (by positivity)
    _ = C * (Real.pi * ((m : ℝ) + 5) ^ 2) ^ (n + 2) *
        Real.exp (-(Real.pi * ((m : ℝ) + 5) ^ 2)) := by rw [pow_succ]; ring
    _ ≤ C * (4 * ((m : ℝ) + 5) ^ 2) ^ (n + 2) *
        Real.exp (-3 * ((m : ℝ) + 5) ^ 2) :=
      mul_le_mul (mul_le_mul_of_nonneg_left
        (pow_le_pow_left₀ (by positivity) hpi _) hC) he (by positivity) (by positivity)
    _ = _ := by
      unfold thetaRankFiveGaussianTailTerm
      rw [mul_pow, ← pow_mul]
      ring

/-- Complete analytic error bound after the first four literal source modes.
The coefficient estimate is separated so it can be computed for all nine
orders by an independent exact polynomial proof. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b02f0366a2bf2f0fe7fd6537c1cc94e4423cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
