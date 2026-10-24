# lTensor_injective_of_exact_of_exact_of_rTensor_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1060639082082facdd4775b9cf03982490cab2fc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cdcd6b9e-5398-2850-7cb5-ad3032bd7851",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc257df3-eb44-f9e2-dc61-68d16e15e3a2",
  "kind": "theorem",
  "lexical_name": "lTensor_injective_of_exact_of_exact_of_rTensor_injective",
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
  "slug": "ltensor-injective-of-exact-of-exact-of-rtensor-injective--696c1c4c66f8b976ce199773",
  "source": {
    "blob": "1060639082082facdd4775b9cf03982490cab2fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:696c1c4c66f8b976ce199773e7722800c1a1f513f06378a68f492925926b589f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc257df3-eb44-f9e2-dc61-68d16e15e3a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lTensor_injective_of_exact_of_exact_of_rTensor_injective
    {M₁ M₂ M₃ N₁ N₂ N₃}
    [AddCommGroup M₁] [Module R M₁] [AddCommGroup M₂] [Module R M₂] [AddCommGroup M₃] [Module R M₃]
    [AddCommGroup N₁] [Module R N₁] [AddCommGroup N₂] [Module R N₂] [AddCommGroup N₃] [Module R N₃]
    {f₁ : M₁ →ₗ[R] M₂} {f₂ : M₂ →ₗ[R] M₃} {g₁ : N₁ →ₗ[R] N₂} {g₂ : N₂ →ₗ[R] N₃}
    (hfexact : Exact f₁ f₂) (hfsurj : Surjective f₂)
    (hgexact : Exact g₁ g₂) (hgsurj : Surjective g₂)
    (hfinj : Injective (f₁.rTensor N₃)) (hginj : Injective (g₁.lTensor M₂)) :
    Injective (g₁.lTensor M₃) := by
  rw [injective_iff_map_eq_zero]
  intro x hx
  obtain ⟨x, rfl⟩ := f₂.rTensor_surjective N₁ hfsurj x
  have : f₂.rTensor N₂ (g₁.lTensor M₂ x) = 0 := by
    rw [← hx, ← LinearMap.comp_apply, ← LinearMap.comp_apply, LinearMap.rTensor_comp_lTensor,
      LinearMap.lTensor_comp_rTensor]
  obtain ⟨y, hy⟩ := (rTensor_exact N₂ hfexact hfsurj _).mp this
  have : g₂.lTensor M₁ y = 0 := by
    apply hfinj
    trans g₂.lTensor M₂ (g₁.lTensor M₂ x)
    · rw [← hy, ← LinearMap.comp_apply, ← LinearMap.comp_apply, LinearMap.rTensor_comp_lTensor,
        LinearMap.lTensor_comp_rTensor]
    rw [← LinearMap.comp_apply, ← LinearMap.lTensor_comp, hgexact.linearMap_comp_eq_zero]
    simp
  obtain ⟨z, rfl⟩ := (lTensor_exact _ hgexact hgsurj _).mp this
  obtain rfl : f₁.rTensor N₁ z = x := by
    apply hginj
    simp only [← hy, ← LinearMap.comp_apply, ← LinearMap.comp_apply, LinearMap.lTensor_comp_rTensor,
      LinearMap.rTensor_comp_lTensor]
  rw [← LinearMap.comp_apply, ← LinearMap.rTensor_comp, hfexact.linearMap_comp_eq_zero]
  simp

namespace Module

variable [IsLocalRing R]

set_option backward.isDefEq.respectTransparency false in
/-- If `M` is of finite presentation over a local ring `(R, 𝔪, k)` such that
`𝔪 ⊗ M → M` is injective, then every family of elements that is a `k`-basis of
`k ⊗ M` is an `R`-basis of `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variant7aad1df3c0b0105a55d98d5b2fa521f9ac73b5ad63267d7ac6a23f47c5e1d907.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1060639082082facdd4775b9cf03982490cab2fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
