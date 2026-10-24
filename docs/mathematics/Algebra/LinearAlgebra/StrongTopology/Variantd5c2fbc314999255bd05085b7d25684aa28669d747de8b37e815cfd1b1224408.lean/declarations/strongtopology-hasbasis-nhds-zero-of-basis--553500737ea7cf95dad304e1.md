# strongTopology.hasBasis_nhds_zero_of_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7663fbe5-8a8e-6ace-cbbe-5ff9db013768",
  "kind": "theorem",
  "lexical_name": "strongTopology.hasBasis_nhds_zero_of_basis",
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
  "slug": "strongtopology-hasbasis-nhds-zero-of-basis--553500737ea7cf95dad304e1",
  "source": {
    "blob": "0139c7c777be6bb6a8511e36060a9aaa87935acf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 160,
    "path": "GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:553500737ea7cf95dad304e1eeda9eaec9521c7dd079cee7d00c069418fd1c74",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7663fbe5-8a8e-6ace-cbbe-5ff9db013768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strongTopology.hasBasis_nhds_zero_of_basis [TopologicalSpace F] [TopologicalAddGroup F]
    {ι : Type*} (𝔖 : Set (Set E)) (h𝔖₁ : 𝔖.Nonempty) (h𝔖₂ : DirectedOn (· ⊆ ·) 𝔖) {p : ι → Prop}
    {b : ι → Set F} (h : (𝓝 0 : Filter F).HasBasis p b) :
    (@nhds (E →SL[σ] F) (strongTopology σ F 𝔖) 0).HasBasis
      (fun Si : Set E × ι => Si.1 ∈ 𝔖 ∧ p Si.2)
      fun Si => { f : E →SL[σ] F | ∀ x ∈ Si.1, f x ∈ b Si.2 } := by
  letI : UniformSpace F := TopologicalAddGroup.toUniformSpace F
  haveI : UniformAddGroup F := comm_topologicalAddGroup_is_uniform
  -- Porting note: replace `nhds_induced` by `Inducing.nhds_eq_comap` (which needs an additional
  -- `letI`) so that Lean doesn't try to use the product topology
  letI : TopologicalSpace (E →SL[σ] F) := strongTopology σ F 𝔖
  rw [(strongTopology.embedding_coeFn σ F 𝔖).toInducing.nhds_eq_comap]
  exact (UniformOnFun.hasBasis_nhds_zero_of_basis 𝔖 h𝔖₁ h𝔖₂ h).comap FunLike.coe
#align continuous_linear_map.strong_topology.has_basis_nhds_zero_of_basis ContinuousLinearMap.strongTopology.hasBasis_nhds_zero_of_basis

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0139c7c777be6bb6a8511e36060a9aaa87935acf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
