# ContinuousMap.dense_setOfPred_contDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7cea03bdbf1deef874c04fb7df241e30efdf7f1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/688d3721a7a2d8e3cf5f0f155961c6def36dd3406c81ead3e25d12e7698793ec.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:01c5f8a5-3ce2-9640-3fc3-e70d354e078a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17ee0f6c-f174-5edc-0802-21149feb9e59",
  "kind": "theorem",
  "lexical_name": "ContinuousMap.dense_setOfPred_contDiff",
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
  "slug": "continuousmap-dense-setofpred-contdiff--bd38afddcec5599239204747",
  "source": {
    "blob": "7cea03bdbf1deef874c04fb7df241e30efdf7f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 55,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant688d3721a7a2d8e3cf5f0f155961c6def36dd3406c81ead3e25d12e7698793ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd38afddcec5599239204747411e7073c8e1dbeda7ffc6cb20f5e1c6a3bb8a13",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant688d3721a7a2d8e3cf5f0f155961c6def36dd3406c81ead3e25d12e7698793ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17ee0f6c-f174-5edc-0802-21149feb9e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousMap.dense_setOfPred_contDiff : Dense {f : C(E, F) | ContDiff ℝ ∞ f} := by
  intro f
  rw [mem_closure_iff_nhds_basis
    (nhds_basis_uniformity uniformity_basis_dist.compactConvergenceUniformity)]
  simp only [Prod.forall, mem_ofPred_eq, and_imp]
  intro K ε hK hε
  have : UniformContinuousOn f (cthickening 1 K) :=
    hK.cthickening.uniformContinuousOn_of_continuous <| by fun_prop
  rcases Metric.uniformContinuousOn_iff.mp this (ε / 2) (half_pos hε) with ⟨δ, hδ, hfδ⟩
  rcases (map_continuous f).exists_contDiff_dist_le_of_forall_mem_ball_dist_le
    (lt_min one_pos hδ) with ⟨g, hgc, hg⟩
  refine ⟨⟨g, hgc.continuous⟩, hgc, fun x hx ↦ (hg _ _ fun y hy ↦ ?_).trans_lt (half_lt_self hε)⟩
  rw [mem_ball, lt_min_iff] at hy
  exact hfδ _ (mem_cthickening_of_dist_le _ x _ _ hx hy.1.le) _
    (self_subset_cthickening _ hx) hy.2 |>.le

@[deprecated (since := "2026-07-09")]
alias ContinuousMap.dense_setOf_contDiff := ContinuousMap.dense_setOfPred_contDiff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant688d3721a7a2d8e3cf5f0f155961c6def36dd3406c81ead3e25d12e7698793ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothApprox/Variant688d3721a7a2d8e3cf5f0f155961c6def36dd3406c81ead3e25d12e7698793ec.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cea03bdbf1deef874c04fb7df241e30efdf7f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
