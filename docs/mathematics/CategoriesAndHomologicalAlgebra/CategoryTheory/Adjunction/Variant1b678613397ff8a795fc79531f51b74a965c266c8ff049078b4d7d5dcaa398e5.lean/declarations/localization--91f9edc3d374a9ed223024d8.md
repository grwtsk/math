# localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdf9c95d79fe5e3c9f3be96cdef79c79ba3f4aeaf3e4f189166e20e54deb2065",
  "kind": "def",
  "lexical_name": "localization",
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
  "slug": "localization--91f9edc3d374a9ed223024d8",
  "source": {
    "blob": "47493a1c6df54bee5699976ffc21b88fda44124d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91f9edc3d374a9ed223024d8ef78f5a435001ad7bcfa651c4cb3940b85c4e08f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdf9c95d79fe5e3c9f3be96cdef79c79ba3f4aeaf3e4f189166e20e54deb2065`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def localization : G' ⊣ F' :=
  Adjunction.mkOfUnitCounit
    { unit := Localization.ε adj L₁ W₁ L₂ G' F'
      counit := Localization.η adj L₁ L₂ W₂ G' F'
      left_triangle := by
        apply natTrans_ext L₁ W₁
        intro X₁
        have eq := congr_app adj.left_triangle X₁
        dsimp at eq
        rw [NatTrans.comp_app, NatTrans.comp_app, whiskerRight_app, Localization.ε_app,
          Functor.associator_hom_app, id_comp, whiskerLeft_app, G'.map_comp, G'.map_comp,
          assoc, assoc]
        erw [(Localization.η adj L₁ L₂ W₂ G' F').naturality, Localization.η_app,
          assoc, assoc, ← G'.map_comp_assoc, ← G'.map_comp_assoc, assoc, Iso.hom_inv_id_app,
          comp_id, (CatCommSq.iso G L₁ L₂ G').inv.naturality_assoc, ← L₂.map_comp_assoc, eq,
          L₂.map_id, id_comp, Iso.inv_hom_id_app]
        rfl
      right_triangle := by
        apply natTrans_ext L₂ W₂
        intro X₂
        have eq := congr_app adj.right_triangle X₂
        dsimp at eq
        rw [NatTrans.comp_app, NatTrans.comp_app, whiskerLeft_app, whiskerRight_app,
          Localization.η_app, Functor.associator_inv_app, id_comp, F'.map_comp, F'.map_comp]
        erw [← (Localization.ε _ _ _ _ _ _).naturality_assoc, Localization.ε_app,
          assoc, assoc, ← F'.map_comp_assoc, Iso.hom_inv_id_app, F'.map_id, id_comp,
          ← NatTrans.naturality, ← L₁.map_comp_assoc, eq, L₁.map_id, id_comp,
          Iso.inv_hom_id_app]
        rfl }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47493a1c6df54bee5699976ffc21b88fda44124d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
