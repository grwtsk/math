# cochainComplexEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a308d61f6f56b46f16de5c0f9753600dceceb88592e81f7a4913e5370ab5f3fa",
  "kind": "def",
  "lexical_name": "cochainComplexEquivalence",
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
  "slug": "cochaincomplexequivalence--495b850c4eebfaf78cc1597b",
  "source": {
    "blob": "f8cb3e17ee8bbb57c972e8b667130577d45ba666",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant6eb24465f96ef77f337ea60416c75925ce37a8a7e95db1ab7bec6cdddff420fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:495b850c4eebfaf78cc1597b2642d015d3b650f39d270d965e49b21d33184cf7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant6eb24465f96ef77f337ea60416c75925ce37a8a7e95db1ab7bec6cdddff420fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a308d61f6f56b46f16de5c0f9753600dceceb88592e81f7a4913e5370ab5f3fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cochainComplexEquivalence :
    ChainComplex C ℤ ≌ CochainComplex C ℤ where
  functor := ComplexShape.embeddingUpIntDownInt.restrictionFunctor C
  inverse := ComplexShape.embeddingDownIntUpInt.restrictionFunctor C
  unitIso :=
    NatIso.ofComponents (fun K ↦ HomologicalComplex.Hom.isoOfComponents
      (fun n ↦ K.XIsoOfEq (by simp)))
  counitIso :=
    NatIso.ofComponents (fun K ↦ HomologicalComplex.Hom.isoOfComponents
      (fun n ↦ K.XIsoOfEq (by simp)))

end ChainComplex

namespace CochainComplex

/-- The equivalence of categories `(CochainComplex C ℤ)ᵒᵖ ≌ CochainComplex Cᵒᵖ ℤ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant6eb24465f96ef77f337ea60416c75925ce37a8a7e95db1ab7bec6cdddff420fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/CochainComplexOpposite/Variant6eb24465f96ef77f337ea60416c75925ce37a8a7e95db1ab7bec6cdddff420fa.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8cb3e17ee8bbb57c972e8b667130577d45ba666` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
