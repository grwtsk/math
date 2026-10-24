# rootSpace_comap_eq_weightSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf4a3d7c-9cb2-75ed-d9a5-79011f8d6d1d",
  "kind": "theorem",
  "lexical_name": "rootSpace_comap_eq_weightSpace",
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
  "slug": "rootspace-comap-eq-weightspace--f173e80f3b83f0452e84994f",
  "source": {
    "blob": "1a2e4f35d737bfe03ac24ea2611d637d14d70e91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 298,
    "path": "GRWTSK/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f173e80f3b83f0452e84994f69059d063c4769ca81098ec5e1f160f5fd37c3b1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf4a3d7c-9cb2-75ed-d9a5-79011f8d6d1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rootSpace_comap_eq_weightSpace (χ : H → R) :
    (rootSpace H χ).comap H.incl' = weightSpace H χ := by
  ext x
  let f : H → Module.End R L := fun y => toEndomorphism R H L y - χ y • ↑1
  let g : H → Module.End R H := fun y => toEndomorphism R H H y - χ y • ↑1
  suffices
    (∀ y : H, ∃ k : ℕ, (f y ^ k).comp (H.incl : H →ₗ[R] L) x = 0) ↔
      ∀ y : H, ∃ k : ℕ, (H.incl : H →ₗ[R] L).comp (g y ^ k) x = 0 by
    simp only [LieHom.coe_toLinearMap, LieSubalgebra.coe_incl, Function.comp_apply,
      LinearMap.coe_comp, Submodule.coe_eq_zero] at this
    simp only [mem_weightSpace, mem_preWeightSpace, LieSubalgebra.coe_incl',
      LieSubmodule.mem_comap, this]
  have hfg : ∀ y : H, (f y).comp (H.incl : H →ₗ[R] L) = (H.incl : H →ₗ[R] L).comp (g y) := by
    rintro ⟨y, hy⟩; ext ⟨z, _⟩
    simp only [Submodule.coe_sub, toEndomorphism_apply_apply, LieHom.coe_toLinearMap,
      LinearMap.one_apply, LieSubalgebra.coe_incl, LieSubalgebra.coe_bracket_of_module,
      LieSubalgebra.coe_bracket, LinearMap.smul_apply, Function.comp_apply,
      Submodule.coe_smul_of_tower, LinearMap.coe_comp, LinearMap.sub_apply]
  simp_rw [LinearMap.commute_pow_left_of_commute (hfg _)]
#align lie_algebra.root_space_comap_eq_weight_space LieAlgebra.rootSpace_comap_eq_weightSpace

variable {H M}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Weights/Variantb0c478c2ca3fefc561b079aad4ee0c05d352c8701d85e4cfee0a7beb89d50097.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a2e4f35d737bfe03ac24ea2611d637d14d70e91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
