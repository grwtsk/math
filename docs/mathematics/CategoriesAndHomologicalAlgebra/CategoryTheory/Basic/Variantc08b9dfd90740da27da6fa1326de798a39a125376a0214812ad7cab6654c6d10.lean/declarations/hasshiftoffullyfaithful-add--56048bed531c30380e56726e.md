# hasShiftOfFullyFaithful_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d580bf98d23f6ce93182b46945ec451a91c538e08b01ad0def2f8ad908876a38",
  "kind": "def",
  "lexical_name": "hasShiftOfFullyFaithful_add",
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
  "slug": "hasshiftoffullyfaithful-add--56048bed531c30380e56726e",
  "source": {
    "blob": "ee271249d13116c05674a769ffdfbb16f79a4f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 696,
    "line": 689,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:56048bed531c30380e56726ea0246e9bc6cd035ca4790dedbca89d651633bcb4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d580bf98d23f6ce93182b46945ec451a91c538e08b01ad0def2f8ad908876a38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 689–696.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasShiftOfFullyFaithful_add (a b : A) : s (a + b) ≅ s a ⋙ s b :=
  natIsoOfCompFullyFaithful F (i (a + b) ≪≫ isoWhiskerLeft _ (shiftFunctorAdd D a b) ≪≫
      (Functor.associator _ _ _).symm ≪≫ (isoWhiskerRight (i a).symm _) ≪≫
      Functor.associator _ _ _ ≪≫ (isoWhiskerLeft _ (i b).symm) ≪≫
      (Functor.associator _ _ _).symm)
#align category_theory.has_shift_of_fully_faithful_add CategoryTheory.hasShiftOfFullyFaithful_add

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantc08b9dfd90740da27da6fa1326de798a39a125376a0214812ad7cab6654c6d10.lean#L689).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee271249d13116c05674a769ffdfbb16f79a4f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
