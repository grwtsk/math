# homEquivOfIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67597ed5e9f878da97c1800415f7ee2344baedffff919979eb0cf5cbb6912b1e",
  "kind": "def",
  "lexical_name": "homEquivOfIso",
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
  "slug": "homequivofiso--8df31149dcdfcaf069822254",
  "source": {
    "blob": "a425aafc567a31cd91731b19394ee0e071dfca7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8df31149dcdfcaf069822254f6007d0908767ec23860368b2b51f89e05828dc2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67597ed5e9f878da97c1800415f7ee2344baedffff919979eb0cf5cbb6912b1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homEquivOfIso {V W : Quiv} (e : V ≅ W) {X Y : V} :
    (X ⟶ Y) ≃ (e.hom.obj X ⟶ e.hom.obj Y) where
  toFun f := e.hom.map f
  invFun g := Quiver.homOfEq (e.inv.map g) (by simp) (by simp)
  left_inv f := by simp [inv_map_hom_map_of_iso]
  right_inv g := by simp [hom_map_inv_map_of_iso]

end

section
variable {V W : Type u} [Quiver V] [Quiver W]
  (e : V ≃ W) (he : ∀ X Y : V, (X ⟶ Y) ≃ (e X ⟶ e Y))

include he in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variante1f3f7c689391a8ede30aa114762c394d0a0e8e96c8ae6cc7ea3d1687c8a64eb.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a425aafc567a31cd91731b19394ee0e071dfca7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
