# Complete source: GRWTSK.Analysis.Asymptotics.ExponentialEnergyObstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9887c4023b79fc6cda09e8dd77f897a3ca2f618` · SHA-256 `07396ef4d33560d77759bb6f13e55490c7ef22b8e654c73800988626f47866cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-!
# Exact NC obstruction interface

The finite implications in this file are kernel proofs.  Prime-distribution
and source-energy inputs are *named hypotheses*, not axioms or proved facts.
In particular, this file does not claim a kernel proof of PNT or of the
analytic source-energy lower bound.
-/

noncomputable section

open Filter

namespace PPNCP04.Obstruction

/-- The consecutive large-prime block used in the analytic obstruction. -/
def primeBand (a T : ℝ) : Finset ℕ :=
  (Nat.primesLE ⌊Real.exp T / 2⌋₊).filter
    (fun p => Real.exp (a * T) < (p : ℝ))

/-- The fixed-ratio subband furnishing the count lower bound. -/
def topBand (T : ℝ) : Finset ℕ :=
  (Nat.primesLE ⌊Real.exp T / 2⌋₊).filter
    (fun p => Real.exp T / 4 < (p : ℝ))

def harmonicMass (B : Finset ℕ) : ℝ := ∑ p ∈ B, 1 / (p : ℝ)

theorem primeBand_mem_lower {a T : ℝ} {p : ℕ}
    (hp : p ∈ primeBand a T) : Real.exp (a * T) < (p : ℝ) :=
  (Finset.mem_filter.mp hp).2

theorem primeBand_mem_prime {a T : ℝ} {p : ℕ}
    (hp : p ∈ primeBand a T) : p.Prime :=
  Nat.prime_of_mem_primesLE (Finset.mem_filter.mp hp).1

/-- The block has no surviving term containing two or more prime notes:
the exact two-prime lower bound already exceeds the horizon. -/
theorem primeBand_pair_beyond_horizon {a T : ℝ} {p q : ℕ}
    (ha : 1 / 2 < a) (hT : 0 < T)
    (hp : p ∈ primeBand a T) (hq : q ∈ primeBand a T) :
    Real.exp T < (p : ℝ) * (q : ℝ) := by
  have hp' := primeBand_mem_lower hp
  have hq' := primeBand_mem_lower hq
  have hep : 0 < Real.exp (a * T) := Real.exp_pos _
  have hpp : 0 < (p : ℝ) := hep.trans hp'
  have hscale : Real.exp T < Real.exp (a * T) * Real.exp (a * T) := by
    rw [← Real.exp_add]
    apply Real.exp_lt_exp.mpr
    nlinarith
  calc
    Real.exp T < Real.exp (a * T) * Real.exp (a * T) := hscale
    _ < (p : ℝ) * Real.exp (a * T) := mul_lt_mul_of_pos_right hp' hep
    _ ≤ (p : ℝ) * (q : ℝ) := mul_le_mul_of_nonneg_left hq'.le hpp.le

/-- The classical prime-distribution mass input for the declared block. -/
def BandMassInput (η a : ℝ) : Prop :=
  ∀ᶠ T : ℝ in atTop,
    η / 2 ≤ harmonicMass (primeBand a T) ∧
    harmonicMass (primeBand a T) ≤ η

/-- A concrete count input, implied mathematically by PNT. -/
def TopBandCountInput : Prop :=
  ∀ᶠ T : ℝ in atTop,
    Real.exp T / (8 * T) ≤ ((topBand T).card : ℝ)

/-- An explicit analytic energy witness.  The map `E` must be identified
with the actual source energy separately; its existence is not asserted. -/
def ExponentialEnergyInput (E : ℝ → ℝ) (c : ℝ) : Prop :=
  ∀ᶠ T : ℝ in atTop, c * Real.exp T ≤ E T * (1 + T) ^ 2

/-- Combining the exact broad estimate with NC gives the proposed
amortized transition, without any assumption that energy contracts. -/
theorem narrow_implies_transition
    {Enew Eold N Aold Anew Γ loss : ℝ}
    (hbroad : Enew ≤ Γ * Eold + N)
    (hnarrow : N ≤ Γ * Aold - Anew + loss) :
    Enew + Anew ≤ Γ * (Eold + Aold) + loss := by
  nlinarith

/-- A nonnegative terminal reserve forces an energy upper bound. -/
theorem narrow_forces_energy_bound
    {Enew Eold N Aold Anew Γ loss initial sourceBound : ℝ}
    (hbroad : Enew ≤ Γ * Eold + N)
    (hnarrow : N ≤ Γ * Aold - Anew + loss)
    (hnew : 0 ≤ Anew) (hΓ : 0 ≤ Γ)
    (hsource : Eold ≤ sourceBound) (hinitial : Aold ≤ initial) :
    Enew ≤ Γ * (sourceBound + initial) + loss := by
  have hstep := narrow_implies_transition hbroad hnarrow
  have hcomparison : Γ * (Eold + Aold) ≤ Γ * (sourceBound + initial) :=
    mul_le_mul_of_nonneg_left (add_le_add hsource hinitial) hΓ
  linarith

/-- A finite, exact hostile fixture: the displayed energy lower bound
already exceeding the permitted budget contradicts NC. -/
theorem finite_nc_contradiction
    {Enew Eold N Aold Anew Γ loss initial sourceBound lower : ℝ}
    (hbroad : Enew ≤ Γ * Eold + N)
    (hnew : 0 ≤ Anew) (hΓ : 0 ≤ Γ)
    (hsource : Eold ≤ sourceBound) (hinitial : Aold ≤ initial)
    (hlower : lower ≤ Enew)
    (hover : Γ * (sourceBound + initial) + loss < lower) :
    ¬ (N ≤ Γ * Aold - Anew + loss) := by
  intro hnarrow
  have hupper := narrow_forces_energy_bound hbroad hnarrow hnew hΓ
    hsource hinitial
  linarith

/-- The broad inequality exposes an unavoidable narrow-energy lower
bound at the same exact source state and block. -/
theorem narrow_energy_lower_bound
    {Enew Eold N Γ sourceBound lower : ℝ}
    (hbroad : Enew ≤ Γ * Eold + N)
    (hΓ : 0 ≤ Γ) (hsource : Eold ≤ sourceBound)
    (hlower : lower ≤ Enew) :
    lower - Γ * sourceBound ≤ N := by
  have hcomparison := mul_le_mul_of_nonneg_left hsource hΓ
  linarith

/-- Exponential signed-source energy cannot obey any eventual polynomial
upper bound.  The real exponent need not be an integer. -/
theorem exponential_input_not_polynomial
    {E : ℝ → ℝ} {c K r : ℝ} (hc : 0 < c)
    (hlower : ExponentialEnergyInput E c) :
    ¬ (∀ᶠ T : ℝ in atTop, E T ≤ K * (1 + T) ^ r) := by
  intro hupper
  have hlimit : Tendsto
      (fun T : ℝ => Real.exp (T + 1) / (T + 1) ^ (r + 2)) atTop atTop :=
    (tendsto_exp_div_rpow_atTop (r + 2)).comp
      (tendsto_atTop_add_const_right atTop 1 tendsto_id)
  have hlarge := hlimit.eventually
    (eventually_gt_atTop (Real.exp 1 * K / c))
  have hfalse : ∀ᶠ T : ℝ in atTop, False := by
    filter_upwards [hlower, hupper, hlarge, eventually_ge_atTop (0 : ℝ)]
      with T hlow hup hbig hT
    have hpos : 0 < 1 + T := by linarith
    have hden : 0 < (T + 1) ^ (r + 2) :=
      Real.rpow_pos_of_pos (by linarith) _
    have hpoly : c * Real.exp T ≤ K * (1 + T) ^ (r + 2) := by
      calc
        c * Real.exp T ≤ E T * (1 + T) ^ 2 := hlow
        _ ≤ (K * (1 + T) ^ r) * (1 + T) ^ 2 :=
          mul_le_mul_of_nonneg_right hup (sq_nonneg _)
        _ = K * (1 + T) ^ (r + 2) := by
          rw [Real.rpow_add hpos, Real.rpow_two]
          ring
    have hupper2 : c * Real.exp (T + 1) ≤
        Real.exp 1 * K * (T + 1) ^ (r + 2) := by
      calc
        c * Real.exp (T + 1) = Real.exp 1 * (c * Real.exp T) := by
          rw [Real.exp_add]
          ring
        _ ≤ Real.exp 1 * (K * (1 + T) ^ (r + 2)) :=
          mul_le_mul_of_nonneg_left hpoly (Real.exp_pos 1).le
        _ = Real.exp 1 * K * (T + 1) ^ (r + 2) := by
          rw [add_comm 1 T]
          ring
    have hbig' : (Real.exp 1 * K / c) * (T + 1) ^ (r + 2) <
        Real.exp (T + 1) := (lt_div_iff₀ hden).mp hbig
    have hbig2 : Real.exp 1 * K * (T + 1) ^ (r + 2) <
        c * Real.exp (T + 1) := by
      calc
        Real.exp 1 * K * (T + 1) ^ (r + 2) =
            c * ((Real.exp 1 * K / c) * (T + 1) ^ (r + 2)) := by
          field_simp
        _ < c * Real.exp (T + 1) := mul_lt_mul_of_pos_left hbig' hc
    linarith
  exact hfalse.exists.choose_spec

/-- A uniform NC proposal is impossible once the exact broad inequality,
nonnegative returned reserve, polynomial budget, and declared exponential
source-energy input have all been supplied.  No arithmetic input is hidden
inside this theorem. -/
theorem eventual_nc_impossible
    {Enew Eold N Aold Anew Γ loss : ℝ → ℝ} {c K r : ℝ}
    (hc : 0 < c) (hlower : ExponentialEnergyInput Enew c)
    (hbroad : ∀ᶠ T : ℝ in atTop, Enew T ≤ Γ T * Eold T + N T)
    (hnew : ∀ᶠ T : ℝ in atTop, 0 ≤ Anew T)
    (hbudget : ∀ᶠ T : ℝ in atTop,
      Γ T * (Eold T + Aold T) + loss T ≤ K * (1 + T) ^ r) :
    ¬ (∀ᶠ T : ℝ in atTop,
      N T ≤ Γ T * Aold T - Anew T + loss T) := by
  intro hnarrow
  apply exponential_input_not_polynomial hc hlower
  filter_upwards [hbroad, hnew, hbudget, hnarrow] with T hb hn hbudget hnarrow
  have hstep := narrow_implies_transition hb hnarrow
  linarith

/-- NC without a polynomial initial-reserve requirement admits a crude
finite budget.  Here `remaining` and `blockCount` represent inventory
cardinalities and `U` is any independent upper envelope for narrow energy.
This theorem does not assert that such an envelope is polynomial. -/
theorem crude_inventory_reserve_nc
    {N U remaining blockCount Γ : ℝ}
    (hN : N ≤ U) (hU : 0 ≤ U) (hremaining : 0 ≤ remaining)
    (hblock : 1 ≤ blockCount) (hΓ : 1 ≤ Γ) :
    N ≤ Γ * (U * remaining) - U * (remaining - blockCount) := by
  have hreserve : 0 ≤ U * remaining := mul_nonneg hU hremaining
  have hΓreserve : U * remaining ≤ Γ * (U * remaining) := by
    nlinarith
  have hcount : U ≤ U * blockCount := by nlinarith
  calc
    N ≤ U := hN
    _ ≤ U * blockCount := hcount
    _ = U * remaining - U * (remaining - blockCount) := by ring
    _ ≤ Γ * (U * remaining) - U * (remaining - blockCount) := by linarith

end PPNCP04.Obstruction

#print axioms PPNCP04.Obstruction.finite_nc_contradiction
#print axioms PPNCP04.Obstruction.exponential_input_not_polynomial
#print axioms PPNCP04.Obstruction.eventual_nc_impossible
#print axioms PPNCP04.Obstruction.crude_inventory_reserve_nc
```
