# intervalIntegrable_cpow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3524f27b-ba71-2d4a-b3db-339298c2d994",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable_cpow'",
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
  "slug": "intervalintegrable-cpow--cb1afcac07bdea4d2f47ad46",
  "source": {
    "blob": "f6216c9d48603150583ae8056356cb9e25ed4246",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb1afcac07bdea4d2f47ad461738a140c79bdc66e55f1660d8ca3a5e195a3f82",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3524f27b-ba71-2d4a-b3db-339298c2d994`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable_cpow' {r : ℂ} (h : -1 < r.re) :
    IntervalIntegrable (fun x : ℝ => (x : ℂ) ^ r) volume a b := by
  suffices ∀ c : ℝ, IntervalIntegrable (fun x => (x : ℂ) ^ r) volume 0 c by
    exact IntervalIntegrable.trans (this a).symm (this b)
  have : ∀ c : ℝ, 0 ≤ c → IntervalIntegrable (fun x => (x : ℂ) ^ r) volume 0 c := by
    intro c hc
    rw [← IntervalIntegrable.intervalIntegrable_norm_iff]
    · rw [intervalIntegrable_iff]
      apply IntegrableOn.congr_fun
      · rw [← intervalIntegrable_iff]; exact intervalIntegral.intervalIntegrable_rpow' h
      · intro x hx
        rw [uIoc_of_le hc] at hx
        dsimp only
        rw [Complex.norm_eq_abs, Complex.abs_cpow_eq_rpow_re_of_pos hx.1]
      · exact measurableSet_uIoc
    · refine' ContinuousOn.aestronglyMeasurable _ measurableSet_uIoc
      refine' ContinuousAt.continuousOn fun x hx => _
      rw [uIoc_of_le hc] at hx
      refine' (continuousAt_cpow_const (Or.inl _)).comp Complex.continuous_ofReal.continuousAt
      rw [Complex.ofReal_re]
      exact hx.1
  intro c; rcases le_total 0 c with (hc | hc)
  · exact this c hc
  · rw [IntervalIntegrable.iff_comp_neg, neg_zero]
    have m := (this (-c) (by linarith)).const_mul (Complex.exp (π * Complex.I * r))
    rw [intervalIntegrable_iff, uIoc_of_le (by linarith : 0 ≤ -c)] at m ⊢
    refine' m.congr_fun (fun x hx => _) measurableSet_Ioc
    dsimp only
    have : -x ≤ 0 := by linarith [hx.1]
    rw [Complex.ofReal_cpow_of_nonpos this, mul_comm]
    simp
#align interval_integral.interval_integrable_cpow' intervalIntegral.intervalIntegrable_cpow'

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Integrals/Variantb94b35ac784a98fd367bb7c387eb1285c3fc3a494985d9f9e46512176715a712.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6216c9d48603150583ae8056356cb9e25ed4246` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
