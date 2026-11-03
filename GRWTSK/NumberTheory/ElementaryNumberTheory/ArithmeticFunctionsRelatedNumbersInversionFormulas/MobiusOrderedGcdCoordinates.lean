/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusGcdQuotientKernelSign

set_option autoImplicit false
noncomputable section

/-! Exact ordered gcd coordinates. SOURCE_PROOF_CANDIDATES / NOT_RUN.
No replacement of the signed kernel comparison by absolute values. -/
namespace GRWTSK.NumberTheory.Moebius.MobiusOrderedGcdCoordinates
open GRWTSK.RiemannHypothesis.CCC
open MobiusGcdQuotientKernelSign

theorem ordered_pair_reconstruct (r s : ℕ) :
    Nat.gcd r s * (r / Nat.gcd r s) = r ∧
    Nat.gcd r s * (s / Nat.gcd r s) = s := by
  constructor
  · exact Nat.mul_div_cancel' (Nat.gcd_dvd_left r s)
  · exact Nat.mul_div_cancel' (Nat.gcd_dvd_right r s)

theorem coprime_coordinates_recover_gcd (g a b : ℕ) (hab : Nat.Coprime a b) :
    Nat.gcd (g*a) (g*b) = g := by
  rw [Nat.gcd_mul_left, hab.gcd_eq_one, mul_one]

theorem ordered_coordinates_unique (g a b h c d : ℕ)
    (hg : 0 < g) (hab : Nat.Coprime a b) (hcd : Nat.Coprime c d)
    (hr : g*a = h*c) (hs : g*b = h*d) : g=h ∧ a=c ∧ b=d := by
  have he : g=h := by
    rw [← coprime_coordinates_recover_gcd g a b hab, hr, hs,
      coprime_coordinates_recover_gcd h c d hcd]
  subst h
  exact ⟨rfl, Nat.eq_of_mul_eq_mul_left hg hr, Nat.eq_of_mul_eq_mul_left hg hs⟩

theorem reconstructed_actual_product (r s : ℕ)
    (hc : Nat.Coprime (r / Nat.gcd r s) (s / Nat.gcd r s)) :
    moebiusReal r * moebiusReal s =
      if Nat.Coprime (Nat.gcd r s) ((r / Nat.gcd r s)*(s / Nat.gcd r s))
      then moebiusReal (Nat.gcd r s)^2 *
        moebiusReal ((r / Nat.gcd r s)*(s / Nat.gcd r s)) else 0 := by
  have hp := ordered_pair_reconstruct r s
  simpa only [hp.1, hp.2] using
    actual_gcd_quotient_product (Nat.gcd r s)
      (r / Nat.gcd r s) (s / Nat.gcd r s) hc

/- The next finite reindex must supply quotient coprimality from positive
source indices and exact bounds g*a,g*b≤N; summing this identity alone
provides no uniform signed cancellation or analytic zero bridge. -/
end GRWTSK.NumberTheory.Moebius.MobiusOrderedGcdCoordinates
