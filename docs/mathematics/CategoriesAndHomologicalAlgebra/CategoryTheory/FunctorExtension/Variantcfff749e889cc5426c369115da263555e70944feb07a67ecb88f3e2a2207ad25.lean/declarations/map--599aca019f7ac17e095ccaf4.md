# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0cd255e1999262defc454caf40cb689d9d873ef57dc6079f355acf1a0618beb1",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--599aca019f7ac17e095ccaf4",
  "source": {
    "blob": "a01661590488458e07e60176fbdda7acd5987bbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 77,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:599aca019f7ac17e095ccaf4b6b280304ae086f1004b949763db767890e690b8",
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

Occurrence: `declaration:0cd255e1999262defc454caf40cb689d9d873ef57dc6079f355acf1a0618beb1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map {F G : C ⥤ Karoubi D} (φ : F ⟶ G) : obj F ⟶ obj G where
  app P :=
    { f := (F.map P.p).f ≫ (φ.app P.X).f
      comm := by
        have h := φ.naturality P.p
        have h' := F.congr_map P.idem
        simp only [hom_ext_iff, Karoubi.comp_f, F.map_comp] at h h'
        simp only [obj_obj_p, assoc, ← h]
        slice_rhs 1 3 => rw [h', h'] }
  naturality _ _ f := by
    ext
    dsimp [obj]
    have h := φ.naturality f.f
    have h' := F.congr_map (comp_p f)
    have h'' := F.congr_map (p_comp f)
    simp only [hom_ext_iff, Functor.map_comp, comp_f] at h h' h'' ⊢
    slice_rhs 2 3 => rw [← h]
    slice_lhs 1 2 => rw [h']
    slice_rhs 1 2 => rw [h'']
#align category_theory.idempotents.functor_extension₁.map CategoryTheory.Idempotents.FunctorExtension₁.map

end FunctorExtension₁

variable (C D E)

/-- The canonical functor `(C ⥤ Karoubi D) ⥤ (Karoubi C ⥤ Karoubi D)` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorExtension/Variantcfff749e889cc5426c369115da263555e70944feb07a67ecb88f3e2a2207ad25.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a01661590488458e07e60176fbdda7acd5987bbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
