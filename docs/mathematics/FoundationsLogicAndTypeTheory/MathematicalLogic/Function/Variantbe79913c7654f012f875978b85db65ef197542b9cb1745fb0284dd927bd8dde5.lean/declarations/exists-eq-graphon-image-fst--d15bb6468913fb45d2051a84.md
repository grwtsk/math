# exists_eq_graphOn_image_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a13c78becc50554e30be84f4e6e3eecd84221a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/be/be79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9dc4aff1-cd1e-b934-3687-9c38617f5a26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97dec543-b1ff-de40-e012-68b307bf0bb5",
  "kind": "lemma",
  "lexical_name": "exists_eq_graphOn_image_fst",
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
  "slug": "exists-eq-graphon-image-fst--d15bb6468913fb45d2051a84",
  "source": {
    "blob": "6a13c78becc50554e30be84f4e6e3eecd84221a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 416,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d15bb6468913fb45d2051a84ef14b678c254da2a92bc103adc633ceb98ad5f34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97dec543-b1ff-de40-e012-68b307bf0bb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_eq_graphOn_image_fst [Nonempty β] {s : Set (α × β)} :
    (∃ f : α → β, s = graphOn f (Prod.fst '' s)) ↔ InjOn Prod.fst s := by
  refine ⟨?_, fun h ↦ ?_⟩
  · rintro ⟨f, hf⟩
    rw [hf]
    exact InjOn.image_of_comp <| injOn_id _
  · have : ∀ x ∈ Prod.fst '' s, ∃ y, (x, y) ∈ s := forall_mem_image.2 fun (x, y) h ↦ ⟨y, h⟩
    choose! f hf using this
    rw [forall_mem_image] at hf
    use f
    rw [graphOn, image_image, EqOn.image_eq_self]
    exact fun x hx ↦ h (hf hx) hx rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Function/Variantbe79913c7654f012f875978b85db65ef197542b9cb1745fb0284dd927bd8dde5.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a13c78becc50554e30be84f4e6e3eecd84221a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
