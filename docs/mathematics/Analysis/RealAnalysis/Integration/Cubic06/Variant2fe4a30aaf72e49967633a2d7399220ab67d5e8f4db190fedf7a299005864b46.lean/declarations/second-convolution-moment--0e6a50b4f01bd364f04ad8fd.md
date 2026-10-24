# second_convolution_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2599029-7b03-8675-65cb-73ff533b7fd0",
  "kind": "theorem",
  "lexical_name": "second_convolution_moment",
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
  "slug": "second-convolution-moment--0e6a50b4f01bd364f04ad8fd",
  "source": {
    "blob": "6a35087321e0d4d34d071cf12b15f1eca834e3cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e6a50b4f01bd364f04ad8fdc3fad5b064f57f13e8b1fdda6eff7cc9a9c119dd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2599029-7b03-8675-65cb-73ff533b7fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem second_convolution_moment (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g)
    (hsf : HasCompactSupport f) (hsg : HasCompactSupport g) :
    (∫ t : ℝ, t^2*(f ⋆ g) t) =
      (∫ x : ℝ, x^2*f x)*(∫ x : ℝ, g x)+
      2*(∫ x : ℝ, x*f x)*(∫ x : ℝ, x*g x)+
      (∫ x : ℝ, f x)*(∫ x : ℝ, x^2*g x) := by
  let f1 : ℝ → ℝ := fun x => x*f x
  let f2 : ℝ → ℝ := fun x => x^2*f x
  let g1 : ℝ → ℝ := fun x => x*g x
  let g2 : ℝ → ℝ := fun x => x^2*g x
  have hif := hf.integrable_of_hasCompactSupport (μ := volume) hsf
  have hig := hg.integrable_of_hasCompactSupport (μ := volume) hsg
  have hif1 : Integrable f1 := (continuous_id.mul hf).integrable_of_hasCompactSupport (μ := volume) hsf.mul_left
  have hig1 : Integrable g1 := (continuous_id.mul hg).integrable_of_hasCompactSupport (μ := volume) hsg.mul_left
  have hif2 : Integrable f2 := ((continuous_id.pow 2).mul hf).integrable_of_hasCompactSupport (μ := volume) hsf.mul_left
  have hig2 : Integrable g2 := ((continuous_id.pow 2).mul hg).integrable_of_hasCompactSupport (μ := volume) hsg.mul_left
  have he (t : ℝ) : t^2*(f ⋆ g) t = (f2 ⋆ g) t+2*(f1 ⋆ g1) t+(f ⋆ g2) t := by
    have hi1 : Integrable (fun x : ℝ => f2 x*g (t-x)) :=
      (((continuous_id.pow 2).mul hf).mul (hg.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport (μ := volume) hsf.mul_left.mul_right
    have hi2 : Integrable (fun x : ℝ => f1 x*g1 (t-x)) :=
      ((continuous_id.mul hf).mul ((continuous_const.sub continuous_id).mul
        (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport (μ := volume) hsf.mul_left.mul_right
    have hi3 : Integrable (fun x : ℝ => f x*g2 (t-x)) :=
      (hf.mul (((continuous_const.sub continuous_id).pow 2).mul
        (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport (μ := volume) hsf.mul_right
    simp only [convolution_lsmul,smul_eq_mul]
    have ha := integral_add hi1 (hi2.const_mul 2)
    have hb := integral_add (hi1.add (hi2.const_mul 2)) hi3
    simp only [Pi.add_apply] at ha hb
    rw [← integral_const_mul,← integral_const_mul,← ha,← hb]
    apply integral_congr_ae
    filter_upwards [] with x
    dsimp [f1,f2,g1,g2]
    ring
  have hi1 := hif2.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig
  have hi2 := hif1.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig1
  have hi3 := hif.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig2
  simp_rw [he]
  have ha := integral_add (hi1.add (hi2.const_mul 2)) hi3
  have hb := integral_add hi1 (hi2.const_mul 2)
  simp only [Pi.add_apply] at ha hb
  rw [ha,hb,integral_const_mul,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif2 hig,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif1 hig1,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif hig2]
  change (∫ x : ℝ, x^2*f x)*(∫ x : ℝ,g x)+
    2*((∫ x : ℝ,x*f x)*(∫ x : ℝ,x*g x))+
    (∫ x : ℝ,f x)*(∫ x : ℝ,x^2*g x) = _
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic06/Variant2fe4a30aaf72e49967633a2d7399220ab67d5e8f4db190fedf7a299005864b46.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a35087321e0d4d34d071cf12b15f1eca834e3cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
