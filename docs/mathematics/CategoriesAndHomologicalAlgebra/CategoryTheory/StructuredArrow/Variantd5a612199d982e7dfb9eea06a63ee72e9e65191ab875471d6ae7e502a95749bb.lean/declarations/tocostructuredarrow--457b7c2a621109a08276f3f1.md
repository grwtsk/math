# toCostructuredArrow'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42c1a7d040fd5b1c1e32e98383cd0f9f7bfb65bf40ed7227df566f38ec91ade2",
  "kind": "def",
  "lexical_name": "toCostructuredArrow'",
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
  "slug": "tocostructuredarrow--457b7c2a621109a08276f3f1",
  "source": {
    "blob": "4fa75d9ae03fcd6156b7073cedfb9c18007fabfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 805,
    "line": 784,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:457b7c2a621109a08276f3f198b3868ad348ce50a151ce5d29c5df8b85608565",
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

Occurrence: `declaration:42c1a7d040fd5b1c1e32e98383cd0f9f7bfb65bf40ed7227df566f38ec91ade2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 784–805.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCostructuredArrow' (F : C ⥤ D) (d : D) :
    (StructuredArrow (op d) F.op)ᵒᵖ ⥤ CostructuredArrow F d
    where
  obj X := @CostructuredArrow.mk _ _ _ _ _ (unop X.unop.right) F X.unop.hom.unop
  map f :=
    CostructuredArrow.homMk f.unop.right.unop
      (by
        dsimp
        rw [← Quiver.Hom.unop_op (F.map (Quiver.Hom.unop f.unop.right)), ← unop_comp, ← F.op_map, ←
          f.unop.w, Functor.const_obj_map]
        erw [Category.id_comp])
#align category_theory.structured_arrow.to_costructured_arrow' CategoryTheory.StructuredArrow.toCostructuredArrow'

end StructuredArrow

namespace CostructuredArrow

/-- For a functor `F : C ⥤ D` and an object `d : D`, we obtain a contravariant functor from the
category of costructured arrows `F.obj c ⟶ d` to the category of structured arrows
`op d ⟶ F.op.obj c`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean#L784).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fa75d9ae03fcd6156b7073cedfb9c18007fabfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
