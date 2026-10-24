# tendsto_mul_cocompact_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acab7737-34d9-e67f-bc14-796a3b74b661",
  "kind": "theorem",
  "lexical_name": "tendsto_mul_cocompact_nhds_zero",
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
  "slug": "tendsto-mul-cocompact-nhds-zero--55626bb7cced3fdfab502809",
  "source": {
    "blob": "1ba89818532648a48f4c2d8a5727a4fd00757111",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 473,
    "line": 454,
    "path": "GRWTSK/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55626bb7cced3fdfab50280911ebb41f0e319458524cf7bd85178ef3e67f0d70",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acab7737-34d9-e67f-bc14-796a3b74b661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–473.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mul_cocompact_nhds_zero [TopologicalSpace α] [TopologicalSpace β]
    {f : α → M} {g : β → M} (f_cont : Continuous f) (g_cont : Continuous g)
    (hf : Tendsto f (cocompact α) (𝓝 0)) (hg : Tendsto g (cocompact β) (𝓝 0)) :
    Tendsto (fun i : α × β ↦ f i.1 * g i.2) (cocompact (α × β)) (𝓝 0) := by
  set l : Filter (M × M) := map (Prod.map f g) (cocompact (α × β)) with l_def
  set K : Set (M × M) := (insert 0 (range f)) ×ˢ (insert 0 (range g))
  have K_compact : IsCompact K := .prod (hf.isCompact_insert_range_of_cocompact f_cont)
    (hg.isCompact_insert_range_of_cocompact g_cont)
  have K_mem_l : K ∈ l := eventually_map.mpr <| .of_forall fun ⟨x, y⟩ ↦
    ⟨mem_insert_of_mem _ (mem_range_self _), mem_insert_of_mem _ (mem_range_self _)⟩
  have l_compact : Disjoint l (cocompact (M × M)) := by
    rw [disjoint_cocompact_right]
    exact ⟨K, K_mem_l, K_compact⟩
  have l_le_coprod : l ≤ (𝓝 0).coprod (𝓝 0) := by
    rw [l_def, ← coprod_cocompact]
    exact hf.prodMap_coprod hg
  exact tendsto_mul_nhds_zero_of_disjoint_cocompact l_compact l_le_coprod |>.comp tendsto_map

/-- If `f : α → M` and `g : β → M` both tend to zero on the cofinite filter, then so does
`fun i : α × β ↦ f i.1 * g i.2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monoid/Variant53ba46f7225d361500f4a5e9aec0c1a57fedc2bb6ec5f985dde55f5f413f33a6.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba89818532648a48f4c2d8a5727a4fd00757111` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
