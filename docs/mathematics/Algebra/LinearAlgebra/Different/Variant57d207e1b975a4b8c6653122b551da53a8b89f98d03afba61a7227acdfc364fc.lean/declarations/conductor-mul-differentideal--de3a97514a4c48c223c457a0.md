# conductor_mul_differentIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3de3057323522e4a6bd480e44dd388fe06b7f2c5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 637,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:232f4e22-b760-d313-aa9f-7008b42daaf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76698e25-9ed5-2dc8-bf95-def6b57b0350",
  "kind": "lemma",
  "lexical_name": "conductor_mul_differentIdeal",
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
  "slug": "conductor-mul-differentideal--de3a97514a4c48c223c457a0",
  "source": {
    "blob": "3de3057323522e4a6bd480e44dd388fe06b7f2c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 675,
    "line": 637,
    "path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de3a97514a4c48c223c457a0c33f3580823a2088424f5bbf5f156b7a1ecad373",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76698e25-9ed5-2dc8-bf95-def6b57b0350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–675.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma conductor_mul_differentIdeal
    (x : B) (hx : Algebra.adjoin K {algebraMap B L x} = ⊤) :
    (conductor A x) * differentIdeal A B = Ideal.span {aeval x (derivative (minpoly A x))} := by
  have hAx : IsIntegral A x := IsIntegralClosure.isIntegral A L x
  have := IsIntegralClosure.isFractionRing_of_finite_extension A K L B
  apply FractionalIdeal.coeIdeal_injective (K := L)
  simp only [FractionalIdeal.coeIdeal_mul, FractionalIdeal.coeIdeal_span_singleton]
  rw [coeIdeal_differentIdeal A K L B, mul_inv_eq_iff_eq_mul₀]
  swap
  · exact FractionalIdeal.dual_ne_zero A K one_ne_zero
  apply FractionalIdeal.coeToSubmodule_injective
  simp only [FractionalIdeal.coe_coeIdeal, FractionalIdeal.coe_mul,
    FractionalIdeal.coe_spanSingleton, Submodule.span_singleton_mul]
  ext y
  have hne₁ : aeval (algebraMap B L x) (derivative (minpoly K (algebraMap B L x))) ≠ 0 :=
    (Algebra.IsSeparable.isSeparable _ _).aeval_derivative_ne_zero (minpoly.aeval _ _)
  have : algebraMap B L (aeval x (derivative (minpoly A x))) ≠ 0 := by
    rwa [minpoly.isIntegrallyClosed_eq_field_fractions K L hAx, derivative_map,
      aeval_map_algebraMap, aeval_algebraMap_apply] at hne₁
  rw [Submodule.mem_smul_iff_inv_mul_mem this, FractionalIdeal.mem_coe, FractionalIdeal.mem_dual,
    mem_coeSubmodule_conductor]
  swap
  · exact one_ne_zero
  have hne₂ : (aeval (algebraMap B L x) (derivative (minpoly K (algebraMap B L x))))⁻¹ ≠ 0 := by
    rwa [ne_eq, inv_eq_zero]
  have : IsIntegral A (algebraMap B L x) := IsIntegral.map (IsScalarTower.toAlgHom A B L) hAx
  simp_rw [← Subalgebra.mem_toSubmodule, ← Submodule.mul_mem_smul_iff (y := y * _)
    (mem_nonZeroDivisors_of_ne_zero hne₂)]
  rw [← traceForm_dualSubmodule_adjoin A K hx this]
  simp only [LinearMap.BilinForm.mem_dualSubmodule, traceForm_apply, Subalgebra.mem_toSubmodule,
    minpoly.isIntegrallyClosed_eq_field_fractions K L hAx,
    derivative_map, aeval_map_algebraMap, aeval_algebraMap_apply, mul_assoc,
    FractionalIdeal.mem_one_iff, forall_exists_index, forall_apply_eq_imp_iff]
  simp_rw [← IsScalarTower.toAlgHom_apply A B L x, ← AlgHom.map_adjoin_singleton]
  simp only [Subalgebra.mem_map, IsScalarTower.coe_toAlgHom', Submodule.one_eq_range,
    forall_exists_index, and_imp, forall_apply_eq_imp_iff₂, ← map_mul]
  exact ⟨fun H b ↦ (mul_one b) ▸ H b 1 (one_mem _), fun H _ _ _ ↦ H _⟩

open Polynomial Pointwise in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Different/Variant57d207e1b975a4b8c6653122b551da53a8b89f98d03afba61a7227acdfc364fc.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de3057323522e4a6bd480e44dd388fe06b7f2c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
