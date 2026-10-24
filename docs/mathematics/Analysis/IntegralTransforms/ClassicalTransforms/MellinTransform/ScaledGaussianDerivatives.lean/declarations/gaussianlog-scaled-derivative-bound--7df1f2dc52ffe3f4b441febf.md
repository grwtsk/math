# gaussianLog_scaled_derivative_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4d2bfe69-e35f-cdf3-767e-db72486cb16b",
  "kind": "lemma",
  "lexical_name": "gaussianLog_scaled_derivative_bound",
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
  "slug": "gaussianlog-scaled-derivative-bound--7df1f2dc52ffe3f4b441febf",
  "source": {
    "blob": "40dc27846be5127f03ff440eb84ac0c927c1a4a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 110,
    "path": "GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7df1f2dc52ffe3f4b441febf840e8e659d90bec8b57da4be3a4d0ad3043a1222",
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

Occurrence: `result:4d2bfe69-e35f-cdf3-767e-db72486cb16b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gaussianLog_scaled_derivative_bound (a : ℝ) (n : ℕ) :
    ∃C : ℝ,0<C ∧ ∀r : ℝ,0<r→∀y∈Set.Icc (1/2:ℝ) 2,
      ‖iteratedDeriv n (fun x : ℝ=>gaussianMellinProfile (r*x)) y‖≤C*r^(-a) := by
  obtain ⟨B,hB,hbound⟩ := gaussianLog_scaled_disk_bound a
  refine ⟨(n.factorial:ℝ)*B/(1/4:ℝ)^n,by positivity,?_⟩
  intro r hr y hy
  have hf : ∀x : ℝ,0<x→AnalyticAt ℂ (fun z : ℂ=>gaussianLog ((r:ℂ)*z)) (x:ℂ) :=
    fun x hx=>gaussianLog_scaled_analytic r hr (x:ℂ) hx
  have he : (fun x : ℝ=>gaussianMellinProfile (r*x))=
      (fun x : ℝ=>gaussianLog ((r:ℂ)*(x:ℂ))) := by
    funext x
    rw [←Complex.ofReal_mul,gaussianLog_ofReal]
  rw [he,iteratedDeriv_restrict_positive _ hf n y (by linarith [hy.1])]
  have hd : DiffContOnCl ℂ (fun z : ℂ=>gaussianLog ((r:ℂ)*z)) (Metric.ball (y:ℂ) (1/4)) := by
    apply DifferentiableOn.diffContOnCl_ball (U:={z : ℂ|0<z.re})
      (fun z hz=>(gaussianLog_scaled_analytic r hr z hz).differentiableAt.differentiableWithinAt)
    intro z hz
    have hn : ‖z-(y:ℂ)‖≤1/4 := by simpa only [Metric.mem_closedBall,dist_eq_norm] using hz
    have ha := (Complex.abs_re_le_norm (z-(y:ℂ))).trans hn
    simp only [Complex.sub_re,Complex.ofReal_re,abs_le] at ha
    change 0<z.re
    linarith [hy.1]
  have hh := Complex.norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le n
    (by norm_num : (0:ℝ)<1/4) hd
    (fun z hz=>hbound r hr y hy z (Metric.sphere_subset_closedBall hz))
  exact hh.trans_eq (by ring)


end
end GRWTSK.Analysis.MellinTransform.ScaledGaussianDerivatives
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/IntegralTransforms/ClassicalTransforms/MellinTransform/ScaledGaussianDerivatives.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MellinTransform/ScaledGaussianDerivatives.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40dc27846be5127f03ff440eb84ac0c927c1a4a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
