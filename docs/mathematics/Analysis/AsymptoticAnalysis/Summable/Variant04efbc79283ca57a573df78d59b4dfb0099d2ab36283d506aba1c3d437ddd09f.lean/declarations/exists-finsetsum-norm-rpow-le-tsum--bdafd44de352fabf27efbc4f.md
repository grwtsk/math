# exists_finsetSum_norm_rpow_le_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8656058c675251faac70645415ac068a2280c1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:173647a5-1851-d57f-4540-870772f1bdd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df337eda-f14e-3a25-cd14-f66b5c948ae3",
  "kind": "lemma",
  "lexical_name": "exists_finsetSum_norm_rpow_le_tsum",
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
  "slug": "exists-finsetsum-norm-rpow-le-tsum--bdafd44de352fabf27efbc4f",
  "source": {
    "blob": "f8656058c675251faac70645415ac068a2280c1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 159,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bdafd44de352fabf27efbc4f643beeab697d05cb1860fc7b0bcf6a7667c248af",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df337eda-f14e-3a25-cd14-f66b5c948ae3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finsetSum_norm_rpow_le_tsum :
    ∃ A > (0 : ℝ), ∀ r < (-Module.finrank ℤ L : ℝ), ∀ s : Finset L,
      ∑ z ∈ s, ‖z‖ ^ r ≤ A ^ r * ∑' k : ℕ, (k : ℝ) ^ (Module.finrank ℤ L - 1 + r) := by
  cases subsingleton_or_nontrivial L
  · refine ⟨1, zero_lt_one, fun r hr s ↦ ?_⟩
    have hr : r ≠ 0 := by linarith
    simpa [Subsingleton.elim _ (0 : L), Real.zero_rpow hr] using tsum_nonneg fun _ ↦ by positivity
  classical
  let I : Type _ := Module.Free.ChooseBasisIndex ℤ L
  have : Fintype I := inferInstance
  let b : Basis I ℤ L := Module.Free.chooseBasis ℤ L
  simp_rw [Module.finrank_eq_card_basis b]
  set d := Fintype.card I
  have hd : d ≠ 0 := by simp [d]
  let ε := normBound b
  obtain ⟨A, hA, B, hB, H⟩ : ∃ A > (0 : ℝ), ∃ B > (0 : ℝ), ∀ r < (-d : ℝ), ∀ s : Finset L,
      ∑ z ∈ s, ‖z‖ ^ r ≤ A * B ^ r * ∑' k : ℕ, (k : ℝ) ^ (d - 1 + r) := by
    refine ⟨2 * d * 3 ^ (d - 1), by positivity, ε, normBound_pos b, fun r hr u ↦ ?_⟩
    let e : (I → ℤ) ≃ₗ[ℤ] L := (b.repr ≪≫ₗ Finsupp.linearEquivFunOnFinite _ _ _).symm
    obtain ⟨u, rfl⟩ : ∃ u' : Finset _, u = u'.image e.toEmbedding :=
      ⟨u.image e.symm.toEmbedding, Finset.coe_injective
        (by simpa using (e.image_symm_image _).symm)⟩
    dsimp
    simp only [EmbeddingLike.apply_eq_iff_eq, implies_true, Set.injOn_of_eq_iff_eq,
      Finset.sum_image, ge_iff_le]
    obtain ⟨n, hn⟩ : ∃ n : ℕ, u ⊆ Fintype.piFinset fun _ : I ↦ Finset.Icc (-n : ℤ) n := by
      obtain ⟨r, hr, hr'⟩ := u.finite_toSet.isCompact.isBounded.subset_closedBall_lt 0 0
      refine ⟨⌊r⌋.toNat, fun x hx ↦ ?_⟩
      have hr'' : ⌊r⌋ ⊔ 0 = ⌊r⌋ := by rw [sup_eq_left]; positivity
      have := hr' hx
      simp only [Metric.mem_closedBall, dist_zero_right, pi_norm_le_iff_of_nonneg hr.le,
        Int.norm_eq_abs, ← Int.cast_abs, ← Int.le_floor] at this
      simpa only [Int.ofNat_toNat, Fintype.mem_piFinset, Finset.mem_Icc, ← abs_le, hr'']
    refine (Finset.sum_le_sum_of_subset_of_nonneg hn (by intros; positivity)).trans ?_
    simp only [Submodule.norm_coe]
    convert! sum_piFinset_Icc_rpow_le b rfl n r hr with x
    simp [e, Finsupp.linearCombination]
  by_cases hA' : A ≤ 1
  · refine ⟨B, hB, fun r hr s ↦ (H r hr s).trans ?_⟩
    rw [mul_assoc]
    exact mul_le_of_le_one_left (mul_nonneg (by positivity) (by positivity)) hA'
  · refine ⟨A⁻¹ * B, mul_pos (inv_pos.mpr hA) hB, fun r hr s ↦ (H r hr s).trans ?_⟩
    rw [Real.mul_rpow (inv_pos.mpr hA).le hB.le, mul_assoc, mul_assoc]
    gcongr
    rw [← Real.rpow_neg_one, ← Real.rpow_mul hA.le]
    refine Real.self_le_rpow_of_one_le (not_le.mp hA').le ?_
    simp only [neg_mul, one_mul, le_neg (b := r)]
    refine hr.le.trans ?_
    simpa [Nat.one_le_iff_ne_zero]

/--
Let `L` be a lattice with (possibly non-full) rank `d`, and `r : ℝ` such that `d < r`.
Then `∑ z ∈ L, ‖z‖⁻ʳ ≤ A⁻ʳ * ∑ k : ℕ, kᵈ⁻ʳ⁻¹` for some `A > 0` depending only on `L`.
This is an arbitrary choice of `A`. See `ZLattice.tsum_norm_rpow_le`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Summable/Variant04efbc79283ca57a573df78d59b4dfb0099d2ab36283d506aba1c3d437ddd09f.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8656058c675251faac70645415ac068a2280c1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
