# supported_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:834b9236-5f60-a204-8774-a791e803fb68",
  "kind": "theorem",
  "lexical_name": "supported_iUnion",
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
  "slug": "supported-iunion--4e184682582bb70d8c08ffd0",
  "source": {
    "blob": "b97fd83b678e880ab8a3ec57f4752f3e26167835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 133,
    "path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e184682582bb70d8c08ffd0b606991ee69866a14b7d5122421c470852ac1dbb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:834b9236-5f60-a204-8774-a791e803fb68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supported_iUnion {δ : Type*} (s : δ → Set α) :
    supported M R (⋃ i, s i) = ⨆ i, supported M R (s i) := by
  refine le_antisymm ?_ (iSup_le fun i => supported_mono <| Set.subset_iUnion _ _)
  haveI := Classical.decPred fun x => x ∈ ⋃ i, s i
  suffices
    LinearMap.range ((Submodule.subtype _).comp (restrictDom M R (⋃ i, s i))) ≤
      ⨆ i, supported M R (s i) by
    rwa [LinearMap.range_comp, range_restrictDom, Submodule.map_top, range_subtype] at this
  rw [range_le_iff_comap, eq_top_iff]
  rintro l ⟨⟩
  induction l using Finsupp.induction with
  | zero => exact zero_mem _
  | single_add x a l _ _ ih =>
    refine add_mem ?_ ih
    by_cases h : ∃ i, x ∈ s i
    · simp only [mem_comap, coe_comp, coe_subtype, Function.comp_apply, restrictDom_apply,
        mem_iUnion, h, filter_single_of_pos]
      obtain ⟨i, hi⟩ := h
      exact le_iSup (fun i => supported M R (s i)) i (single_mem_supported R _ hi)
    · simp [h]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Supported/Variant79c7bf4b40b7b5b561f61d9ef2c9d8358feb42fb54e59cdec9f36a43263cdb66.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b97fd83b678e880ab8a3ec57f4752f3e26167835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
