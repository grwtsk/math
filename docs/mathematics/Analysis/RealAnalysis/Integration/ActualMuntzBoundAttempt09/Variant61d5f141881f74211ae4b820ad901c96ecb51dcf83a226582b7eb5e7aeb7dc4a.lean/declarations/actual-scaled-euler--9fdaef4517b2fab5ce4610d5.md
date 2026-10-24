# actual_scaled_Euler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c2e80c9-fef0-54e1-4a19-9bcf7d388fc0",
  "kind": "theorem",
  "lexical_name": "actual_scaled_Euler",
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
  "slug": "actual-scaled-euler--9fdaef4517b2fab5ce4610d5",
  "source": {
    "blob": "8e252ca47e6a88b3e665b276e2c256cafcfa7b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 125,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variant61d5f141881f74211ae4b820ad901c96ecb51dcf83a226582b7eb5e7aeb7dc4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fdaef4517b2fab5ce4610d58aa57727b24776b81c2b40609f500abbefc8ab4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variant61d5f141881f74211ae4b820ad901c96ecb51dcf83a226582b7eb5e7aeb7dc4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c2e80c9-fef0-54e1-4a19-9bcf7d388fc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_scaled_Euler {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    actualMuntz A x = ∫ t in Set.Ioc 0 (Real.exp A/x),
      deriv (fun u : ℝ => actualLogSource A (x*u)) t *eulerWeight t := by
  let g : ℝ → ℝ := fun u => actualLogSource A (x*u)
  have hg : ContDiff ℝ 1 g := (actualLogSource_contDiff (show 0<A by linarith)).comp
    (contDiff_const.mul contDiff_id)
  have hi : IntegrableOn (deriv g) (Set.Icc 0 (Real.exp A/x)) :=
    hg.continuous_deriv_one.continuousOn.integrableOn_Icc
  have hf := integrableOn_mul_sum_Icc (m:=0) (fun _ : ℕ => (1:ℝ)) (by norm_num : (0:ℝ)≤0) hi
  simp only [Finset.sum_const,Nat.card_Icc,Nat.sub_zero,nsmul_eq_mul,mul_one,
    Nat.cast_add,Nat.cast_one] at hf
  have hl : IntegrableOn (fun t : ℝ => t*deriv g t) (Set.Icc 0 (Real.exp A/x)) :=
    (continuous_id.mul hg.continuous_deriv_one).continuousOn.integrableOn_Icc
  have he (t : ℝ) : deriv g t *eulerWeight t = t*deriv g t-deriv g t*((⌊t⌋₊:ℝ)+1) := by
    unfold eulerWeight
    ring
  simp_rw [show deriv (fun u : ℝ => actualLogSource A (x*u))=deriv g from rfl,he]
  rw [integral_sub (hl.mono_set Set.Ioc_subset_Icc_self) (hf.mono_set Set.Ioc_subset_Icc_self)]
  have hz := actual_scaled_linear_derivative_integral_zero hA hx
  rw [intervalIntegral.integral_of_le (div_nonneg (Real.exp_pos A).le hx.le)] at hz
  rw [show (∫ t in Set.Ioc 0 (Real.exp A/x), t*deriv g t)=0 from hz,zero_sub]
  exact actual_scaled_Abel hA hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variant61d5f141881f74211ae4b820ad901c96ecb51dcf83a226582b7eb5e7aeb7dc4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMuntzBoundAttempt09/Variant61d5f141881f74211ae4b820ad901c96ecb51dcf83a226582b7eb5e7aeb7dc4a.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e252ca47e6a88b3e665b276e2c256cafcfa7b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
