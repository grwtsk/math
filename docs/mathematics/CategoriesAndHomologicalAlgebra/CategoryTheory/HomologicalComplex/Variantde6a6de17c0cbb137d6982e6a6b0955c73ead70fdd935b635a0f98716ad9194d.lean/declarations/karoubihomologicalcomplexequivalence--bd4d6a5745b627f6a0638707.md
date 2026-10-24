# karoubiHomologicalComplexEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39e2f4f05229d1287fe5582c03a652793d19258800b0c9e8b352b826a9bd7954",
  "kind": "def",
  "lexical_name": "karoubiHomologicalComplexEquivalence",
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
  "slug": "karoubihomologicalcomplexequivalence--bd4d6a5745b627f6a0638707",
  "source": {
    "blob": "3efddee1016cd154c3ae71579922da20fa2d0890",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd4d6a5745b627f6a0638707b12b8d1149482987f34f42a819ae6800da05d100",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39e2f4f05229d1287fe5582c03a652793d19258800b0c9e8b352b826a9bd7954`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def karoubiHomologicalComplexEquivalence :
    Karoubi (HomologicalComplex C c) ≌ HomologicalComplex (Karoubi C) c where
  functor := KaroubiHomologicalComplexEquivalence.functor
  inverse := KaroubiHomologicalComplexEquivalence.inverse
  unitIso := KaroubiHomologicalComplexEquivalence.unitIso
  counitIso := KaroubiHomologicalComplexEquivalence.counitIso

variable (α : Type*) [AddRightCancelSemigroup α] [One α]

/-- The equivalence `Karoubi (ChainComplex C α) ≌ ChainComplex (Karoubi C) α`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantde6a6de17c0cbb137d6982e6a6b0955c73ead70fdd935b635a0f98716ad9194d.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3efddee1016cd154c3ae71579922da20fa2d0890` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
