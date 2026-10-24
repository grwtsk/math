# strongTopology.continuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02afed1729dffb2a40e08bb5c47a094f2755ccbe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d05dd741-94e5-c78c-68be-37d4a70afd6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a3481dc7-6cb3-56ad-6448-1dbd2b0140f2",
  "kind": "theorem",
  "lexical_name": "strongTopology.continuousSMul",
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
  "slug": "strongtopology-continuoussmul--2e5e12c4973e26b59e0e03c1",
  "source": {
    "blob": "02afed1729dffb2a40e08bb5c47a094f2755ccbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 137,
    "path": "GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e5e12c4973e26b59e0e03c1d27329dd8a194e40ee22e966abf5b7dd28a119d5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a3481dc7-6cb3-56ad-6448-1dbd2b0140f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strongTopology.continuousSMul [RingHomSurjective σ] [RingHomIsometric σ]
    [TopologicalSpace F] [TopologicalAddGroup F] [ContinuousSMul 𝕜₂ F] (𝔖 : Set (Set E))
    (h𝔖₁ : 𝔖.Nonempty) (h𝔖₂ : DirectedOn (· ⊆ ·) 𝔖)
    (h𝔖₃ : ∀ S ∈ 𝔖, Bornology.IsVonNBounded 𝕜₁ S) :
    @ContinuousSMul 𝕜₂ (E →SL[σ] F) _ _ (strongTopology σ F 𝔖) := by
  letI : UniformSpace F := TopologicalAddGroup.toUniformSpace F
  haveI : UniformAddGroup F := comm_topologicalAddGroup_is_uniform
  letI : TopologicalSpace (E →SL[σ] F) := strongTopology σ F 𝔖
  let φ : (E →SL[σ] F) →ₗ[𝕜₂] E →ᵤ[𝔖] F :=
    ⟨⟨(FunLike.coe : (E →SL[σ] F) → E → F), fun _ _ => rfl⟩, fun _ _ => rfl⟩
  exact
    UniformOnFun.continuousSMul_induced_of_image_bounded 𝕜₂ E F (E →SL[σ] F) h𝔖₁ h𝔖₂ φ ⟨rfl⟩
      fun u s hs => (h𝔖₃ s hs).image u
#align continuous_linear_map.strong_topology.has_continuous_smul ContinuousLinearMap.strongTopology.continuousSMul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StrongTopology/Variantb9ab5163f3214eb16c45d4d901af9bf87abf4770df010dad401509344031b30d.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02afed1729dffb2a40e08bb5c47a094f2755ccbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
