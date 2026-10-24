# continuous_equivFun_basis_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2be48f91fcc6b0932c9b3bb4810f8851c7b492d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 199,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a23cf5e-091e-bf09-6fbf-9e8da286d4e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7c739667-0dce-fb7e-8b9d-beea266e77f2",
  "kind": "theorem",
  "lexical_name": "continuous_equivFun_basis_aux",
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
  "slug": "continuous-equivfun-basis-aux--469613de5bea7c009bed61d0",
  "source": {
    "blob": "2be48f91fcc6b0932c9b3bb4810f8851c7b492d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:469613de5bea7c009bed61d07164713420afd70f38a017ccf62308c5dcb02723",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c739667-0dce-fb7e-8b9d-beea266e77f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem continuous_equivFun_basis_aux [ht2 : T2Space E] {ι : Type v} [Fintype ι]
    (ξ : Basis ι 𝕜 E) : Continuous ξ.equivFun := by
  letI : UniformSpace E := TopologicalAddGroup.toUniformSpace E
  letI : UniformAddGroup E := comm_topologicalAddGroup_is_uniform
  letI : SeparatedSpace E := separated_iff_t2.mpr ht2
  induction' hn : Fintype.card ι with n IH generalizing ι E
  · rw [Fintype.card_eq_zero_iff] at hn
    exact continuous_of_const fun x y => funext hn.elim
  · haveI : FiniteDimensional 𝕜 E := of_fintype_basis ξ
    -- first step: thanks to the induction hypothesis, any n-dimensional subspace is equivalent
    -- to a standard space of dimension n, hence it is complete and therefore closed.
    have H₁ : ∀ s : Submodule 𝕜 E, finrank 𝕜 s = n → IsClosed (s : Set E) := by
      intro s s_dim
      letI : UniformAddGroup s := s.toAddSubgroup.uniformAddGroup
      let b := Basis.ofVectorSpace 𝕜 s
      have U : UniformEmbedding b.equivFun.symm.toEquiv := by
        have : Fintype.card (Basis.ofVectorSpaceIndex 𝕜 s) = n := by
          rw [← s_dim]
          exact (finrank_eq_card_basis b).symm
        have : Continuous b.equivFun := IH b this
        exact
          b.equivFun.symm.uniformEmbedding b.equivFun.symm.toLinearMap.continuous_on_pi this
      have : IsComplete (s : Set E) :=
        completeSpace_coe_iff_isComplete.1 ((completeSpace_congr U).1 (by infer_instance))
      exact this.isClosed
    -- second step: any linear form is continuous, as its kernel is closed by the first step
    have H₂ : ∀ f : E →ₗ[𝕜] 𝕜, Continuous f := by
      intro f
      by_cases H : finrank 𝕜 (LinearMap.range f) = 0
      · rw [finrank_eq_zero, LinearMap.range_eq_bot] at H
        rw [H]
        exact continuous_zero
      · have : finrank 𝕜 (LinearMap.ker f) = n := by
          have Z := f.finrank_range_add_finrank_ker
          rw [finrank_eq_card_basis ξ, hn] at Z
          have : finrank 𝕜 (LinearMap.range f) = 1 :=
            le_antisymm (finrank_self 𝕜 ▸ f.range.finrank_le) (zero_lt_iff.mpr H)
          rw [this, add_comm, Nat.add_one] at Z
          exact Nat.succ.inj Z
        have : IsClosed (LinearMap.ker f : Set E) := H₁ _ this
        exact LinearMap.continuous_of_isClosed_ker f this
    rw [continuous_pi_iff]
    intro i
    change Continuous (ξ.coord i)
    exact H₂ (ξ.coord i)

/-- Any linear map on a finite dimensional space over a complete field is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2be48f91fcc6b0932c9b3bb4810f8851c7b492d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
