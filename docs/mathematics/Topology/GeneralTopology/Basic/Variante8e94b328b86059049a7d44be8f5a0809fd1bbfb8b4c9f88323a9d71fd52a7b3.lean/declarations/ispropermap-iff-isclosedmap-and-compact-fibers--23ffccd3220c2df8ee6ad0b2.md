# isProperMap_iff_isClosedMap_and_compact_fibers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec3419cc-056f-6fe1-919e-bee8c82cfdd0",
  "kind": "theorem",
  "lexical_name": "isProperMap_iff_isClosedMap_and_compact_fibers",
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
  "slug": "ispropermap-iff-isclosedmap-and-compact-fibers--23ffccd3220c2df8ee6ad0b2",
  "source": {
    "blob": "96337d3377ca238edfedb7e53e5dc4ed42a5058d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 234,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23ffccd3220c2df8ee6ad0b2b4fad6eece24c070973c36117c2497a726b0a80d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec3419cc-056f-6fe1-919e-bee8c82cfdd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isProperMap_iff_isClosedMap_and_compact_fibers :
    IsProperMap f ↔ Continuous f ∧ IsClosedMap f ∧ ∀ y, IsCompact (f ⁻¹' {y}) := by
  constructor <;> intro H
  -- Note: In Bourbaki, the direct implication is proved by going through universally closed maps.
  -- We could do the same (using a `TFAE` cycle) but proving it directly from
  -- `IsProperMap.isCompact_preimage` is nice enough already so we don't bother with that.
  · exact ⟨H.continuous, H.isClosedMap, fun y ↦ H.isCompact_preimage isCompact_singleton⟩
  · rw [isProperMap_iff_clusterPt]
  -- Let `ℱ : Filter X` and `y` some cluster point of `map f ℱ`.
    refine ⟨H.1, fun ℱ y hy ↦ ?_⟩
  -- That means that the singleton `pure y` meets the "closure" of `map f ℱ`, by which we mean
  -- `Filter.lift' (map f ℱ) closure`. But `f` is closed, so
  -- `closure (map f ℱ) = map f (closure ℱ)` (see `IsClosedMap.lift'_closure_map_eq`).
  -- Thus `map f (closure ℱ ⊓ 𝓟 (f ⁻¹' {y})) = map f (closure ℱ) ⊓ 𝓟 {y} ≠ ⊥`, hence
  -- `closure ℱ ⊓ 𝓟 (f ⁻¹' {y}) ≠ ⊥`.
    rw [H.2.1.mapClusterPt_iff_lift'_closure H.1] at hy
  -- Now, applying the compactness of `f ⁻¹' {y}` to the nontrivial filter
  -- `closure ℱ ⊓ 𝓟 (f ⁻¹' {y})`, we obtain that it has a cluster point `x ∈ f ⁻¹' {y}`.
    rcases H.2.2 y (f := Filter.lift' ℱ closure ⊓ 𝓟 (f ⁻¹' {y})) inf_le_right with ⟨x, hxy, hx⟩
    refine ⟨x, hxy, ?_⟩
  -- In particular `x` is a cluster point of `closure ℱ`. Since cluster points of `closure ℱ`
  -- are exactly cluster points of `ℱ` (see `clusterPt_lift'_closure_iff`), this completes
  -- the proof.
    rw [← clusterPt_lift'_closure_iff]
    exact hx.mono inf_le_left

/-- An injective and continuous function is proper if and only if it is closed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante8e94b328b86059049a7d44be8f5a0809fd1bbfb8b4c9f88323a9d71fd52a7b3.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96337d3377ca238edfedb7e53e5dc4ed42a5058d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
