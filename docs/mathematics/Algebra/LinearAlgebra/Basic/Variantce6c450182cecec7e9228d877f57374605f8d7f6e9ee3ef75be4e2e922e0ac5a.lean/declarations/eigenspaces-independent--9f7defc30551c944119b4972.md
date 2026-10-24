# eigenspaces_independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6368ecd-c741-d7d1-0dfe-8c9bdfedfb52",
  "kind": "theorem",
  "lexical_name": "eigenspaces_independent",
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
  "slug": "eigenspaces-independent--9f7defc30551c944119b4972",
  "source": {
    "blob": "bafa19048712ede4c1b43dd2edf99eba15018a1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 154,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f7defc30551c944119b4972d6acb0fe61a569377db4f58aaf0980ab27f42880",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6368ecd-c741-d7d1-0dfe-8c9bdfedfb52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eigenspaces_independent (f : End K V) : CompleteLattice.Independent f.eigenspace := by
  classical
  -- Define an operation from `Π₀ μ : K, f.eigenspace μ`, the vector space of finitely-supported
  -- choices of an eigenvector from each eigenspace, to `V`, by sending a collection to its sum.
  let S : @LinearMap K K _ _ (RingHom.id K) (Π₀ μ : K, f.eigenspace μ) V
      (@DFinsupp.addCommMonoid K (fun μ => f.eigenspace μ) _) _
      (@DFinsupp.module K _ (fun μ => f.eigenspace μ) _ _ _) _ :=
    @DFinsupp.lsum K K ℕ _ V _ _ _ _ _ _ _ _ _ fun μ => (f.eigenspace μ).subtype
  -- We need to show that if a finitely-supported collection `l` of representatives of the
  -- eigenspaces has sum `0`, then it itself is zero.
  suffices ∀ l : Π₀ μ, f.eigenspace μ, S l = 0 → l = 0 by
    rw [CompleteLattice.independent_iff_dfinsupp_lsum_injective]
    change Function.Injective S
    rw [← @LinearMap.ker_eq_bot K K (Π₀ μ, f.eigenspace μ) V _ _
      (@DFinsupp.addCommGroup K (fun μ => f.eigenspace μ) _)]
    rw [eq_bot_iff]
    exact this
  intro l hl
  -- We apply induction on the finite set of eigenvalues from which `l` selects a nonzero
  -- eigenvector, i.e. on the support of `l`.
  induction' h_l_support : l.support using Finset.induction with μ₀ l_support' hμ₀ ih generalizing l
  -- If the support is empty, all coefficients are zero and we are done.
  · exact DFinsupp.support_eq_empty.1 h_l_support
  -- Now assume that the support of `l` contains at least one eigenvalue `μ₀`. We define a new
  -- collection of representatives `l'` to apply the induction hypothesis on later. The collection
  -- of representatives `l'` is derived from `l` by multiplying the coefficient of the eigenvector
  -- with eigenvalue `μ` by `μ - μ₀`.
  · let l' := DFinsupp.mapRange.linearMap
      (fun μ => (μ - μ₀) • @LinearMap.id K (f.eigenspace μ) _ _ _) l
    -- The support of `l'` is the support of `l` without `μ₀`.
    have h_l_support' : l'.support = l_support' := by
      rw [← Finset.erase_insert hμ₀, ← h_l_support]
      ext a
      have : ¬(a = μ₀ ∨ l a = 0) ↔ ¬a = μ₀ ∧ ¬l a = 0 := not_or
      simp only [DFinsupp.mapRange.linearMap_apply, DFinsupp.mapRange_apply,
        DFinsupp.mem_support_iff, Finset.mem_erase, id.def, LinearMap.id_coe, LinearMap.smul_apply,
        Ne.def, smul_eq_zero, sub_eq_zero, this]
    -- The entries of `l'` add up to `0`.
    have total_l' : S l' = 0 := by
      let g := f - algebraMap K (End K V) μ₀
      let a : Π₀ _ : K, V := DFinsupp.mapRange.linearMap (fun μ => (f.eigenspace μ).subtype) l
      calc
        S l' =
          DFinsupp.lsum ℕ (fun μ => (f.eigenspace μ).subtype.comp ((μ - μ₀) • LinearMap.id)) l := ?_
        _ = DFinsupp.lsum ℕ (fun μ => g.comp (f.eigenspace μ).subtype) l := ?_
        _ = DFinsupp.lsum ℕ (fun _ => g) a := ?_
        _ = g (DFinsupp.lsum ℕ (fun _ => (LinearMap.id : V →ₗ[K] V)) a) := ?_
        _ = g (S l) := ?_
        _ = 0 := by rw [hl, g.map_zero]
      · exact DFinsupp.sum_mapRange_index.linearMap
      · congr
        ext μ v
        simp only [LinearMap.coe_comp, Function.comp_apply, LinearMap.smul_apply, LinearMap.id_coe,
          id.def, sub_smul, Submodule.subtype_apply, Submodule.coe_sub, Submodule.coe_smul_of_tower,
          LinearMap.sub_apply, mem_eigenspace_iff.1 v.prop, algebraMap_end_apply]
      · rw [DFinsupp.sum_mapRange_index.linearMap]
      · simp only [DFinsupp.sumAddHom_apply, LinearMap.id_coe, LinearMap.map_dfinsupp_sum, id.def,
          LinearMap.toAddMonoidHom_coe, DFinsupp.lsum_apply_apply]
      · simp only [DFinsupp.sum_mapRange_index.linearMap, LinearMap.id_comp]
    -- Therefore, by the induction hypothesis, all entries of `l'` are zero.
    have l'_eq_0 := ih l' total_l' h_l_support'
    -- By the definition of `l'`, this means that `(μ - μ₀) • l μ = 0` for all `μ`.
    have h_smul_eq_0 : ∀ μ, (μ - μ₀) • l μ = 0 := by
      intro μ
      calc
        (μ - μ₀) • l μ = l' μ := by
          simp only [LinearMap.id_coe, id.def, LinearMap.smul_apply, DFinsupp.mapRange_apply,
            DFinsupp.mapRange.linearMap_apply]
        _ = 0 := by rw [l'_eq_0]; rfl
    -- Thus, the eigenspace-representatives in `l` for all `μ ≠ μ₀` are `0`.
    have h_lμ_eq_0 : ∀ μ : K, μ ≠ μ₀ → l μ = 0 := by
      intro μ hμ
      apply or_iff_not_imp_left.1 (smul_eq_zero.1 (h_smul_eq_0 μ))
      rwa [sub_eq_zero]
    -- So if we sum over all these representatives, we obtain `0`.
    have h_sum_l_support'_eq_0 : (Finset.sum l_support' fun μ => (l μ : V)) = 0 := by
      rw [← Finset.sum_const_zero]
      apply Finset.sum_congr rfl
      intro μ hμ
      rw [Submodule.coe_eq_zero, h_lμ_eq_0]
      rintro rfl
      exact hμ₀ hμ
    -- The only potentially nonzero eigenspace-representative in `l` is the one corresponding to
    -- `μ₀`. But since the overall sum is `0` by assumption, this representative must also be `0`.
    have : l μ₀ = 0 := by
      simp only [DFinsupp.lsum_apply_apply, DFinsupp.sumAddHom_apply,
        LinearMap.toAddMonoidHom_coe, DFinsupp.sum, h_l_support, Submodule.subtype_apply,
        Submodule.coe_eq_zero, Finset.sum_insert hμ₀, h_sum_l_support'_eq_0, add_zero] at hl
      exact hl
    -- Thus, all coefficients in `l` are `0`.
    show l = 0
    · ext μ
      by_cases h_cases : μ = μ₀
      · rwa [h_cases, SetLike.coe_eq_coe, DFinsupp.coe_zero, Pi.zero_apply]
      · exact congr_arg _ (h_lμ_eq_0 μ h_cases)
#align module.End.eigenspaces_independent Module.End.eigenspaces_independent

/-- Eigenvectors corresponding to distinct eigenvalues of a linear operator are linearly
    independent. (Lemma 5.10 of [axler2015])

    We use the eigenvalues as indexing set to ensure that there is only one eigenvector for each
    eigenvalue in the image of `xs`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantce6c450182cecec7e9228d877f57374605f8d7f6e9ee3ef75be4e2e922e0ac5a.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bafa19048712ede4c1b43dd2edf99eba15018a1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
