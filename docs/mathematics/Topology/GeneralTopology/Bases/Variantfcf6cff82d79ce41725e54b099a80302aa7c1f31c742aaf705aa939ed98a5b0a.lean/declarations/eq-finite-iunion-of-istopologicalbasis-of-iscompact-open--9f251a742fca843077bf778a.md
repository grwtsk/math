# eq_finite_iUnion_of_isTopologicalBasis_of_isCompact_open

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5dac5e31-d9c9-2205-9b56-aadfb1b8c8b1",
  "kind": "lemma",
  "lexical_name": "eq_finite_iUnion_of_isTopologicalBasis_of_isCompact_open",
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
  "slug": "eq-finite-iunion-of-istopologicalbasis-of-iscompact-open--9f251a742fca843077bf778a",
  "source": {
    "blob": "7780bd836727cfd6523a91da7f99b84b4a109c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 25,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantfcf6cff82d79ce41725e54b099a80302aa7c1f31c742aaf705aa939ed98a5b0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f251a742fca843077bf778a54bdbfbcaeef8246990fc266ab46880ee1ebb757",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantfcf6cff82d79ce41725e54b099a80302aa7c1f31c742aaf705aa939ed98a5b0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5dac5e31-d9c9-2205-9b56-aadfb1b8c8b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_finite_iUnion_of_isTopologicalBasis_of_isCompact_open (b : ι → Set X)
    (hb : IsTopologicalBasis (Set.range b)) (U : Set X) (hUc : IsCompact U) (hUo : IsOpen U) :
    ∃ s : Set ι, s.Finite ∧ U = ⋃ i ∈ s, b i := by
  obtain ⟨Y, f, e, hf⟩ := hb.open_eq_iUnion hUo
  choose f' hf' using hf
  have : b ∘ f' = f := funext hf'
  subst this
  obtain ⟨t, ht⟩ :=
    hUc.elim_finite_subcover (b ∘ f') (fun i => hb.isOpen (Set.mem_range_self _)) (by rw [e])
  classical
  refine ⟨t.image f', Set.toFinite _, le_antisymm ?_ ?_⟩
  · refine Set.Subset.trans ht ?_
    simp only [Set.iUnion_subset_iff]
    intro i hi
    simpa using subset_iUnion₂ (s := fun i _ => b (f' i)) i hi
  · apply Set.iUnion₂_subset
    rintro i hi
    obtain ⟨j, -, rfl⟩ := Finset.mem_image.mp hi
    rw [e]
    exact Set.subset_iUnion (b ∘ f') j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantfcf6cff82d79ce41725e54b099a80302aa7c1f31c742aaf705aa939ed98a5b0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantfcf6cff82d79ce41725e54b099a80302aa7c1f31c742aaf705aa939ed98a5b0a.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7780bd836727cfd6523a91da7f99b84b4a109c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
