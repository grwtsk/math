# NatIso.mapHomologicalComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:278479e884883e69c0fd354a6cf4f2a7d046fd39e788a709665637ed05a6b84c",
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
  "slug": "natiso-maphomologicalcomplex--d37a608f014c7b2e16e18366",
  "source": {
    "blob": "b125c353605ae3c932895ae3f4598e9e7e8b3023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant9c070f7a324089af50864710f2b632b977bbe323fe568c4df5bede70c4daf675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d37a608f014c7b2e16e18366d3a573b0633267f663d657c25817dcc1fa246adb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant9c070f7a324089af50864710f2b632b977bbe323fe568c4df5bede70c4daf675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:278479e884883e69c0fd354a6cf4f2a7d046fd39e788a709665637ed05a6b84c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NatIso.mapHomologicalComplex {F G : W₁ ⥤ W₂} [F.PreservesZeroMorphisms]
    [G.PreservesZeroMorphisms] (α : F ≅ G) (c : ComplexShape ι) :
    F.mapHomologicalComplex c ≅ G.mapHomologicalComplex c where
  hom := NatTrans.mapHomologicalComplex α.hom c
  inv := NatTrans.mapHomologicalComplex α.inv c
  hom_inv_id := by simp only [← NatTrans.mapHomologicalComplex_comp, α.hom_inv_id,
    NatTrans.mapHomologicalComplex_id]
  inv_hom_id := by simp only [← NatTrans.mapHomologicalComplex_comp, α.inv_hom_id,
    NatTrans.mapHomologicalComplex_id]

/-- If additive functors are related by an isomorphism `F ⋙ G ≅ H`, this is
the corresponding isomorphism for the induced functors on categories
of homological complexes. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant9c070f7a324089af50864710f2b632b977bbe323fe568c4df5bede70c4daf675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variant9c070f7a324089af50864710f2b632b977bbe323fe568c4df5bede70c4daf675.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b125c353605ae3c932895ae3f4598e9e7e8b3023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
