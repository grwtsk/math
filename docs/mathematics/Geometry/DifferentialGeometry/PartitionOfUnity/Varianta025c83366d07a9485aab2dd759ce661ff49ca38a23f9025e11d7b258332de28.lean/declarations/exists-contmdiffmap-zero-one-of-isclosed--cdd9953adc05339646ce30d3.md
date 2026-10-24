# exists_contMDiffMap_zero_one_of_isClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fab0460-2037-7ce0-d69d-5557dacfb689",
  "kind": "theorem",
  "lexical_name": "exists_contMDiffMap_zero_one_of_isClosed",
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
  "slug": "exists-contmdiffmap-zero-one-of-isclosed--cdd9953adc05339646ce30d3",
  "source": {
    "blob": "8ad678ee53933a200bc5596ae5ba6c8963edf22d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 500,
    "path": "GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdd9953adc05339646ce30d3778c6f4fba94e3eafc22cf35a41af67f79c2edbc",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fab0460-2037-7ce0-d69d-5557dacfb689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_contMDiffMap_zero_one_of_isClosed [T2Space M] [SigmaCompactSpace M] {s t : Set M}
    (hs : IsClosed s) (ht : IsClosed t) (hd : Disjoint s t) :
    ∃ f : C^n⟮I, M; 𝓘(ℝ), ℝ⟯, EqOn f 0 s ∧ EqOn f 1 t ∧ ∀ x, f x ∈ Icc 0 1 := by
  have : ∀ x ∈ t, sᶜ ∈ 𝓝 x := fun x hx => hs.isOpen_compl.mem_nhds (disjoint_right.1 hd hx)
  rcases SmoothBumpCovering.exists_isSubordinate I ht this with ⟨ι, f, hf⟩
  set g := f.toSmoothPartitionOfUnity
  refine
    ⟨⟨_, g.contMDiff_sum.of_le (by simp)⟩, fun x hx => ?_, fun x => g.sum_eq_one, fun x =>
      ⟨g.sum_nonneg x, g.sum_le_one x⟩⟩
  suffices ∀ i, g i x = 0 by simp only [this, ContMDiffMap.coeFn_mk, finsum_zero, Pi.zero_apply]
  refine fun i => f.toSmoothPartitionOfUnity_zero_of_zero ?_
  exact notMem_support.1 (subset_compl_comm.1 (hf.support_subset i) hx)

/-- Given two disjoint closed sets `s, t` in a Hausdorff normal σ-compact finite-dimensional
manifold `M`, there exists a smooth function `f : M → [0,1]` that vanishes in a neighbourhood of `s`
and is equal to `1` in a neighbourhood of `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/PartitionOfUnity/Varianta025c83366d07a9485aab2dd759ce661ff49ca38a23f9025e11d7b258332de28.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ad678ee53933a200bc5596ae5ba6c8963edf22d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
