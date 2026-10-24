# preimage_extChartAt_eventuallyEqSet_compl_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c8219f0-0f3e-81bf-e2ea-323a967a5b6f",
  "kind": "theorem",
  "lexical_name": "preimage_extChartAt_eventuallyEqSet_compl_singleton",
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
  "slug": "preimage-extchartat-eventuallyeqset-compl-singleton--4f8c8631525413e7ce8bd8e0",
  "source": {
    "blob": "68a6306e02e35b1c57668a66531828346e868c4e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 886,
    "line": 855,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant89ad9b2128a3eb6f56770c4053dee0dc6f989b8017d1dcc9ca164f3c15616786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f8c8631525413e7ce8bd8e0fcb619560b884debcdab4aa42c418bb1438892dd",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant89ad9b2128a3eb6f56770c4053dee0dc6f989b8017d1dcc9ca164f3c15616786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c8219f0-0f3e-81bf-e2ea-323a967a5b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 855–886.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem preimage_extChartAt_eventuallyEqSet_compl_singleton (y : M) (h : s =ᶠ[𝓝[{y}ᶜ] x] t) :
    (extChartAt I x).symm ⁻¹' s ∩ range I =ᶠ[𝓝[{extChartAt I x x}ᶜ] (extChartAt I x x)]
    ((extChartAt I x).symm ⁻¹' t ∩ range I : Set E) := by
  have : T1Space M := I.t1Space M
  obtain ⟨u, u_mem, hu⟩ : ∃ u ∈ 𝓝 x, u ∩ {x}ᶜ ⊆ {y | (y ∈ s) = (y ∈ t)} :=
    mem_nhdsWithin_iff_exists_mem_nhds_inter.1 (nhdsWithin_compl_singleton_le x y h)
  rw [← extChartAt_to_inv (I := I) x] at u_mem
  have B : (extChartAt I x).target ∪ (range I)ᶜ ∈ 𝓝 (extChartAt I x x) := by
    rw [← nhdsWithin_univ, ← union_compl_self (range I), nhdsWithin_union]
    apply Filter.union_mem_sup (extChartAt_target_mem_nhdsWithin x) self_mem_nhdsWithin
  apply mem_nhdsWithin_iff_exists_mem_nhds_inter.2
    ⟨_, Filter.inter_mem ((continuousAt_extChartAt_symm x).preimage_mem_nhds u_mem) B, ?_⟩
  rintro z ⟨hz, h'z⟩
  simp only [eq_iff_iff, mem_ofPred_eq]
  by_cases hIz : z ∈ range I
  · simp only [mem_inter_iff, mem_preimage, mem_union, mem_compl_iff, hIz, not_true_eq_false,
      or_false, and_true] at hz ⊢
    rw [← eq_iff_iff]
    apply hu ⟨hz.1, ?_⟩
    push _ ∈ _ at h'z ⊢
    rw [eq_comm, (extChartAt I x).eq_symm_apply (by simp) hz.2]
    exact Ne.symm h'z
  · simp [hIz]

@[deprecated (since := "2026-08-14")]
alias preimage_extChartAt_eventuallyEq_compl_singleton :=
  preimage_extChartAt_eventuallyEqSet_compl_singleton

/-! ### Congruence lemmas for derivatives on manifolds -/

/-- If two sets coincide locally, except maybe at a point, then it is equivalent to have a manifold
derivative within one or the other. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant89ad9b2128a3eb6f56770c4053dee0dc6f989b8017d1dcc9ca164f3c15616786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant89ad9b2128a3eb6f56770c4053dee0dc6f989b8017d1dcc9ca164f3c15616786.lean#L855).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a6306e02e35b1c57668a66531828346e868c4e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
