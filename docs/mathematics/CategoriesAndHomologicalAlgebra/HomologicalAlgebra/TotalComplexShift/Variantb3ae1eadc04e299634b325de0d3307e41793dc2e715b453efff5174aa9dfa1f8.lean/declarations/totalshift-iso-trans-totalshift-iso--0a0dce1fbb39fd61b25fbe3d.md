# totalShift₁Iso_trans_totalShift₂Iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfdeb52a-d65d-b620-bf13-52f52f51429d",
  "kind": "lemma",
  "lexical_name": "totalShift₁Iso_trans_totalShift₂Iso",
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
  "slug": "totalshift-iso-trans-totalshift-iso--0a0dce1fbb39fd61b25fbe3d",
  "source": {
    "blob": "6cb20a0d6e20d3e0d32d1a074bab30e1b1693cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 362,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a0dce1fbb39fd61b25fbe3d491afb1c366cf3583fcc3df5e0313ef66147276e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfdeb52a-d65d-b620-bf13-52f52f51429d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 362–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma totalShift₁Iso_trans_totalShift₂Iso :
    ((shiftFunctor₂ C y).obj K).totalShift₁Iso x ≪≫
      (shiftFunctor (CochainComplex C ℤ) x).mapIso (K.totalShift₂Iso y) =
    (x * y).negOnePow • (total.mapIso ((shiftFunctor₁₂CommIso C x y).app K) (up ℤ)) ≪≫
      ((shiftFunctor₁ C x).obj K).totalShift₂Iso y ≪≫
      (shiftFunctor _ y).mapIso (K.totalShift₁Iso x) ≪≫
      (shiftFunctorComm (CochainComplex C ℤ) x y).app _ := by
  ext n n₁ n₂ h
  dsimp at h ⊢
  rw [Linear.comp_units_smul,ι_totalShift₁Iso_hom_f_assoc _ x n₁ n₂ n h _ rfl _ rfl,
    ιTotal_map_assoc, ι_totalShift₂Iso_hom_f_assoc _ y n₁ n₂ n h _ rfl _ rfl,
    Linear.units_smul_comp, Linear.comp_units_smul]
  dsimp [shiftFunctor₁₂CommIso]
  rw [id_comp, id_comp, id_comp, id_comp, comp_id,
    ι_totalShift₂Iso_hom_f _ y (n₁ + x) n₂ (n + x) (by omega) _ rfl _ rfl, smul_smul,
    ← Int.negOnePow_add, add_mul, add_comm (x * y)]
  dsimp
  rw [id_comp, comp_id,
    ι_totalShift₁Iso_hom_f_assoc _ x n₁ (n₂ + y) (n + y) (by omega) _ rfl (n + x + y) (by omega),
    CochainComplex.shiftFunctorComm_hom_app_f]
  dsimp
  rw [Iso.inv_hom_id, comp_id, id_comp]

/-- The compatibility isomorphisms of the total complex with the shifts
in both variables "commute" only up to a sign `(x * y).negOnePow`. -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean#L362).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb20a0d6e20d3e0d32d1a074bab30e1b1693cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
