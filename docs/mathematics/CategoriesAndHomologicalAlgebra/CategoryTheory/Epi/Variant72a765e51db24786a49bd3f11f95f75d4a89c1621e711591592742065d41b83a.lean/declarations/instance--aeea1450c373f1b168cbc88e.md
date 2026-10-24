# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3ea525c268eec4e5569a4040441f9d2301d96d2e3dacf87a5759422c53c9aa9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--aeea1450c373f1b168cbc88e",
  "source": {
    "blob": "24e826e2843f932309c4c8e6af1553592d550861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aeea1450c373f1b168cbc88e6fe2dded3c4a032b13c497fbabc4f9686e4a4db3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3ea525c268eec4e5569a4040441f9d2301d96d2e3dacf87a5759422c53c9aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (lim (J := Discrete ℕ) (C := LightCondMod R)).PreservesEpimorphisms where
  preserves f _ := by
    have : lim.map f = (Pi.isoLimit _).inv ≫ Limits.Pi.map (f.app ⟨·⟩) ≫ (Pi.isoLimit _).hom := by
      apply limit.hom_ext
      intro ⟨n⟩
      simp only [lim_obj, lim_map, limMap, IsLimit.map, limit.isLimit_lift, limit.lift_π,
        Cones.postcompose_obj_pt, limit.cone_x, Cones.postcompose_obj_π, NatTrans.comp_app,
        Functor.const_obj_obj, limit.cone_π, Pi.isoLimit, Limits.Pi.map, Category.assoc,
        limit.conePointUniqueUpToIso_hom_comp, Pi.cone_pt, Pi.cone_π, Discrete.natTrans_app,
        Discrete.functor_obj_eq_as]
      erw [IsLimit.conePointUniqueUpToIso_inv_comp_assoc]
      rfl
    rw [this]
    infer_instance

end LightCondensed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant72a765e51db24786a49bd3f11f95f75d4a89c1621e711591592742065d41b83a.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e826e2843f932309c4c8e6af1553592d550861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
