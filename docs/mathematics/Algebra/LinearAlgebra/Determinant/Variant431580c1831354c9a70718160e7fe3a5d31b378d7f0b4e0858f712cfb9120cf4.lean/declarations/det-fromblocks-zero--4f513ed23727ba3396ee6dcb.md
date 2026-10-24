# det_fromBlocks_zero₂₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae9b374d-f29b-e5dc-0fa3-b23bdc3c08b4",
  "kind": "theorem",
  "lexical_name": "det_fromBlocks_zero₂₁",
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
  "slug": "det-fromblocks-zero--4f513ed23727ba3396ee6dcb",
  "source": {
    "blob": "8c536a6eaffecee5111c064aa0257798c22dc402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 657,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f513ed23727ba3396ee6dcbea6214501731258da175a7832829a3eafc4e5b53",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae9b374d-f29b-e5dc-0fa3-b23bdc3c08b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_fromBlocks_zero₂₁ (A : Matrix m m R) (B : Matrix m n R) (D : Matrix n n R) :
    (Matrix.fromBlocks A B 0 D).det = A.det * D.det := by
  classical
    simp_rw [det_apply']
    convert Eq.symm <|
      sum_subset (β := R) (subset_univ ((sumCongrHom m n).range : Set (Perm (Sum m n))).toFinset) ?_
    rw [sum_mul_sum]
    simp_rw [univ_product_univ]
    rw [(sum_bij (fun (σ : Perm m × Perm n) _ => Equiv.sumCongr σ.fst σ.snd) _ _ _ _).symm]
    · intro σ₁₂ h
      simp only
      erw [Set.mem_toFinset, MonoidHom.mem_range]
      use σ₁₂
      simp only [sumCongrHom_apply]
    · simp only [forall_prop_of_true, Prod.forall, mem_univ]
      intro σ₁ σ₂
      rw [Fintype.prod_sum_type]
      simp_rw [Equiv.sumCongr_apply, Sum.map_inr, Sum.map_inl, fromBlocks_apply₁₁,
        fromBlocks_apply₂₂]
      rw [mul_mul_mul_comm]
      congr
      rw [sign_sumCongr, Units.val_mul, Int.cast_mul]
    · intro σ₁ σ₂ h₁ h₂
      dsimp only
      intro h
      have h2 : ∀ x, Perm.sumCongr σ₁.fst σ₁.snd x = Perm.sumCongr σ₂.fst σ₂.snd x := by
        intro x
        exact congr_fun (congr_arg toFun h) x
      simp only [Sum.map_inr, Sum.map_inl, Perm.sumCongr_apply, Sum.forall, Sum.inl.injEq,
        Sum.inr.injEq] at h2
      ext x
      · exact h2.left x
      · exact h2.right x
    · intro σ hσ
      erw [Set.mem_toFinset, MonoidHom.mem_range] at hσ
      obtain ⟨σ₁₂, hσ₁₂⟩ := hσ
      use σ₁₂
      rw [← hσ₁₂]
      simp
    · rintro σ - hσn
      have h1 : ¬∀ x, ∃ y, Sum.inl y = σ (Sum.inl x) := by
        rw [Set.mem_toFinset] at hσn
        -- Porting note: golfed
        simpa only [Set.MapsTo, Set.mem_range, forall_exists_index, forall_apply_eq_imp_iff'] using
          mt mem_sumCongrHom_range_of_perm_mapsTo_inl hσn
      obtain ⟨a, ha⟩ := not_forall.mp h1
      cases' hx : σ (Sum.inl a) with a2 b
      · have hn := (not_exists.mp ha) a2
        exact absurd hx.symm hn
      · rw [Finset.prod_eq_zero (Finset.mem_univ (Sum.inl a)), mul_zero]
        rw [hx, fromBlocks_apply₂₁, zero_apply]
#align matrix.det_from_blocks_zero₂₁ Matrix.det_fromBlocks_zero₂₁

/-- The determinant of a 2×2 block matrix with the upper-right block equal to zero is the product of
the determinants of the diagonal blocks. For the generalization to any number of blocks, see
`Matrix.det_of_lower_triangular`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c536a6eaffecee5111c064aa0257798c22dc402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
