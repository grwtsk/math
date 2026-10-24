# compactOpen_eq_compactConvergence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62056221-9e97-93b5-6188-2b1b438f2950",
  "kind": "theorem",
  "lexical_name": "compactOpen_eq_compactConvergence",
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
  "slug": "compactopen-eq-compactconvergence--c92bca899e6ebd23b4e3325c",
  "source": {
    "blob": "0788ac245737c102988379e8f3697a91ffdef77f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c92bca899e6ebd23b4e3325c6f8cac99b098e2750a3ff8d3db63db09dcec887c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62056221-9e97-93b5-6188-2b1b438f2950`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compactOpen_eq_compactConvergence :
    ContinuousMap.compactOpen = (compactConvergenceTopology : TopologicalSpace C(α, β)) := by
  rw [compactConvergenceTopology, ContinuousMap.compactOpen]
  refine' le_antisymm _ _
  · refine' fun X hX => isOpen_iff_forall_mem_open.mpr fun f hf => _
    have hXf : X ∈ (compactConvergenceFilterBasis f).filter := by
      rw [← nhds_compactConvergence]
      exact @IsOpen.mem_nhds C(α, β) compactConvergenceTopology _ _ hX hf
    obtain ⟨-, ⟨⟨K, V⟩, ⟨hK, hV⟩, rfl⟩, hXf⟩ := hXf
    obtain ⟨ι, hι, C, hC, U, hU, h₁, h₂⟩ := iInter_compactOpen_gen_subset_compactConvNhd f hK hV
    haveI := hι
    exact
      ⟨⋂ i, CompactOpen.gen (C i) (U i), h₂.trans hXf,
        isOpen_iInter fun i => ContinuousMap.isOpen_gen (hC i) (hU i), h₁⟩
  · simp only [TopologicalSpace.le_generateFrom_iff_subset_isOpen, and_imp, exists_prop,
      forall_exists_index, setOf_subset_setOf]
    rintro - K hK U hU rfl f hf
    obtain ⟨V, hV, _hV', hVf⟩ := compactConvNhd_subset_compactOpen f hK hU hf
    exact Filter.mem_of_superset (FilterBasis.mem_filter_of_mem _ ⟨⟨K, V⟩, ⟨hK, hV⟩, rfl⟩) hVf
#align continuous_map.compact_open_eq_compact_convergence ContinuousMap.compactOpen_eq_compactConvergence

/-- The filter on `C(α, β) × C(α, β)` which underlies the uniform space structure on `C(α, β)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CompactConvergence/Variant0585a3a69bbc0029e5e5f601dd900800511b1fb94632b2f123b2cb93e242fbd9.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0788ac245737c102988379e8f3697a91ffdef77f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
