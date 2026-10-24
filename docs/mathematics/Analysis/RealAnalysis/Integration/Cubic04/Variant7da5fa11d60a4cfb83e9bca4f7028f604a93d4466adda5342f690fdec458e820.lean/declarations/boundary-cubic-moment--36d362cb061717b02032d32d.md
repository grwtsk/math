# boundary_cubic_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a99e6b1f-b88f-1f0d-8f06-d418f7aba85e",
  "kind": "theorem",
  "lexical_name": "boundary_cubic_moment",
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
  "slug": "boundary-cubic-moment--36d362cb061717b02032d32d",
  "source": {
    "blob": "76df43958bedc84f601e9a4ebbec88d11c4ae2a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 248,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic04/Variant7da5fa11d60a4cfb83e9bca4f7028f604a93d4466adda5342f690fdec458e820.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36d362cb061717b02032d32ddc3f385834a2025dc043c2ee7c8af8ca4f45b6be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic04/Variant7da5fa11d60a4cfb83e9bca4f7028f604a93d4466adda5342f690fdec458e820.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a99e6b1f-b88f-1f0d-8f06-d418f7aba85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_cubic_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ y in 0..4*A, y^3*boundaryWorkKernel A y) =
      6*A^9*Real.exp (-A)*primitivePoleMoment A^2 := by
  let f := criticalPrimeTest A
  have hsup : Function.support f ⊆ Icc (-(2*A)) (2*A) := by
    intro t ht
    have hc : sourceCorrelation explicitSecondDerivative A t ≠ 0 := by
      intro hn
      exact ht (by simp [f,criticalPrimeTest,hn])
    have ht' : |t| < 2*A := by
      by_contra hn
      exact hc (sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith) (le_of_not_gt hn))
    exact ⟨by linarith [neg_abs_le t],(le_abs_self t).trans ht'.le⟩
  have hts : tsupport f ⊆ Icc (-(2*A)) (2*A) := closure_minimal hsup isClosed_Icc
  have hdout (t : ℝ) (ht : t ∉ Icc (-(2*A)) (2*A)) : deriv f t=0 := by
    by_contra hn
    exact ht (hts (support_deriv_subset hn))
  have hfull : (∫ t : ℝ, (2*A-t)^3*deriv f t) =
      ∫ t in -(2*A)..2*A, (2*A-t)^3*deriv f t := by
    calc
      _ = ∫ t : ℝ, (Icc (-(2*A)) (2*A)).indicator (fun t => (2*A-t)^3*deriv f t) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2*A)) (2*A)
        · rw [indicator_of_mem ht]
        · rw [indicator_of_notMem ht,hdout t ht,mul_zero]
      _ = _ := zeroExtension_integral _ _ _ (by linarith)
  have href := intervalIntegral.integral_comp_sub_left
    (fun t : ℝ => (2*A-t)^3*deriv f t) (a := 0) (b := 4*A) (2*A)
  have he (y : ℝ) : y^3*boundaryWorkKernel A y =
      (A^9*Real.exp (-A))*((2*A-(2*A-y))^3*deriv f (2*A-y)) := by
    dsimp [boundaryWorkKernel,f]
    ring
  simp_rw [he]
  rw [intervalIntegral.integral_const_mul]
  have hr : (∫ y in 0..4*A, (2*A-(2*A-y))^3*deriv f (2*A-y)) =
      ∫ t in -(2*A)..2*A, (2*A-t)^3*deriv f t := by
    simpa only [show 2*A-4*A=-(2*A) by ring,sub_zero] using href
  rw [hr,← hfull,reflected_cubic_derivative_integral hA]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic04/Variant7da5fa11d60a4cfb83e9bca4f7028f604a93d4466adda5342f690fdec458e820.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic04/Variant7da5fa11d60a4cfb83e9bca4f7028f604a93d4466adda5342f690fdec458e820.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76df43958bedc84f601e9a4ebbec88d11c4ae2a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
