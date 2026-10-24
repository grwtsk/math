# image_sigmaMk_preimage_sigmaMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f198b46c1bd310d6d3bcd01f9fa8c54585f4528",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/756591d9f44fc7c9a064ecbb35d747e02cc1861ab7ed0d3cc7877abe53e056f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94b7afa6-ebea-1e9c-03c3-422e6672a376",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab938ba5-6d96-4c64-86dd-b6b23e8b2006",
  "kind": "theorem",
  "lexical_name": "image_sigmaMk_preimage_sigmaMap",
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
  "slug": "image-sigmamk-preimage-sigmamap--10413d9d1345c0920d1b7142",
  "source": {
    "blob": "3f198b46c1bd310d6d3bcd01f9fa8c54585f4528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant756591d9f44fc7c9a064ecbb35d747e02cc1861ab7ed0d3cc7877abe53e056f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10413d9d1345c0920d1b714218f6284457a37ca1ddd45d957889743b8c216778",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant756591d9f44fc7c9a064ecbb35d747e02cc1861ab7ed0d3cc7877abe53e056f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab938ba5-6d96-4c64-86dd-b6b23e8b2006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_sigmaMk_preimage_sigmaMap {β : ι' → Type*} {f : ι → ι'} (hf : Function.Injective f)
    (g : ∀ i, α i → β (f i)) (i : ι) (s : Set (β (f i))) :
    Sigma.mk i '' (g i ⁻¹' s) = Sigma.map f g ⁻¹' (Sigma.mk (f i) '' s) := by
  refine (image_sigmaMk_preimage_sigmaMap_subset f g i s).antisymm ?_
  rintro ⟨j, x⟩ ⟨y, hys, hxy⟩
  simp only [hf.eq_iff, Sigma.map, Sigma.ext_iff] at hxy
  rcases hxy with ⟨rfl, hxy⟩; rw [heq_iff_eq] at hxy; subst y
  exact ⟨x, hys, rfl⟩

/-- Indexed sum of sets. `s.sigma t` is the set of dependent pairs `⟨i, a⟩` such that `i ∈ s` and
`a ∈ t i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant756591d9f44fc7c9a064ecbb35d747e02cc1861ab7ed0d3cc7877abe53e056f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sigma/Variant756591d9f44fc7c9a064ecbb35d747e02cc1861ab7ed0d3cc7877abe53e056f8.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f198b46c1bd310d6d3bcd01f9fa8c54585f4528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
