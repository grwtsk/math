# actual_logarithmic_integral_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36bfc507-90f3-2d45-33e2-e085d1df789f",
  "kind": "theorem",
  "lexical_name": "actual_logarithmic_integral_exact",
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
  "slug": "actual-logarithmic-integral-exact--74ae93d9fae1a4a309b343e3",
  "source": {
    "blob": "21480fdd2b682ac21a8eb8016e7006ceb6d1858d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 24,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualLogarithmicIntegral/Variant6ea14f56e6b6a87bbd983a1117535687183f434c5476198bacbe2323c768ba0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74ae93d9fae1a4a309b343e3e7d5b56da0298392dd44d23c3aff2b2d7c4a090a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualLogarithmicIntegral/Variant6ea14f56e6b6a87bbd983a1117535687183f434c5476198bacbe2323c768ba0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36bfc507-90f3-2d45-33e2-e085d1df789f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logarithmic_integral_exact {A r : ℝ} (hA : 1 ≤ A) (hr : 0 < r) :
    (∫ x in (1 : ℝ)..Real.exp (2 * A / r), logarithmicSample A r x) =
      (1 / r) * (∫ t in (0 : ℝ)..2 * A, Real.exp (t / r) * C A t) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ ↦ Real.exp (t / r))
      (Real.exp (t / r) / r) t := by
    convert ((hasDerivAt_id t).div_const r).exp using 1 <;> simp [div_eq_mul_inv]
  have hg : ContinuousOn (logarithmicSample A r) (Ioi 0) :=
    fun x hx ↦ (actual_logarithmic_hasDerivAt hA r hx).continuousAt.continuousWithinAt
  have h := intervalIntegral.integral_comp_mul_deriv'
    (a := (0 : ℝ)) (b := 2 * A) (fun t _ ↦ hd t)
    ((Real.continuous_exp.comp (continuous_id.div_const r)).div_const r).continuousOn
    (hg.mono (by rintro _ ⟨t, _, rfl⟩; exact Real.exp_pos _))
  have heq : (fun t : ℝ ↦ (logarithmicSample A r ∘ fun t ↦ Real.exp (t / r)) t *
      (Real.exp (t / r) / r)) =
      fun t ↦ (1 / r) * (Real.exp (t / r) * C A t) := by
    funext t
    simp only [Function.comp_apply, logarithmicSample, Real.log_exp]
    rw [mul_div_cancel₀ t hr.ne']
    ring
  rw [heq, intervalIntegral.integral_const_mul] at h
  simpa only [zero_div, Real.exp_zero] using h.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualLogarithmicIntegral/Variant6ea14f56e6b6a87bbd983a1117535687183f434c5476198bacbe2323c768ba0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualLogarithmicIntegral/Variant6ea14f56e6b6a87bbd983a1117535687183f434c5476198bacbe2323c768ba0e.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21480fdd2b682ac21a8eb8016e7006ceb6d1858d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
