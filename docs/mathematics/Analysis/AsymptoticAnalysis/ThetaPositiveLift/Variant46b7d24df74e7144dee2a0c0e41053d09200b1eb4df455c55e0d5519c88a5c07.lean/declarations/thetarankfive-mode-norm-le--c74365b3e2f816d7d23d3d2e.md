# thetaRankFive_mode_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4d58cfda3152cd38cca5efeee86633fbf286643b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ace1ae19-6a58-5102-d12d-8b49b03a1407",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:011329c9-6ec2-268b-1006-4968ff4ebc20",
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
  "slug": "thetarankfive-mode-norm-le--c74365b3e2f816d7d23d3d2e",
  "source": {
    "blob": "4d58cfda3152cd38cca5efeee86633fbf286643b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 130,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c74365b3e2f816d7d23d3d2e58e0bc46177357295d1d84124bf0365ec5fc8bbd",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:011329c9-6ec2-268b-1006-4968ff4ebc20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–175.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant46b7d24df74e7144dee2a0c0e41053d09200b1eb4df455c55e0d5519c88a5c07.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d58cfda3152cd38cca5efeee86633fbf286643b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
