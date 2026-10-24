# singleFunctorsPostcompQIso_inv_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f481dc2aa653b1ca26ce019ff109ebbadadcc462",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 265,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3b772154-c4d8-aa88-bc4d-8df145ae6197",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56a12b9b-2b75-79c8-696b-eed1935c9aaf",
  "kind": "lemma",
  "lexical_name": "singleFunctorsPostcompQIso_inv_hom",
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
  "slug": "singlefunctorspostcompqiso-inv-hom--27f90f9e82869c4d5a87618d",
  "source": {
    "blob": "f481dc2aa653b1ca26ce019ff109ebbadadcc462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 265,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27f90f9e82869c4d5a87618dff8b810750b4d39e51a5f17f896dc49944f73b47",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56a12b9b-2b75-79c8-696b-eed1935c9aaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 265–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma singleFunctorsPostcompQIso_inv_hom (n : ℤ) :
    (singleFunctorsPostcompQIso C).inv.hom n = 𝟙 _ := by
  ext X
  dsimp [singleFunctorsPostcompQIso, HomotopyCategory.singleFunctorsPostcompQuotientIso,
    quotientCompQhIso, HomologicalComplexUpToQuasiIso.quotientCompQhIso]
  erw [CategoryTheory.Functor.map_id]
  rw [SingleFunctors.id_hom, NatTrans.id_app]
  erw [Category.id_comp, Category.id_comp]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variantfb8f19b783ca787b3714597b14855ff18300e71e7cca9f2412215c78d2804e63.lean#L265).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f481dc2aa653b1ca26ce019ff109ebbadadcc462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
