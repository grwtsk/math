# image_insert_memberSubfamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "836afa5a45a86f9e234365becc30de9034f9a055",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 142,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:544cb9a5-992c-0c55-e85c-6101556f9427",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d68b88d-47b0-10a7-c2a3-d88bdd10d39f",
  "kind": "lemma",
  "lexical_name": "image_insert_memberSubfamily",
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
  "slug": "image-insert-membersubfamily--1f73769a5dc64e5988fab26f",
  "source": {
    "blob": "836afa5a45a86f9e234365becc30de9034f9a055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 142,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantb4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f73769a5dc64e5988fab26fbcad011285acbe3ab4d24b55dc973093bd7bde67",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Down/Variantb4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d68b88d-47b0-10a7-c2a3-d88bdd10d39f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma image_insert_memberSubfamily (𝒜 : Finset (Finset α)) (a : α) :
    (𝒜.memberSubfamily a).image (insert a) = {s ∈ 𝒜 | a ∈ s} := by
  ext s
  simp only [mem_memberSubfamily, mem_image, mem_filter]
  refine ⟨?_, fun ⟨hs, ha⟩ ↦ ⟨erase s a, ⟨?_, notMem_erase _ _⟩, insert_erase ha⟩⟩
  · rintro ⟨s, ⟨hs, -⟩, rfl⟩
    exact ⟨hs, mem_insert_self _ _⟩
  · rwa [insert_erase ha]

/-- Induction principle for finset families. To prove a statement for every finset family,
it suffices to prove it for
* the empty finset family.
* the finset family which only contains the empty finset.
* `ℬ ∪ {s ∪ {a} | s ∈ 𝒞}` assuming the property for `ℬ` and `𝒞`, where `a` is an element of the
  ground type and `𝒜` and `ℬ` are families of finsets not containing `a`.
  Note that instead of giving `ℬ` and `𝒞`, the `subfamily` case gives you
  `𝒜 = ℬ ∪ {s ∪ {a} | s ∈ 𝒞}`, so that `ℬ = 𝒜.nonMemberSubfamily` and `𝒞 = 𝒜.memberSubfamily`.

This is a way of formalising induction on `n` where `𝒜` is a finset family on `n` elements.

See also `Finset.family_induction_on.` -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Down/Variantb4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Down/Variantb4cbeadc75f2b82f634f597f5f02db8fa70f86a666d7a6ca68f76453249bb70d.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836afa5a45a86f9e234365becc30de9034f9a055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
