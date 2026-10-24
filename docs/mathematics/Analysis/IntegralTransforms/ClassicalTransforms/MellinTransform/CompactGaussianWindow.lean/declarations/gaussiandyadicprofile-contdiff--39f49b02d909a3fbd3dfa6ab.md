# gaussianDyadicProfile_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dd4dae4-0e37-8ad6-df3d-b7b4b6f8ee97",
  "kind": "lemma",
  "lexical_name": "gaussianDyadicProfile_contDiff",
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
  "slug": "gaussiandyadicprofile-contdiff--39f49b02d909a3fbd3dfa6ab",
  "source": {
    "blob": "bf939b35c7cb08c3dc0e26b5dfbac6fed6667c7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 66,
    "path": "GRWTSK/Analysis/MellinTransform/CompactGaussianWindow.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39f49b02d909a3fbd3dfa6ab04581983205a055cc18b229ed2552a7e5c7625f9",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dd4dae4-0e37-8ad6-df3d-b7b4b6f8ee97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianDyadicProfile_contDiff (Z : ℝ) (hZ : 0<Z) (j : ℕ) :
    ContDiff ℝ ∞ (gaussianDyadicProfile Z j) := by
  rw [contDiff_iff_contDiffAt]
  intro y
  by_cases hy : 0<y
  · have he : gaussianDyadicProfile Z j =ᶠ[𝓝 y]
        (fun x : ℝ=>dyadicAnnulus x*
          (((1/(2*Real.pi):ℝ):ℂ)*(Real.pi:ℂ)^(1/2:ℂ)*
            (Real.exp (-(Real.log ((2:ℝ)^j*x/Z))^2/4):ℂ))/(Real.sqrt x:ℂ)) := by
      filter_upwards [eventually_gt_nhds hy] with x hx
      rw [gaussianDyadicProfile,gaussianMellinProfile_real _ (div_pos (mul_pos (by positivity) hx) hZ)]
    apply ContDiffAt.congr_of_eventuallyEq _ he
    have hq : (2:ℝ)^j*y/Z≠0 := ne_of_gt (div_pos (mul_pos (by positivity) hy) hZ)
    have hs : (Real.sqrt y:ℂ)≠0 := Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr hy).ne'
    have ha := dyadicAnnulus_contDiff.contDiffAt (x:=y)
    have hl : ContDiffAt ℝ ∞ (fun x : ℝ=>Real.log ((2:ℝ)^j*x/Z)) y :=
      (show ContDiffAt ℝ ∞ (fun x : ℝ=>(2:ℝ)^j*x/Z) y by fun_prop).log hq
    have hg : ContDiffAt ℝ ∞ (fun x : ℝ=>Real.exp (-(Real.log ((2:ℝ)^j*x/Z))^2/4)) y :=
      ((hl.pow 2).neg.div_const 4).exp
    have hgC := Complex.ofRealCLM.contDiff.contDiffAt.comp y hg
    have hsR : ContDiffAt ℝ ∞ Real.sqrt y := Real.contDiffAt_sqrt hy.ne'
    have ht : ContDiffAt ℝ ∞ (fun x : ℝ=>dyadicAnnulus x*
        (((1/(2*Real.pi):ℝ):ℂ)*(Real.pi:ℂ)^(1/2:ℂ)*
          (Real.exp (-(Real.log ((2:ℝ)^j*x/Z))^2/4):ℂ))) y :=
      ha.mul (contDiffAt_const.mul hgC)
    have hsc : ContDiffAt ℝ ∞ (fun x : ℝ=>(Real.sqrt x:ℂ)) y :=
      Complex.ofRealCLM.contDiff.contDiffAt.comp y hsR
    simpa only [div_eq_mul_inv] using ht.mul (hsc.fun_inv hs)
  · apply contDiffAt_const.congr_of_eventuallyEq
    filter_upwards [eventually_lt_nhds (show y<(1/2:ℝ) by linarith)] with x hx
    exact gaussianDyadicProfile_small Z j x hx.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/CompactGaussianWindow.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/CompactGaussianWindow.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf939b35c7cb08c3dc0e26b5dfbac6fed6667c7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
