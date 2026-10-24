# sourceKernel_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a3710f13556daec3ffb67a27b3cf5e7c9880df9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 400,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e04f9c86-ce9d-864b-29e9-7619d151318f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87cb09de-201f-d0f8-60ad-3868050dc913",
  "kind": "theorem",
  "lexical_name": "sourceKernel_norm_le",
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
  "slug": "sourcekernel-norm-le--a1e3957c4ab1bf678db54d5f",
  "source": {
    "blob": "3a3710f13556daec3ffb67a27b3cf5e7c9880df9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 521,
    "line": 400,
    "path": "GRWTSK/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1e3957c4ab1bf678db54d5fabd9dae7525dd44606e7f0f41d6a2c9c14d2da1d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87cb09de-201f-d0f8-60ad-3868050dc913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–521.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernel_norm_le
    (M B : ℝ) (hM : 0 ≤ M) (hB : 0 ≤ B)
    (s z : ℂ)
    (hs : ‖s‖ ≤ M)
    (hz : M + 1 ≤ ‖z‖)
    (hstrip :
      -(1 / 2 : ℝ) ≤ z.re ∧ z.re ≤ 1 / 2)
    (hunshifted :
      ∀ k ≤ 8, ‖J k s‖ ≤ B) :
    ‖sourceKernel z s‖ ≤
      tailConstant M B *
        (1 + ‖z‖) ^ (-6 : ℝ) := by
  have hz1 : 1 ≤ ‖z‖ := by linarith
  have hzn1 : 1 ≤ ‖-z‖ := by
    simpa only [norm_neg] using hz1
  have hr : 0 < ‖z‖ := by linarith
  have hnegstrip :
      (-z).re ≤ 1 / 2 := by
    simp only [Complex.neg_re]
    linarith [hstrip.1]
  have hminus :=
    polynomialKernel_norm_le
      (positivePolynomial z) (s - 2 * z)
      (22050 * ‖z‖ ^ 8)
      (362880 * Real.exp (M + 1))
      (positivePolynomial_coeff_norm_le z hz1)
      (shifted_J_norm_le M hM s z hs hz hstrip.2)
  have hplus :=
    polynomialKernel_norm_le
      (positivePolynomial (-z)) (s + 2 * z)
      (22050 * ‖z‖ ^ 8)
      (362880 * Real.exp (M + 1))
      (by
        simpa only [norm_neg] using
          positivePolynomial_coeff_norm_le (-z) hzn1)
      (by
        simpa only [norm_neg, mul_neg, sub_neg_eq_add] using
          shifted_J_norm_le M hM s (-z) hs
            (by simpa only [norm_neg] using hz)
            hnegstrip)
  have hmixed :=
    polynomialKernel_norm_le
      (mixedPolynomial z) s
      (22050 * ‖z‖ ^ 8) B
      (mixedPolynomial_coeff_norm_le z hz1)
      hunshifted
  have hweight :=
    modeCoefficient_norm_le z hz1
  have hmain :
      ‖sourceKernel z s‖ ≤
        (589824 * 396900 *
          (362880 * Real.exp (M + 1) + B)) /
          ‖z‖ ^ 6 := by
    unfold sourceKernel
    rw [norm_mul]
    calc
      _ ≤
          (589824 / ‖z‖ ^ 14) *
            (9 * (22050 * ‖z‖ ^ 8) *
                (362880 * Real.exp (M + 1)) +
              9 * (22050 * ‖z‖ ^ 8) *
                (362880 * Real.exp (M + 1)) +
              2 * (9 * (22050 * ‖z‖ ^ 8) * B)) := by
        gcongr
        calc
          _ ≤
              ‖polynomialKernel (positivePolynomial z)
                    (s - 2 * z) +
                  polynomialKernel (positivePolynomial (-z))
                    (s + 2 * z)‖ +
                ‖2 * polynomialKernel (mixedPolynomial z) s‖ :=
            norm_sub_le _ _
          _ ≤ _ := by
            rw [norm_mul]
            norm_num only [Complex.norm_ofNat]
            calc
              _ ≤
                  (‖polynomialKernel (positivePolynomial z)
                        (s - 2 * z)‖ +
                    ‖polynomialKernel (positivePolynomial (-z))
                        (s + 2 * z)‖) +
                    2 * ‖polynomialKernel
                      (mixedPolynomial z) s‖ := by
                gcongr
                exact norm_add_le _ _
              _ ≤ _ := by gcongr
      _ = _ := by
        field_simp
        ring
  have hr1 : 0 < 1 + ‖z‖ := by positivity
  have hpow :
      (1 + ‖z‖) ^ 6 ≤ 64 * ‖z‖ ^ 6 := by
    calc
      _ ≤ (2 * ‖z‖) ^ 6 := by
        gcongr
        linarith
      _ = _ := by ring
  have hinv :
      1 / ‖z‖ ^ 6 ≤
        64 / (1 + ‖z‖) ^ 6 := by
    apply (div_le_div_iff₀
      (by positivity) (by positivity)).2
    simpa only [one_mul] using hpow
  calc
    _ ≤ _ := hmain
    _ ≤
        (589824 * 396900 *
          (362880 * Real.exp (M + 1) + B)) *
          (64 / (1 + ‖z‖) ^ 6) := by
      rw [div_eq_mul_one_div]
      exact mul_le_mul_of_nonneg_left hinv
        (by positivity)
    _ =
        tailConstant M B *
          (1 + ‖z‖) ^ (-6 : ℝ) := by
      unfold tailConstant
      rw [show (-6 : ℝ) = -(6 : ℕ) by norm_num,
        Real.rpow_neg hr1.le, Real.rpow_natCast]
      ring

/-- Compactness away from zero bounds all nine unshifted exact `J_k`
kernels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuation/Variant50682a594c1d6acc4acfe91fb0c7b7a21a389bdd8e9d9bd29530e571ca89714a.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a3710f13556daec3ffb67a27b3cf5e7c9880df9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
