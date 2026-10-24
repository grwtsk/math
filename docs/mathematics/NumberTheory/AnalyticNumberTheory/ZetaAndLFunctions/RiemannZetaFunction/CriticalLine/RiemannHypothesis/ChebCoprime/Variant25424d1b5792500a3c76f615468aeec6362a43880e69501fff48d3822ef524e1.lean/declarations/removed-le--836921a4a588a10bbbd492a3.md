# removed_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4c5acce-42e3-8b16-4f9e-9d37ebfc8e94",
  "kind": "lemma",
  "lexical_name": "removed_le",
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
  "slug": "removed-le--836921a4a588a10bbbd492a3",
  "source": {
    "blob": "148adc76e100cf7e6b8f2d3c19126fec5a3b68fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:836921a4a588a10bbbd492a36e094b25ad2859931fcbf86c39c3175a5c0f093a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4c5acce-42e3-8b16-4f9e-9d37ebfc8e94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma removed_le (q : ℕ) (hq : 1 ≤ q) (x : ℝ) (w : ℕ → ℝ) (W : ℝ)
    (hw : ∀ n ∈ Finset.Ioc 0 ⌊x⌋₊, 0 ≤ w n ∧ w n ≤ W) (hW : 0 ≤ W) :
    ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q),
        (Λ n : ℝ) ^ 2 / n * w n
      ≤ W * Real.log q ^ 2 := by
  classical
  have hq0 : 0 < q := hq
  set f : ℕ → ℝ := fun n => (Λ n : ℝ) ^ 2 / n * w n with hf
  have hf0 : ∀ n ∈ Finset.Ioc 0 ⌊x⌋₊, 0 ≤ f n := by
    intro n hn
    have := (hw n hn).1
    have h0 := ArithmeticFunction.vonMangoldt_nonneg (n := n)
    positivity
  set U : ℕ → Finset ℕ :=
    fun p => (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ∃ k, 0 < k ∧ n = p ^ k) with hU
  -- step 1: restrict to the nonzero terms and embed into the fibers
  have hsub : ((Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q)).filter (fun n => f n ≠ 0)
      ⊆ q.primeFactors.biUnion U := by
    intro n hn
    rw [Finset.mem_filter] at hn
    obtain ⟨hnT, hne⟩ := hn
    rw [Finset.mem_filter] at hnT
    obtain ⟨hnIoc, hncop⟩ := hnT
    have hΛ : Λ n ≠ 0 := by
      intro h0
      apply hne
      rw [hf]
      simp [h0]
    have hpp : IsPrimePow n := ArithmeticFunction.vonMangoldt_ne_zero_iff.1 hΛ
    obtain ⟨p, k, hp, hk, rfl⟩ := hpp
    have hp' : p.Prime := hp.nat_prime
    have hpq : p ∣ q := by
      by_contra hnd
      apply hncop
      exact Nat.Coprime.pow_left k ((Nat.Prime.coprime_iff_not_dvd hp').2 hnd)
    rw [Finset.mem_biUnion]
    refine ⟨p, Nat.mem_primeFactors.2 ⟨hp', hpq, hq0.ne'⟩, ?_⟩
    rw [hU]
    exact Finset.mem_filter.2 ⟨hnIoc, ⟨k, hk, rfl⟩⟩
  -- step 2: the fibers are pairwise disjoint
  have hdisj : ∀ p₁ ∈ q.primeFactors, ∀ p₂ ∈ q.primeFactors, p₁ ≠ p₂ →
      Disjoint (U p₁) (U p₂) := by
    intro p₁ h₁ p₂ h₂ hne
    rw [Finset.disjoint_left]
    intro n hn₁ hn₂
    rw [hU, Finset.mem_filter] at hn₁ hn₂
    obtain ⟨-, k₁, hk₁, rfl⟩ := hn₁
    obtain ⟨-, k₂, hk₂, he⟩ := hn₂
    have hp₁ : p₁.Prime := Nat.prime_of_mem_primeFactors h₁
    have hp₂ : p₂.Prime := Nat.prime_of_mem_primeFactors h₂
    apply hne
    have hdvd : p₂ ∣ p₁ ^ k₁ := he ▸ dvd_pow_self p₂ hk₂.ne'
    have := (Nat.Prime.dvd_of_dvd_pow hp₂ hdvd)
    exact ((Nat.prime_dvd_prime_iff_eq hp₂ hp₁).1 this).symm
  -- step 3: per-fiber bound
  have hfiber : ∀ p ∈ q.primeFactors, ∑ n ∈ U p, f n ≤ W * Real.log p ^ 2 := by
    intro p hpmem
    have hp' : p.Prime := Nat.prime_of_mem_primeFactors hpmem
    have hp2 : 2 ≤ p := hp'.two_le
    have hlogp : (0:ℝ) ≤ Real.log p := Real.log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.2 hp'.pos.ne')
    -- U p = image of the exponent set
    set Kp := (Finset.Icc 1 ⌊x⌋₊).filter (fun k => p ^ k ∈ Finset.Ioc 0 ⌊x⌋₊) with hKp
    have hUeq : U p = Kp.image (fun k => p ^ k) := by
      ext n
      rw [hU, Finset.mem_filter, Finset.mem_image]
      constructor
      · rintro ⟨hnIoc, k, hk, rfl⟩
        refine ⟨k, ?_, rfl⟩
        rw [hKp, Finset.mem_filter, Finset.mem_Icc]
        have hkx : k ≤ ⌊x⌋₊ := by
          have h1 : k < 2 ^ k := Nat.lt_two_pow_self
          have h2 : 2 ^ k ≤ p ^ k := Nat.pow_le_pow_left hp2 k
          have h3 : p ^ k ≤ ⌊x⌋₊ := (Finset.mem_Ioc.1 hnIoc).2
          omega
        exact ⟨⟨hk, hkx⟩, hnIoc⟩
      · rintro ⟨k, hk, rfl⟩
        rw [hKp, Finset.mem_filter, Finset.mem_Icc] at hk
        exact ⟨hk.2, k, hk.1.1, rfl⟩
    have hinj : Set.InjOn (fun k => p ^ k) ↑Kp :=
      fun a _ b _ hab => Nat.pow_right_injective hp2 hab
    rw [hUeq, Finset.sum_image (fun a ha b hb hab => hinj ha hb hab)]
    -- per-exponent bound
    have hterm : ∀ k ∈ Kp, f (p ^ k) ≤ W * Real.log p ^ 2 * ((1:ℝ)/2) ^ k := by
      intro k hkmem
      rw [hKp, Finset.mem_filter, Finset.mem_Icc] at hkmem
      obtain ⟨⟨hk1, -⟩, hIoc⟩ := hkmem
      have hΛpk : (Λ (p ^ k) : ℝ) = Real.log p := by
        rw [ArithmeticFunction.vonMangoldt_apply_pow (by omega : k ≠ 0),
          ArithmeticFunction.vonMangoldt_apply_prime hp']
      have hwk := hw (p ^ k) hIoc
      have hpk2 : ((2:ℝ)) ^ k ≤ (p : ℝ) ^ k := by
        apply pow_le_pow_left₀ (by norm_num)
        exact_mod_cast hp2
      have hpk0 : (0:ℝ) < (p:ℝ) ^ k := by positivity
      rw [hf]
      have e1 : ((Λ (p ^ k) : ℝ)) ^ 2 = Real.log p ^ 2 := by rw [hΛpk]
      push_cast
      rw [e1]
      calc Real.log p ^ 2 / ((p:ℝ) ^ k) * w (p ^ k)
          ≤ Real.log p ^ 2 / ((p:ℝ) ^ k) * W := by
            apply mul_le_mul_of_nonneg_left (hwk.2)
            positivity
        _ ≤ Real.log p ^ 2 / ((2:ℝ) ^ k) * W := by
            apply mul_le_mul_of_nonneg_right _ hW
            apply div_le_div_of_nonneg_left (by positivity) (by positivity) hpk2
        _ = W * Real.log p ^ 2 * ((1:ℝ)/2) ^ k := by
            rw [div_pow, one_pow]
            ring
    calc ∑ k ∈ Kp, f (p ^ k) ≤ ∑ k ∈ Kp, W * Real.log p ^ 2 * ((1:ℝ)/2) ^ k :=
          Finset.sum_le_sum hterm
      _ ≤ ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, W * Real.log p ^ 2 * ((1:ℝ)/2) ^ k := by
          apply Finset.sum_le_sum_of_subset_of_nonneg
          · rw [hKp]
            exact Finset.filter_subset _ _
          · intro k _ _
            positivity
      _ = W * Real.log p ^ 2 * ∑ k ∈ Finset.Icc 1 ⌊x⌋₊, ((1:ℝ)/2) ^ k := by
          rw [Finset.mul_sum]
      _ ≤ W * Real.log p ^ 2 * 1 := by
          apply mul_le_mul_of_nonneg_left _ (by positivity)
          refine (sum_half_pow_Icc_le _).trans ?_
          have : (0:ℝ) ≤ ((1:ℝ)/2) ^ ⌊x⌋₊ := by positivity
          linarith
      _ = W * Real.log p ^ 2 := mul_one _
  -- assemble
  calc ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q), f n
      = ∑ n ∈ ((Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q)).filter
          (fun n => f n ≠ 0), f n := (Finset.sum_filter_ne_zero _).symm
    _ ≤ ∑ n ∈ q.primeFactors.biUnion U, f n := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsub
        intro n hn _
        apply hf0
        rw [Finset.mem_biUnion] at hn
        obtain ⟨p, -, hp⟩ := hn
        rw [hU] at hp
        exact (Finset.mem_filter.1 hp).1
    _ = ∑ p ∈ q.primeFactors, ∑ n ∈ U p, f n := Finset.sum_biUnion hdisj
    _ ≤ ∑ p ∈ q.primeFactors, W * Real.log p ^ 2 := Finset.sum_le_sum hfiber
    _ = W * ∑ p ∈ q.primeFactors, Real.log p ^ 2 := by rw [Finset.mul_sum]
    _ ≤ W * (∑ p ∈ q.primeFactors, Real.log p) ^ 2 := by
        apply mul_le_mul_of_nonneg_left _ hW
        apply Finset.sum_sq_le_sq_sum_of_nonneg
        intro p hp
        exact Real.log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.2 (Nat.prime_of_mem_primeFactors hp).pos.ne')
    _ ≤ W * Real.log q ^ 2 := by
        apply mul_le_mul_of_nonneg_left _ hW
        have hsum : ∑ p ∈ q.primeFactors, Real.log p = Real.log (∏ p ∈ q.primeFactors, (p:ℝ)) := by
          rw [Real.log_prod]
          intro p hp
          exact_mod_cast (Nat.prime_of_mem_primeFactors hp).pos.ne'
        have hprod : (∏ p ∈ q.primeFactors, (p:ℝ)) ≤ (q:ℝ) := by
          have hd : (∏ p ∈ q.primeFactors, p) ∣ q := Nat.prod_primeFactors_dvd q
          have h0 : (∏ p ∈ q.primeFactors, p) ≤ q := Nat.le_of_dvd hq0 hd
          calc (∏ p ∈ q.primeFactors, (p:ℝ)) = ((∏ p ∈ q.primeFactors, p : ℕ) : ℝ) := by
                push_cast
                rfl
            _ ≤ (q:ℝ) := by exact_mod_cast h0
        have hprod0 : (0:ℝ) < ∏ p ∈ q.primeFactors, (p:ℝ) := by
          apply Finset.prod_pos
          intro p hp
          exact_mod_cast (Nat.prime_of_mem_primeFactors hp).pos
        have h1 : ∑ p ∈ q.primeFactors, Real.log p ≤ Real.log q := by
          rw [hsum]
          exact Real.log_le_log hprod0 hprod
        have h2 : (0:ℝ) ≤ ∑ p ∈ q.primeFactors, Real.log p := by
          apply Finset.sum_nonneg
          intro p hp
          exact Real.log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.2 (Nat.prime_of_mem_primeFactors hp).pos.ne')
        nlinarith

/-- **[eq:cheb2] with the (n,q)=1 restriction** ([thm:E] proof (iii)). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148adc76e100cf7e6b8f2d3c19126fec5a3b68fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
