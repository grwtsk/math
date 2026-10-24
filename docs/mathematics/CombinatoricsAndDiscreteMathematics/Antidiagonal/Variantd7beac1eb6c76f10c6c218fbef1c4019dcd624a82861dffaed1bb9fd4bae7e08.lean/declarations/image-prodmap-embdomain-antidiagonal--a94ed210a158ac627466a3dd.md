# image_prodMap_embDomain_antidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e5c63f197a2813f23ecbb1d3d476ccd5c16eb63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba3284eb-828f-d7d0-65bf-574b83323c8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:946bd810-7876-b669-1474-b903373e1fb2",
  "kind": "theorem",
  "lexical_name": "image_prodMap_embDomain_antidiagonal",
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
  "slug": "image-prodmap-embdomain-antidiagonal--a94ed210a158ac627466a3dd",
  "source": {
    "blob": "7e5c63f197a2813f23ecbb1d3d476ccd5c16eb63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a94ed210a158ac627466a3dddf0c45914ffffbdd4562bca428817bfd3b30f290",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:946bd810-7876-b669-1474-b903373e1fb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_prodMap_embDomain_antidiagonal {β : Type*} [DecidableEq β] (f : α ↪ β)
    (y : α →₀ ℕ) : image (Prod.map (embDomain f) (embDomain f)) (antidiagonal y) =
      antidiagonal (embDomain f y) := by
  ext ⟨u, v⟩
  simp only [mem_image, mem_antidiagonal, Prod.exists, Prod.map_apply,
    Prod.mk.injEq]
  refine ⟨fun ⟨w, z, h, hw, hz⟩ ↦ ?_, fun h ↦ ⟨u.comapDomain f f.injective.injOn,
    ⟨v.comapDomain f f.injective.injOn, ?_, ?_, ?_⟩⟩⟩
  · rw [← hw, ← hz, ← embDomain_add, h]
  · rw [← comapDomain_add_of_injective f.injective, h, comapDomain_embDomain]
  · rw [embDomain_comapDomain ((mem_range_embDomain_iff ..).mp
      (isLowerSet_range_embDomain f (le_iff_exists_add.mpr ⟨v, h.symm⟩) (by simp)))]
  · rw [embDomain_comapDomain ((mem_range_embDomain_iff ..).mp
      (isLowerSet_range_embDomain f (le_iff_exists_add'.mpr ⟨u, h.symm⟩) (by simp)))]

open Finset in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Antidiagonal/Variantd7beac1eb6c76f10c6c218fbef1c4019dcd624a82861dffaed1bb9fd4bae7e08.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e5c63f197a2813f23ecbb1d3d476ccd5c16eb63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
