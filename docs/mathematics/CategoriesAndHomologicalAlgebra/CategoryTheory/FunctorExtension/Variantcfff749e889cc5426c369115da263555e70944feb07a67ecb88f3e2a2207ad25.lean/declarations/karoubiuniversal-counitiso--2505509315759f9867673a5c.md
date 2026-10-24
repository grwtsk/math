# KaroubiUniversal₁.counitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c088833bd67eb6516946cc8f829fe44b051bdc8138720240f71f9e71cbed33d",
  "kind": "def",
  "lexical_name": "KaroubiUniversal₁.counitIso",
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
  "slug": "karoubiuniversal-counitiso--2505509315759f9867673a5c",
  "source": {
    "blob": "a01661590488458e07e60176fbdda7acd5987bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 146,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2505509315759f9867673a5ce75d9ae32f9f922fbb1a39b142c12bb42c6a5cb5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c088833bd67eb6516946cc8f829fe44b051bdc8138720240f71f9e71cbed33d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def KaroubiUniversal₁.counitIso :
    (whiskeringLeft C (Karoubi C) (Karoubi D)).obj (toKaroubi C) ⋙ functorExtension₁ C D ≅ 𝟭 _ :=
  NatIso.ofComponents
    (fun G =>
      { hom :=
          { app := fun P =>
              { f := (G.map (decompId_p P)).f
                comm := by
                  simpa only [hom_ext_iff, G.map_comp, G.map_id] using
                    G.congr_map
                      (show P.decompId_p = (toKaroubi C).map P.p ≫ P.decompId_p ≫ 𝟙 _ by simp) }
            naturality := fun P Q f => by
              simpa only [hom_ext_iff, G.map_comp]
                using (G.congr_map (decompId_p_naturality f)).symm }
        inv :=
          { app := fun P =>
              { f := (G.map (decompId_i P)).f
                comm := by
                  simpa only [hom_ext_iff, G.map_comp, G.map_id] using
                    G.congr_map
                      (show P.decompId_i = 𝟙 _ ≫ P.decompId_i ≫ (toKaroubi C).map P.p by simp) }
            naturality := fun P Q f => by
              simpa only [hom_ext_iff, G.map_comp] using G.congr_map (decompId_i_naturality f) }
        hom_inv_id := by
          ext P
          simpa only [hom_ext_iff, G.map_comp, G.map_id] using G.congr_map P.decomp_p.symm
        inv_hom_id := by
          ext P
          simpa only [hom_ext_iff, G.map_comp, G.map_id] using G.congr_map P.decompId.symm })
    (fun {X Y} φ => by
      ext P
      dsimp
      rw [natTrans_eq φ P, P.decomp_p]
      simp only [Functor.map_comp, comp_f, assoc]
      rfl)
#align category_theory.idempotents.karoubi_universal₁.counit_iso CategoryTheory.Idempotents.KaroubiUniversal₁.counitIso

/-- The equivalence of categories `(C ⥤ Karoubi D) ≌ (Karoubi C ⥤ Karoubi D)`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01661590488458e07e60176fbdda7acd5987bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
