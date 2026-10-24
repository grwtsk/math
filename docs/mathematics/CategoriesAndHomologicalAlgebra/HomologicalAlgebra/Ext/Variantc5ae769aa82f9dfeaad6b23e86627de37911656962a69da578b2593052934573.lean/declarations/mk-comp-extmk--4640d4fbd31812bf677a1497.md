# mk₀_comp_extMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81cce1db-b2d4-b5f6-eb9e-87f0eff75187",
  "kind": "lemma",
  "lexical_name": "mk₀_comp_extMk",
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
  "slug": "mk-comp-extmk--4640d4fbd31812bf677a1497",
  "source": {
    "blob": "d838f93fcac3fff10155e6be8376c8b15b4196c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4640d4fbd31812bf677a1497f3192550d554b8da89109ea45211d049d864c60f",
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

Occurrence: `result:81cce1db-b2d4-b5f6-eb9e-87f0eff75187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mk₀_comp_extMk {n : ℕ} (f : R.complex.X n ⟶ Y) (m : ℕ) (hm : n + 1 = m)
    (hf : R.complex.d m n ≫ f = 0)
    {X' : C} {R' : ProjectiveResolution X'} {g : X' ⟶ X} (φ : Hom R' R g) :
    (Ext.mk₀ g).comp (R.extMk f m hm hf) (zero_add _) =
      R'.extMk (φ.hom.f n ≫ f) m hm (by simp [← φ.hom.comm_assoc, hf]) := by
  have := HasDerivedCategory.standard C
  ext
  have : (R'.cochainComplexXIso (-n) n (by lia)).hom ≫ φ.hom.f n =
      φ.hom'.f (-n) ≫ (R.cochainComplexXIso (-n) n (by lia)).hom := by
    simp [φ.hom'_f _ _ rfl]
  simp only [Ext.comp_hom, extMk_hom, Ext.mk₀_hom, reassoc_of% this]
  rw [Cocycle.toSingleMk_precomp _ _ _ (by lia)
    (by simpa [R.cochainComplex_d _ _ _ _ rfl rfl]),
    Cocycle.equivHomShift_symm_precomp,
    ← ShiftedHom.mk₀_comp 0 rfl, ShiftedHom.map_comp,
    ← ShiftedHom.comp_assoc _ _ _ (zero_add _) _ (by simp),
    ← ShiftedHom.comp_assoc _ _ _ (add_zero _) _ (by simp),
    ← ShiftedHom.comp_assoc _ _ _ (add_zero _) _ (by simp),
    ← ShiftedHom.comp_assoc _ _ _ (zero_add _) _ (by simp),
    ShiftedHom.map_mk₀, ShiftedHom.mk₀_comp_mk₀, ShiftedHom.mk₀_comp_mk₀]
  congr 3
  simp [← Functor.map_comp_assoc, ← Functor.map_comp]

end CategoryTheory.ProjectiveResolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d838f93fcac3fff10155e6be8376c8b15b4196c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
