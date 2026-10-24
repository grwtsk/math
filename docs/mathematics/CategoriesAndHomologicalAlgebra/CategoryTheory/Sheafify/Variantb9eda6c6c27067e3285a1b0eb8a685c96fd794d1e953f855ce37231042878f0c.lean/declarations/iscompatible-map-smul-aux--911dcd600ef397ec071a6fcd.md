# isCompatible_map_smul_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9551b50e-6974-ecce-3f24-bb12faaac305",
  "kind": "lemma",
  "lexical_name": "isCompatible_map_smul_aux",
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
  "slug": "iscompatible-map-smul-aux--911dcd600ef397ec071a6fcd",
  "source": {
    "blob": "10045c7187f1a7c70ec23b0b08a494137feccd41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:911dcd600ef397ec071a6fcd99618517fbd65b608cc599ec8199242824a18572",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9551b50e-6974-ecce-3f24-bb12faaac305`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompatible_map_smul_aux {Y Z : C} (f : Y ⟶ X) (g : Z ⟶ Y)
    (r₀ : R₀.obj (Opposite.op Y)) (r₀' : R₀.obj (Opposite.op Z))
    (m₀ : M₀.obj (Opposite.op Y)) (m₀' : M₀.obj (Opposite.op Z))
    (hr₀ : α.app _ r₀ = R.map f.op r) (hr₀' : α.app _ r₀' = R.map (f.op ≫ g.op) r)
    (hm₀ : φ.app _ m₀ = A.map f.op m) (hm₀' : φ.app _ m₀' = A.map (f.op ≫ g.op) m) :
    φ.app _ (M₀.map g.op (r₀ • m₀)) = φ.app _ (r₀' • m₀') := by
  rw [← PresheafOfModules.Sheafify.app_eq_of_isLocallyInjective α φ hA (R₀.map g.op r₀) r₀'
    (M₀.map g.op m₀) m₀', M₀.map_smul]
  · rw [hr₀', R.map_comp, RingCat.comp_apply, ← hr₀, ← RingCat.comp_apply, NatTrans.naturality,
      RingCat.comp_apply]
  · rw [hm₀', A.map_comp, AddCommGrp.coe_comp, Function.comp_apply, ← hm₀]
    erw [NatTrans.naturality_apply φ]

variable (hr₀ : (r₀.map (whiskerRight α (forget _))).IsAmalgamation r)
  (hm₀ : (m₀.map (whiskerRight φ (forget _))).IsAmalgamation m)

include hr₀ hm₀ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafify/Variantb9eda6c6c27067e3285a1b0eb8a685c96fd794d1e953f855ce37231042878f0c.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10045c7187f1a7c70ec23b0b08a494137feccd41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
