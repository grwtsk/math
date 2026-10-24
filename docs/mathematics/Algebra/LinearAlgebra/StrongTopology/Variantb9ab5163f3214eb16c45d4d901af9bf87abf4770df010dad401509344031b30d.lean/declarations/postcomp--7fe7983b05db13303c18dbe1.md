# postcomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dabbac769255d6b76d0e7dde0296f35466b67cd6a8bd1277e459ac6d30233d1e",
  "kind": "def",
  "lexical_name": "postcomp",
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
  "slug": "postcomp--7fe7983b05db13303c18dbe1",
  "source": {
    "blob": "02afed1729dffb2a40e08bb5c47a094f2755ccbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 256,
    "path": "GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fe7983b05db13303c18dbe19ab45e11daa8e8ca83ba881f05484182f7059a42",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dabbac769255d6b76d0e7dde0296f35466b67cd6a8bd1277e459ac6d30233d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcomp [TopologicalAddGroup F] [TopologicalAddGroup G] [ContinuousConstSMul 𝕜₃ G]
    [ContinuousConstSMul 𝕜₂ F] (L : F →SL[τ] G) : (E →SL[σ] F) →SL[τ] E →SL[ρ] G
    where
  toFun f := L.comp f
  map_add' := comp_add L
  map_smul' := comp_smulₛₗ L
  cont := by
    letI : UniformSpace G := TopologicalAddGroup.toUniformSpace G
    haveI : UniformAddGroup G := comm_topologicalAddGroup_is_uniform
    letI : UniformSpace F := TopologicalAddGroup.toUniformSpace F
    haveI : UniformAddGroup F := comm_topologicalAddGroup_is_uniform
    rw [(strongTopology.embedding_coeFn _ _ _).continuous_iff]
    exact
      (UniformOnFun.postcomp_uniformContinuous L.uniformContinuous).continuous.comp
        (strongTopology.embedding_coeFn _ _ _).continuous
#align continuous_linear_map.postcomp ContinuousLinearMap.postcomp

end BoundedSets

end ContinuousLinearMap

open ContinuousLinearMap

namespace ContinuousLinearEquiv

section Semilinear

variable {𝕜 : Type*} {𝕜₂ : Type*} {𝕜₃ : Type*} {𝕜₄ : Type*} {E : Type*} {F : Type*}
  {G : Type*} {H : Type*} [AddCommGroup E] [AddCommGroup F] [AddCommGroup G] [AddCommGroup H]
  [NontriviallyNormedField 𝕜] [NontriviallyNormedField 𝕜₂] [NontriviallyNormedField 𝕜₃]
  [NontriviallyNormedField 𝕜₄] [Module 𝕜 E] [Module 𝕜₂ F] [Module 𝕜₃ G] [Module 𝕜₄ H]
  [TopologicalSpace E] [TopologicalSpace F] [TopologicalSpace G] [TopologicalSpace H]
  [TopologicalAddGroup G] [TopologicalAddGroup H] [ContinuousConstSMul 𝕜₃ G]
  [ContinuousConstSMul 𝕜₄ H] {σ₁₂ : 𝕜 →+* 𝕜₂} {σ₂₁ : 𝕜₂ →+* 𝕜} {σ₂₃ : 𝕜₂ →+* 𝕜₃} {σ₁₃ : 𝕜 →+* 𝕜₃}
  {σ₃₄ : 𝕜₃ →+* 𝕜₄} {σ₄₃ : 𝕜₄ →+* 𝕜₃} {σ₂₄ : 𝕜₂ →+* 𝕜₄} {σ₁₄ : 𝕜 →+* 𝕜₄} [RingHomInvPair σ₁₂ σ₂₁]
  [RingHomInvPair σ₂₁ σ₁₂] [RingHomInvPair σ₃₄ σ₄₃] [RingHomInvPair σ₄₃ σ₃₄]
  [RingHomCompTriple σ₂₁ σ₁₄ σ₂₄] [RingHomCompTriple σ₂₄ σ₄₃ σ₂₃] [RingHomCompTriple σ₁₂ σ₂₃ σ₁₃]
  [RingHomCompTriple σ₁₃ σ₃₄ σ₁₄] [RingHomCompTriple σ₂₃ σ₃₄ σ₂₄] [RingHomCompTriple σ₁₂ σ₂₄ σ₁₄]
  [RingHomIsometric σ₁₂] [RingHomIsometric σ₂₁]

/-- A pair of continuous (semi)linear equivalences generates a (semi)linear equivalence between the
spaces of continuous (semi)linear maps. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02afed1729dffb2a40e08bb5c47a094f2755ccbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
