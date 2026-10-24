# exists_continuousLinearEquiv_apply_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79962e3ae2073fe1eb5fb0c5f242ca3bd78ab4a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 121,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e7be5b9-49dc-015f-3c04-fd50470c62c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0352576a-f0d3-175e-ec2d-c6e1be64dc1c",
  "kind": "theorem",
  "lexical_name": "exists_continuousLinearEquiv_apply_eq",
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
  "slug": "exists-continuouslinearequiv-apply-eq--880387e3a04a91371bbd4bb6",
  "source": {
    "blob": "79962e3ae2073fe1eb5fb0c5f242ca3bd78ab4a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:880387e3a04a91371bbd4bb6803eeef5d7df12b1d56a815cc5480c75a7695ce2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0352576a-f0d3-175e-ec2d-c6e1be64dc1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_continuousLinearEquiv_apply_eq [ContinuousSMul R V]
    {x y : V} (hx : x ≠ 0) (hy : y ≠ 0) :
    ∃ A : V ≃L[R] V, A x = y := by
  obtain ⟨G, Gx, Gy⟩ : ∃ G : V →L[R] R, G x = 1 ∧ G y ≠ 0 :=
    exists_eq_one_ne_zero_of_ne_zero_pair hx hy
  let A : V ≃L[R] V :=
  { toFun := fun z ↦ z + G z • (y - x)
    invFun := fun z ↦ z + ((G y) ⁻¹ * G z) • (x - y)
    map_add' := fun a b ↦ by simp [add_smul]; abel
    map_smul' := by simp [smul_smul]
    left_inv := fun z ↦ by
      simp only [id_eq, eq_mpr_eq_cast, RingHom.id_apply, smul_eq_mul, AddHom.toFun_eq_coe,
        -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to change `map_smulₛₗ` into `map_smulₛₗ _`
        AddHom.coe_mk, map_add, map_smulₛₗ _, map_sub, Gx, mul_sub, mul_one, add_sub_cancel]
      rw [mul_comm (G z), ← mul_assoc, inv_mul_cancel₀ Gy]
      simp only [smul_sub, one_mul]
      abel
    right_inv := fun z ↦ by
        -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to change `map_smulₛₗ` into `map_smulₛₗ _`
      simp only [map_add, map_smulₛₗ _, map_mul, map_inv₀, RingHom.id_apply, map_sub, Gx,
        smul_eq_mul, mul_sub, mul_one]
      rw [mul_comm _ (G y), ← mul_assoc, mul_inv_cancel₀ Gy]
      simp only [smul_sub, one_mul, add_sub_cancel]
      abel
    continuous_toFun := continuous_id.add (G.continuous.smul continuous_const)
    continuous_invFun :=
      continuous_id.add ((continuous_const.mul G.continuous).smul continuous_const) }
  exact ⟨A, show x + G x • (y - x) = y by simp [Gx]⟩

open Filter
open scoped Topology

section
variable (𝕜 E F : Type*) [NontriviallyNormedField 𝕜] [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    [NormedAddCommGroup F] [NormedSpace 𝕜 F] [SeparatingDual 𝕜 E] [Nontrivial E]

/-- If a space of linear maps from `E` to `F` is complete, and `E` is nontrivial, then `F` is
complete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79962e3ae2073fe1eb5fb0c5f242ca3bd78ab4a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
