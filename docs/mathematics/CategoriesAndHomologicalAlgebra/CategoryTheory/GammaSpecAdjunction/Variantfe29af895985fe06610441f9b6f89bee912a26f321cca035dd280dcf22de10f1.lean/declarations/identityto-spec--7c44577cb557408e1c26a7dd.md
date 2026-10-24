# identityToΓSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c37635b7ca2413199cee3d366ba2de8f4d0b0d2067204dd3e335f3e1ad7a20a6",
  "kind": "def",
  "lexical_name": "identityToΓSpec",
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
  "slug": "identityto-spec--7c44577cb557408e1c26a7dd",
  "source": {
    "blob": "737bd9ec6c97ad20d21b058ff46eaa90fedd89c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 282,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7c44577cb557408e1c26a7dd9215fbebdd269fa56c613ec291c8b2fd9ffdec82",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c37635b7ca2413199cee3d366ba2de8f4d0b0d2067204dd3e335f3e1ad7a20a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identityToΓSpec : 𝟭 LocallyRingedSpace.{u} ⟶ Γ.rightOp ⋙ Spec.toLocallyRingedSpace where
  app := LocallyRingedSpace.toΓSpec
  naturality X Y f := by
    symm
    apply LocallyRingedSpace.comp_ring_hom_ext
    · ext1 x
      dsimp
      show PrimeSpectrum.comap (f.c.app (op ⊤)).hom (X.toΓSpecFun x) = Y.toΓSpecFun (f.base x)
      dsimp [toΓSpecFun]
      rw [← IsLocalRing.comap_closedPoint (f.stalkMap x).hom, ←
        PrimeSpectrum.comap_comp_apply, ← PrimeSpectrum.comap_comp_apply,
        ← CommRingCat.hom_comp, ← CommRingCat.hom_comp]
      congr 3
      exact (PresheafedSpace.stalkMap_germ f.1 ⊤ x trivial).symm
    · intro r
      rw [LocallyRingedSpace.comp_c_app, ← Category.assoc]
      erw [Y.toΓSpecSheafedSpace_app_spec, f.c.naturality]
      rfl

namespace ΓSpec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `737bd9ec6c97ad20d21b058ff46eaa90fedd89c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
