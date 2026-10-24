# rho_le_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:291f3284-e03a-b350-e5c5-8b06b570a4d1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dfdaa345-057d-32e0-13d7-b55eaf951da1",
  "kind": "theorem",
  "lexical_name": "rho_le_majorant",
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
  "slug": "rho-le-majorant--f7fa26abef5a773ee32c7b67",
  "source": {
    "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 298,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7fa26abef5a773ee32c7b6707f1d2d7cdf3fd8b813fb8f7a7140593fab24992",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfdaa345-057d-32e0-13d7-b55eaf951da1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rho_le_majorant (hF : LocalHypsCoreW cϱ p F) (hT : 0 < p.T) {τ : ℝ}
    (hτ : τ ∈ Icc p.T (2 * p.T)) :
    rho p F τ ≤ Wfun cϱ p (τ - p.T) + Wfun cϱ p (2 * p.T - τ) + psiA cϱ p (p.tau p.d - τ) ^ 2 := by
  have hL := hF.L_pos
  have hh := h_pos hF
  have hΔL : 0 ≤ τ - p.T := by linarith [hτ.1]
  have hΔR : 0 ≤ 2 * p.T - τ := by linarith [hτ.2]
  have htd := tau_d_gt hL hT
  have hψ0 := psiA_nonneg_of hF
  have hanti' : AntitoneOn (psiA cϱ p) (Set.Ici 0) :=
    psiA_antitoneOn hL.le (by linarith [hF.four_le_cϱ]) (by linarith [hF.one_le_w])
  refine hasSum_le_of_sum_le (hasSum_rho hF τ) (fun S => ?_)
  -- termwise φ̂² ≤ ψ²
  have hterm : ∀ k : {k : ℤ // k ∉ Finset.Ico (0:ℤ) p.d},
      F.phiHat (τ - p.tau k) ^ 2 ≤ psiA cϱ p (τ - p.tau k) ^ 2 := by
    intro k
    have h := hF.phiHat_le_psi (τ - p.tau k)
    rw [← sq_abs]
    exact pow_le_pow_left₀ (abs_nonneg _) h 2
  -- split S into k < 0 and k ≥ d
  set Sm := S.filter (fun k => k.1 < 0) with hSm
  set Sp := S.filter (fun k => ¬ k.1 < 0) with hSp
  -- LEFT: k < 0, τ − τ_k = (τ−T) + (−k)h
  have hleft : ∑ k ∈ Sm, psiA cϱ p (τ - p.tau k) ^ 2 ≤ Wfun cϱ p (τ - p.T) := by
    set ι : {k : ℤ // k ∉ Finset.Ico (0:ℤ) p.d} → ℕ := fun k => (-k.1).toNat with hι
    set G : ℕ → ℝ := fun m => psiA cϱ p ((τ - p.T) + m * p.h) ^ 2 with hG
    have hinj : Set.InjOn ι Sm := by
      intro a ha b hb hab
      simp only [hSm, Finset.coe_filter, Set.mem_setOf_eq] at ha hb
      simp only [hι] at hab
      apply Subtype.ext
      have := congrArg (fun n : ℕ => (n : ℤ)) hab
      rw [Int.toNat_of_nonneg (by omega), Int.toNat_of_nonneg (by omega)] at this
      omega
    have hf : ∀ k ∈ Sm, psiA cϱ p (τ - p.tau k) ^ 2 ≤ G (ι k) := by
      intro k hk
      simp only [hSm, Finset.mem_filter] at hk
      have hk0 : k.1 < 0 := hk.2
      have hcast : ((ι k : ℕ) : ℝ) = -(k.1 : ℝ) := by
        simp only [hι]
        have : ((-k.1).toNat : ℤ) = -k.1 := Int.toNat_of_nonneg (by omega)
        exact_mod_cast this
      have : τ - p.tau k = (τ - p.T) + (ι k) * p.h := by
        rw [hcast, Setting.tau]; ring
      simp only [hG]
      rw [← this]
    calc ∑ k ∈ Sm, psiA cϱ p (τ - p.tau k) ^ 2
        ≤ ∑ m ∈ Finset.range (Sm.sup ι + 1), G m :=
          sum_le_sum_range_of_injOn Sm ι hinj G (fun m => sq_nonneg _) _ hf
      _ ≤ Wfun cϱ p (τ - p.T) := by
          rw [hG, Wfun]
          exact sum_psiA_sq_grid_le hF hΔL hh _
  -- RIGHT: k ≥ d.  Split k = d (the stray term) from k ≥ d+1.
  have hright : ∑ k ∈ Sp, psiA cϱ p (τ - p.tau k) ^ 2
      ≤ Wfun cϱ p (2 * p.T - τ) + psiA cϱ p (p.tau p.d - τ) ^ 2 := by
    have hSp_ge : ∀ k ∈ Sp, (p.d : ℤ) ≤ k.1 := by
      intro k hk
      simp only [hSp, Finset.mem_filter, not_lt] at hk
      have hk2 := k.2
      simp only [Finset.mem_Ico, not_and, not_lt] at hk2
      exact hk2 hk.2
    set Sd := Sp.filter (fun k => k.1 = (p.d : ℤ)) with hSd
    set Sq := Sp.filter (fun k => ¬ k.1 = (p.d : ℤ)) with hSq
    -- stray term: at most one element, value ψ(τ − τ_d)² = ψ(τ_d − τ)²
    have hstray : ∑ k ∈ Sd, psiA cϱ p (τ - p.tau k) ^ 2 ≤ psiA cϱ p (p.tau p.d - τ) ^ 2 := by
      have hval : ∀ k ∈ Sd, psiA cϱ p (τ - p.tau k) ^ 2 = psiA cϱ p (p.tau p.d - τ) ^ 2 := by
        intro k hk
        simp only [hSd, Finset.mem_filter] at hk
        have hk2 : (k : ℤ) = ((p.d : ℕ) : ℤ) := hk.2
        rw [hk2, ← psiA_even, neg_sub]
      have hcard : Sd.card ≤ 1 := by
        apply Finset.card_le_one.mpr
        intro a ha b hb
        simp only [hSd, Finset.mem_filter] at ha hb
        exact Subtype.ext (ha.2.trans hb.2.symm)
      rw [Finset.sum_congr rfl hval, Finset.sum_const, nsmul_eq_mul]
      have : (Sd.card : ℝ) ≤ 1 := by exact_mod_cast hcard
      nlinarith [sq_nonneg (psiA cϱ p (p.tau p.d - τ))]
    -- k ≥ d+1: τ_k − τ = (τ_d + h − τ) + j h ≥ (2T−τ) + j h, j = k − d − 1
    have hfar : ∑ k ∈ Sq, psiA cϱ p (τ - p.tau k) ^ 2 ≤ Wfun cϱ p (2 * p.T - τ) := by
      set ι : {k : ℤ // k ∉ Finset.Ico (0:ℤ) p.d} → ℕ := fun k => (k.1 - p.d - 1).toNat with hι
      set G : ℕ → ℝ := fun m => psiA cϱ p ((2 * p.T - τ) + m * p.h) ^ 2 with hG
      have hSq_ge : ∀ k ∈ Sq, (p.d : ℤ) + 1 ≤ k.1 := by
        intro k hk
        simp only [hSq, Finset.mem_filter] at hk
        have := hSp_ge k hk.1
        omega
      have hinj : Set.InjOn ι Sq := by
        intro a ha b hb hab
        have ha' := hSq_ge a ha
        have hb' := hSq_ge b hb
        simp only [hι] at hab
        apply Subtype.ext
        have := congrArg (fun n : ℕ => (n : ℤ)) hab
        rw [Int.toNat_of_nonneg (by omega), Int.toNat_of_nonneg (by omega)] at this
        omega
      have hf : ∀ k ∈ Sq, psiA cϱ p (τ - p.tau k) ^ 2 ≤ G (ι k) := by
        intro k hk
        have hk' := hSq_ge k hk
        have hcast : ((ι k : ℕ) : ℝ) = (k.1 : ℝ) - p.d - 1 := by
          simp only [hι]
          have : ((k.1 - p.d - 1).toNat : ℤ) = k.1 - p.d - 1 := Int.toNat_of_nonneg (by omega)
          exact_mod_cast this
        -- τ_k − τ = (τ_d + h − τ) + (ι k) h
        have hdist : p.tau k - τ = (p.tau p.d + p.h - τ) + (ι k) * p.h := by
          rw [hcast, Setting.tau, Setting.tau]; push_cast; ring
        have hge : (2 * p.T - τ) + (ι k) * p.h ≤ p.tau k - τ := by
          rw [hdist]; have : (0:ℝ) ≤ (ι k) * p.h := by positivity
          linarith
        have hnn : 0 ≤ (2 * p.T - τ) + (ι k) * p.h := by positivity
        rw [hG]
        simp only
        rw [← psiA_abs (τ - p.tau k), abs_sub_comm, abs_of_nonneg (le_trans hnn hge)]
        exact pow_le_pow_left₀ (hψ0 _) (hanti' hnn (le_trans hnn hge) hge) 2
      calc ∑ k ∈ Sq, psiA cϱ p (τ - p.tau k) ^ 2
          ≤ ∑ m ∈ Finset.range (Sq.sup ι + 1), G m :=
            sum_le_sum_range_of_injOn Sq ι hinj G (fun m => sq_nonneg _) _ hf
        _ ≤ Wfun cϱ p (2 * p.T - τ) := by
            rw [hG, Wfun]
            exact sum_psiA_sq_grid_le hF hΔR hh _
    calc ∑ k ∈ Sp, psiA cϱ p (τ - p.tau k) ^ 2
        = ∑ k ∈ Sd, psiA cϱ p (τ - p.tau k) ^ 2 + ∑ k ∈ Sq, psiA cϱ p (τ - p.tau k) ^ 2 :=
          (Finset.sum_filter_add_sum_filter_not Sp (fun k => k.1 = (p.d : ℤ)) _).symm
      _ ≤ _ := by linarith
  calc ∑ k ∈ S, F.phiHat (τ - p.tau k) ^ 2
      ≤ ∑ k ∈ S, psiA cϱ p (τ - p.tau k) ^ 2 := Finset.sum_le_sum fun k _ => hterm k
    _ = ∑ k ∈ Sm, psiA cϱ p (τ - p.tau k) ^ 2 + ∑ k ∈ Sp, psiA cϱ p (τ - p.tau k) ^ 2 :=
        (Finset.sum_filter_add_sum_filter_not S (fun k => k.1 < 0) _).symm
    _ ≤ _ := by linarith

/-! ### The weight integrals -/


/-- `∫_I ρ/g ≤ 2[W1a+W1b+h⁻¹(W1c+W1d)] + W3`-type bound:  `∫_I ρ(τ)(1+min(τ−T,2T−τ))² dτ ≤ RHS`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffe779b70efce4c0c54915abcb2286eaa0edfca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
