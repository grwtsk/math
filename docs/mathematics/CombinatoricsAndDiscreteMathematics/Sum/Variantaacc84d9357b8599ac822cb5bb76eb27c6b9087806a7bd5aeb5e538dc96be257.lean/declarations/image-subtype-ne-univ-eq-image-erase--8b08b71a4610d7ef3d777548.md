# image_subtype_ne_univ_eq_image_erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cb60d2d5ed5e2d73c42d3cdc5481c6f1f007982f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b6307a0-b0ee-e695-d051-696d14ea0a7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dac4d5ac-eb59-1029-1cf3-344740529b00",
  "kind": "theorem",
  "lexical_name": "image_subtype_ne_univ_eq_image_erase",
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
  "slug": "image-subtype-ne-univ-eq-image-erase--8b08b71a4610d7ef3d777548",
  "source": {
    "blob": "cb60d2d5ed5e2d73c42d3cdc5481c6f1f007982f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 68,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b08b71a4610d7ef3d7775481c79375ff813164238be1f627657f0c61a6e0962",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dac4d5ac-eb59-1029-1cf3-344740529b00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_subtype_ne_univ_eq_image_erase [Fintype α] [DecidableEq β] (k : β) (b : α → β) :
    image (fun i : { a // b a ≠ k } => b ↑i) univ = (image b univ).erase k := by
  apply subset_antisymm
  · rw [image_subset_iff]
    intro i _
    apply mem_erase_of_ne_of_mem i.2 (mem_image_of_mem _ (mem_univ _))
  · intro i hi
    rw [mem_image]
    rcases mem_image.1 (erase_subset _ _ hi) with ⟨a, _, ha⟩
    subst ha
    exact ⟨⟨a, ne_of_mem_erase hi⟩, mem_univ _, rfl⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Sum/Variantaacc84d9357b8599ac822cb5bb76eb27c6b9087806a7bd5aeb5e538dc96be257.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb60d2d5ed5e2d73c42d3cdc5481c6f1f007982f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
