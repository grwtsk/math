# toΓSpecSheafedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:799c4176c795feb3b803f45ba1e675b1e10d89f1421a378340801be2e377db2e",
  "kind": "def",
  "lexical_name": "toΓSpecSheafedSpace",
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
  "slug": "to-specsheafedspace--b61c84ea39280da0f3370051",
  "source": {
    "blob": "b6fbd7fd54059fc19b4a4117c86887875597888a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 190,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b61c84ea39280da0f3370051e73b0a1e972aedebb9edd8eb99a607b81536222e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:799c4176c795feb3b803f45ba1e675b1e10d89f1421a378340801be2e377db2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toΓSpecSheafedSpace : X.toSheafedSpace ⟶ Spec.toSheafedSpace.obj (op (Γ.obj (op X))) where
  base := X.toΓSpecBase
  c :=
    TopCat.Sheaf.restrictHomEquivHom (structureSheaf (Γ.obj (op X))).1 _ isBasis_basic_opens
      X.toΓSpecCBasicOpens
#align algebraic_geometry.LocallyRingedSpace.to_Γ_Spec_SheafedSpace AlgebraicGeometry.LocallyRingedSpace.toΓSpecSheafedSpace

-- Porting Note: Now need much more hand holding: all variables explicit, and need to tidy up
-- significantly, was `TopCat.Sheaf.extend_hom_app _ _ _ _`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fbd7fd54059fc19b4a4117c86887875597888a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
