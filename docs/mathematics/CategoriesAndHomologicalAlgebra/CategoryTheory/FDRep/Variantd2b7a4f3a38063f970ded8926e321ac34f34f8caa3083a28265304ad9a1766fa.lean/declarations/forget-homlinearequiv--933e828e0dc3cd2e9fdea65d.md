# forget₂HomLinearEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1e3e8ca05b1842477a2f0a3e69ee87a98f52cae00fc9f12689099d62d78739e",
  "kind": "def",
  "lexical_name": "forget₂HomLinearEquiv",
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
  "slug": "forget-homlinearequiv--933e828e0dc3cd2e9fdea65d",
  "source": {
    "blob": "ac10cef32031bc419299c2aff04596848c0eebc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantd2b7a4f3a38063f970ded8926e321ac34f34f8caa3083a28265304ad9a1766fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:933e828e0dc3cd2e9fdea65d06707dc416155924b97bc163cc799637e1850df1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantd2b7a4f3a38063f970ded8926e321ac34f34f8caa3083a28265304ad9a1766fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1e3e8ca05b1842477a2f0a3e69ee87a98f52cae00fc9f12689099d62d78739e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def forget₂HomLinearEquiv (X Y : FDRep R G) :
    ((forget₂ (FDRep R G) (Rep R G)).obj X ⟶
      (forget₂ (FDRep R G) (Rep R G)).obj Y) ≃ₗ[R] X ⟶ Y where
  toFun f := ⟨InducedCategory.homMk (ModuleCat.ofHom <| f.hom.toLinearMap), fun g ↦ by
    ext1
    simp only [FGModuleCat.obj_carrier]
    exact f.hom.2 g⟩
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  invFun f := Rep.ofHom ⟨((forget₂ (FGModuleCat R) (ModuleCat R)).map f.hom).hom, fun g ↦ by
    ext x
    exact ConcreteCategory.congr_hom ((forget (FGModuleCat R)).congr_map (f.comm g)) x⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantd2b7a4f3a38063f970ded8926e321ac34f34f8caa3083a28265304ad9a1766fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FDRep/Variantd2b7a4f3a38063f970ded8926e321ac34f34f8caa3083a28265304ad9a1766fa.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac10cef32031bc419299c2aff04596848c0eebc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
