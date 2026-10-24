# liftNatTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c60693b7e329ad64e2bec0cc6d25571d13fd3db6b98b48effc3d078d272ac9c",
  "kind": "instance",
  "lexical_name": "liftNatTrans",
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
  "slug": "liftnattrans--9d4f5c300f04ce3be9295246",
  "source": {
    "blob": "2e078a3576905119958f0614f89f837d2f1e1d92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 344,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant11ec5e63f9b6a3c65a78b742f3509ac38bdb9dd318e51120ac94be7981ddedcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d4f5c300f04ce3be9295246d8a1eac48900f9662e75fac603602e2f9a6fad1e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant11ec5e63f9b6a3c65a78b742f3509ac38bdb9dd318e51120ac94be7981ddedcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c60693b7e329ad64e2bec0cc6d25571d13fd3db6b98b48effc3d078d272ac9c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance liftNatTrans [HasShift E A]
    (F₁ F₂ : C ⥤ E) [F₁.CommShift A] [F₂.CommShift A]
    (F₁' F₂' : D ⥤ E) [F₁'.CommShift A] [F₂'.CommShift A]
    [Lifting L W F₁ F₁'] [Lifting L W F₂ F₂']
    [NatTrans.CommShift (Lifting.iso L W F₁ F₁').hom A]
    [NatTrans.CommShift (Lifting.iso L W F₂ F₂').hom A]
    (τ : F₁ ⟶ F₂) [NatTrans.CommShift τ A] :
    NatTrans.CommShift (Localization.liftNatTrans L W F₁ F₂ F₁' F₂' τ) A where
  shift_comm m :=
    Localization.natTrans_ext L W (fun X ↦ by
      simp [← cancel_epi (F₁'.map ((L.commShiftIso m).hom.app X)),
        shift_app, Functor.commShiftIso_comp_hom_app, Functor.commShiftIso_comp_inv_app,
        ← Functor.map_comp_assoc])

end NatTrans.CommShift

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant11ec5e63f9b6a3c65a78b742f3509ac38bdb9dd318e51120ac94be7981ddedcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant11ec5e63f9b6a3c65a78b742f3509ac38bdb9dd318e51120ac94be7981ddedcd.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e078a3576905119958f0614f89f837d2f1e1d92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
