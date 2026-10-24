# AdditiveFunctor.ofRightExact_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "be34207a87f4608e54573435bc614bb9b9fd97e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f78179b8-8813-28e0-fdb4-3b772b9f227a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:987e8320-e752-b130-e0ff-ba076e28837a",
  "kind": "theorem",
  "lexical_name": "AdditiveFunctor.ofRightExact_map",
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
  "slug": "additivefunctor-ofrightexact-map--ce2fc00633c931efac5f839f",
  "source": {
    "blob": "be34207a87f4608e54573435bc614bb9b9fd97e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 313,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce2fc00633c931efac5f839fc2dddd1a4dcdc6af62cc660ff8e308bd58414aba",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987e8320-e752-b130-e0ff-ba076e28837a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AdditiveFunctor.ofRightExact_map {F G : C ⥤ᵣ D} (α : F ⟶ G) :
    (AdditiveFunctor.ofRightExact C D).map α = α :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Additive_Functor.of_right_exact_map CategoryTheory.AdditiveFunctor.ofRightExact_map

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be34207a87f4608e54573435bc614bb9b9fd97e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
