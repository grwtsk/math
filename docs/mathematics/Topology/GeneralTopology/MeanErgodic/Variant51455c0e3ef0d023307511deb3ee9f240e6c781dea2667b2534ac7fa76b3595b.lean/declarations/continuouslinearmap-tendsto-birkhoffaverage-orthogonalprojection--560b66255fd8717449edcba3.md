# ContinuousLinearMap.tendsto_birkhoffAverage_orthogonalProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d2ceff2-cee0-12b0-2d40-c1f861bea238",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.tendsto_birkhoffAverage_orthogonalProjection",
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
  "slug": "continuouslinearmap-tendsto-birkhoffaverage-orthogonalprojection--560b66255fd8717449edcba3",
  "source": {
    "blob": "994a3d6063f4fd7ab2644e1989d87c849decbf59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/MeanErgodic/Variant51455c0e3ef0d023307511deb3ee9f240e6c781dea2667b2534ac7fa76b3595b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:560b66255fd8717449edcba3c3919105e9f1969607a3ef0b6c21477bee6a248f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MeanErgodic/Variant51455c0e3ef0d023307511deb3ee9f240e6c781dea2667b2534ac7fa76b3595b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d2ceff2-cee0-12b0-2d40-c1f861bea238`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.tendsto_birkhoffAverage_orthogonalProjection (f : E →L[𝕜] E)
    (hf : ‖f‖ ≤ 1) (x : E) :
    Tendsto (birkhoffAverage 𝕜 f _root_.id · x) atTop
      (𝓝 <| (f.eqLocus (1 : E →L[𝕜] E)).orthogonalProjectionOnto x) := by
  /- Due to the previous theorem, it suffices to verify
  that the range of `f - 1` is dense in the orthogonal complement
  to the submodule of fixed points of `f`. -/
  apply (f : E →ₗ[𝕜] E).tendsto_birkhoffAverage_of_ker_subset_closure (f.lipschitzWith.weaken hf)
  · exact (f.eqLocus (1 : E →L[𝕜] E)).orthogonalProjectionOnto_mem_subspace_eq_self
  · clear x
    /- In other words, we need to verify that any vector that is orthogonal to the range of `f - 1`
    is a fixed point of `f`. -/
    rw [Submodule.ker_orthogonalProjectionOnto, ← Submodule.topologicalClosure_coe,
      SetLike.coe_subset_coe, ← Submodule.orthogonal_orthogonal_eq_closure]
    /- To verify this, we verify `‖f x‖ ≤ ‖x‖` (because `‖f‖ ≤ 1`) and `⟪f x, x⟫ = ‖x‖²`. -/
    refine Submodule.orthogonal_le fun x hx ↦ eq_of_norm_le_re_inner_eq_norm_sq (𝕜 := 𝕜) ?_ ?_
    · simpa using f.le_of_opNorm_le hf x
    · have : ∀ y, ⟪f y, x⟫ = ⟪y, x⟫ := by
        simpa [Submodule.mem_orthogonal, inner_sub_left, sub_eq_zero] using hx
      simp [this]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MeanErgodic/Variant51455c0e3ef0d023307511deb3ee9f240e6c781dea2667b2534ac7fa76b3595b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MeanErgodic/Variant51455c0e3ef0d023307511deb3ee9f240e6c781dea2667b2534ac7fa76b3595b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `994a3d6063f4fd7ab2644e1989d87c849decbf59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
