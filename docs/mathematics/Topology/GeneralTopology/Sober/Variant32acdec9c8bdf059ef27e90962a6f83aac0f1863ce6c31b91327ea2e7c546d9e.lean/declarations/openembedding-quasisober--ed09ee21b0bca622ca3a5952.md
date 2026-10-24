# OpenEmbedding.quasiSober

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:291d6b65-3a51-d0ad-b24a-cf0cebecd95f",
  "kind": "theorem",
  "lexical_name": "OpenEmbedding.quasiSober",
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
  "slug": "openembedding-quasisober--ed09ee21b0bca622ca3a5952",
  "source": {
    "blob": "4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed09ee21b0bca622ca3a595201daf8073dae82935f357f668e236aa6248c88cd",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:291d6b65-3a51-d0ad-b24a-cf0cebecd95f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OpenEmbedding.quasiSober {f : α → β} (hf : OpenEmbedding f) [QuasiSober β] :
    QuasiSober α where
  sober hS hS' := by
    have hS'' := hS.image f hf.continuous.continuousOn
    obtain ⟨x, hx⟩ := QuasiSober.sober hS''.closure isClosed_closure
    obtain ⟨T, hT, rfl⟩ := hf.toInducing.isClosed_iff.mp hS'
    rw [image_preimage_eq_inter_range] at hx hS''
    have hxT : x ∈ T := by
      rw [← hT.closure_eq]
      exact closure_mono (inter_subset_left _ _) hx.mem
    obtain ⟨y, rfl⟩ : x ∈ range f := by
      rw [hx.mem_open_set_iff hf.open_range]
      refine' Nonempty.mono _ hS''.1
      simpa using subset_closure
    use y
    change _ = _
    rw [hf.toEmbedding.closure_eq_preimage_closure_image, image_singleton, show _ = _ from hx]
    apply image_injective.mpr hf.inj
    ext z
    simp only [image_preimage_eq_inter_range, mem_inter_iff, and_congr_left_iff]
    exact fun hy => ⟨fun h => hT.closure_eq ▸ closure_mono (inter_subset_left _ _) h,
      fun h => subset_closure ⟨h, hy⟩⟩
#align open_embedding.quasi_sober OpenEmbedding.quasiSober

/-- A space is quasi sober if it can be covered by open quasi sober subsets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
