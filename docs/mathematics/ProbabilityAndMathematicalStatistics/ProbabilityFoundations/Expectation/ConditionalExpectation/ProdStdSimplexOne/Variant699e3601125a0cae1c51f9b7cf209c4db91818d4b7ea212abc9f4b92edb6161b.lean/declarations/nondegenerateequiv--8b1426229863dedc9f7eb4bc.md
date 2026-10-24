# nonDegenerateEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d25ca8cb4f253f98f33d7691bae49f3a34c4938e30b12d85795e3e98b07c6270",
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
  "slug": "nondegenerateequiv--8b1426229863dedc9f7eb4bc",
  "source": {
    "blob": "29e4d51f3416747817f8956870bd6092cb4690d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 43,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b1426229863dedc9f7eb4bc96845b06cb6021aa0517e3c57bf8cc0dbe4464b4",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d25ca8cb4f253f98f33d7691bae49f3a34c4938e30b12d85795e3e98b07c6270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–81.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/ProdStdSimplexOne/Variant699e3601125a0cae1c51f9b7cf209c4db91818d4b7ea212abc9f4b92edb6161b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29e4d51f3416747817f8956870bd6092cb4690d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
