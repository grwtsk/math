# totalShift₂XIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffcaa9474060117b5688a88e59fa70a57bf5360b5f5741f598234d036add8e71",
  "kind": "def",
  "lexical_name": "totalShift₂XIso",
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
  "slug": "totalshift-xiso--c6a9d97a35ef93d1004763da",
  "source": {
    "blob": "84204484c2e7a8a56e907808493ed72c43b49a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 235,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6a9d97a35ef93d1004763da00360bd4541987cf29780d23b05a84960d5ee650",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffcaa9474060117b5688a88e59fa70a57bf5360b5f5741f598234d036add8e71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def totalShift₂XIso (n n' : ℤ) (h : n + y = n') :
    (((shiftFunctor₂ C y).obj K).total (up ℤ)).X n ≅ (K.total (up ℤ)).X n' where
  hom := totalDesc _ (fun p q hpq => (p * y).negOnePow • K.ιTotal (up ℤ) p (q + y) n'
    (by dsimp at hpq ⊢; lia))
  inv := totalDesc _ (fun p q hpq => (p * y).negOnePow •
    (K.XXIsoOfEq _ _ _ rfl (Int.sub_add_cancel q y)).inv ≫
      ((shiftFunctor₂ C y).obj K).ιTotal (up ℤ) p (q - y) n (by dsimp at hpq ⊢; lia))
  hom_inv_id := by
    ext p q h
    dsimp
    simp only [ι_totalDesc_assoc, Linear.units_smul_comp, ι_totalDesc, smul_smul,
      Int.units_mul_self, one_smul, comp_id]
    exact ((shiftFunctor₂ C y).obj K).XXIsoOfEq_inv_ιTotal _ rfl (by lia) _ _
  inv_hom_id := by
    ext
    dsimp
    simp only [ι_totalDesc_assoc, Linear.units_smul_comp, Category.assoc, ι_totalDesc,
      Linear.comp_units_smul, XXIsoOfEq_inv_ιTotal, smul_smul, Int.units_mul_self, one_smul,
      comp_id]

set_option backward.defeqAttrib.useBackward true in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant619a3165c63d04969038b147711402a6b746afd236436afbc6cb2c4cee241846.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84204484c2e7a8a56e907808493ed72c43b49a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
