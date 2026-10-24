# diagonalHomEquiv_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3570308f26fded0a318ea88af745cdbd1aac610",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 316,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdf49048-94cb-fa40-0332-35bdd0454300",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab194891-c304-4455-3f48-c7e0ed1b88f2",
  "kind": "theorem",
  "lexical_name": "diagonalHomEquiv_symm_apply",
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
  "slug": "diagonalhomequiv-symm-apply--3f226de62e2af5f879a0b46a",
  "source": {
    "blob": "d3570308f26fded0a318ea88af745cdbd1aac610",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 316,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f226de62e2af5f879a0b46a504240e4f951f6ed039fffc1bb883b75c0e407fa",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab194891-c304-4455-3f48-c7e0ed1b88f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalHomEquiv_symm_apply (f : (Fin n → G) → A) (x : Fin (n + 1) → G) :
    ((diagonalHomEquiv n A).symm f).hom (Finsupp.single x 1) =
      A.ρ (x 0) (f fun i : Fin n => (x (Fin.castSucc i))⁻¹ * x i.succ) := by
  unfold diagonalHomEquiv
/- Porting note (https://github.com/leanprover-community/mathlib4/issues/11039): broken proof was
  simp only [LinearEquiv.trans_symm, LinearEquiv.symm_symm, LinearEquiv.trans_apply,
    Rep.leftRegularHomEquiv_symm_apply, Linear.homCongr_symm_apply, Action.comp_hom, Iso.refl_inv,
    Category.comp_id, Rep.MonoidalClosed.linearHomEquivComm_symm_hom, Iso.trans_hom,
    ModuleCat.comp_def, LinearMap.comp_apply, Representation.repOfTprodIso_apply,
    diagonalSucc_hom_single x (1 : k), TensorProduct.uncurry_apply, Rep.leftRegularHom_hom,
    Finsupp.lift_apply, ihom_obj_ρ_def, Rep.ihom_obj_ρ_apply, Finsupp.sum_single_index, zero_smul,
    one_smul, Rep.of_ρ, Rep.Action_ρ_eq_ρ, Rep.trivial_def (x 0)⁻¹, Finsupp.llift_apply A k k] -/
  simp only [LinearEquiv.trans_symm, LinearEquiv.symm_symm, LinearEquiv.trans_apply,
    leftRegularHomEquiv_symm_apply, Linear.homCongr_symm_apply, Iso.trans_hom, Iso.refl_inv,
    Category.comp_id, Action.comp_hom, MonoidalClosed.linearHomEquivComm_symm_hom,
    ModuleCat.hom_comp, LinearMap.comp_apply]
  rw [diagonalSucc_hom_single]
  -- The prototype linter that checks if `erw` could be replaced with `rw` would time out
  -- if it replaces the next `erw`s with `rw`s. So we focus down on the relevant part.
  conv_lhs =>
    erw [TensorProduct.uncurry_apply, Finsupp.lift_apply, Finsupp.sum_single_index]
    · simp only [one_smul]
      erw [Representation.linHom_apply]
      simp only [LinearMap.comp_apply, MonoidHom.one_apply, Module.End.one_apply]
      erw [Finsupp.llift_apply]
      rw [Finsupp.lift_apply]
      erw [Finsupp.sum_single_index]
      · rw [one_smul]
      · rw [zero_smul]
    · rw [zero_smul]

/-- Auxiliary lemma for defining group cohomology, used to show that the isomorphism
`diagonalHomEquiv` commutes with the differentials in two complexes which compute
group cohomology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant2e0d1e4922807193b060404dc019169731befdf02a9b8591237202629eb57215.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3570308f26fded0a318ea88af745cdbd1aac610` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
