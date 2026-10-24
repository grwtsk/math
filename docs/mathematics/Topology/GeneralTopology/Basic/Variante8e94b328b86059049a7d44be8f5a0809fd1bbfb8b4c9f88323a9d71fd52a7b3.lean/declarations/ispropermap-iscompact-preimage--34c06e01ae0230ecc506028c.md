# IsProperMap.isCompact_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4aa6e50-dba1-ce91-b013-bde8b4a7ef2d",
  "kind": "lemma",
  "lexical_name": "IsProperMap.isCompact_preimage",
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
  "slug": "ispropermap-iscompact-preimage--34c06e01ae0230ecc506028c",
  "source": {
    "blob": "96337d3377ca238edfedb7e53e5dc4ed42a5058d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c06e01ae0230ecc506028c185a91eba90d5e2cc60b16e889b6db8b277fc473",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4aa6e50-dba1-ce91-b013-bde8b4a7ef2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsProperMap.isCompact_preimage (h : IsProperMap f) {K : Set Y} (hK : IsCompact K) :
    IsCompact (f ⁻¹' K) := by
  rw [isCompact_iff_ultrafilter_le_nhds]
  -- Let `𝒰 ≤ 𝓟 (f ⁻¹' K)` an ultrafilter.
  intro 𝒰 h𝒰
  -- In other words, we have `map f 𝒰 ≤ 𝓟 K`
  rw [← comap_principal, ← map_le_iff_le_comap, ← Ultrafilter.coe_map] at h𝒰
  -- Thus, by compactness of `K`, the ultrafilter `map f 𝒰` tends to some `y ∈ K`.
  rcases hK.ultrafilter_le_nhds _ h𝒰 with ⟨y, hyK, hy⟩
  -- Then, by properness of `f`, that means that `𝒰` tends to some `x ∈ f ⁻¹' {y} ⊆ f ⁻¹' K`,
  -- which completes the proof.
  rcases h.ultrafilter_le_nhds_of_tendsto hy with ⟨x, rfl, hx⟩
  exact ⟨x, hyK, hx⟩

/-- A map is proper if and only if it is closed and its fibers are compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96337d3377ca238edfedb7e53e5dc4ed42a5058d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
