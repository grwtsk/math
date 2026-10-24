# gaussianLog_scaled_disk_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51db351e-0fb7-4941-7ca8-c26a3d045d7a",
  "kind": "lemma",
  "lexical_name": "gaussianLog_scaled_disk_bound",
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
  "slug": "gaussianlog-scaled-disk-bound--4810a99c16eea3606103d766",
  "source": {
    "blob": "40dc27846be5127f03ff440eb84ac0c927c1a4a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 77,
    "path": "GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4810a99c16eea3606103d7664f88fb15cbf307a94fb24921000b95b1dcf14567",
  "verification": {
    "reference": "docs/verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51db351e-0fb7-4941-7ca8-c26a3d045d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianLog_scaled_disk_bound (a : ℝ) :
    ∃C : ℝ,0<C ∧ ∀r : ℝ,0<r→∀y∈Set.Icc (1/2:ℝ) 2,
      ∀z∈Metric.closedBall (y:ℂ) (1/4),‖gaussianLog ((r:ℂ)*z)‖≤C*r^(-a) := by
  have hc : ContinuousOn (fun t : ℝ=>t^(-a)) (Set.Icc (1/4:ℝ) (9/4)) := by
    intro t ht
    exact (continuousAt_id.rpow_const (Or.inl (show t≠0 by linarith [ht.1]))).continuousWithinAt
  obtain ⟨B,hB⟩ := isCompact_Icc.exists_bound_of_continuousOn hc
  have hBpos : 0<B := by
    have hh := hB 1 (by norm_num : (1:ℝ)∈Set.Icc (1/4:ℝ) (9/4))
    norm_num at hh
    linarith
  let c := ‖((1/(2*Real.pi):ℝ):ℂ)*(Real.pi:ℂ)^(1/2:ℂ)‖*Real.exp (Real.pi^2/4+a^2)
  have hcn : 0≤c := mul_nonneg (norm_nonneg _) (Real.exp_pos _).le
  refine ⟨(c+1)*B,by positivity,?_⟩
  intro r hr y hy z hz
  have hd : ‖z-(y:ℂ)‖≤1/4 := by simpa only [Metric.mem_closedBall,dist_eq_norm] using hz
  have hyr : ‖(y:ℂ)‖=y := by rw [Complex.norm_real,Real.norm_eq_abs,abs_of_nonneg (by linarith [hy.1])]
  have hu := norm_sub_norm_le z (y:ℂ)
  have hl := norm_sub_norm_le (y:ℂ) z
  rw [hyr] at hu hl
  rw [norm_sub_rev] at hl
  have hzn : ‖z‖∈Set.Icc (1/4:ℝ) (9/4) := ⟨by linarith [hy.1],by linarith [hy.2]⟩
  have hz0 : z≠0 := norm_pos_iff.mp (by linarith [hzn.1])
  have hrz : (r:ℂ)*z≠0 := mul_ne_zero (Complex.ofReal_ne_zero.mpr hr.ne') hz0
  have hb : ‖z‖^(-a)≤B := (le_abs_self _).trans (hB ‖z‖ hzn)
  have hh := gaussianLog_power_bound ((r:ℂ)*z) hrz a
  have hnorm : ‖(r:ℂ)*z‖=r*‖z‖ := by rw [norm_mul,Complex.norm_real,Real.norm_eq_abs,abs_of_pos hr]
  rw [hnorm,Real.mul_rpow hr.le (norm_nonneg _)] at hh
  calc
    _ ≤ c*(r^(-a)*‖z‖^(-a)) := hh
    _ ≤ c*(r^(-a)*B) := mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hb (by positivity)) hcn
    _ ≤ (c+1)*B*r^(-a) := by nlinarith [mul_nonneg hBpos.le (Real.rpow_pos_of_pos hr (-a)).le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40dc27846be5127f03ff440eb84ac0c927c1a4a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
