# isProperMap_iff_isCompact_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e576d67c01f6a18b36e5521d4ad0c11612d31d82",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e47ee56e-0be6-d2c2-64fc-37561e344af4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:458ebe34-a1e9-c261-6f9c-3016999675cb",
  "kind": "theorem",
  "lexical_name": "isProperMap_iff_isCompact_preimage",
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
  "slug": "ispropermap-iff-iscompact-preimage--48890abe2fc4e77b4615dd94",
  "source": {
    "blob": "e576d67c01f6a18b36e5521d4ad0c11612d31d82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 249,
    "path": "GRWTSK/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48890abe2fc4e77b4615dd943305ed6636393421e9953017179ff08844bdeba7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:458ebe34-a1e9-c261-6f9c-3016999675cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isProperMap_iff_isCompact_preimage [T2Space Y] [LocallyCompactSpace Y] :
    IsProperMap f ↔ Continuous f ∧ ∀ ⦃K⦄, IsCompact K → IsCompact (f ⁻¹' K) := by
  constructor <;> intro H
  -- The direct implication follows from the previous results
  · exact ⟨H.continuous, fun K hK ↦ H.isCompact_preimage hK⟩
  · rw [isProperMap_iff_ultrafilter_of_t2]
    -- Let `𝒰 : Ultrafilter X`, and assume that `f` tends to some `y` along `𝒰`.
    refine ⟨H.1, fun 𝒰 y hy ↦ ?_⟩
    -- Pick `K` some compact neighborhood of `y`, which exists by local compactness.
    rcases exists_compact_mem_nhds y with ⟨K, hK, hKy⟩
    -- Then `map f 𝒰 ≤ 𝓝 y ≤ 𝓟 K`, hence `𝒰 ≤ 𝓟 (f ⁻¹' K)`
    have : 𝒰 ≤ 𝓟 (f ⁻¹' K) := by
      simpa only [← comap_principal, ← tendsto_iff_comap] using
        hy.mono_right (le_principal_iff.mpr hKy)
    -- By compactness of `f ⁻¹' K`, `𝒰` converges to some `x ∈ f ⁻¹' K`.
    rcases (H.2 hK).ultrafilter_le_nhds _ this with ⟨x, -, hx⟩
    exact ⟨x, hx⟩

/-- Version of `isProperMap_iff_isCompact_preimage` in terms of `cocompact`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperMap/Variant0b51dd1e0e3eb76181aac15409f41960517a90c8425ff080556c7ed7a837ec41.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e576d67c01f6a18b36e5521d4ad0c11612d31d82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
