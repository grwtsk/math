# isPreconnected_Icc_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb7a5a07-186d-b5af-0702-faf614f562be",
  "kind": "theorem",
  "lexical_name": "isPreconnected_Icc_aux",
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
  "slug": "ispreconnected-icc-aux--ca3ee90c287a13b1888895ba",
  "source": {
    "blob": "0bdb0f39f02c29a5c37460dd0e8f870530eb8261",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 351,
    "path": "GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca3ee90c287a13b1888895bafa5f60f254c66d53b8b7fd6dd432eacca586ba09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb7a5a07-186d-b5af-0702-faf614f562be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 351–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreconnected_Icc_aux (x y : α) (s t : Set α) (hxy : x ≤ y) (hs : IsClosed s)
    (ht : IsClosed t) (hab : Icc a b ⊆ s ∪ t) (hx : x ∈ Icc a b ∩ s) (hy : y ∈ Icc a b ∩ t) :
    (Icc a b ∩ (s ∩ t)).Nonempty := by
  have xyab : Icc x y ⊆ Icc a b := Icc_subset_Icc hx.1.1 hy.1.2
  by_contra hst
  suffices Icc x y ⊆ s from
    hst ⟨y, xyab <| right_mem_Icc.2 hxy, this <| right_mem_Icc.2 hxy, hy.2⟩
  apply (IsClosed.inter hs isClosed_Icc).Icc_subset_of_forall_mem_nhdsWithin hx.2
  rintro z ⟨zs, hz⟩
  have zt : z ∈ tᶜ := fun zt => hst ⟨z, xyab <| Ico_subset_Icc_self hz, zs, zt⟩
  have : tᶜ ∩ Ioc z y ∈ 𝓝[>] z := by
    rw [← nhdsWithin_Ioc_eq_nhdsGT hz.2]
    exact mem_nhdsWithin.2 ⟨tᶜ, ht.isOpen_compl, zt, Subset.rfl⟩
  apply mem_of_superset this
  have : Ioc z y ⊆ s ∪ t := fun w hw => hab (xyab ⟨le_trans hz.1 (le_of_lt hw.1), hw.2⟩)
  exact fun w ⟨wt, wzy⟩ => (this wzy).elim id fun h => (wt h).elim

/-- A closed interval in a densely ordered conditionally complete linear order is preconnected. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IntermediateValue/Variant691bb64295eb7efd01b2f325ed4d886a7d3e2d1156eb56c28bfbe7ea85e36c13.lean#L351).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bdb0f39f02c29a5c37460dd0e8f870530eb8261` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
