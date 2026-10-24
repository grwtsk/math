# bumpMoment_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb46c8e8-5409-3752-8005-6d3d46e3e5f5",
  "kind": "theorem",
  "lexical_name": "bumpMoment_hasDerivAt",
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
  "slug": "bumpmoment-hasderivat--6b6b544991390f563c0ecbe9",
  "source": {
    "blob": "66230497e382cde186eeb9077b13b4ec3a71662c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 145,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b6b544991390f563c0ecbe9980294a0ba21356ab66b0ccd11209d9444979dec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb46c8e8-5409-3752-8005-6d3d46e3e5f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bumpMoment_hasDerivAt (k : ℕ) (z : ℂ) :
    HasDerivAt (bumpMoment k) (bumpMoment (k + 1) z) z := by
  let F : ℂ → ℝ → ℂ := fun w x =>
    (x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (w * (x : ℂ))
  let G : ℂ → ℝ → ℂ := fun w x =>
    (x : ℂ) ^ (k + 1) * (1 - (x : ℂ) ^ 2) ^ 4 * Complex.exp (w * (x : ℂ))
  have hG : Continuous (fun p : ℂ × ℝ => G p.1 p.2) := by
    dsimp [G]
    fun_prop
  obtain ⟨C, hC⟩ := (isCompact_closedBall z 1 |>.prod
    (isCompact_Icc : IsCompact (Icc (-1 : ℝ) 1))).exists_bound_of_continuousOn
      hG.continuousOn
  have h := intervalIntegral.hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (F := F) (F' := G) (bound := fun _ : ℝ => C)
    (a := (-1 : ℝ)) (b := 1) (μ := volume)
    (Metric.ball_mem_nhds z (by norm_num : (0 : ℝ) < 1))
    (Filter.Eventually.of_forall (fun w =>
      (show Continuous (F w) by dsimp [F]; fun_prop).aestronglyMeasurable))
    (bumpMoment_intervalIntegrable k z)
    ((show Continuous (G z) by dsimp [G]; fun_prop).aestronglyMeasurable)
    (Filter.Eventually.of_forall (fun x hx w hw => hC (w, x)
      ⟨Metric.ball_subset_closedBall hw, by
        have hx' : x ∈ Ioc (-1 : ℝ) 1 := by
          simpa only [uIoc_of_le (by norm_num : (-1 : ℝ) ≤ 1)] using hx
        exact ⟨hx'.1.le, hx'.2⟩⟩))
    (intervalIntegrable_const)
    (Filter.Eventually.of_forall (fun x _ w _ => by
      have hd := (((hasDerivAt_id w).mul_const (x : ℂ)).cexp).const_mul
        ((x : ℂ) ^ k * (1 - (x : ℂ) ^ 2) ^ 4)
      convert! hd using 1
      dsimp [G]
      simp only [pow_succ]
      ring))
  exact h.2

/-- Every source moment is continuous in the whole complex parameter plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceBumpHorizontalAudit/Variant3657cc1ec989b09250c71ca80ca5ace1cfdbc9e1e4c2f9a4f44c9c7a36b74769.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66230497e382cde186eeb9077b13b4ec3a71662c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
