# Over.mapPullbackAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df749d8e762d14724f4aec86ada68a917dda0ca42735c32220f0fc949c97b745",
  "kind": "def",
  "lexical_name": "Over.mapPullbackAdj",
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
  "slug": "over-mappullbackadj--48433f04358e36a8a208cebc",
  "source": {
    "blob": "07cc869b57174a8d65c1d906b5f226f9045adc4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:48433f04358e36a8a208cebc6fc01782a8581aaae07e65c99d87db18ba7c6cfc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df749d8e762d14724f4aec86ada68a917dda0ca42735c32220f0fc949c97b745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Over.mapPullbackAdj [Q.HasOfPostcompProperty Q] (hPf : P f) (hQf : Q f) :
    Over.map Q hPf ⊣ Over.pullback P Q f :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun A B ↦
        { toFun := fun g ↦
            Over.homMk (pullback.lift g.left A.hom <| by simp) (by simp) <| by
              apply Q.of_postcomp (W' := Q)
              · exact Q.pullback_fst B.hom f hQf
              · simpa using g.prop_hom_left
          invFun := fun h ↦ Over.homMk (h.left ≫ pullback.fst B.hom f)
            (by
              simp only [map_obj_left, Functor.const_obj_obj, pullback_obj_left, Functor.id_obj,
                Category.assoc, pullback.condition, map_obj_hom, ← pullback_obj_hom, Over.w_assoc])
            (Q.comp_mem _ _ h.prop_hom_left (Q.pullback_fst _ _ hQf))
          left_inv := by aesop_cat
          right_inv := fun h ↦ by
            ext
            dsimp
            ext
            · simp
            · simpa using h.w.symm } }

end Adjunction

end CategoryTheory.MorphismProperty
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07cc869b57174a8d65c1d906b5f226f9045adc4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
