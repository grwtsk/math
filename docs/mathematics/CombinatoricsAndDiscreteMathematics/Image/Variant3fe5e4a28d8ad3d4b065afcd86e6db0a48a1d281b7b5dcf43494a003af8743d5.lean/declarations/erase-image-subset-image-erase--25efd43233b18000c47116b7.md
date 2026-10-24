# erase_image_subset_image_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2fd816d6d4b61a12140986f93f2c2757d398e914",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3bbbc5ad-b4e4-3d8d-a0c0-ee436f0e8a00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a6984bc-8f28-1603-d44a-fdfddcdcfa26",
  "kind": "theorem",
  "lexical_name": "erase_image_subset_image_erase",
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
  "slug": "erase-image-subset-image-erase--25efd43233b18000c47116b7",
  "source": {
    "blob": "2fd816d6d4b61a12140986f93f2c2757d398e914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 510,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25efd43233b18000c47116b7a9b631f60c7c305dd9ad9b0f2816158abbd524f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Image/Variant3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a6984bc-8f28-1603-d44a-fdfddcdcfa26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 510–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erase_image_subset_image_erase [DecidableEq α] (f : α → β) (s : Finset α) (a : α) :
    (s.image f).erase (f a) ⊆ (s.erase a).image f := by
  simp only [subset_iff, and_imp, exists_prop, mem_image, exists_imp, mem_erase]
  rintro b hb x hx rfl
  exact ⟨_, ⟨ne_of_apply_ne f hb, hx⟩, rfl⟩
#align finset.erase_image_subset_image_erase Finset.erase_image_subset_image_erase

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Image/Variant3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant3fe5e4a28d8ad3d4b065afcd86e6db0a48a1d281b7b5dcf43494a003af8743d5.lean#L510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fd816d6d4b61a12140986f93f2c2757d398e914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
