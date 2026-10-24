# nonempty_algHom_of_exist_lifts_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61ab3f94-332f-e1f9-ca0c-0cc21f0c15b7",
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
  "slug": "nonempty-alghom-of-exist-lifts-finset--36ca1303f2a674a5d59cff16",
  "source": {
    "blob": "17d3d8ce10e3e901cd41cd8a423020b8c63c5a08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 180,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36ca1303f2a674a5d59cff16ea2512f71c1ad518a0a21c583e2986a5759fb633",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61ab3f94-332f-e1f9-ca0c-0cc21f0c15b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–210.

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

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Extension/Variantec2d82dbb830e35ec45c59022778e871a3249bcec8dbb80254dff47fe7bf8986.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d3d8ce10e3e901cd41cd8a423020b8c63c5a08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
