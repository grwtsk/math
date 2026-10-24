# _root_.GRWTSK.Topology.GeneralTopology.UniformConvergenceCLM.Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.ContinuousLinearMap.toUniformConvergenceCLM_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75e60252-1637-235c-3498-2d47ff0eb541",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.UniformConvergenceCLM.Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.ContinuousLinearMap.toUniformConvergenceCLM_symm_apply",
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
  "slug": "root-grwtsk-topology-generaltopology-uniformconvergenceclm-variant0dd024--fa8fa4fa8c5905644a58dcda",
  "source": {
    "blob": "2bdb4be3b2fc294f37fd7469539d21757801eec9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 480,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa8fa4fa8c5905644a58dcda79ca81046cb97f82ede630e50d4d4cb191b15e4c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75e60252-1637-235c-3498-2d47ff0eb541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.UniformConvergenceCLM.Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.ContinuousLinearMap.toUniformConvergenceCLM_symm_apply
    {A : E →SLᵤ[σ, 𝔖] F} {x : E} :
    (ContinuousLinearMap.toUniformConvergenceCLM σ F 𝔖).symm A x = A x := rfl

end Equiv

end UniformConvergenceCLM

namespace ContinuousLinearMap

open scoped UniformConvergenceCLM

variable {𝕜₁ 𝕜₂ 𝕜₃ : Type*} [NormedField 𝕜₁] [NormedField 𝕜₂] [NormedField 𝕜₃] {σ : 𝕜₁ →+* 𝕜₂}
  {τ : 𝕜₂ →+* 𝕜₃} {ρ : 𝕜₁ →+* 𝕜₃} [RingHomCompTriple σ τ ρ] {E F G : Type*} [AddCommGroup E]
  [Module 𝕜₁ E] [AddCommGroup F] [Module 𝕜₂ F]
  [AddCommGroup G] [Module 𝕜₃ G] [TopologicalSpace E] [TopologicalSpace F] [TopologicalSpace G]

variable (𝔖 : Set (Set E)) (𝔗 : Set (Set F))

set_option backward.isDefEq.respectTransparency false in
variable (G) in
/-- Pre-composition by a *fixed* continuous linear map as a continuous linear map for the uniform
convergence topology. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variantf530660ab6c21b864a48372c812cc339df00fde894a8db7f6bbf4757deba47b9.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bdb4be3b2fc294f37fd7469539d21757801eec9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
