# weighted_unit_integral_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b13f477235c1eaaf98659cadaab90ca581a499fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63484117-e98e-aca6-fd1d-a72d8162691a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37750115-4d0f-621b-bbb4-5643db5faf53",
  "kind": "theorem",
  "lexical_name": "weighted_unit_integral_bound",
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
  "slug": "weighted-unit-integral-bound--0eb945c93d7aad6ff0c236b8",
  "source": {
    "blob": "b13f477235c1eaaf98659cadaab90ca581a499fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 60,
    "path": "GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eb945c93d7aad6ff0c236b89658dc1e36098fc94604d274cc7767bb189a12bf",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37750115-4d0f-621b-bbb4-5643db5faf53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_unit_integral_bound (w : ℝ → ℝ) (hw : Continuous w)
    {C q σ : ℝ} (hσ : 0 < σ) (hgrowth : L2Growth w C q) (n : ℕ) :
    (∫ u in Icc (n : ℝ) ((n : ℝ) + 1),
      ‖Real.exp (-σ * u) * (1 + w u ^ 2)‖) ≤
      Real.exp (-σ * n) * (1 + C * (2 + n) ^ q) := by
  have hi : IntegrableOn (fun u => Real.exp (-σ * u) * (1 + w u ^ 2))
      (Icc (n : ℝ) ((n : ℝ) + 1)) := by
    exact ((continuous_const.mul continuous_id).rexp.mul
      (continuous_const.add (hw.pow 2))).integrableOn_Icc
  have hg : IntegrableOn (fun u => Real.exp (-σ * (n : ℝ)) * (1 + w u ^ 2))
      (Icc (n : ℝ) ((n : ℝ) + 1)) :=
    (continuous_const.mul (continuous_const.add (hw.pow 2))).integrableOn_Icc
  have hsq : IntegrableOn (fun u => w u ^ 2) (Icc 0 ((n : ℝ) + 1)) :=
    (hw.pow 2).integrableOn_Icc
  have hsqunit : IntegrableOn (fun u => w u ^ 2) (Icc (n : ℝ) ((n : ℝ) + 1)) :=
    (hw.pow 2).integrableOn_Icc
  have hsubset : Icc (n : ℝ) ((n : ℝ) + 1) ⊆ Icc 0 ((n : ℝ) + 1) := by
    intro u hu
    exact ⟨(Nat.cast_nonneg n).trans hu.1, hu.2⟩
  have hmass : (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), w u ^ 2) ≤
      C * (2 + n) ^ q := by
    calc
      _ ≤ ∫ u in Icc 0 ((n : ℝ) + 1), w u ^ 2 :=
        setIntegral_mono_set hsq (Eventually.of_forall (fun u => sq_nonneg (w u)))
          (Eventually.of_forall hsubset)
      _ ≤ _ := by
        simpa only [show (1 : ℝ) + (n + 1) = 2 + n by ring] using
          hgrowth ((n : ℝ) + 1) (by positivity)
  have hnorm : (fun u : ℝ => ‖Real.exp (-σ * u) * (1 + w u ^ 2)‖) =
      fun u => Real.exp (-σ * u) * (1 + w u ^ 2) := by
    funext u
    apply Real.norm_of_nonneg
    positivity
  rw [hnorm]
  calc
    _ ≤ ∫ u in Icc (n : ℝ) ((n : ℝ) + 1),
        Real.exp (-σ * (n : ℝ)) * (1 + w u ^ 2) := by
      apply setIntegral_mono_on hi hg measurableSet_Icc
      intro u hu
      apply mul_le_mul_of_nonneg_right _ (by positivity)
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonpos_left hu.1 (by linarith)
    _ = Real.exp (-σ * n) *
        (1 + (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), w u ^ 2)) := by
      rw [integral_const_mul,
        integral_add (f := fun _ : ℝ => (1 : ℝ)) (g := fun u : ℝ => w u ^ 2)
          (continuous_const.integrableOn_Icc) hsqunit,
        setIntegral_const, Real.volume_real_Icc_of_le (by linarith)]
      simp
    _ ≤ _ := mul_le_mul_of_nonneg_left (add_le_add_right hmass 1) (Real.exp_pos _).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b13f477235c1eaaf98659cadaab90ca581a499fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
