# nonDegenerateEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1de84bb4b101382f5c3333ec0af644e3dbf2b293825728a73bfca370b213d819",
  "kind": "def",
  "lexical_name": "nonDegenerateEquiv",
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
  "slug": "nondegenerateequiv--82f3e4af513c97f5c6959e7d",
  "source": {
    "blob": "112eeb9fd32c1f82cf7018a463d63751f9f23578",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 51,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82f3e4af513c97f5c6959e7da0ea549a382da24a2bda7b8af704c56d5f6fa029",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1de84bb4b101382f5c3333ec0af644e3dbf2b293825728a73bfca370b213d819`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def nonDegenerateEquiv :
    Fin (p + 1) ≃ (Δ[p] ⊗ Δ[1] : SSet.{u}).nonDegenerate (p + 1) :=
  Equiv.ofBijective
    (fun i ↦ ⟨⟨stdSimplex.objEquiv.{u}.symm (SimplexCategory.σ i),
      objMk₁ i.succ.castSucc⟩, by
      rw [nonDegenerate_max_dim_iff _ rfl]
      ext j
      dsimp
      by_cases hj : j ≤ i.castSucc
      · rw [objMk₁_of_castSucc_lt _ _ (by simpa),
          Fin.coe_ofNat_eq_mod, Nat.zero_mod, add_zero]
        change (i.predAbove j : ℕ) = _
        simp [Fin.predAbove_of_le_castSucc _ _ hj]
      · simp only [not_le] at hj
        rw [objMk₁_of_le_castSucc _ _ (by simpa), objEquiv_symm_apply]
        change (i.predAbove j : ℕ) + 1 = _
        rw [Fin.predAbove_of_castSucc_lt _ _ hj, Fin.val_pred]
        lia⟩) (by
    refine ⟨fun _ _ h ↦ ?_, fun ⟨⟨s₁, s₂⟩, hs⟩ ↦ ?_⟩
    · simpa using stdSimplex.objMk₁_injective (congr_arg (Prod.snd ∘ Subtype.val) h)
    · rw [nonDegenerate_max_dim_iff _ rfl] at hs
      obtain ⟨i, rfl⟩ := stdSimplex.objMk₁_surjective s₂
      obtain ⟨i, rfl⟩ := Fin.eq_succ_of_ne_zero (i := i) (by
        rintro rfl
        have := DFunLike.congr_fun hs 0
        simp only [orderHomOfSimplex_coe,
          stdSimplex.objMk₁_of_le_castSucc (0 : Fin (p + 3)) 0 (by simp)] at this
        simp at this)
      obtain ⟨i, rfl⟩ | rfl := i.eq_castSucc_or_eq_last
      · exact ⟨i, nonDegenerate_ext₂ rfl rfl⟩
      · have := DFunLike.congr_fun hs (Fin.last _)
        simp only [Fin.succ_last, orderHomOfSimplex_coe,
          OrderHom.id_coe, id_eq, Fin.ext_iff, Fin.val_last,
          stdSimplex.objMk₁_of_castSucc_lt (Fin.last (p + 2))
            (Fin.last (p + 1)) (by simp),
          Fin.coe_ofNat_eq_mod, Nat.zero_mod, add_zero] at this
        lia)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variantc6e2193db9b8bf35f47b294538bc248181710466200f1640287bce198a088340.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112eeb9fd32c1f82cf7018a463d63751f9f23578` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
