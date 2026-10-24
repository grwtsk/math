# hComp'_iff_of_equivalences

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9762296b862661c53512e7de326a32057a65ecdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 152,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e88b1add46eb87bd3aa2e5f727fc8c1a6c6dd189a4aae1ab5af4e84dac4c3b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3aae28d1-3545-2f40-dda7-7bdeabb23bde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5738e06-7bdc-b67e-e526-f6cda918b732",
  "kind": "lemma",
  "lexical_name": "hComp'_iff_of_equivalences",
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
  "slug": "hcomp-iff-of-equivalences--6d6ffa0dbb1605fc9ce1797e",
  "source": {
    "blob": "9762296b862661c53512e7de326a32057a65ecdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HorizontalComposition/Variant6e88b1add46eb87bd3aa2e5f727fc8c1a6c6dd189a4aae1ab5af4e84dac4c3b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d6ffa0dbb1605fc9ce1797e44e866fad984cfd5df3f5b75540adc72beda758c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HorizontalComposition/Variant6e88b1add46eb87bd3aa2e5f727fc8c1a6c6dd189a4aae1ab5af4e84dac4c3b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5738e06-7bdc-b67e-e526-f6cda918b732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hComp'_iff_of_equivalences (E : C₂ ≌ C₃) (E' : D₂ ≌ D₃)
    (w' : E.functor ⋙ V₃ ≅ V₂ ⋙ E'.functor)
    {T₁₂ : C₁ ⥤ C₃} {B₁₂ : D₁ ⥤ D₃} (eT : T₁ ⋙ E.functor ≅ T₁₂)
    (eB : B₁ ⋙ E'.functor ≅ B₁₂) :
    (w.hComp' w'.hom eT eB).GuitartExact ↔ w.GuitartExact := by
  rw [← hComp_iff_of_equivalences w E E' w', TwoSquare.hComp', whiskerHorizontal_iff]

end GuitartExact

end HorizontalComposition

end TwoSquare

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HorizontalComposition/Variant6e88b1add46eb87bd3aa2e5f727fc8c1a6c6dd189a4aae1ab5af4e84dac4c3b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HorizontalComposition/Variant6e88b1add46eb87bd3aa2e5f727fc8c1a6c6dd189a4aae1ab5af4e84dac4c3b8.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9762296b862661c53512e7de326a32057a65ecdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
