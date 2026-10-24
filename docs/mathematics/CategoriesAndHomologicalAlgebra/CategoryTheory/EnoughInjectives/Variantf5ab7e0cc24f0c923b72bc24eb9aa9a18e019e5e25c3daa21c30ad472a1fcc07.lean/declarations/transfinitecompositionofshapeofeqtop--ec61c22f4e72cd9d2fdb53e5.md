# transfiniteCompositionOfShapeOfEqTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:048c9baa0e8345f9a9a5b1f613a201e2be275949ff5e1e5926c162cdaf5b3ddf",
  "kind": "def",
  "lexical_name": "transfiniteCompositionOfShapeOfEqTop",
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
  "slug": "transfinitecompositionofshapeofeqtop--ec61c22f4e72cd9d2fdb53e5",
  "source": {
    "blob": "5f22186bb1930e25951b6b323618ef628d94132d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 277,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec61c22f4e72cd9d2fdb53e56efb5f9e6a36c268bb6ca3431ff543d9ab7e074b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:048c9baa0e8345f9a9a5b1f613a201e2be275949ff5e1e5926c162cdaf5b3ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def transfiniteCompositionOfShapeOfEqTop
    {J : Type w} [LinearOrder J] [OrderBot J] [SuccOrder J] [WellFoundedLT J] {j : J}
    (hj : transfiniteIterate (largerSubobject hG) j (Subobject.mk f) = ⊤) :
    (generatingMonomorphisms G).pushouts.TransfiniteCompositionOfShape (Set.Iic j) f := by
  let t := transfiniteIterate (largerSubobject hG) j (Subobject.mk f)
  have := (Subobject.isIso_arrow_iff_eq_top t).2 hj
  apply (transfiniteCompositionOfShapeMapFromBot hG (Subobject.mk f) j).ofArrowIso
  refine Arrow.isoMk ((Subobject.isoOfEq _ _ (transfiniteIterate_bot _ _) ≪≫
    Subobject.underlyingIso f)) (asIso t.arrow) ?_
  dsimp [MonoOver.forget]
  rw [assoc, Subobject.underlyingIso_hom_comp_eq_mk, Subobject.ofLE_arrow,
    Subobject.ofLE_arrow]

variable (f)

/-- Let `C` be a Grothendieck abelian category. Assume that `G : C` is a generator
of `C`. Then, any morphism in `C` is a transfinite composition of pushouts
of monomorphisms in the family `generatingMonomorphisms G` which consists
of the inclusions of the subobjects of `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnoughInjectives/Variantf5ab7e0cc24f0c923b72bc24eb9aa9a18e019e5e25c3daa21c30ad472a1fcc07.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f22186bb1930e25951b6b323618ef628d94132d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
