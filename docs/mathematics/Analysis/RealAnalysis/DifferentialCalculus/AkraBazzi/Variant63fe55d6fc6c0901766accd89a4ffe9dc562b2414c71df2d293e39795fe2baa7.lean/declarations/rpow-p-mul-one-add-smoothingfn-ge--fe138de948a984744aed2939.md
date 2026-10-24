# rpow_p_mul_one_add_smoothingFn_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "baeda98308c375f8666587f7704258a9e005f82e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e0ad95b-a5d1-12bf-e4df-982cbf8d363e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:615c55ed-a90c-de40-286f-c9cb038e6269",
  "kind": "lemma",
  "lexical_name": "rpow_p_mul_one_add_smoothingFn_ge",
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
  "slug": "rpow-p-mul-one-add-smoothingfn-ge--fe138de948a984744aed2939",
  "source": {
    "blob": "baeda98308c375f8666587f7704258a9e005f82e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 340,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe138de948a984744aed29395bcb71b978c3a66b9f53f0aa48ede423fbf5601b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:615c55ed-a90c-de40-286f-c9cb038e6269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rpow_p_mul_one_add_smoothingFn_ge :
    ∀ᶠ (n : ℕ) in atTop, ∀ i, (b i) ^ (p a b) * n ^ (p a b) * (1 + ε n)
      ≤ (r i n) ^ (p a b) * (1 + ε (r i n)) := by
  rw [Filter.eventually_all]
  intro i
  let q : ℝ → ℝ := fun x => x ^ (p a b) * (1 + ε x)
  have h_diff_q : DifferentiableOn ℝ q (Set.Ioi 1) := by
    refine DifferentiableOn.mul
        (DifferentiableOn.mono (differentiableOn_rpow_const _) fun z hz => ?_)
        differentiableOn_one_add_smoothingFn
    rw [Set.mem_compl_singleton_iff]
    rw [Set.mem_Ioi] at hz
    exact ne_of_gt <| zero_lt_one.trans hz
  have h_deriv_q : deriv q =O[atTop] fun x => x ^ ((p a b) - 1) :=
    calc deriv q
      _ = deriv fun x => (fun z => z ^ (p a b)) x * (fun z => 1 + ε z) x := by rfl
      _ =ᶠ[atTop] fun x => deriv (fun z => z ^ (p a b)) x * (1 + ε x)
          + x ^ (p a b) * deriv (fun z => 1 + ε z) x := by
        filter_upwards [eventually_ne_atTop 0, eventually_gt_atTop 1] with x hx hx'
        rw [deriv_fun_mul] <;> aesop
      _ =O[atTop] fun x => x ^ ((p a b) - 1) := by
        refine IsBigO.add ?left ?right
        case left =>
          calc (fun x => deriv (fun z => z ^ (p a b)) x * (1 + ε x))
            _ =O[atTop] fun x => x ^ ((p a b) - 1) * (1 + ε x) :=
              IsBigO.mul (isBigO_deriv_rpow_const_atTop (p a b)) (isBigO_refl _ _)
            _ =O[atTop] fun x => x ^ ((p a b) - 1) * 1 :=
              IsBigO.mul (isBigO_refl _ _) isEquivalent_one_add_smoothingFn_one.isBigO
            _ = fun x => x ^ ((p a b) - 1) := by ext; rw [mul_one]
        case right =>
          calc (fun x => x ^ (p a b) * deriv (fun z => 1 + ε z) x)
            _ =O[atTop] (fun x => x ^ (p a b) * x⁻¹) :=
              IsBigO.mul (isBigO_refl _ _) isLittleO_deriv_one_add_smoothingFn.isBigO
            _ =ᶠ[atTop] fun x => x ^ ((p a b) - 1) := by
              filter_upwards [eventually_gt_atTop 0] with x hx
              rw [← Real.rpow_neg_one, ← Real.rpow_add hx, ← sub_eq_add_neg]
  have h_main_norm : (fun (n : ℕ) => ‖q (r i n) - q (b i * n)‖)
      ≤ᶠ[atTop] fun (n : ℕ) => ‖(b i) ^ (p a b) * n ^ (p a b) * (ε (b i * n) - ε n)‖ := by
    refine IsLittleO.eventuallyLE ?_
    calc
      (fun (n : ℕ) => q (r i n) - q (b i * n))
          =O[atTop] fun n => (deriv q n) * (r i n - b i * n) := by
            exact R.isBigO_apply_r_sub_b q h_diff_q
              (growsPolynomially_deriv_rpow_p_mul_one_add_smoothingFn (p a b)) i
        _ =o[atTop] fun n => (deriv q n) * (n / log n ^ 2) :=
          IsBigO.mul_isLittleO (isBigO_refl _ _) (R.dist_r_b i)
        _ =O[atTop] fun n => n ^ ((p a b) - 1) * (n / log n ^ 2) :=
          IsBigO.mul (IsBigO.natCast_atTop h_deriv_q) (isBigO_refl _ _)
        _ =ᶠ[atTop] fun n => n ^ (p a b) / (log n) ^ 2 := by
          filter_upwards [eventually_ne_atTop 0] with n hn
          have hn' : (n : ℝ) ≠ 0 := by positivity
          simp [← mul_div_assoc, ← Real.rpow_add_one hn']
        _ = fun (n : ℕ) => (n : ℝ) ^ (p a b) * (1 / (log n) ^ 2) := by simp_rw [mul_div, mul_one]
        _ =Θ[atTop] fun (n : ℕ) => (b i) ^ (p a b) * n ^ (p a b) * (1 / (log n) ^ 2) := by
          refine IsTheta.symm ?_
          simp_rw [mul_assoc]
          refine IsTheta.const_mul_left ?_ (isTheta_refl _ _)
          have := R.b_pos i; positivity
        _ =Θ[atTop] fun (n : ℕ) => (b i) ^ (p a b) * n ^ (p a b) * (ε (b i * n) - ε n) :=
          IsTheta.symm <| IsTheta.mul (isTheta_refl _ _) <| R.isTheta_smoothingFn_sub_self i
  have h_main : (fun (n : ℕ) => q (b i * n) - q (r i n))
      ≤ᶠ[atTop] fun (n : ℕ) => (b i) ^ (p a b) * n ^ (p a b) * (ε (b i * n) - ε n) := by
    calc (fun (n : ℕ) => q (b i * n) - q (r i n))
      _ ≤ᶠ[atTop] fun (n : ℕ) => ‖q (r i n) - q (b i * n)‖ := by
        filter_upwards with _; rw [norm_sub_rev]; exact le_norm_self _
      _ ≤ᶠ[atTop] fun (n : ℕ) => ‖(b i) ^ (p a b) * n ^ (p a b) * (ε (b i * n) - ε n)‖ :=
        h_main_norm
      _ =ᶠ[atTop] fun (n : ℕ) => (b i) ^ (p a b) * n ^ (p a b) * (ε (b i * n) - ε n) := by
        filter_upwards [eventually_gt_atTop ⌈(b i)⁻¹⌉₊, eventually_gt_atTop 1] with n hn hn'
        refine norm_of_nonneg ?_
        have h₁ := R.b_pos i
        have h₂ : 0 ≤ ε (b i * n) - ε n := by
          refine sub_nonneg_of_le <|
            (strictAntiOn_smoothingFn.le_iff_ge ?n_gt_one ?bn_gt_one).mpr ?le
          case n_gt_one =>
            change 1 < (n : ℝ)
            rw [Nat.one_lt_cast]
            exact hn'
          case bn_gt_one =>
            calc 1 = b i * (b i)⁻¹ := by rw [mul_inv_cancel₀ (by positivity)]
                _ ≤ b i * ⌈(b i)⁻¹⌉₊ := by gcongr; exact Nat.le_ceil _
                _ < b i * n := by gcongr
          case le => calc b i * n
            _ ≤ 1 * n := by have := R.b_lt_one i; gcongr
            _ = n := by rw [one_mul]
        positivity
  filter_upwards [h_main] with n hn
  have h₁ : q (b i * n) - (b i) ^ (p a b) * n ^ (p a b) * (ε (b i * n) - ε n)
      = (b i) ^ (p a b) * n ^ (p a b) * (1 + ε n) := by
    have := R.b_pos i
    simp only [q, mul_rpow (by positivity : (0 : ℝ) ≤ b i) (by positivity : (0 : ℝ) ≤ n)]
    ring
  change (b i) ^ (p a b) * n ^ (p a b) * (1 + ε n) ≤ q (r i n)
  rw [← h₁, sub_le_iff_le_add', ← sub_le_iff_le_add]
  exact hn

/-!
### Main proof

This final section proves the Akra-Bazzi theorem.
-/

/-- The main proof of the upper-bound part of the Akra-Bazzi theorem. The factor `1 - ε n` does not
change the asymptotic order, but it is needed for the induction step to go through. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63fe55d6fc6c0901766accd89a4ffe9dc562b2414c71df2d293e39795fe2baa7.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `baeda98308c375f8666587f7704258a9e005f82e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
