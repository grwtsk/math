# tendsto_setToFun_approxOn_of_measurable_of_range_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68c54de1-bc81-7ef7-5354-6c4a94b43f89",
  "kind": "theorem",
  "lexical_name": "tendsto_setToFun_approxOn_of_measurable_of_range_subset",
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
  "slug": "tendsto-settofun-approxon-of-measurable-of-range-subset--34c6df8d332cebdc31793ef3",
  "source": {
    "blob": "b1067cf709788585afaa83f2525d72a7ea482127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 880,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variant7d42fa542943f7a56d934b398f15d0c2346b98f78a348c29bd5971eaad48bed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c6df8d332cebdc31793ef35709a39c59c30a3c90706c24b2f2f9038491971b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variant7d42fa542943f7a56d934b398f15d0c2346b98f78a348c29bd5971eaad48bed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68c54de1-bc81-7ef7-5354-6c4a94b43f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 880–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_setToFun_approxOn_of_measurable_of_range_subset
    (hT : DominatedFinMeasAdditive μ T C) [MeasurableSpace E] [BorelSpace E] {f : α → E}
    (fmeas : Measurable f) (hf : Integrable f μ) (s : Set E) [SeparableSpace s]
    (hs : range f ∪ {0} ⊆ s) :
    Tendsto (fun n => setToFun μ T hT (SimpleFunc.approxOn f fmeas s 0 (hs <| by simp) n)) atTop
      (𝓝 <| setToFun μ T hT f) := by
  refine tendsto_setToFun_approxOn_of_measurable hT hf fmeas ?_ _ (integrable_zero _ _ _)
  exact Eventually.of_forall fun x => subset_closure (hs (Set.mem_union_left _ (mem_range_self _)))

/-- Auxiliary lemma for `setToFun_congr_measure`: the function sending `f : α →₁[μ] G` to
`f : α →₁[μ'] G` is continuous when `μ' ≤ c' • μ` for `c' ≠ ∞`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variant7d42fa542943f7a56d934b398f15d0c2346b98f78a348c29bd5971eaad48bed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variant7d42fa542943f7a56d934b398f15d0c2346b98f78a348c29bd5971eaad48bed5.lean#L880).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1067cf709788585afaa83f2525d72a7ea482127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
