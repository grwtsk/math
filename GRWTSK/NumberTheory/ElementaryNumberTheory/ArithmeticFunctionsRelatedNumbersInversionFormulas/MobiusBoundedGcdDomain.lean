/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusOrderedGcdCoordinates

set_option autoImplicit false
noncomputable section

/-! Positive bounded ordered-pair domain, with exact quotient bounds.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.Moebius.MobiusBoundedGcdDomain
open MobiusOrderedGcdCoordinates

def BoundedCoordinates (N g a b : ℕ) : Prop :=
  0<g ∧ 0<a ∧ 0<b ∧ Nat.Coprime a b ∧ g*a≤N ∧ g*b≤N

theorem actual_pair_bounded_coordinates (N r s : ℕ)
    (hr : 0<r) (hs : 0<s) (hrN : r≤N) (hsN : s≤N) :
    BoundedCoordinates N (Nat.gcd r s) (r/Nat.gcd r s) (s/Nat.gcd r s) := by
  have hg : 0<Nat.gcd r s := Nat.gcd_pos_of_pos_left s hr
  have he := ordered_pair_reconstruct r s
  have ha : 0<r/Nat.gcd r s := by
    by_contra h
    have hz : r/Nat.gcd r s=0 := Nat.eq_zero_of_not_pos h
    rw [hz,mul_zero] at he
    omega
  have hb : 0<s/Nat.gcd r s := by
    by_contra h
    have hz : s/Nat.gcd r s=0 := Nat.eq_zero_of_not_pos h
    rw [hz,mul_zero] at he
    omega
  exact ⟨hg,ha,hb,Nat.coprime_div_gcd_div_gcd hg,
    he.1.le.trans hrN,he.2.le.trans hsN⟩

theorem bounded_coordinates_encode (N g a b : ℕ)
    (h : BoundedCoordinates N g a b) :
    0<g*a ∧ g*a≤N ∧ 0<g*b ∧ g*b≤N ∧ Nat.gcd (g*a) (g*b)=g := by
  exact ⟨Nat.mul_pos h.1 h.2.1,h.2.2.2.2.1,
    Nat.mul_pos h.1 h.2.2.1,h.2.2.2.2.2,
    coprime_coordinates_recover_gcd g a b h.2.2.2.1⟩

theorem bounded_coordinates_quotient_bounds (N g a b : ℕ)
    (h : BoundedCoordinates N g a b) : a≤N/g ∧ b≤N/g := by
  constructor
  · exact (Nat.le_div_iff_mul_le h.1).mpr (by simpa [Nat.mul_comm] using h.2.2.2.2.1)
  · exact (Nat.le_div_iff_mul_le h.1).mpr (by simpa [Nat.mul_comm] using h.2.2.2.2.2)

/- These maps retain ordered pairs, including the diagonal. Packaging the
finite sum equivalence and supplying the full signed kernel estimate
remain separate; no analytic conclusion is asserted. -/
end GRWTSK.NumberTheory.Moebius.MobiusBoundedGcdDomain
