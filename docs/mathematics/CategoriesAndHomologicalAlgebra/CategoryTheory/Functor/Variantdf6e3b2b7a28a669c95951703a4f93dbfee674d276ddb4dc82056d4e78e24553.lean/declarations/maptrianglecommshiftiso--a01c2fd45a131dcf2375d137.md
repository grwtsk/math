# mapTriangleCommShiftIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f03aa743b0a5b7987c20be7eb3758dcd0e48f0698bcdb9ecfe149249f51ecade",
  "kind": "def",
  "lexical_name": "mapTriangleCommShiftIso",
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
  "slug": "maptrianglecommshiftiso--a01c2fd45a131dcf2375d137",
  "source": {
    "blob": "72a7dcbb4019c0cebe55d7f39308ad02735b86f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a01c2fd45a131dcf2375d1377a5999e443fc01c13bbfd067bcca17cd5d81d52f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f03aa743b0a5b7987c20be7eb3758dcd0e48f0698bcdb9ecfe149249f51ecade`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapTriangleCommShiftIso (n : ℤ) :
    Triangle.shiftFunctor C n ⋙ F.mapTriangle ≅ F.mapTriangle ⋙ Triangle.shiftFunctor D n :=
  NatIso.ofComponents (fun T => Triangle.isoMk _ _
    ((F.commShiftIso n).app _) ((F.commShiftIso n).app _) ((F.commShiftIso n).app _)
    (by simp) (by simp) (by
      dsimp
      simp only [map_units_smul, map_comp, Linear.units_smul_comp, assoc,
        Linear.comp_units_smul, ← F.commShiftIso_hom_naturality_assoc]
      rw [F.map_shiftFunctorComm_hom_app T.obj₁ 1 n]
      simp only [comp_obj, assoc, Iso.inv_hom_id_app_assoc,
        ← Functor.map_comp, Iso.inv_hom_id_app, map_id, comp_id])) (by aesop_cat)

attribute [simps!] mapTriangleCommShiftIso

attribute [local simp] map_zsmul comp_zsmul zsmul_comp
  commShiftIso_zero commShiftIso_add commShiftIso_comp_hom_app
  shiftFunctorAdd'_eq_shiftFunctorAdd

-- Split out from the following instance for faster elaboration.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variantdf6e3b2b7a28a669c95951703a4f93dbfee674d276ddb4dc82056d4e78e24553.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72a7dcbb4019c0cebe55d7f39308ad02735b86f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
