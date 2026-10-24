# additive_of_preservesBinaryBiproducts

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
      "line": 143,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4ccd411-321c-6241-8472-68b4d3a72dac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef0bb2b7-1c77-2097-95a8-3b37e86ffbb5",
  "kind": "theorem",
  "lexical_name": "additive_of_preservesBinaryBiproducts",
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
  "slug": "additive-of-preservesbinarybiproducts--cb8e13612ecc2722f56393c7",
  "source": {
    "blob": "be34207a87f4608e54573435bc614bb9b9fd97e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 143,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb8e13612ecc2722f56393c786a71a27556bab11bb903c22783c7b1e95ecfe2e",
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

Occurrence: `result:ef0bb2b7-1c77-2097-95a8-3b37e86ffbb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem additive_of_preservesBinaryBiproducts [HasBinaryBiproducts C] [PreservesZeroMorphisms F]
    [PreservesBinaryBiproducts F] : Additive F where
  map_add {X Y f g} := by
    rw [biprod.add_eq_lift_id_desc, F.map_comp, ← biprod.lift_mapBiprod,
      ← biprod.mapBiprod_hom_desc, Category.assoc, Iso.inv_hom_id_assoc, F.map_id,
      biprod.add_eq_lift_id_desc]
#align category_theory.functor.additive_of_preserves_binary_biproducts CategoryTheory.Functor.additive_of_preservesBinaryBiproducts

end

end

end Functor

namespace Equivalence

variable {C D : Type*} [Category C] [Category D] [Preadditive C] [Preadditive D]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AdditiveFunctor/Variant370b178b09016be5d3fa0a015cbc3edd50ab4810c7751d30ca179b16bdbbdb04.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be34207a87f4608e54573435bc614bb9b9fd97e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
