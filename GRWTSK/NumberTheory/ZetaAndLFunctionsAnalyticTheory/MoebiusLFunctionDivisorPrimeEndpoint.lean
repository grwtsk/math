/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLFunctionDivisorPrimeRecurrence

/-!
# Exact endpoint inventory for the original prime-divisor recurrence

## Proof task and source comparison

Baseline: `LFunctionDivisorPrimeRecurrence.dirichlet_prime_dilation_image_sum`
at math main b9b7d279597bcb34a24580422a5b85120e29b824 proves the finite image
identity, but explicitly leaves endpoint reconciliation as a formal target.
This module supplies that adapter for the ACTUAL
`LFunctionFamilySieveBridge.familyDivisorRestrictedResponse`; no new
waveform, coefficient family, energy, or arithmetic hypothesis is introduced.

Primary derivation: for k,n>=1, n is in endpointIndex(T-log k) exactly when
k*n is in endpointIndex T. Indeed n<=exp(T)/k iff k*n<=exp(T), and natural
floor membership is equivalent to the corresponding real inequality.
Cancel the common positive factor p in d*p | p*n. The existing image
recurrence then applies. Its shared-prime mask is d*p | n precisely because
p is prime and p does not divide d. All original indices and complex phases
remain. This proves the shifted-INVENTORY identity for ALL real T and u,
including u>T; it is not an assertion about an infinite prefix.

For A<=B and u<=A, increasing the inventory from endpointIndex A to
endpointIndex B changes nothing: every added index has log(n)>A>=u and
its actual birth-gated pickupResponse vanishes. Applying this with
A=T-log p, B=T, and observation u-log p gives the SAME-inventory recurrence
on u<=T. Nonpositive-time vanishing is also returned for the exact family
response, so the negative-time portion in a later interval translation
has an explicit source-level supplier.

Consumer: `familyDivisorRestrictedEnergy`, the existing
`norm_recurrence_two_sided`, and the signed divisor sieve consumed by the
prime-noise route (#1656, #334). The next separate obligation is the
interval-L2 translation and norm instantiation, NOT another inventory map.
This adapter supplies no independent all-positive-rate energy estimate.
The complete signed higher-divisor remainder remains unpaid; its omission
would not follow from any theorem here. The asymptotic rate is unchanged.

Hostile checks: p|d cannot be dropped (d=p=2 gives a squareful left side
but generally a nonzero proposed right side). The same-inventory version
requires u<=T; the shifted-inventory version does not. Empty inventories,
k=1, touching births, squareful d, and character nonunits are retained.

External intake: pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612,
Algebra/Order/Floor/Semiring.lean, floor_le/floor_eq_iff and their use of
Nat.le_floor_iff, inspected at source. These are order/floor tools, not
arithmetic cancellation. Marco Aymone, arXiv:2009.09240v1, Theorem 1.2 and
section 3.5, were compared at statement and proof level: G_beta=H_beta/zeta
transfers an RH-equivalent weighted random bound, not an independent
estimate usable to pay our signed remainder. No stochastic premise is used.

Proof comparison: this consumes the existing coefficient and image proofs;
it does not claim independent rediscovery of the prime recurrence or of the
analytical energy inequalities. Independent human review and native Lean
acceptance have not been obtained. The prose proof and finite diagnostics
must not be reported as compilation, kernel replay, or an axiom audit.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeEndpoint

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.CausalGcdTimeShift
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionFamilySieveBridge
open GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeRecurrence

private theorem endpointIndex_mem_real (n : ℕ) (T : ℝ) :
    n ∈ endpointIndex T ↔ 1 ≤ n ∧ (n : ℝ) ≤ Real.exp T := by
  change n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊ ↔ _
  rw [Finset.mem_Icc, Nat.le_floor_iff (Real.exp_pos T).le]

/-- Exact cutoff transport, with no nonnegative-horizon restriction. -/
theorem endpointIndex_mul_mem_iff (k n : ℕ) (hk : 1 ≤ k)
    (hn : 1 ≤ n) (T : ℝ) :
    k*n ∈ endpointIndex T ↔ n ∈ endpointIndex (T-Real.log (k : ℝ)) := by
  have hkpos : (0 : ℝ) < k := by exact_mod_cast (by omega : 0 < k)
  have hkn : 1 ≤ k*n := by nlinarith
  have he : Real.exp (T-Real.log (k : ℝ)) = Real.exp T / (k : ℝ) := by
    rw [Real.exp_sub, Real.exp_log hkpos]
  rw [endpointIndex_mem_real, endpointIndex_mem_real]
  constructor
  · rintro ⟨_, h⟩
    refine ⟨hn, ?_⟩
    rw [he, le_div_iff₀ hkpos]
    simpa only [Nat.cast_mul, mul_comm] using h
  · rintro ⟨_, h⟩
    refine ⟨hkn, ?_⟩
    rw [he, le_div_iff₀ hkpos] at h
    simpa only [Nat.cast_mul, mul_comm] using h

private theorem mul_divisor_cancel (d p n : ℕ) (hp : 0 < p) :
    d*p ∣ p*n ↔ d ∣ n := by
  constructor
  · rintro ⟨r, hr⟩
    refine ⟨r, Nat.eq_of_mul_eq_mul_left hp ?_⟩
    calc
      p*n = (d*p)*r := hr
      _ = p*(d*r) := by ring
  · rintro ⟨r, rfl⟩
    exact ⟨r, by ring⟩

/-- A divisor-filtered native endpoint is exactly the multiplied shifted
endpoint. d may be zero or squareful; positivity is required only of p. -/
theorem endpointIndex_divisor_mul_image (d p : ℕ) (hp : 1 ≤ p) (T : ℝ) :
    (endpointIndex T).filter (fun m => d*p ∣ m) =
      ((endpointIndex (T-Real.log (p : ℝ))).filter (fun n => d ∣ n)).image
        (fun n => p*n) := by
  classical
  have hp0 : 0 < p := by omega
  ext m
  constructor
  · intro hm
    rcases Finset.mem_filter.mp hm with ⟨hm, hdm⟩
    have hpm : p ∣ m := by
      rcases hdm with ⟨r, rfl⟩
      exact ⟨d*r, by ring⟩
    rcases hpm with ⟨n, rfl⟩
    have hn : 1 ≤ n := by
      have hpn := ((endpointIndex_mem_real (p*n) T).mp hm).1
      by_contra h
      have hn0 : n = 0 := by omega
      simp [hn0] at hpn
    refine Finset.mem_image.mpr ⟨n, Finset.mem_filter.mpr ⟨?_, ?_⟩, rfl⟩
    · exact (endpointIndex_mul_mem_iff p n hp hn T).mp hm
    · exact (mul_divisor_cancel d p n hp0).mp hdm
  · intro hm
    rcases Finset.mem_image.mp hm with ⟨n, hn, rfl⟩
    rcases Finset.mem_filter.mp hn with ⟨hn, hdn⟩
    have hn1 := ((endpointIndex_mem_real n (T-Real.log (p : ℝ))).mp hn).1
    exact Finset.mem_filter.mpr
      ⟨(endpointIndex_mul_mem_iff p n hp hn1 T).mpr hn,
        (mul_divisor_cancel d p n hp0).mpr hdn⟩

private theorem divisor_mul_iff (d p n : ℕ) (hp : p.Prime) (hpd : ¬ p ∣ d) :
    d*p ∣ n ↔ d ∣ n ∧ p ∣ n := by
  constructor
  · rintro ⟨r, rfl⟩
    exact ⟨⟨p*r, by ring⟩, ⟨d*r, by ring⟩⟩
  · rintro ⟨⟨r, rfl⟩, hpr⟩
    rcases (hp.dvd_mul.mp hpr).resolve_left hpd with ⟨s, rfl⟩
    exact ⟨s, by ring⟩

/-- The exact prime recurrence with both inventory and observation shifted.
It holds for ALL real T,u, not merely inside the observation interval. -/
theorem familyDivisorRestrictedResponse_prime_shifted {q : ℕ}
    (χ : DirichletCharacter ℂ q) (d p : ℕ) (hp : p.Prime) (hpd : ¬ p ∣ d)
    (T u : ℝ) :
    familyDivisorRestrictedResponse (dirichletCharacterCoefficients χ) (d*p) T u =
      -(χ (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)) *
        (familyDivisorRestrictedResponse (dirichletCharacterCoefficients χ) d
            (T-Real.log (p : ℝ)) (u-Real.log (p : ℝ)) -
          familyDivisorRestrictedResponse (dirichletCharacterCoefficients χ) (d*p)
            (T-Real.log (p : ℝ)) (u-Real.log (p : ℝ))) := by
  classical
  let F := dirichletCharacterCoefficients χ
  let S := (endpointIndex (T-Real.log (p : ℝ))).filter (fun n => d ∣ n)
  have hS : ∀ n ∈ S, 1 ≤ n := by
    intro n hn
    exact ((endpointIndex_mem_real n (T-Real.log (p : ℝ))).mp
      (Finset.mem_filter.mp hn).1).1
  have hmain : familyDivisorRestrictedResponse F (d*p) T u =
      ∑ m ∈ S.image (fun n => p*n), F.mobius m * (pickupResponse m u : ℂ) := by
    unfold familyDivisorRestrictedResponse
    rw [← Finset.sum_filter, endpointIndex_divisor_mul_image d p hp.one_le T]
  have hfirst :
      (∑ n ∈ S, F.mobius n * (pickupResponse n (u-Real.log (p : ℝ)) : ℂ)) =
        familyDivisorRestrictedResponse F d
          (T-Real.log (p : ℝ)) (u-Real.log (p : ℝ)) := by
    simp only [S, Finset.sum_filter, familyDivisorRestrictedResponse]
  have hsecond :
      (∑ n ∈ S, if p ∣ n then
        F.mobius n * (pickupResponse n (u-Real.log (p : ℝ)) : ℂ) else 0) =
        familyDivisorRestrictedResponse F (d*p)
          (T-Real.log (p : ℝ)) (u-Real.log (p : ℝ)) := by
    simp only [S, Finset.sum_filter, familyDivisorRestrictedResponse]
    apply Finset.sum_congr rfl
    intro n hn
    rw [divisor_mul_iff d p n hp hpd]
    by_cases hd : d ∣ n <;> by_cases hpn : p ∣ n <;> simp [hd, hpn]
  rw [hmain, dirichlet_prime_dilation_image_sum χ S p hp hS u, hfirst, hsecond]

/-- Increasing a native cutoff changes no response observed before the
smaller horizon. No bound on the normalized coefficient family is needed. -/
theorem familyDivisorRestrictedResponse_horizon_eq (F : NormalizedCoefficients)
    (d : ℕ) {A B u : ℝ} (hAB : A ≤ B) (hu : u ≤ A) :
    familyDivisorRestrictedResponse F d B u =
      familyDivisorRestrictedResponse F d A u := by
  classical
  have hsub : endpointIndex A ⊆ endpointIndex B := by
    intro n hn
    rcases (endpointIndex_mem_real n A).mp hn with ⟨hn1, hnA⟩
    exact (endpointIndex_mem_real n B).mpr
      ⟨hn1, hnA.trans (Real.exp_le_exp.mpr hAB)⟩
  unfold familyDivisorRestrictedResponse
  symm
  apply Finset.sum_subset hsub
  intro n hnB hnA
  have hn1 := ((endpointIndex_mem_real n B).mp hnB).1
  have hnpos : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hbirth : ¬ Real.log (n : ℝ) ≤ u := by
    intro hb
    apply hnA
    apply (endpointIndex_mem_real n A).mpr
    refine ⟨hn1, ?_⟩
    calc
      (n : ℝ) = Real.exp (Real.log (n : ℝ)) := (Real.exp_log hnpos).symm
      _ ≤ Real.exp u := Real.exp_le_exp.mpr hb
      _ ≤ Real.exp A := Real.exp_le_exp.mpr hu
  have hr : pickupResponse n u = 0 := by
    simp only [pickupResponse, if_neg hbirth]
  simp [hr]

/-- Source-exact zero extension required for the later translated L2 norm. -/
theorem familyDivisorRestrictedResponse_zero_of_nonpos (F : NormalizedCoefficients)
    (d : ℕ) (T u : ℝ) (hu : u ≤ 0) :
    familyDivisorRestrictedResponse F d T u = 0 := by
  classical
  unfold familyDivisorRestrictedResponse
  apply Finset.sum_eq_zero
  intro n hn
  have hr := response_zero_of_nonpos n ((endpointIndex_mem_real n T).mp hn).1 u hu
  simp [hr]

/-- The recurrence used by the energy consumer, now on its actual fixed
endpoint inventory. The observation restriction u<=T is essential here. -/
theorem familyDivisorRestrictedResponse_prime_same_horizon {q : ℕ}
    (χ : DirichletCharacter ℂ q) (d p : ℕ) (hp : p.Prime) (hpd : ¬ p ∣ d)
    (T u : ℝ) (hu : u ≤ T) :
    familyDivisorRestrictedResponse (dirichletCharacterCoefficients χ) (d*p) T u =
      -(χ (p : ZMod q) * ((Real.sqrt (p : ℝ))⁻¹ : ℂ)) *
        (familyDivisorRestrictedResponse (dirichletCharacterCoefficients χ) d T
            (u-Real.log (p : ℝ)) -
          familyDivisorRestrictedResponse (dirichletCharacterCoefficients χ) (d*p) T
            (u-Real.log (p : ℝ))) := by
  rw [familyDivisorRestrictedResponse_prime_shifted χ d p hp hpd T u]
  have hl : 0 ≤ Real.log (p : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hp.one_le)
  have hab : T-Real.log (p : ℝ) ≤ T := sub_le_self T hl
  have huv : u-Real.log (p : ℝ) ≤ T-Real.log (p : ℝ) :=
    sub_le_sub_right hu _
  rw [← familyDivisorRestrictedResponse_horizon_eq
        (dirichletCharacterCoefficients χ) d hab huv,
      ← familyDivisorRestrictedResponse_horizon_eq
        (dirichletCharacterCoefficients χ) (d*p) hab huv]

end GRWTSK.NumberTheory.Moebius.LFunctionDivisorPrimeEndpoint
