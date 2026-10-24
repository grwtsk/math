# balancedFirstPrimeHead_abs_le_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d04086c-ce16-2b4a-ac73-7dec098bc9a2",
  "kind": "theorem",
  "lexical_name": "balancedFirstPrimeHead_abs_le_sharp",
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
  "slug": "balancedfirstprimehead-abs-le-sharp--e299e0cfef333b5121afe815",
  "source": {
    "blob": "58d4453509f7500d7f4156131806e929d056ea1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant01841a6808c18a7456f2f282f670346ce49419f57aae1252cecdf5a5236db317.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e299e0cfef333b5121afe815d1f2a751671877dabe9fec19cbc911e32b1094af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant01841a6808c18a7456f2f282f670346ce49419f57aae1252cecdf5a5236db317.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d04086c-ce16-2b4a-ac73-7dec098bc9a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedFirstPrimeHead_abs_le_sharp {A : ℝ} (hA : 91 ≤ A) :
    |balancedFirstPrimeHead A| ≤ sharpBalancedHeadCost A := by
  have hApos : 0 < A := by linarith
  obtain ⟨hL, hH⟩ := floor_head_orders hA
  let k : ℝ := 10 / A^2
  let f : ℝ → ℝ := fun t =>
    k * (1 + t / 2) * (Real.exp (t / 2) - Real.sqrt 7)
  have he7 : Real.exp (Real.log 7 / 2) = Real.sqrt 7 := by
    rw [Real.exp_half, Real.exp_log (by norm_num : (0 : ℝ) < 7)]
  have hf : ∀ t : ℝ, Real.log 7 ≤ t → 0 ≤ f t := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht
    have he : Real.sqrt 7 ≤ Real.exp (t / 2) := by
      rw [← he7]
      exact Real.exp_le_exp.mpr (by linarith)
    dsimp [f, k]
    positivity
  have hi (b : ℝ) : IntervalIntegrable f volume (Real.log 7) b :=
    (by dsimp [f]; fun_prop : Continuous f).intervalIntegrable _ _
  have hp : ∀ t ∈ Ioc (Real.log 7) (Real.log (⌊A^2⌋₊ : ℝ)),
      ‖balancedFirstPrimePrimitive t * actualXiCurvature A t‖ ≤ f t := by
    intro t ht
    have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht.1.le
    have hF := balancedFirstPrimePrimitive_abs_le ht.1.le
    have hK := actualXiCurvature_abs_le hA ht0
    have he : 0 ≤ Real.exp (t / 2) - Real.sqrt 7 := by
      have hh := Real.exp_le_exp.mpr (show Real.log 7 / 2 ≤ t / 2 by linarith [ht.1])
      rw [he7] at hh
      linarith
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (2 * (Real.exp (t / 2) - Real.sqrt 7)) *
          (5 / A^2 * (1 + t / 2)) :=
        mul_le_mul hF hK (abs_nonneg _) (by positivity)
      _ = f t := by dsimp [f, k]; ring
  have hn := intervalIntegral.norm_integral_le_of_norm_le hL (ae_of_all _ hp)
    (hi (Real.log (⌊A^2⌋₊ : ℝ)))
  have hm := intervalIntegral.integral_mono_interval (le_refl (Real.log 7)) hL hH
    (by filter_upwards [ae_restrict_mem measurableSet_Ioc] with t ht
        exact hf t ht.1.le) (hi (2 * Real.log A))
  have hd (t : ℝ) : HasDerivAt
      (fun t => k * (t * Real.exp (t / 2) - Real.sqrt 7 * (t + t^2 / 4)))
      (f t) t := by
    convert! ((((hasDerivAt_id t).mul (((hasDerivAt_id t).div_const 2).exp)).sub
      (((hasDerivAt_id t).add ((hasDerivAt_id t).pow 2 |>.div_const 4)).const_mul
        (Real.sqrt 7))).const_mul k) using 1
    dsimp [f]
    ring
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => hd t) (hi (2 * Real.log A))
  have hea : Real.exp (2 * Real.log A / 2) = A := by
    rw [show 2 * Real.log A / 2 = Real.log A by ring, Real.exp_log hApos]
  rw [he, he7, hea] at hm
  rw [Real.norm_eq_abs] at hn
  have heq :
      k * (2 * Real.log A * A - Real.sqrt 7 *
        (2 * Real.log A + (2 * Real.log A)^2 / 4)) -
      k * (Real.log 7 * Real.sqrt 7 - Real.sqrt 7 *
        (Real.log 7 + (Real.log 7)^2 / 4)) = sharpBalancedHeadCost A := by
    dsimp [k, sharpBalancedHeadCost]
    field_simp
    ring
  rw [heq] at hm
  change |∫ t in Real.log 7..Real.log (⌊A^2⌋₊ : ℝ),
    balancedFirstPrimePrimitive t * actualXiCurvature A t| ≤ _ at hn
  simpa only [balancedFirstPrimeHead, abs_neg] using hn.trans hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant01841a6808c18a7456f2f282f670346ce49419f57aae1252cecdf5a5236db317.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSharpBalancedFirstPrimeHead/Variant01841a6808c18a7456f2f282f670346ce49419f57aae1252cecdf5a5236db317.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58d4453509f7500d7f4156131806e929d056ea1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
