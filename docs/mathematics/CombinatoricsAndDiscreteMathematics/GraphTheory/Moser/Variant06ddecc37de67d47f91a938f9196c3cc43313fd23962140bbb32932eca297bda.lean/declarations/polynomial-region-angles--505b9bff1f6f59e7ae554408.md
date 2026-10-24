# polynomial_region_angles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fda1a26d-a6a0-bf7d-9248-f4a2423c9924",
  "kind": "lemma",
  "lexical_name": "polynomial_region_angles",
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
  "slug": "polynomial-region-angles--505b9bff1f6f59e7ae554408",
  "source": {
    "blob": "a0a3b51f79d7d730dc1f8d0a69e09a0364f57f7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:505b9bff1f6f59e7ae5544088d928e335c02a12a22935b3fc400d0cf165b7373",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fda1a26d-a6a0-bf7d-9248-f4a2423c9924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma polynomial_region_angles {z : ℂ} (hz : ThreeLabelRegion z.re z.im) :
    ∃ t u : ℝ, (Circle.exp t : ℂ)+(Circle.exp u : ℂ)=z ∧
      Real.sin (u-t)≠0 ∧ Real.sin (3*t)*Real.sin (3*u)<0 := by
  let r : ℝ := ‖z‖
  let p : ℝ := z.arg
  let d : ℝ := Real.arccos (r/2)
  have hr2 : r^2=z.re^2+z.im^2 := by
    change ‖z‖^2=_
    rw [Complex.sq_norm,Complex.normSq_apply]
    ring
  have hr0 : 0<r := by
    have hn : 0≤r := norm_nonneg z
    nlinarith [hz.1]
  have hrlt : r<2 := by nlinarith [hz.2.1]
  have hdcos : Real.cos d=r/2 := Real.cos_arccos (by linarith) (by linarith)
  have hd0 : 0<d := Real.arccos_pos.mpr (by linarith)
  have hdlt : d<Real.pi/2 := Real.arccos_lt_pi_div_two.mpr (by positivity)
  have hdsin : 0<Real.sin d := Real.sin_pos_of_pos_of_lt_pi hd0 (by linarith [Real.pi_pos])
  have hdsq : Real.sin d^2=1-r^2/4 := by
    have hh := Real.sin_sq_add_cos_sq d
    rw [hdcos] at hh
    nlinarith
  have hdp : Real.sin (3*d)=Real.sin d*(r^2-1) := by
    rw [sin_three_using_cos,hdcos]; ring
  have hpysin : r*Real.sin p=z.im := Complex.norm_mul_sin_arg z
  have hpxcos : r*Real.cos p=z.re := Complex.norm_mul_cos_arg z
  have hpy : r^3*Real.sin (3*p)=z.im*(3*z.re^2-z.im^2) := by
    rw [Real.sin_three_mul]
    calc _ = 3*r^2*(r*Real.sin p)-4*(r*Real.sin p)^3 := by ring
         _ = _ := by rw [hr2,hpysin]; ring
  have hP : z.im^2*(3*z.re^2-z.im^2)^2=r^6*Real.sin (3*p)^2 := by
    calc _ = (z.im*(3*z.re^2-z.im^2))^2 := by ring
         _ = (r^3*Real.sin (3*p))^2 := by rw [hpy]
         _ = _ := by ring
  have hP' : (z.re^2+z.im^2)^3*(1-(z.re^2+z.im^2)/4)*(z.re^2+z.im^2-1)^2=
      r^6*Real.sin (3*d)^2 := by
    rw [←hr2,hdp]
    rw [show 1-r^2/4=Real.sin d^2 from hdsq.symm]
    ring
  have hlt : Real.sin (3*p)^2<Real.sin (3*d)^2 := by
    have hh := hz.2.2
    rw [hP,hP'] at hh
    exact (mul_lt_mul_iff_right₀ (pow_pos hr0 6)).mp hh
  refine ⟨p-d,p+d,?_,?_,?_⟩
  · apply Complex.ext
    · simp only [Complex.add_re,Circle.coe_exp,Complex.exp_mul_I,
        ←Complex.ofReal_cos,←Complex.ofReal_sin,Complex.add_re,Complex.mul_re,
        Complex.ofReal_re,Complex.I_re,Complex.ofReal_im,Complex.I_im,mul_zero,
        sub_zero,zero_mul,add_zero]
      rw [Real.cos_sub,Real.cos_add,hdcos]
      nlinarith
    · simp only [Complex.add_im,Circle.coe_exp,Complex.exp_mul_I,
        ←Complex.ofReal_cos,←Complex.ofReal_sin,Complex.add_im,Complex.mul_im,
        Complex.ofReal_re,Complex.I_re,Complex.ofReal_im,Complex.I_im,mul_zero,
        mul_one,add_zero,zero_add]
      rw [Real.sin_sub,Real.sin_add,hdcos]
      nlinarith
  · rw [show p+d-(p-d)=2*d by ring,Real.sin_two_mul,hdcos]
    exact ne_of_gt (by positivity)
  · rw [mul_sub,mul_add,sin_sub_add_product]
    linarith
end EuclideanFiveColor
end

noncomputable section
namespace EuclideanFiveColor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variant06ddecc37de67d47f91a938f9196c3cc43313fd23962140bbb32932eca297bda.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0a3b51f79d7d730dc1f8d0a69e09a0364f57f7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
