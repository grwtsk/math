/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / PINNED_COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletRatioCollisionModulus
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Unique reduced rational slope once the modular collision is exact

For nonnegative coprime numerator/denominator pairs (a,b)
and (c,d), equality of cross products a*d=b*c implies
a=c and b=d, by the pinned Euclid divisibility lemma
Nat.Coprime.dvd_of_dvd_mul_left and Nat.dvd_antisymm.

Consequently, for positive original indices bounded by N,
q>=N² and unit denominator residues, equality of
multiplicative Dirichlet ratio classes determines a UNIQUE
reduced rational slope. This is a finite injectivity theorem,
not a new signed arithmetic cancellation estimate.

This connects the EXACT original fourth-order ratio collisions
to the maintained reduced rational-slope/gcd source families
without changing the original physical Gram or Möbius signs.
No number-field L-function, RH or GRH claim.

Full pinned Lean compiler/kernel/axiom verification NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.ReducedRationalSlopeUnique

/-- Two coprime numerator/denominator pairs representing
the same rational slope are literally equal. No positivity
assumption is needed for the finite Euclid argument. -/
theorem coprime_pairs_eq_of_cross_products
    (a b c d : ℕ)
    (hab : Nat.Coprime a b)
    (hcd : Nat.Coprime c d)
    (hcross : a*d = b*c) :
    a = c ∧ b = d := by
  have hac : a ∣ c :=
    Nat.Coprime.dvd_of_dvd_mul_left hab ⟨d,hcross⟩
  have hca : c ∣ a :=
    Nat.Coprime.dvd_of_dvd_mul_left hcd (by
      refine ⟨b,?_⟩
      simpa [mul_comm] using hcross.symm)
  have hbd : b ∣ d :=
    Nat.Coprime.dvd_of_dvd_mul_left hab.symm ⟨c,hcross.symm⟩
  have hdb : d ∣ b :=
    Nat.Coprime.dvd_of_dvd_mul_left hcd.symm (by
      refine ⟨a,?_⟩
      simpa [mul_comm] using hcross)
  exact ⟨Nat.dvd_antisymm hac hca,
    Nat.dvd_antisymm hbd hdb⟩

/-- A large modulus gives an injection of TRUE reduced rational
slopes into multiplicative residue ratios. q can be composite,
but the actual denominator-unit assumptions must remain. -/
theorem reduced_ratio_unique_of_large_modulus
    (q N a b c d : ℕ) [NeZero q]
    (hq : N*N ≤ q)
    (ha1 : 1 ≤ a) (hb1 : 1 ≤ b)
    (hc1 : 1 ≤ c) (hd1 : 1 ≤ d)
    (haN : a ≤ N) (hbN : b ≤ N)
    (hcN : c ≤ N) (hdN : d ≤ N)
    (hbu : IsUnit (b : ZMod q))
    (hdu : IsUnit (d : ZMod q))
    (hab : Nat.Coprime a b)
    (hcd : Nat.Coprime c d)
    (hratio :
      (a : ZMod q)*(b : ZMod q)⁻¹ =
        (c : ZMod q)*(d : ZMod q)⁻¹) :
    a = c ∧ b = d := by
  have hcross :=
    GRWTSK.NumberTheory.Moebius.DirichletRatioCollisionModulus.
      ratio_eq_implies_integer_slope_eq
        q N a b c d hq
        ha1 hb1 hc1 hd1 haN hbN hcN hdN
        hbu hdu hratio
  exact coprime_pairs_eq_of_cross_products a b c d
    hab hcd hcross

end GRWTSK.NumberTheory.Moebius.ReducedRationalSlopeUnique
