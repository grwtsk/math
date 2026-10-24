# local_scaleRemainder_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15b22662-1973-22b1-2a6b-e28efab4cf0e",
  "kind": "theorem",
  "lexical_name": "local_scaleRemainder_bound",
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
  "slug": "local-scaleremainder-bound--2d14e59b1a78880fb6a850d9",
  "source": {
    "blob": "57b7a9a151c8aa59b1ea690e00cc6a27e2b92739",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 356,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant6f47eb6b2372ce188a7c7f27c80582ed9f20ddfd36a32fbc3df89ae73600cabb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d14e59b1a78880fb6a850d955e4ee16b21d034215b003efdbe194f5e26d5eaa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant6f47eb6b2372ce188a7c7f27c80582ed9f20ddfd36a32fbc3df89ae73600cabb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b22662-1973-22b1-2a6b-e28efab4cf0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_scaleRemainder_bound {A K : ℝ} (hA : 0 < A) (hK : 0 ≤ K)
    (hbound : ∀ B ∈ Icc (A / 2) (3 * A / 2), ∀ x : ℝ, |scaleDerivative B x| ≤ K)
    {B : ℝ} (hB : B ∈ Icc (A / 2) (3 * A / 2)) (x : ℝ) :
    |scaleRemainder A B x| ≤ 2 * K := by
  have hAm : A ∈ Icc (A / 2) (3 * A / 2) := ⟨by linarith, by linarith⟩
  have hs := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
    (f := fun C : ℝ => normalizedTest explicitSecondDerivative C x)
    (f' := fun C : ℝ => scaleDerivative C x)
    (fun C hC => (normalizedSource_hasDerivAt (by have := hC.1; linarith) x).hasDerivWithinAt)
    (fun C hC => by simpa only [Real.norm_eq_abs] using hbound C hC x)
    (convex_Icc _ _) hAm hB
  simp only [Real.norm_eq_abs] at hs
  by_cases hBA : B = A
  · simp [scaleRemainder, hBA, hK]
  · have hd : 0 < |B - A| := abs_pos.mpr (sub_ne_zero.mpr hBA)
    have hr : |normalizedTest explicitSecondDerivative B x -
        normalizedTest explicitSecondDerivative A x - (B - A) * scaleDerivative A x| ≤
        2 * K * |B - A| := by
      calc
        _ ≤ |normalizedTest explicitSecondDerivative B x -
            normalizedTest explicitSecondDerivative A x| + |(B - A) * scaleDerivative A x| :=
          abs_sub _ _
        _ ≤ K * |B - A| + |B - A| * K := by
          rw [abs_mul]
          gcongr
          exact hbound A hAm x
        _ = _ := by ring
    rw [scaleRemainder, abs_mul, abs_inv]
    calc
      _ ≤ |B - A|⁻¹ * (2 * K * |B - A|) :=
        mul_le_mul_of_nonneg_left hr (inv_nonneg.mpr hd.le)
      _ = _ := by field_simp

/-- The quotient remainder also vanishes outside the same fixed local support. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant6f47eb6b2372ce188a7c7f27c80582ed9f20ddfd36a32fbc3df89ae73600cabb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/114FormalResearchRiemannHypothesisSourceScaleDerivative/Variant6f47eb6b2372ce188a7c7f27c80582ed9f20ddfd36a32fbc3df89ae73600cabb.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57b7a9a151c8aa59b1ea690e00cc6a27e2b92739` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
