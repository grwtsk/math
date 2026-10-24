# x_not_pseudo_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af6410a8-7294-7dcc-f6f4-270cd7a0e65a",
  "kind": "theorem",
  "lexical_name": "x_not_pseudo_eq",
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
  "slug": "x-not-pseudo-eq--13e28ace84a93b64f855ef33",
  "source": {
    "blob": "1c3b047a6993bc489b296d99d51e1e5df96cfdd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e28ace84a93b64f855ef33d21bf3fc7d841096f95cf4b1b13abb8edbbc29cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af6410a8-7294-7dcc-f6f4-270cd7a0e65a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem x_not_pseudo_eq : ¬PseudoEqual _ x y := by
  intro h
  replace h := ModuleCat.eq_range_of_pseudoequal h
  dsimp [x, y] at h
  let φ := biprod.lift (𝟙 (of ℤ ℚ)) (2 • 𝟙 (of ℤ ℚ))
  have mem_range := mem_range_self φ.hom (1 : ℚ)
  rw [h] at mem_range
  obtain ⟨a, ha⟩ := mem_range
  rw [← ModuleCat.id_apply _ (φ (1 : ℚ)), ← biprod.total, ← LinearMap.comp_apply,
    ← ModuleCat.hom_comp, Preadditive.comp_add] at ha
  let π₁ := (biprod.fst : of ℤ ℚ ⊞ of ℤ ℚ ⟶ _)
  have ha₁ := congr_arg π₁ ha
  rw [← ModuleCat.comp_apply, ← ModuleCat.comp_apply] at ha₁
  simp only [π₁, φ, BinaryBiproduct.bicone_fst, biprod.lift_fst, CategoryTheory.id_apply,
    biprod.lift_fst_assoc, Category.id_comp, biprod.lift_snd_assoc, Linear.smul_comp,
    Preadditive.add_comp, BinaryBicone.inl_fst, BinaryBicone.inr_fst, smul_zero, add_zero] at ha₁
  let π₂ := (biprod.snd : of ℤ ℚ ⊞ of ℤ ℚ ⟶ _)
  have ha₂ := congr_arg π₂ ha
  rw [← ModuleCat.comp_apply, ← ModuleCat.comp_apply] at ha₂
  simp_all [π₁, π₂, φ]

attribute [local instance] Pseudoelement.setoid

open scoped Pseudoelement

/-- `biprod.fst ⟦x⟧ = biprod.fst ⟦y⟧`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudoelement/Variantccf7b672a6779a3330049673af170369ff571ec325de23f9ae2c80fff312b6b6.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c3b047a6993bc489b296d99d51e1e5df96cfdd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
