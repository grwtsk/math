# Complete source: GRWTSK.NumberTheory.Moebius.SignedAbelEndpointFibreQuadraticEnergy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `841c6083ed45756773d82c3b0d410a700ecd153b` · SHA-256 `cee21a4c9ccb534c3e8e7ca00bf96e42bd31d24d308b9a3940a3ca63a157a2ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #505. Direct stacked parent: draft PR #498 at
`18403fef074df31ba57c1a0db4077c4897dfacb7`.
-/
import GRWTSK.NumberTheory.Moebius.SignedAbelActiveTailQuadraticEnergy
import Mathlib.Algebra.BigOperators.Group.Finset.Sigma

/-!
# Endpoint-fibre reindexing of the reciprocal Abel quadratic energy

The reciprocal active-tail obstruction is indexed by a prefix depth `t` and a
positive shift `h`.  This module changes variables to

`n = t+1`,  `b = n+h = t+1+h`.

The active triangular source

`0 <= t < Y`, `1 <= h < Y`, `X <= t+1+h < Y`

is in exact finite bijection with

`X <= b < Y`, `1 <= n < b`.

The reciprocal weight depends only on the common endpoint `b`, so the global
energy becomes a weighted sum of endpoint fibres.

No arithmetic estimate is introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- Active `(t,h)` source pairs for one dyadic scale. -/
def signedAbelActiveTailPairSet (j : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.range (2 ^ (j + 1))).product
      (Finset.Ico 1 (2 ^ (j + 1)))).filter
    (fun p =>
      2 ^ j ≤ p.1 + 1 + p.2 ∧
        p.1 + 1 + p.2 < 2 ^ (j + 1))

/-- Endpoint-fibre coordinates `(b,n)`. -/
def signedAbelEndpointFibrePairSet (j : ℕ) : Finset (ℕ × ℕ) :=
  ((Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1))).product
      (Finset.Ico 1 (2 ^ (j + 1)))).filter
    (fun p => p.2 < p.1)

/-- Forward change of variables `(t,h) -> (b=t+1+h,n=t+1)`. -/
def signedAbelActivePairToEndpoint (p : ℕ × ℕ) : ℕ × ℕ :=
  (p.1 + 1 + p.2, p.1 + 1)

/-- Inverse change of variables `(b,n) -> (t=n-1,h=b-n)`. -/
def signedAbelEndpointToActivePair (p : ℕ × ℕ) : ℕ × ℕ :=
  (p.2 - 1, p.1 - p.2)

theorem signedAbelActivePairToEndpoint_mem
    {j : ℕ} {p : ℕ × ℕ}
    (hp : p ∈ signedAbelActiveTailPairSet j) :
    signedAbelActivePairToEndpoint p ∈
      signedAbelEndpointFibrePairSet j := by
  unfold signedAbelEndpointFibrePairSet
    signedAbelActivePairToEndpoint
  simp only [signedAbelActiveTailPairSet,
    Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
    Finset.mem_range, Finset.mem_Ico] at hp ⊢
  rcases hp with ⟨⟨htY, hh1, hhY⟩, hX, hY⟩
  constructor
  · exact ⟨⟨hX, hY⟩, ⟨by omega, by omega⟩⟩
  · omega

theorem signedAbelEndpointToActivePair_mem
    {j : ℕ} {p : ℕ × ℕ}
    (hp : p ∈ signedAbelEndpointFibrePairSet j) :
    signedAbelEndpointToActivePair p ∈
      signedAbelActiveTailPairSet j := by
  unfold signedAbelActiveTailPairSet
    signedAbelEndpointToActivePair
  simp only [signedAbelEndpointFibrePairSet,
    Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
    Finset.mem_range, Finset.mem_Ico] at hp ⊢
  rcases hp with ⟨⟨⟨hbX, hbY⟩, hn1, hnY⟩, hnb⟩
  constructor
  · constructor
    · omega
    · constructor <;> omega
  · constructor <;> omega

theorem signedAbelEndpointToActivePair_leftInverse
    {j : ℕ} {p : ℕ × ℕ}
    (hp : p ∈ signedAbelActiveTailPairSet j) :
    signedAbelEndpointToActivePair
        (signedAbelActivePairToEndpoint p) = p := by
  simp only [signedAbelActiveTailPairSet,
    Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
    Finset.mem_range, Finset.mem_Ico] at hp
  rcases hp with ⟨⟨_htY, hh1, _hhY⟩, _hX, _hY⟩
  apply Prod.ext <;>
    simp only [signedAbelActivePairToEndpoint,
      signedAbelEndpointToActivePair] <;> omega

theorem signedAbelActivePairToEndpoint_rightInverse
    {j : ℕ} {p : ℕ × ℕ}
    (hp : p ∈ signedAbelEndpointFibrePairSet j) :
    signedAbelActivePairToEndpoint
        (signedAbelEndpointToActivePair p) = p := by
  simp only [signedAbelEndpointFibrePairSet,
    Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
    Finset.mem_Ico] at hp
  rcases hp with ⟨⟨⟨_hbX, _hbY⟩, hn1, _hnY⟩, hnb⟩
  apply Prod.ext <;>
    simp only [signedAbelActivePairToEndpoint,
      signedAbelEndpointToActivePair] <;> omega

/-- Exact finite reindexing of arbitrary source data from active `(t,h)`
coordinates to endpoint-fibre `(b,n)` coordinates. -/
theorem sum_signedAbelActivePairs_eq_endpointFibres
    (j : ℕ) (F : ℕ → ℕ → ℝ) :
    (∑ p ∈ signedAbelActiveTailPairSet j,
      F p.1 p.2) =
      ∑ q ∈ signedAbelEndpointFibrePairSet j,
        F (q.2 - 1) (q.1 - q.2) := by
  classical
  apply Finset.sum_bij'
    (fun p _hp => signedAbelActivePairToEndpoint p)
    (fun q _hq => signedAbelEndpointToActivePair q)
  · intro p hp
    exact signedAbelActivePairToEndpoint_mem hp
  · intro q hq
    exact signedAbelEndpointToActivePair_mem hq
  · intro p hp
    exact signedAbelEndpointToActivePair_leftInverse hp
  · intro q hq
    exact signedAbelActivePairToEndpoint_rightInverse hq
  · intro p hp
    have hleft :=
      signedAbelEndpointToActivePair_leftInverse hp
    change F p.1 p.2 = F (signedAbelEndpointToActivePair
      (signedAbelActivePairToEndpoint p)).1 (signedAbelEndpointToActivePair
      (signedAbelActivePairToEndpoint p)).2
    rw [hleft]

/-- On one active pair, the source amplitude-square times reciprocal weight is
the endpoint-fibre summand after the exact change of variables. -/
theorem signedAbelActivePairTerm_eq_endpointTerm
    {j : ℕ} {p : ℕ × ℕ}
    (hp : p ∈ signedAbelActiveTailPairSet j) :
    signedAbelDepthAmplitude j p.1 p.2 ^ 2 *
        signedAbelActiveReciprocalWeight j p.1 p.2 =
      4 *
        mertensTwoPointPrefix
          ((signedAbelActivePairToEndpoint p).1 -
            (signedAbelActivePairToEndpoint p).2)
          (signedAbelActivePairToEndpoint p).2 ^ 2 *
        (((signedAbelActivePairToEndpoint p).1 : ℝ)⁻¹ -
          ((((signedAbelActivePairToEndpoint p).1 + 1 : ℕ) : ℝ))⁻¹) := by
  simp only [signedAbelActiveTailPairSet,
    Finset.mem_filter, Finset.product_eq_sprod, Finset.mem_product,
    Finset.mem_range, Finset.mem_Ico] at hp
  rcases hp with ⟨⟨_htY, hh1, _hhY⟩, hX, hY⟩
  have hweight :=
    signedAbelActiveReciprocalWeight_eq_reciprocalDiff
      (j := j) (t := p.1) (h := p.2) hX hY
  have hshift :
      (p.1 + 1 + p.2) - (p.1 + 1) = p.2 := by
    omega
  rw [hweight]
  simp [signedAbelDepthAmplitude,
    signedAbelActivePairToEndpoint, hshift]
  ring

/-- The active-tail energy is exactly the sum over the filtered active pair
set. -/
theorem weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_activePairSum
    (j : ℕ) :
    weightedMertensSignedAbelActiveTailQuadraticEnergy j =
      ∑ p ∈ signedAbelActiveTailPairSet j,
        signedAbelDepthAmplitude j p.1 p.2 ^ 2 *
          ((((p.1 + 1 + p.2 : ℕ) : ℝ))⁻¹ -
            ((((p.1 + 1 + p.2 + 1 : ℕ) : ℝ))⁻¹)) := by
  classical
  unfold weightedMertensSignedAbelActiveTailQuadraticEnergy
    signedAbelActiveReciprocalWeight
    signedAbelActiveTailPairSet
  rw [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro t ht
  apply Finset.sum_congr rfl
  intro h hh
  simp only [mul_ite, mul_zero, Nat.add_comm, Nat.add_left_comm]

/-- Quadratic correlation fibre ending at the common endpoint `b`. -/
def mertensTwoPointEndpointFibreQuadraticEnergy
    (b : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 1 b,
    mertensTwoPointPrefix (b - n) n ^ 2

/-- Reciprocal endpoint-weighted quadratic energy on the active dyadic tail. -/
def weightedMertensSignedAbelEndpointFibreQuadraticEnergy
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
    ((((b : ℕ) : ℝ))⁻¹ -
      ((((b + 1 : ℕ) : ℝ))⁻¹)) *
      mertensTwoPointEndpointFibreQuadraticEnergy b

private theorem sum_Ico_one_Y_indicator_lt
    {Y b : ℕ} (hbY : b ≤ Y) (f : ℕ → ℝ) :
    (∑ n ∈ Finset.Ico 1 Y, if n < b then f n else 0) =
      ∑ n ∈ Finset.Ico 1 b, f n := by
  rw [← Finset.sum_filter]
  congr 1
  ext n
  simp only [Finset.mem_filter, Finset.mem_Ico]
  constructor
  · intro hn
    exact ⟨hn.1.1, hn.2⟩
  · intro hn
    exact ⟨⟨hn.1, lt_of_lt_of_le hn.2 hbY⟩, hn.2⟩

/-- Endpoint-pair sum equals the nested endpoint-fibre presentation. -/
theorem sum_signedAbelEndpointPairs_eq_endpointFibreEnergy
    (j : ℕ) :
    (∑ q ∈ signedAbelEndpointFibrePairSet j,
      4 * mertensTwoPointPrefix (q.1 - q.2) q.2 ^ 2 *
        (((q.1 : ℝ)⁻¹ - ((((q.1 + 1 : ℕ) : ℝ))⁻¹)))) =
      weightedMertensSignedAbelEndpointFibreQuadraticEnergy j := by
  classical
  unfold signedAbelEndpointFibrePairSet
    weightedMertensSignedAbelEndpointFibreQuadraticEnergy
    mertensTwoPointEndpointFibreQuadraticEnergy
  rw [Finset.sum_filter, Finset.product_eq_sprod, Finset.sum_product]
  calc
    (∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
      ∑ n ∈ Finset.Ico 1 (2 ^ (j + 1)),
        if n < b then
          4 * mertensTwoPointPrefix (b - n) n ^ 2 *
            ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹)
        else 0) =
      ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
        ∑ n ∈ Finset.Ico 1 b,
          4 * mertensTwoPointPrefix (b - n) n ^ 2 *
            ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) := by
      apply Finset.sum_congr rfl
      intro b hb
      exact sum_Ico_one_Y_indicator_lt
        (Nat.le_of_lt (Finset.mem_Ico.mp hb).2)
        (fun n =>
          4 * mertensTwoPointPrefix (b - n) n ^ 2 *
            ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹))
    _ = 4 * ∑ b ∈ Finset.Ico (2 ^ j : ℕ) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          ∑ n ∈ Finset.Ico 1 b,
            mertensTwoPointPrefix (b - n) n ^ 2 := by
      simp_rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro b hb
      apply Finset.sum_congr rfl
      intro n hn
      ring

/-- Main exact endpoint-fibre identity. -/
theorem weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres
    (j : ℕ) :
    weightedMertensSignedAbelActiveTailQuadraticEnergy j =
      weightedMertensSignedAbelEndpointFibreQuadraticEnergy j := by
  rw [weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_activePairSum]
  calc
    (∑ p ∈ signedAbelActiveTailPairSet j,
      signedAbelDepthAmplitude j p.1 p.2 ^ 2 *
        (((p.1 + 1 + p.2 : ℕ) : ℝ)⁻¹ -
          (((p.1 + 1 + p.2 + 1 : ℕ) : ℝ))⁻¹)) =
      ∑ q ∈ signedAbelEndpointFibrePairSet j,
        4 * mertensTwoPointPrefix (q.1 - q.2) q.2 ^ 2 *
          ((q.1 : ℝ)⁻¹ - (((q.1 + 1 : ℕ) : ℝ))⁻¹) := by
      rw [sum_signedAbelActivePairs_eq_endpointFibres j
        (fun t h => signedAbelDepthAmplitude j t h ^ 2 *
          (((t + 1 + h : ℕ) : ℝ)⁻¹ - (((t + 1 + h + 1 : ℕ) : ℝ))⁻¹))]
      apply Finset.sum_congr rfl
      intro q hq
      have hp := signedAbelEndpointToActivePair_mem hq
      have hterm :=
        signedAbelActivePairTerm_eq_endpointTerm
          (j := j) (p := signedAbelEndpointToActivePair q) hp
      have hright :=
        signedAbelActivePairToEndpoint_rightInverse hq
      have hpBounds :
          2 ^ j ≤ (signedAbelEndpointToActivePair q).1 + 1 +
            (signedAbelEndpointToActivePair q).2 ∧
          (signedAbelEndpointToActivePair q).1 + 1 +
            (signedAbelEndpointToActivePair q).2 < 2 ^ (j + 1) :=
        (Finset.mem_filter.mp hp).2
      rw [signedAbelActiveReciprocalWeight_eq_reciprocalDiff hpBounds.1 hpBounds.2] at hterm
      rw [hright] at hterm
      simpa [signedAbelEndpointToActivePair, add_assoc, add_comm, add_left_comm] using hterm
    _ = weightedMertensSignedAbelEndpointFibreQuadraticEnergy j :=
      sum_signedAbelEndpointPairs_eq_endpointFibreEnergy j

theorem weightedMertensSignedAbelEndpointFibreQuadraticEnergy_nonneg
    (j : ℕ) :
    0 ≤ weightedMertensSignedAbelEndpointFibreQuadraticEnergy j := by
  rw [← weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres]
  exact weightedMertensSignedAbelActiveTailQuadraticEnergy_nonneg j

/-- All-scale endpoint-fibre statement. -/
def SubpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ j : ℕ,
      weightedMertensSignedAbelEndpointFibreQuadraticEnergy j ≤
        (C * (((2 ^ j : ℕ) : ℝ) ^ δ)) ^ 2

/-- Exact equivalence with the active-tail supplier. -/
theorem subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy_iff_activeTail :
    SubpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy ↔
      SubpolynomialDyadicSignedAbelActiveTailQuadraticEnergy := by
  constructor
  · intro hFibre δ hδ
    obtain ⟨C, hC, hscale⟩ := hFibre δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres]
    exact hscale j
  · intro hTail δ hδ
    obtain ⟨C, hC, hscale⟩ := hTail δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    rw [← weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres]
    exact hscale j

/-- Conditional RH endpoint from the exact endpoint-fibre supplier. -/
theorem riemannHypothesis_of_subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy
    (hFibre : SubpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialDyadicSignedAbelActiveTailQuadraticEnergy
    (subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy_iff_activeTail.mp
      hFibre)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.sum_signedAbelActivePairs_eq_endpointFibres
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensSignedAbelActiveTailQuadraticEnergy_eq_endpointFibres
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy_iff_activeTail
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicSignedAbelEndpointFibreQuadraticEnergy
```
