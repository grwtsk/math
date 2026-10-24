# _root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.ContMDiffWithinAt.mlieBracketWithin_vectorField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c4a0824-7ad0-40cd-4f17-64c335a1e11b",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.ContMDiffWithinAt.mlieBracketWithin_vectorField",
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
  "slug": "root-grwtsk-topology-generaltopology-mliebracketwithin-variantd9a1e89c07--2ab2cf52f78b631d523bd546",
  "source": {
    "blob": "eb4094d30dcab94a65ddfc8516caaaf81e8ee127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 811,
    "line": 746,
    "path": "GRWTSK/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ab2cf52f78b631d523bd546bc7d05f0e1ae51a1d5c349600e4660172744bdd7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c4a0824-7ad0-40cd-4f17-64c335a1e11b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–811.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma _root_.GRWTSK.Topology.GeneralTopology.MlieBracketWithin.Variantd9a1e89c07eebd23e3376119baa38ae820b1ce873aeae6bd39a538ca6dd3c3ee.ContMDiffWithinAt.mlieBracketWithin_vectorField
    [IsManifold I (n + 1) M] {m : WithTop ℕ∞}
    {U V : Π (x : M), TangentSpace I x} {s : Set M} {x : M}
    (hU : ContMDiffWithinAt I I.tangent n (fun x ↦ (U x : TangentBundle I M)) s x)
    (hV : ContMDiffWithinAt I I.tangent n (fun x ↦ (V x : TangentBundle I M)) s x)
    (hs : UniqueMDiffOn I s) (hx : x ∈ s) (hmn : minSmoothness 𝕜 (m + 1) ≤ n) :
    ContMDiffWithinAt I I.tangent m
      (fun x ↦ (mlieBracketWithin I U V s x : TangentBundle I M)) s x := by
  /- The statement is not obvious, since at different points the Lie bracket is defined using
  different charts. However, since we know that the Lie bracket is invariant under diffeos, we can
  use a single chart to prove the statement. Let `U'` and `V'` denote the pullbacks of `U` and `V`
  in the chart around `x`. Then the Lie bracket there is smooth (as it coincides with the vector
  space Lie bracket, given by an explicit formula). Pulling back this Lie bracket in `M` gives
  locally a smooth function, which coincides with the initial Lie bracket by invariance
  under diffeos. -/
  have min2 : minSmoothness 𝕜 2 ≤ n + 1 := by
    apply le_trans _ (add_le_add_right hmn 1)
    rw [← minSmoothness_add, add_assoc]
    exact minSmoothness_monotone le_add_self
  apply contMDiffWithinAt_iff_le_ne_infty.2 (fun m' hm' h'm' ↦ ?_)
  have hn : 1 ≤ m' + 1 := le_add_self
  have hm'n : m' + 1 ≤ n := le_trans (add_le_add_right hm' 1) (le_minSmoothness.trans hmn)
  have pre_mem : (extChartAt I x) ⁻¹' ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s)
      ∈ 𝓝[s] x := by
    filter_upwards [self_mem_nhdsWithin,
      nhdsWithin_le_nhds (extChartAt_source_mem_nhds (I := I) x)] with y hy h'y
    exact ⟨(extChartAt I x).map_source h'y,
      by simpa only [mem_preimage, (extChartAt I x).left_inv h'y] using hy⟩
  let U' := mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x).symm U (range I)
  let V' := mpullbackWithin 𝓘(𝕜, E) I (extChartAt I x).symm V (range I)
  have A : ContDiffWithinAt 𝕜 m' (lieBracketWithin 𝕜 U' V'
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s))
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) (extChartAt I x x) :=
    ContDiffWithinAt.lieBracketWithin_vectorField
      (contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt.1
        (contMDiffWithinAt_mpullbackWithin_extChartAt_symm hU hs hx le_rfl))
      (contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt.1
        (contMDiffWithinAt_mpullbackWithin_extChartAt_symm hV hs hx le_rfl))
      (hs.uniqueDiffOn_target_inter x) hm'n (by simp [hx])
  have B : ContMDiffWithinAt 𝓘(𝕜, E) 𝓘(𝕜, E).tangent m' (fun y ↦ (mlieBracketWithin 𝓘(𝕜, E) U' V'
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) y : TangentBundle 𝓘(𝕜, E) E))
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s) (extChartAt I x x) := by
    rw [← mlieBracketWithin_eq_lieBracketWithin] at A
    exact contMDiffWithinAt_vectorSpace_iff_contDiffWithinAt.2 A
  have C : ContMDiffWithinAt I I.tangent m' (fun y ↦ (mpullback I 𝓘(𝕜, E) (extChartAt I x)
      ((mlieBracketWithin 𝓘(𝕜, E) U' V'
      ((extChartAt I x).target ∩ (extChartAt I x).symm ⁻¹' s))) y : TangentBundle I M)) s x :=
    ContMDiffWithinAt.mpullback_vectorField_of_mem_nhdsWithin_of_eq B (n := m' + 1)
      contMDiffAt_extChartAt
      (isInvertible_mfderiv_extChartAt (mem_extChartAt_source x)) le_rfl pre_mem rfl
  apply C.congr_of_eventuallyEq_of_mem _ hx
  filter_upwards [eventually_eventually_nhdsWithin.2 pre_mem,
    eventually_eventually_nhdsWithin.2 (eventuallyEq_mpullback_mpullbackWithin_extChartAt U),
    eventually_eventually_nhdsWithin.2 (eventuallyEq_mpullback_mpullbackWithin_extChartAt V),
    eventually_contMDiffWithinAt_mpullbackWithin_extChartAt_symm (hU.of_le hm'n) hs hx
      (add_le_add_right hm'n 1) (by simp [h'm']),
    eventually_contMDiffWithinAt_mpullbackWithin_extChartAt_symm (hV.of_le hm'n) hs hx
      (add_le_add_right hm'n 1) (by simp [h'm']),
    nhdsWithin_le_nhds (chart_source_mem_nhds H x), self_mem_nhdsWithin]
    with y hy hyU hyV h'yU h'yV hy_chart hys
  simp only [Bundle.TotalSpace.mk_inj]
  rw [mpullback_mlieBracketWithin (h'yU.mdifferentiableWithinAt hn)
    (h'yV.mdifferentiableWithinAt hn) hs (contMDiffAt_extChartAt' hy_chart) hys min2 hy]
  exact Filter.EventuallyEq.mlieBracketWithin_vectorField_eq_of_mem hyU hyV hys

/-- If two vector fields are `C^n` with `n ≥ m + 1`, then their Lie bracket is `C^m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LieBracket/Variant15f64cfabd394e908706bc5e6757f8c82b5da7adaac30180b9657cb0a657b170.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb4094d30dcab94a65ddfc8516caaaf81e8ee127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
