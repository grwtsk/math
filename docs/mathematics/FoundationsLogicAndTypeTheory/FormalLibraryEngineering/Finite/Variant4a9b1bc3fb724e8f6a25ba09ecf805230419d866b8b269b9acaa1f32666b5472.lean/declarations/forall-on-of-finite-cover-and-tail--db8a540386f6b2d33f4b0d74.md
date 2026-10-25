# forall_on_of_finite_cover_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad4f886bd423358ccd43d6af85b0ee58a9f752b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64fe2b44-de54-7578-cbca-34a53257768d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4604fc3a-2e0d-6b0c-80b3-9c7c6c4e94f1",
  "kind": "theorem",
  "lexical_name": "forall_on_of_finite_cover_and_tail",
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
  "slug": "forall-on-of-finite-cover-and-tail--db8a540386f6b2d33f4b0d74",
  "source": {
    "blob": "ad4f886bd423358ccd43d6af85b0ee58a9f752b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db8a540386f6b2d33f4b0d74d540c62616765924d24eb34642a4706d3964f5d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4604fc3a-2e0d-6b0c-80b3-9c7c6c4e94f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forall_on_of_finite_cover_and_tail (domain tail : Set α)
    (cells : ι → Set α) (indices : Finset ι) (P : α → Prop)
    (hcover : ∀ x ∈ domain, (∃ i ∈ indices, x ∈ cells i) ∨ x ∈ tail)
    (hlocal : ∀ i ∈ indices, ∀ x ∈ cells i, P x)
    (htail : ∀ x ∈ tail, P x) :
    ∀ x ∈ domain, P x := by
  intro x hx
  rcases hcover x hx with ⟨i, hi, hxi⟩ | hxtail
  · exact hlocal i hi x hxi
  · exact htail x hxtail

/-- Every finite tested real range admits a property that holds throughout it
and fails later on the same ray. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Finite/Variant4a9b1bc3fb724e8f6a25ba09ecf805230419d866b8b269b9acaa1f32666b5472.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad4f886bd423358ccd43d6af85b0ee58a9f752b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
