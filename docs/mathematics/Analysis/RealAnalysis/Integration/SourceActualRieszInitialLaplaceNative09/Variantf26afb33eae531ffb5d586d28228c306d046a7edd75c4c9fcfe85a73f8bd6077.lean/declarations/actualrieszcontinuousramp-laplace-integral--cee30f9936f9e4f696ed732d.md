# actualRieszContinuousRamp_laplace_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:645d92bb-6ee7-636d-6434-e95801d1f9cc",
  "kind": "theorem",
  "lexical_name": "actualRieszContinuousRamp_laplace_integral",
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
  "slug": "actualrieszcontinuousramp-laplace-integral--cee30f9936f9e4f696ed732d",
  "source": {
    "blob": "b4dc5e9f4373a233442f95e7dce6c8d55c0532db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 472,
    "line": 429,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cee30f9936f9e4f696ed732d8866be81b9a3c1bdce64ed9262250771f6de6315",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:645d92bb-6ee7-636d-6434-e95801d1f9cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRieszContinuousRamp_laplace_integral {z : ℂ} (hz : 1 / 2 < z.re) :
    (∫ t in Ioi 0, (actualRieszContinuousRamp t : ℂ) *
      Complex.exp (-z * (t : ℂ))) = 1 / (z^2 * (z - 1 / 2)) := by
  have h0 := integrableOn_exp_mul_complex_Ioi (a := -z) (by simp; linarith) 0
  have hh := integrableOn_exp_mul_complex_Ioi (a := -(z - 1 / 2))
    (by simp; linarith) 0
  have ht : IntegrableOn (fun t : ℝ => (t : ℂ) * Complex.exp (-z * (t : ℂ)))
      (Ioi 0) := by
    apply (actualSingleRieszRamp_integrable (by linarith : 0 < z.re)
      (a := 0) le_rfl).congr_fun _ measurableSet_Ioi
    intro t ht
    have htn : 0 ≤ t := (show 0 < t from ht).le
    simp only [sub_zero, max_eq_right htn]
  have hti : (∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-z * (t : ℂ))) = 1 / z^2 := by
    convert! actualSingleRieszRamp_integral (by linarith : 0 < z.re) (a := 0) le_rfl
      using 1
    · apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      have htn : 0 ≤ t := (show 0 < t from ht).le
      simp only [sub_zero, max_eq_right htn]
    · simp
  simp_rw [continuousRamp_weight_eq]
  have hsplit1 := integral_sub ((hh.const_mul 4).sub (h0.const_mul 4))
    (ht.const_mul 2)
  have hsplit2 := integral_sub (hh.const_mul 4) (h0.const_mul 4)
  simp only [Pi.sub_apply] at hsplit1 hsplit2
  rw [hsplit1, hsplit2, integral_const_mul, integral_const_mul,
    integral_const_mul, hti, integral_exp_mul_complex_Ioi (by simp; linarith),
    integral_exp_mul_complex_Ioi (by simp; linarith)]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero]
  have hzn : z ≠ 0 := by intro h; norm_num [h] at hz
  have hhn : z - 1 / 2 ≠ 0 := by
    intro h
    have := congrArg Complex.re h
    simp at this
    linarith
  have h2 : -1 + z * 2 ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    simp at hr
    linarith
  field_simp [hzn, hhn, h2]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszInitialLaplaceNative09/Variantf26afb33eae531ffb5d586d28228c306d046a7edd75c4c9fcfe85a73f8bd6077.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4dc5e9f4373a233442f95e7dce6c8d55c0532db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
