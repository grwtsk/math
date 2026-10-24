# costructuredArrowOpEquivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbe0c88543033a42f3825593318dce3718cc7a72d5a3867d0932be68aacdf87d",
  "kind": "def",
  "lexical_name": "costructuredArrowOpEquivalence",
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
  "slug": "costructuredarrowopequivalence--0502892b4c3f86283e7d296d",
  "source": {
    "blob": "4fa75d9ae03fcd6156b7073cedfb9c18007fabfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 875,
    "line": 859,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0502892b4c3f86283e7d296d64b4a6b25455ba78fe544e2f2381040f59ae7791",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbe0c88543033a42f3825593318dce3718cc7a72d5a3867d0932be68aacdf87d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def costructuredArrowOpEquivalence (F : C ⥤ D) (d : D) :
    (CostructuredArrow F d)ᵒᵖ ≌ StructuredArrow (op d) F.op :=
  Equivalence.mk (CostructuredArrow.toStructuredArrow F d)
    (StructuredArrow.toCostructuredArrow' F d).rightOp
    (NatIso.ofComponents
      (fun X => (CostructuredArrow.isoMk (Iso.refl _)).op)
      fun {X Y} f => Quiver.Hom.unop_inj <| by
        apply CommaMorphism.ext <;>
          dsimp [CostructuredArrow.isoMk, CostructuredArrow.homMk, Comma.isoMk]; simp )
    (NatIso.ofComponents
      (fun X => StructuredArrow.isoMk (Iso.refl _))
      fun {X Y} f => by
        apply CommaMorphism.ext <;>
          dsimp [StructuredArrow.isoMk, StructuredArrow.homMk, Comma.isoMk]; simp )
#align category_theory.costructured_arrow_op_equivalence CategoryTheory.costructuredArrowOpEquivalence

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fa75d9ae03fcd6156b7073cedfb9c18007fabfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
