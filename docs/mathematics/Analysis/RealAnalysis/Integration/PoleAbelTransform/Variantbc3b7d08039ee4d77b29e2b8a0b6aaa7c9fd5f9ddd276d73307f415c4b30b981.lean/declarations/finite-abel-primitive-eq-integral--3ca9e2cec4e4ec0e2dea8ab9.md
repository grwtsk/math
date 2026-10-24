# finite_abel_primitive_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e762f320-e9b8-57bd-3bc7-1767eb879f7e",
  "kind": "theorem",
  "lexical_name": "finite_abel_primitive_eq_integral",
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
  "slug": "finite-abel-primitive-eq-integral--3ca9e2cec4e4ec0e2dea8ab9",
  "source": {
    "blob": "a7591c27a10789f3c567253d2d32e766216b951c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ca9e2cec4e4ec0e2dea8ab944fa131fb4e00bfd20522516bd2bcd19158b5184",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e762f320-e9b8-57bd-3bc7-1767eb879f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_abel_primitive_eq_integral (S : Finset ℕ) (threshold weight : ℕ → ℝ)
    (hthreshold : ∀ n ∈ S, 0 ≤ threshold n) (t : ℝ) (ht : 0 ≤ t) :
    finiteAbelPrimitive S threshold weight t =
      ∫ x in (0 : ℝ)..t, finiteAbelError S threshold weight x := by
  have hs : IntervalIntegrable (finiteStepCount S threshold weight) volume 0 t := by
    have hi : IntervalIntegrable (∑ n ∈ S, fun x : ℝ ↦
        weight n * (if threshold n ≤ x then (1 : ℝ) else 0)) volume 0 t :=
      IntervalIntegrable.sum S (fun n _ ↦
        (intervalIntegrable_closed_step 0 t (threshold n) (fun _ ↦ (1 : ℝ))
          (continuous_const.intervalIntegrable 0 t)).const_mul (weight n))
    have heq : (∑ n ∈ S, fun x : ℝ ↦
        weight n * (if threshold n ≤ x then (1 : ℝ) else 0)) =
        finiteStepCount S threshold weight := by
      funext x
      simp only [finiteStepCount, Finset.sum_apply]
    rw [← heq]
    exact hi
  have he : (∫ x in (0 : ℝ)..t, Real.exp x - 1) = Real.exp t - 1 - t := by
    rw [intervalIntegral.integral_sub (Real.continuous_exp.intervalIntegrable 0 t)
      (continuous_const.intervalIntegrable 0 t), integral_exp,
      intervalIntegral.integral_const]
    simp
  have hce : Continuous (fun x : ℝ ↦ Real.exp x - 1) := by fun_prop
  unfold finiteAbelError
  rw [intervalIntegral.integral_sub hs (hce.intervalIntegrable 0 t), he]
  unfold finiteStepCount finiteAbelPrimitive
  rw [intervalIntegral.integral_finsetSum]
  · simp_rw [intervalIntegral.integral_const_mul]
    congr 1
    exact Finset.sum_congr rfl (fun n hn ↦ by
      rw [integral_closed_step_one (threshold n) t (hthreshold n hn) ht])
  · intro n _
    exact (intervalIntegrable_closed_step 0 t (threshold n) (fun _ ↦ (1 : ℝ))
      (continuous_const.intervalIntegrable 0 t)).const_mul (weight n)

/-- A smooth test turns a single arithmetic ramp into its exact threshold evaluation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7591c27a10789f3c567253d2d32e766216b951c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
