/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under Apache 2.0; see this provider's UPSTREAM-LICENSE.

The imported Imperial FLT sources preserve the public byline Kevin Buzzard,
Ruben Van de Velde and Pietro Monticone and their Apache 2.0 license.
-/
import FLT.FreyCurve.Basic
import Mathlib.NumberTheory.Padics.PadicVal.Basic

/-!
# Prime-power factors of the actual Frey j-invariant denominator

For an upstream `FreyPackage`, the proved arithmetic endpoint
`FreyCurve.j_valuation_of_bad_prime` says that the Fermat exponent `P.p`
divides the signed q-adic valuation of its actual rational j-invariant.
The denominator is already reduced. Consequently its q-adic order is itself
a multiple of `P.p`: the numerator and denominator cannot both have positive
q-adic order. If q actually divides that denominator, this constructs a
positive integer multiplier for the factor `q ^ P.p` and a lower bound for
the denominator.

The package retains ALL upstream hypotheses: nonzero integers a, b and c;
a prime p at least five; a^p+b^p=c^p; gcd(a,b)=1; a=3 in ZMod 4; and
b=0 in ZMod 2. The selected q must separately be prime, satisfy 2<q, and
divide a*b*c as an integer. The second theorem additionally requires that q
divide the reduced j denominator. No negativity or denominator-membership
claim is silently inferred from the source bad-prime condition. No actual
Frey package or Fermat counterexample is constructed here, and no FLT claim
is deduced.

The actual root consumer is the denominator/height work in
`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedJInvariant`
(in particular `j_denominator` and `jHeight_source_comparison`). That work
uses a positive primitive additive triple and its own raw rational curve.
Here the upstream object is a signed, normalized Fermat package and its
changed integral curve. A checked same-curve/representation comparison and
the Lean 4.35.0 / root Lean 4.34.1 transport remain UNSUPPLIED. No root model
is copied or imported, and no conductor, radical-height or ABC estimate is
claimed.

Pinned source: ImperialCollegeLondon/FLT at
`a3210204ad8876e851e32f73dd97d882bf1ccd0a`,
`FLT/FreyCurve/Basic.lean`, blob
`eaaca84b85675f2e44ee5ca1f5c88824f627d48e`.
Its introductory prose says "multiple of q", but the selected declaration's
type and proof use `P.p`; the type is authoritative here.
The source reports the Frey method as belonging to Section 4.1 of Jean-Pierre
Serre's 1987 Duke paper, DOI 10.1215/S0012-7094-87-05413-5. These denominator
consequences are local derived results, not a new numbered paper mapping.
The isolated package retains Lean 4.35.0 and Mathlib
`56a005855ea17e0b0958f73ec801ae140b0a1679`.

SOURCE_PROOF_CANDIDATE: compilation, expected-interface checking, fresh kernel
replay and complete transitive axiom auditing remain NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.FreyPrimePowerDenominator

/-- The source exponent divides the order of the reduced denominator, including
the zero-order case. The signed rational valuation is not replaced by a natural
valuation until reduced numerator/denominator coprimality is used. -/
theorem exponent_dvd_denominator_order (P : FreyPackage) {q : ℕ}
    (hqPrime : q.Prime) (hqbad : (q : ℤ) ∣ P.a * P.b * P.c) (hqodd : 2 < q) :
    P.p ∣ padicValNat q P.freyCurve.j.den := by
  have hdiv : (P.p : ℤ) ∣ padicValRat q P.freyCurve.j :=
    FreyCurve.j_valuation_of_bad_prime P hqPrime hqbad hqodd
  rcases Rat.num_or_den_zero_padicVal P.freyCurve.j hqPrime with hnum | hden
  · have hneg : (P.p : ℤ) ∣ -(padicValNat q P.freyCurve.j.den : ℤ) := by
      simpa only [padicValRat_def, hnum, Nat.cast_zero, zero_sub] using hdiv
    have hnat : (P.p : ℤ) ∣ (padicValNat q P.freyCurve.j.den : ℤ) :=
      dvd_neg.mp hneg
    exact Int.ofNat_dvd.mp hnat
  · rw [hden]
    exact dvd_zero P.p

/-- Once the selected prime actually occurs in the reduced denominator, the
source arithmetic supplies a whole prime-power factor with a positive quotient.
Denominator membership is a separate hypothesis, not a claimed consequence of
the bad-prime condition. -/
theorem prime_power_factor_of_denominator_prime (P : FreyPackage) {q : ℕ}
    (hqPrime : q.Prime) (hqbad : (q : ℤ) ∣ P.a * P.b * P.c) (hqodd : 2 < q)
    (hqden : q ∣ P.freyCurve.j.den) :
    P.p ≤ padicValNat q P.freyCurve.j.den ∧
      ∃ k : ℕ, 0 < k ∧ P.freyCurve.j.den = q ^ P.p * k ∧
        q ^ P.p ≤ P.freyCurve.j.den := by
  letI : Fact q.Prime := ⟨hqPrime⟩
  have horder : 0 < padicValNat q P.freyCurve.j.den :=
    lt_of_lt_of_le Nat.zero_lt_one
      (one_le_padicValNat_of_dvd P.freyCurve.j.den_nz hqden)
  have hlower : P.p ≤ padicValNat q P.freyCurve.j.den :=
    Nat.le_of_dvd horder (exponent_dvd_denominator_order P hqPrime hqbad hqodd)
  have hfactor : q ^ P.p ∣ P.freyCurve.j.den :=
    (padicValNat_dvd_iff_le P.freyCurve.j.den_nz).mpr hlower
  obtain ⟨k, hk⟩ := hfactor
  have hkpos : 0 < k := by
    apply Nat.pos_of_ne_zero
    intro hkzero
    apply P.freyCurve.j.den_nz
    simpa only [hkzero, Nat.mul_zero] using hk
  exact ⟨hlower, k, hkpos, hk,
    Nat.le_of_dvd P.freyCurve.j.den_pos ⟨k, hk⟩⟩

end GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.FreyPrimePowerDenominator
