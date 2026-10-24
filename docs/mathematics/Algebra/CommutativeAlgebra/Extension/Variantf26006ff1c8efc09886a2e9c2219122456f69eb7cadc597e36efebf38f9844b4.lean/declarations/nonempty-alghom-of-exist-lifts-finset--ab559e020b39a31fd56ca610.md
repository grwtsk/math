# nonempty_algHom_of_exist_lifts_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e981f95541f2715b2acfaec0acefb5585d1a0bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 172,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f6035e8-73f1-32e6-ad0d-39c44aac6458",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:93af8416-410d-823f-3b59-997bc2c0ba53",
  "kind": "theorem",
  "lexical_name": "nonempty_algHom_of_exist_lifts_finset",
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
  "slug": "nonempty-alghom-of-exist-lifts-finset--ab559e020b39a31fd56ca610",
  "source": {
    "blob": "7e981f95541f2715b2acfaec0acefb5585d1a0bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 172,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab559e020b39a31fd56ca610fff2c3c5d51593386d2d9475a16e7d3c3d40adaf",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93af8416-410d-823f-3b59-997bc2c0ba53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_algHom_of_exist_lifts_finset [alg : Algebra.IsAlgebraic F E]
    (h : ∀ S : Finset E, ∃ σ : Lifts F E K, (S : Set E) ⊆ σ.carrier) :
    Nonempty (E →ₐ[F] K) := by
  have : (⊥ : Lifts F E K).IsExtendible := fun S ↦ have ⟨σ, hσ⟩ := h S; ⟨σ, bot_le, hσ⟩
  have ⟨ϕ, hϕ⟩ := zorn_le₀ {ϕ : Lifts F E K | ϕ.IsExtendible}
    fun c hext hc ↦ (isEmpty_or_nonempty c).elim
      (fun _ ↦ ⟨⊥, this, fun ϕ hϕ ↦ isEmptyElim (⟨ϕ, hϕ⟩ : c)⟩)
      fun _ ↦ ⟨_, union_isExtendible c hc hext, le_union c hc⟩
  suffices ϕ.carrier = ⊤ from ⟨ϕ.emb.comp <| ((equivOfEq this).trans topEquiv).symm⟩
  by_contra!
  obtain ⟨α, -, hα⟩ := SetLike.exists_of_lt this.lt_top
  let _ : Algebra ϕ.carrier K := ϕ.emb.toAlgebra
  let Λ := ϕ.carrier⟮α⟯ →ₐ[ϕ.carrier] K
  have := finiteDimensional_adjoin (S := {α}) fun _ _ ↦ ((alg.tower_top ϕ.carrier).isIntegral).1 _
  let L (σ : Λ) : Lifts F E K := ⟨ϕ.carrier⟮α⟯.restrictScalars F, σ.restrictScalars F⟩
  have hL (σ : Λ) : ϕ < L σ := lt_iff.mpr
    ⟨by simpa only [L, restrictScalars_adjoin_eq_sup, left_lt_sup, adjoin_simple_le_iff],
      AlgHom.coe_ringHom_injective σ.comp_algebraMap⟩
  have ⟨(ϕ_ext : ϕ.IsExtendible), ϕ_max⟩ := maximal_iff_forall_gt.mp hϕ
  simp_rw [Set.mem_setOf, IsExtendible] at ϕ_max; push_neg at ϕ_max
  choose S hS using fun σ : Λ ↦ ϕ_max (hL σ)
  classical
  have ⟨θ, hθϕ, hθ⟩ := ϕ_ext ({α} ∪ Finset.univ.biUnion S)
  simp_rw [Finset.coe_union, Set.union_subset_iff, Finset.coe_singleton, Set.singleton_subset_iff,
    Finset.coe_biUnion, Finset.coe_univ, Set.mem_univ, Set.iUnion_true, Set.iUnion_subset_iff] at hθ
  have : ϕ.carrier⟮α⟯.restrictScalars F ≤ θ.carrier := by
    rw [restrictScalars_adjoin_eq_sup, sup_le_iff, adjoin_simple_le_iff]; exact ⟨hθϕ.1, hθ.1⟩
  exact hS ⟨(θ.emb.comp <| inclusion this).toRingHom, hθϕ.2⟩ θ ⟨this, fun _ ↦ rfl⟩ (hθ.2 _)

/-- Given a lift `x` and an integral element `s : E` over `x.carrier` whose conjugates over
`x.carrier` are all in `K`, we can extend the lift to a lift whose carrier contains `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantf26006ff1c8efc09886a2e9c2219122456f69eb7cadc597e36efebf38f9844b4.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e981f95541f2715b2acfaec0acefb5585d1a0bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
