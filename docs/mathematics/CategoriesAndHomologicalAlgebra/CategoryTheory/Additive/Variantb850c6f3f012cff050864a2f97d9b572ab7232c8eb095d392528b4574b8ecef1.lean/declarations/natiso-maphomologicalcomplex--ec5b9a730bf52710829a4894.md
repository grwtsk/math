# NatIso.mapHomologicalComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad1a3dbaef9f3f65567a23a9ade0883e4f8f8f6e908bd64a6620f1d9e9d828c8",
  "kind": "def",
  "lexical_name": "NatIso.mapHomologicalComplex",
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
  "slug": "natiso-maphomologicalcomplex--ec5b9a730bf52710829a4894",
  "source": {
    "blob": "1be67baae8d6de14793968eb63cb74711ba05917",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 239,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec5b9a730bf52710829a48940ad44b44fef1330922b075dc7599af20537327df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad1a3dbaef9f3f65567a23a9ade0883e4f8f8f6e908bd64a6620f1d9e9d828c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NatIso.mapHomologicalComplex {F G : V ⥤ W} [F.Additive] [G.Additive] (α : F ≅ G)
    (c : ComplexShape ι) : F.mapHomologicalComplex c ≅ G.mapHomologicalComplex c where
  hom := NatTrans.mapHomologicalComplex α.hom c
  inv := NatTrans.mapHomologicalComplex α.inv c
  hom_inv_id := by simp only [← NatTrans.mapHomologicalComplex_comp, α.hom_inv_id,
    NatTrans.mapHomologicalComplex_id]
  inv_hom_id := by simp only [← NatTrans.mapHomologicalComplex_comp, α.inv_hom_id,
    NatTrans.mapHomologicalComplex_id]
#align category_theory.nat_iso.map_homological_complex CategoryTheory.NatIso.mapHomologicalComplex

/-- An equivalence of categories induces an equivalences between the respective categories
of homological complex.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantb850c6f3f012cff050864a2f97d9b572ab7232c8eb095d392528b4574b8ecef1.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1be67baae8d6de14793968eb63cb74711ba05917` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
