# IsProperMap.pi_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8e0a0e5481439cecbe6fb56766ecca3f7a8f6b6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/dfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b4cee3b-f031-3408-a7fa-31f00ac49195",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:763da5b4-22e1-5447-80b6-24c8d2d8a210",
  "kind": "lemma",
  "lexical_name": "IsProperMap.pi_map",
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
  "slug": "ispropermap-pi-map--4f53317fbfb361d91bd18b65",
  "source": {
    "blob": "8e0a0e5481439cecbe6fb56766ecca3f7a8f6b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 187,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f53317fbfb361d91bd18b658a507bce873048d8d62a172f1be78056f672415a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:763da5b4-22e1-5447-80b6-24c8d2d8a210`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsProperMap.pi_map {X Y : ι → Type*} [∀ i, TopologicalSpace (X i)]
    [∀ i, TopologicalSpace (Y i)] {f : (i : ι) → X i → Y i} (h : ∀ i, IsProperMap (f i)) :
    IsProperMap (fun (x : ∀ i, X i) i ↦ f i (x i)) := by
  simp_rw [isProperMap_iff_ultrafilter] at h ⊢
  constructor
  -- Continuity is clear.
  · exact continuous_pi fun i ↦ (h i).1.comp (continuous_apply i)
  -- Let `𝒰 : Ultrafilter (Π i, X i)`, and assume that `Π i, f i` tends to some `y : Π i, Y i`
  -- along `𝒰`.
  · intro 𝒰 y hy
  -- That means that each `f i` tends to `y i` along `map (eval i) 𝒰`.
    have : ∀ i, Tendsto (f i) (Ultrafilter.map (eval i) 𝒰) (𝓝 (y i)) := by
      simpa [tendsto_pi_nhds] using! hy
  -- Thus, by properness of all the `f i`s, we can choose some `x : Π i, X i` such that, for all
  -- `i`, `f i (x i) = y i` and `map (eval i) 𝒰` tends to  `x i`.
    choose x hxy hx using fun i ↦ (h i).2 (this i)
  -- By the properties of the product topology, that means that `𝒰` tends to `x`,
  -- which completes the proof since `(Π i, f i) x = y`.
    refine ⟨x, funext hxy, ?_⟩
    rwa [nhds_pi, le_pi]

/-- The preimage of a compact set by a proper map is again compact. See also
`isProperMap_iff_isCompact_preimage` which proves that this property completely characterizes
proper map when the codomain is compactly generated and Hausdorff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantdfac2fcc6fbced902f7006c00bfb92f0f02e0575682aef7e2270e0d2c834a6e8.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e0a0e5481439cecbe6fb56766ecca3f7a8f6b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
