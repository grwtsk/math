# autocorr_deriv_facts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1782625-b40f-5f8a-7766-467ed2e42863",
  "kind": "theorem",
  "lexical_name": "autocorr_deriv_facts",
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
  "slug": "autocorr-deriv-facts--5c6f9eb8e17cbf5e35f839d2",
  "source": {
    "blob": "a019f028b82eba44fbc64defaec246667013fd7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1757,
    "line": 1711,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c6f9eb8e17cbf5e35f839d20e39c3df13f25168a354f62eb9a0e15e69f92f43",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1782625-b40f-5f8a-7766-467ed2e42863`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1711–1757.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem autocorr_deriv_facts (hC : ContDiff ℝ 1 h) (hcs : HasCompactSupport h)
    (heven : ∀ x : ℝ, h (-x) = h x) (hb : ∀ u : ℝ, |h u| ≤ 1)
    (hI : ∫ u, |deriv h u| ≤ 2) :
    Differentiable ℝ (Params.autocorr h) ∧ Continuous (deriv (Params.autocorr h))
      ∧ ∀ y : ℝ, |deriv (Params.autocorr h) y| ≤ 2 := by
  have hloc : MeasureTheory.LocallyIntegrable h MeasureTheory.volume :=
    (hC.continuous.integrable_of_hasCompactSupport hcs).locallyIntegrable
  have hD : ∀ y : ℝ, HasDerivAt (Params.autocorr h)
      ((h ⋆[ContinuousLinearMap.mul ℝ ℝ] deriv h) y) y := by
    intro y
    rw [autocorr_eq_conv heven]
    exact HasCompactSupport.hasDerivAt_convolution_right _ hloc hcs hC y
  have hdiff : Differentiable ℝ (Params.autocorr h) := fun y => (hD y).differentiableAt
  have hderiv_eq : deriv (Params.autocorr h) = h ⋆[ContinuousLinearMap.mul ℝ ℝ] deriv h :=
    funext fun y => (hD y).deriv
  have hcs' : HasCompactSupport (deriv h) := hcs.deriv
  have hcont' : Continuous (deriv h) := hC.continuous_deriv le_rfl
  refine ⟨hdiff, ?_, ?_⟩
  · rw [hderiv_eq]
    exact hcs'.continuous_convolution_right _ hloc hcont'
  · intro y
    rw [hderiv_eq]
    show |∫ t, h t * deriv h (y - t)| ≤ 2
    have hint' : MeasureTheory.Integrable (fun t => deriv h (y - t)) := by
      have h1 : MeasureTheory.Integrable (deriv h) :=
        hcont'.integrable_of_hasCompactSupport hcs'
      have h2 := h1.comp_sub_left y
      exact h2
    calc |∫ t, h t * deriv h (y - t)| ≤ ∫ t, |h t * deriv h (y - t)| :=
          MeasureTheory.abs_integral_le_integral_abs
      _ ≤ ∫ t, |deriv h (y - t)| := by
          apply MeasureTheory.integral_mono_of_nonneg
            (MeasureTheory.ae_of_all _ fun t => abs_nonneg _) hint'.abs
            (MeasureTheory.ae_of_all _ fun t => ?_)
          show |h t * deriv h (y - t)| ≤ |deriv h (y - t)|
          rw [abs_mul]
          calc |h t| * |deriv h (y - t)| ≤ 1 * |deriv h (y - t)| :=
                mul_le_mul_of_nonneg_right (hb t) (abs_nonneg _)
            _ = |deriv h (y - t)| := one_mul _
      _ = ∫ t, |deriv h t| := by
          have := MeasureTheory.integral_sub_left_eq_self (fun t => |deriv h t|)
            (μ := MeasureTheory.volume) y
          exact this
      _ ≤ 2 := hI

/-- the φ_D²-instance: g_D := autocorr(φ_D²) is C¹ with |g_D'| ≤ 2 (the paper's
"|g'| ≤ ‖(φ²)'‖₁ ≤ 2"), the exact hypotheses of ThmD/PP.sumA2g_close. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variantedd82338571ed2949f73603c8133f037d99cfa2dd79ef90b86a733cfbe3f46b7.lean#L1711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a019f028b82eba44fbc64defaec246667013fd7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
