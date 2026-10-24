# strongTopology.hasBasis_nhds_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:678f82c9-d6be-b242-7121-0cfafd49f0ff",
  "kind": "theorem",
  "lexical_name": "strongTopology.hasBasis_nhds_zero",
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
  "slug": "strongtopology-hasbasis-nhds-zero--3d7bcfb9cbf7ace6846f5e05",
  "source": {
    "blob": "0139c7c777be6bb6a8511e36060a9aaa87935acf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 175,
    "path": "GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d7bcfb9cbf7ace6846f5e0529664e4efa82984130fe5340d186034cb544bc71",
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

Occurrence: `result:678f82c9-d6be-b242-7121-0cfafd49f0ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strongTopology.hasBasis_nhds_zero [TopologicalSpace F] [TopologicalAddGroup F]
    (𝔖 : Set (Set E)) (h𝔖₁ : 𝔖.Nonempty) (h𝔖₂ : DirectedOn (· ⊆ ·) 𝔖) :
    (@nhds (E →SL[σ] F) (strongTopology σ F 𝔖) 0).HasBasis
      (fun SV : Set E × Set F => SV.1 ∈ 𝔖 ∧ SV.2 ∈ (𝓝 0 : Filter F)) fun SV =>
      { f : E →SL[σ] F | ∀ x ∈ SV.1, f x ∈ SV.2 } :=
  strongTopology.hasBasis_nhds_zero_of_basis σ F 𝔖 h𝔖₁ h𝔖₂ (𝓝 0).basis_sets
#align continuous_linear_map.strong_topology.has_basis_nhds_zero ContinuousLinearMap.strongTopology.hasBasis_nhds_zero

end General

section BoundedSets

variable {𝕜₁ 𝕜₂ 𝕜₃ : Type*} [NormedField 𝕜₁] [NormedField 𝕜₂] [NormedField 𝕜₃] {σ : 𝕜₁ →+* 𝕜₂}
  {τ : 𝕜₂ →+* 𝕜₃} {ρ : 𝕜₁ →+* 𝕜₃} [RingHomCompTriple σ τ ρ] {E E' F F' G : Type*} [AddCommGroup E]
  [Module 𝕜₁ E] [AddCommGroup E'] [Module ℝ E'] [AddCommGroup F] [Module 𝕜₂ F] [AddCommGroup F']
  [Module ℝ F'] [AddCommGroup G] [Module 𝕜₃ G] [TopologicalSpace E]

/-- The topology of bounded convergence on `E →L[𝕜] F`. This coincides with the topology induced by
the operator norm when `E` and `F` are normed spaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantd5c2fbc314999255bd05085b7d25684aa28669d747de8b37e815cfd1b1224408.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0139c7c777be6bb6a8511e36060a9aaa87935acf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
