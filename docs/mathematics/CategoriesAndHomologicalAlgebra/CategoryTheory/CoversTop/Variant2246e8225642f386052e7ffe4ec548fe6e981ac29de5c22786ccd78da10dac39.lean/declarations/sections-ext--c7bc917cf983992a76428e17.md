# sections_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30872ff792de98589d5b2f6b53fbd772b422f62c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ea9c722-5ece-bd3f-d81c-73fcfcd95206",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b406b4e-59df-2a6a-8a52-eaf5a8c8d29a",
  "kind": "lemma",
  "lexical_name": "sections_ext",
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
  "slug": "sections-ext--c7bc917cf983992a76428e17",
  "source": {
    "blob": "30872ff792de98589d5b2f6b53fbd772b422f62c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7bc917cf983992a76428e17f476792c5635139618586c36bd53b6e12c38ba74",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b406b4e-59df-2a6a-8a52-eaf5a8c8d29a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sections_ext (F : Sheaf J (Type _)) {x y : F.1.sections}
    (h : ∀ (i : I), x.1 (Opposite.op (Y i)) = y.1 (Opposite.op (Y i))) :
    x = y := by
  ext W
  apply (Presieve.isSeparated_of_isSheaf J F.1
    ((isSheaf_iff_isSheaf_of_type _ _).1 F.2) _ (hY W.unop)).ext
  rintro T a ⟨i, ⟨b⟩⟩
  simpa using congr_arg (F.1.map b.op) (h i)

end CoversTop

end GrothendieckTopology

namespace Presheaf

variable (F : Cᵒᵖ ⥤ Type w) {I : Type*} (Y : I → C)

/-- A family of elements of a presheaf of types `F` indexed by a family of objects
`Y : I → C` consists of the data of an element in `F.obj (Opposite.op (Y i))` for all `i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoversTop/Variant2246e8225642f386052e7ffe4ec548fe6e981ac29de5c22786ccd78da10dac39.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30872ff792de98589d5b2f6b53fbd772b422f62c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
