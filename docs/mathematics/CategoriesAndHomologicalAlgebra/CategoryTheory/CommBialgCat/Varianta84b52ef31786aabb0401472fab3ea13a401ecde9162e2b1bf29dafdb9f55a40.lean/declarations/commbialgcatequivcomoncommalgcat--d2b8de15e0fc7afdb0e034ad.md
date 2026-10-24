# commBialgCatEquivComonCommAlgCat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c00e438957475b9a3019e3adb198b888b289c510c211eb8965dc7d6c7517f3ac",
  "kind": "def",
  "lexical_name": "commBialgCatEquivComonCommAlgCat",
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
  "slug": "commbialgcatequivcomoncommalgcat--d2b8de15e0fc7afdb0e034ad",
  "source": {
    "blob": "89bc7b984487d018df21946afc2eb97ed4d967a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 219,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Varianta84b52ef31786aabb0401472fab3ea13a401ecde9162e2b1bf29dafdb9f55a40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2b8de15e0fc7afdb0e034adccd42ebf5d66da1ea3ec97a18f0a3005693708a5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Varianta84b52ef31786aabb0401472fab3ea13a401ecde9162e2b1bf29dafdb9f55a40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c00e438957475b9a3019e3adb198b888b289c510c211eb8965dc7d6c7517f3ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def commBialgCatEquivComonCommAlgCat : CommBialgCat R ≌ (Mon (CommAlgCat R)ᵒᵖ)ᵒᵖ where
  functor.obj A := .op <| .mk <| .op <| .of R A
  functor.map {A B} f := .op <| .mk' <| .op <| CommAlgCat.ofHom <| f.hom.toAlgHom
  inverse.obj A := .of R A.unop.X.unop
  inverse.map {A B} f := CommBialgCat.ofHom <| .ofAlgHom f.unop.hom.unop.hom
    congr(($(IsMonHom.one_hom (f := f.unop.hom))).unop.hom)
    congr(($((IsMonHom.mul_hom (f := f.unop.hom)).symm)).unop.hom)
  unitIso.hom := 𝟙 _
  unitIso.inv := 𝟙 _
  counitIso.hom := 𝟙 _
  counitIso.inv := 𝟙 _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Varianta84b52ef31786aabb0401472fab3ea13a401ecde9162e2b1bf29dafdb9f55a40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommBialgCat/Varianta84b52ef31786aabb0401472fab3ea13a401ecde9162e2b1bf29dafdb9f55a40.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89bc7b984487d018df21946afc2eb97ed4d967a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
