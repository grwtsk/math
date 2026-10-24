# sigmaConstObjCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:baa1953efe2b9ebafdab9a7b5f0f8f74e4837195337ee88d74c83f968b42ec3d",
  "kind": "def",
  "lexical_name": "sigmaConstObjCompIso",
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
  "slug": "sigmaconstobjcompiso--1a9c2d9b6c4595faa1f9eab1",
  "source": {
    "blob": "4b9601c5d45f2d41fcdb3f2c401b4022d1a6c303",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variant4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a9c2d9b6c4595faa1f9eab1b30a5ac4f575b927eba8c22076ffda930b3dce4c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variant4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:baa1953efe2b9ebafdab9a7b5f0f8f74e4837195337ee88d74c83f968b42ec3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def sigmaConstObjCompIso : sigmaConst.obj X ⋙ F ≅ sigmaConst.obj (F.obj X) :=
  NatIso.ofComponents (fun _ ↦ PreservesCoproduct.iso _ _) (fun {T₁ T₂} f ↦ by
    dsimp [Sigma.map']
    rw [← cancel_epi (PreservesCoproduct.iso F (fun (_ : T₁) ↦ X)).inv,
      ← cancel_mono (PreservesCoproduct.iso F (fun (_ : T₂) ↦ X)).inv,
      Iso.inv_hom_id_assoc, Category.assoc, Category.assoc, Iso.hom_inv_id, Category.comp_id,
      PreservesCoproduct.inv_hom, PreservesCoproduct.inv_hom, sigmaComparison_map_desc]
    cat_disch)

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variant4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SigmaConst/Variant4185786d36d8ee97d6fcfcf55c4e93c9b3c5a61e8d0d34e4bcea337375329b30.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b9601c5d45f2d41fcdb3f2c401b4022d1a6c303` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
