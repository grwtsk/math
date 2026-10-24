# actual_completed_horizontal_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bf0fb4b-41dc-2b20-ff76-336137ba0fca",
  "kind": "theorem",
  "lexical_name": "actual_completed_horizontal_intervalIntegrable",
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
  "slug": "actual-completed-horizontal-intervalintegrable--c6ee87ba1cf6ece3959080e7",
  "source": {
    "blob": "d8dd155b45b961e4dbe62df7ef914effcdc01bb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 38,
    "path": "GRWTSK/Topology/GeneralTopology/ActualCompletedHorizontalIntegrability/Variantf31f3b97d0f5ea4d4d0687508a6d0bc402ff4149fed0e41a1ee233747672f528.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6ee87ba1cf6ece3959080e7eec75f38510e2d5aa9e66319ca77996a7c350c51",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualCompletedHorizontalIntegrability/Variantf31f3b97d0f5ea4d4d0687508a6d0bc402ff4149fed0e41a1ee233747672f528.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bf0fb4b-41dc-2b20-ff76-336137ba0fca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_completed_horizontal_intervalIntegrable (A c R y : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3/2) (hR : 7 ≤ R)
    (hζ : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0) (hy : y = R ∨ y = -R) :
    IntervalIntegrable (fun x : ℝ =>
      actualBilateralCorrelationTransform A ((x : ℂ)+y*I-1/2)*
        logDeriv completedRiemannZeta ((x : ℂ)+y*I)) volume (1-c) c := by
  have hyn : y ≠ 0 := by rcases hy with hh | hh <;> rw [hh] <;> linarith
  have hline : Continuous (fun x : ℝ => (x : ℂ)+y*I) := by fun_prop
  have hsource : Continuous (fun x : ℝ =>
      actualBilateralCorrelationTransform A ((x : ℂ)+y*I-1/2)) :=
    (actual_bilateral_transform_continuous hA).comp hline
  have hnonzero := completedZeta_ne_zero_on_horizontals hc hc2 hζ
  have hlog : ContinuousOn (fun x : ℝ =>
      logDeriv completedRiemannZeta ((x : ℂ)+y*I)) (Icc (1-c) c) := by
    intro x hx
    let s : ℂ := (x : ℂ)+y*I
    have hs0 : s ≠ 0 := by
      intro hh
      apply hyn
      have hm := congrArg Complex.im hh
      simpa [s] using hm
    have hs1 : s ≠ 1 := by
      intro hh
      apply hyn
      have hm := congrArg Complex.im hh
      simpa [s] using hm
    have hnc : completedRiemannZeta s ≠ 0 :=
      hnonzero s (by simpa [s] using hy) (by simpa [s] using hx.1)
        (by simpa [s] using hx.2)
    have han := Zeta23.RvM.analyticAt_completedRiemannZeta hs0 hs1
    have hh : ContinuousAt (fun s => deriv completedRiemannZeta s /
        completedRiemannZeta s) s := han.deriv.continuousAt.div han.continuousAt hnc
    have hcomp : ContinuousAt ((fun z : ℂ => deriv completedRiemannZeta z /
        completedRiemannZeta z) ∘ (fun x : ℝ => (x : ℂ)+y*I)) x :=
      ContinuousAt.comp hh hline.continuousAt
    exact hcomp.continuousWithinAt
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by linarith)]
  exact hsource.continuousOn.mul hlog

end
end FormalResearch.RiemannHypothesis.ActualCompletedHorizontalIntegrability
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualCompletedHorizontalIntegrability/Variantf31f3b97d0f5ea4d4d0687508a6d0bc402ff4149fed0e41a1ee233747672f528.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualCompletedHorizontalIntegrability/Variantf31f3b97d0f5ea4d4d0687508a6d0bc402ff4149fed0e41a1ee233747672f528.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8dd155b45b961e4dbe62df7ef914effcdc01bb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
