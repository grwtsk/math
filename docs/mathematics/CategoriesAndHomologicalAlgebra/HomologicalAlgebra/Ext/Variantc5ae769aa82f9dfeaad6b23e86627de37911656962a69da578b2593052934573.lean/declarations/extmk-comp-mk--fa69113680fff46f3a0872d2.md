# extMk_comp_mk₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb8a3784-176b-1ab0-37fd-62fdfc4f8f9f",
  "kind": "lemma",
  "lexical_name": "extMk_comp_mk₀",
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
  "slug": "extmk-comp-mk--fa69113680fff46f3a0872d2",
  "source": {
    "blob": "d838f93fcac3fff10155e6be8376c8b15b4196c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa69113680fff46f3a0872d2341c4f8e321404967f9624cbd1e4a3a237587f3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb8a3784-176b-1ab0-37fd-62fdfc4f8f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extMk_comp_mk₀ {n : ℕ} (f : R.complex.X n ⟶ Y) (m : ℕ) (hm : n + 1 = m)
    (hf : R.complex.d m n ≫ f = 0) {Y' : C} (g : Y ⟶ Y') :
    (R.extMk f m hm hf).comp (Ext.mk₀ g) (add_zero _) =
      R.extMk (f ≫ g) m hm (by simp [reassoc_of% hf]) := by
  have := HasDerivedCategory.standard C
  ext
  simp only [extMk, Ext.comp_hom, Int.cast_ofNat_Int, Ext.mk₀_hom,
    extEquivCohomologyClass_symm_mk_hom]
  simp only [← Category.assoc]
  rw [Cocycle.toSingleMk_postcomp _ _ _ _
      (by simpa [cochainComplex_d _ _ _ m n rfl rfl]) g,
    Cocycle.equivHomShift_symm_postcomp,
    ← ShiftedHom.comp_mk₀ _ 0 rfl,
    ShiftedHom.map_comp, ShiftedHom.map_mk₀,
    ShiftedHom.comp_assoc _ _ _ (add_zero _) (zero_add _) (by simp),
    ShiftedHom.comp_assoc _ _ _ (zero_add _) (zero_add _) (by simp),
    ShiftedHom.comp_assoc _ _ _ (zero_add _) (zero_add _) (by simp),
    ShiftedHom.mk₀_comp_mk₀, ShiftedHom.mk₀_comp_mk₀, ← NatTrans.naturality]
  dsimp

variable {R} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d838f93fcac3fff10155e6be8376c8b15b4196c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
