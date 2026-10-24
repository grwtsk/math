# Pseudofunctor.ofLaxFunctorToLocallyGroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c45c2a5f3518a2df2c5b645b62ddc6c40d66eeda5788e5c3a06d3608ef0b86f",
  "kind": "def",
  "lexical_name": "Pseudofunctor.ofLaxFunctorToLocallyGroupoid",
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
  "slug": "pseudofunctor-oflaxfunctortolocallygroupoid--0b2b249ec275188fc15bfcbe",
  "source": {
    "blob": "9f95505641e7bf3276345af67180bcf1786ff563",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyGroupoid/Varianta3eab48b663188dff8a128a531348f625b337b706fdf1a93c4e4a246ade1a70b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b2b249ec275188fc15bfcbe67da23335e2b91c1a0f44ab8c69a53633a22d78c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyGroupoid/Varianta3eab48b663188dff8a128a531348f625b337b706fdf1a93c4e4a246ade1a70b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c45c2a5f3518a2df2c5b645b62ddc6c40d66eeda5788e5c3a06d3608ef0b86f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Pseudofunctor.ofLaxFunctorToLocallyGroupoid
    {B' : Type u₂} [Bicategory.{w₂, v₂} B'] [IsLocallyGroupoid B] (F : LaxFunctor B' B) :
    F.PseudoCore where
  mapIdIso x := (asIso (F.mapId x)).symm
  mapCompIso f g := (asIso <| F.mapComp f g).symm

/-- If `B` is a (2,1)-category, then every oplax functor `F` from a bicategory to `B` defines
a `CategoryTheory.OplaxFunctor.PseudoCore` structure on `F` that can be used to promote `F`
to a pseudofunctor using `CategoryTheory.Pseudofunctor.mkOfOplax`. -/
@[simps! mapIdIso_inv mapCompIso_inv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyGroupoid/Varianta3eab48b663188dff8a128a531348f625b337b706fdf1a93c4e4a246ade1a70b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyGroupoid/Varianta3eab48b663188dff8a128a531348f625b337b706fdf1a93c4e4a246ade1a70b.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f95505641e7bf3276345af67180bcf1786ff563` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
