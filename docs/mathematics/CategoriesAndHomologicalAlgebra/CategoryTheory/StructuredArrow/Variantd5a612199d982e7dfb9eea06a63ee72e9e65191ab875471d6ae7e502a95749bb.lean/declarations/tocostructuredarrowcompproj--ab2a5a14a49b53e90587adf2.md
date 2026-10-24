# toCostructuredArrowCompProj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af653f54a706cf6486845ac532aa1d431cdab18c2877183aa03e1e7e61a04966",
  "kind": "def",
  "lexical_name": "toCostructuredArrowCompProj",
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
  "slug": "tocostructuredarrowcompproj--ab2a5a14a49b53e90587adf2",
  "source": {
    "blob": "4fa75d9ae03fcd6156b7073cedfb9c18007fabfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 751,
    "line": 746,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab2a5a14a49b53e90587adf2a675d1655346037e310cb878fbf3c46e92f8984a",
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

Occurrence: `declaration:af653f54a706cf6486845ac532aa1d431cdab18c2877183aa03e1e7e61a04966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–751.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toCostructuredArrowCompProj (G : E ⥤ C) (F : C ⥤ D) (X : D)
    (f : (Y : E) → F.obj (G.obj Y) ⟶ X) (h : ∀ {Y Z : E} (g : Y ⟶ Z), F.map (G.map g) ≫ f Z = f Y) :
    G.toCostructuredArrow F X f h ⋙ CostructuredArrow.proj _ _ ≅ G :=
  Iso.refl _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StructuredArrow/Variantd5a612199d982e7dfb9eea06a63ee72e9e65191ab875471d6ae7e502a95749bb.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fa75d9ae03fcd6156b7073cedfb9c18007fabfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
