# first_weighted_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6da521ba-1d52-eb22-b2a2-d0ba6b257a6f",
  "kind": "theorem",
  "lexical_name": "first_weighted_derivative",
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
  "slug": "first-weighted-derivative--55876420a78d7783f23a9654",
  "source": {
    "blob": "695a9ae2b6b2f2ba31254dd1ab505c2df79d2013",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic05/Variant184f7b8bb108262e9976dc41ef05d6d7c106962447d2d03c5bcde2983e38fcfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55876420a78d7783f23a9654ecb58e22478cd41dc95201ff29871cdf35e095d4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic05/Variant184f7b8bb108262e9976dc41ef05d6d7c106962447d2d03c5bcde2983e38fcfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6da521ba-1d52-eb22-b2a2-d0ba6b257a6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_weighted_derivative (f : ℝ → ℝ) (hf : ContDiff ℝ 1 f)
    (hs : HasCompactSupport f) (σ : ℝ) :
    (∫ x : ℝ, x*Real.exp (σ*x)*deriv f x) =
      -(∫ x : ℝ, Real.exp (σ*x)*f x)-
        σ*(∫ x : ℝ, x*Real.exp (σ*x)*f x) := by
  have he : Continuous (fun x : ℝ => Real.exp (σ*x)) := by fun_prop
  have hi0 := (he.mul hf.continuous).integrable_of_hasCompactSupport (μ := volume) hs.mul_left
  have hix := ((continuous_id.mul he).mul hf.continuous).integrable_of_hasCompactSupport (μ := volume)
    hs.mul_left
  have hid := ((continuous_id.mul he).mul hf.continuous_deriv_one).integrable_of_hasCompactSupport (μ := volume) hs.deriv.mul_left
  have hm : Integrable (fun x : ℝ => (Real.exp (σ*x)+σ*(x*Real.exp (σ*x)))*f x) := by
    have hh := hi0.add (hix.const_mul σ)
    exact hh.congr (by
      filter_upwards [] with x
      dsimp
      ring)
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x : ℝ => x*Real.exp (σ*x))
    (u' := fun x => Real.exp (σ*x)+σ*(x*Real.exp (σ*x)))
    (v := f) (v' := deriv f)
    (fun x _ => (((hasDerivAt_id x).mul
      (((hasDerivAt_id x).const_mul σ).exp))).congr_deriv (by dsimp; ring))
    (fun x _ => (hf.differentiable (by norm_num) x).hasDerivAt) hid hm hix
  have heq (x : ℝ) : (Real.exp (σ*x)+σ*(x*Real.exp (σ*x)))*f x =
      Real.exp (σ*x)*f x+σ*(x*Real.exp (σ*x)*f x) := by ring
  simp only [heq] at h
  have ha := integral_add hi0 (hix.const_mul σ)
  simp only [Pi.mul_apply,id_eq] at ha
  rw [ha,integral_const_mul] at h
  simpa only [neg_add_rev,sub_eq_add_neg,neg_mul,add_comm] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic05/Variant184f7b8bb108262e9976dc41ef05d6d7c106962447d2d03c5bcde2983e38fcfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic05/Variant184f7b8bb108262e9976dc41ef05d6d7c106962447d2d03c5bcde2983e38fcfa.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695a9ae2b6b2f2ba31254dd1ab505c2df79d2013` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
