# Complete source: GRWTSK.NumberTheory.Farey.FareyResidueChannelDecomposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4df2cbea5643fb95614ac2ed9b19ed9daaac428` · SHA-256 `6f0eae0396e51103222d72a36fd401c30c497aacabdbb08ad623d8280cc61f81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Imported Mathlib declarations retain their upstream authorship and license.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not import this module in GRWTSK.lean before the pinned transitive
compiler, fresh kernel, and axiom/unsafe audits have actual receipts.
-/
import GRWTSK.NumberTheory.Farey.GaussianModularDirichletBridge
import Mathlib.NumberTheory.DirichletCharacter.Orthogonality
import Mathlib.NumberTheory.Divisors

/-!
# Exact additive and multiplicative residue channels for Farey coordinates

For a positive modulus q, the additive character average detects every
residue b in ZMod q. Dirichlet-character orthogonality realizes the SAME
selector, up to the factor phi(q), when the *target* b is a unit:

  sum_chi chi(b⁻¹) chi(a) = phi(q) * 1_{a=b}.

When b is not a unit, the unnormalized additive selector is retained as
an explicit residual. The multiplicative channel is then zero, and no
finite linear combination of ordinary Dirichlet characters can recover
the nonunit point mass: all the characters vanish at b.

The exact repair is divisor-indexed rather than a false all-residue
character expansion. Every residue x has a stratum d = gcd(x.val, q),
the signal is the sum of its exact gcd-stratum parts over d | q, and
dividing both x.val and q by d produces a unit in ZMod (q / d). Casting
d times the reduced representative back to ZMod q reconstructs x.
Ordinary characters modulo q still do not reconstruct a nonunit target;
any multiplicative reconstruction must occur only after the stated
stratum-specific reduction.

The resulting decomposition is exact finite algebra, not a Dirichlet
L-function estimate. The Farey 1/2 < 2/3 witness has determinant one
but contains the nonunit coordinate 2 modulo 4. Determinant-one
unimodularity must not be confused with unit status of each entry.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition

/-- The full additive frequency projector for the exact residue a = b. -/
def additiveResidueSelector (q : ℕ) [NeZero q] (a b : ZMod q) : ℂ :=
  GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterAverage q (a - b)

/-- Additive orthogonality detects every residue, including nonunits. -/
theorem additiveResidueSelector_eq_indicator (q : ℕ) [NeZero q]
    (a b : ZMod q) :
    additiveResidueSelector q a b = if a = b then 1 else 0 := by
  simpa only [additiveResidueSelector, sub_eq_zero] using
    (GRWTSK.Analysis.Fourier.FiniteAdditiveProjector.characterAverage_eq_indicator
      q (a - b))

/-- The exact gcd label of a residue relative to its ambient modulus. -/
def residueGCD (q : ℕ) (x : ZMod q) : ℕ :=
  Nat.gcd x.val q

/-- Every residue gcd label divides the ambient modulus. -/
theorem residueGCD_dvd_modulus (q : ℕ) (x : ZMod q) :
    residueGCD q x ∣ q := by
  exact Nat.gcd_dvd_right x.val q

/-- For a nonzero modulus, every residue gcd label is positive. -/
theorem residueGCD_pos (q : ℕ) [NeZero q] (x : ZMod q) :
    0 < residueGCD q x := by
  simpa only [residueGCD] using
    Nat.gcd_pos_of_pos_right x.val (Nat.pos_of_ne_zero (NeZero.ne q))

/-- The unit residues are exactly the gcd-one stratum. -/
theorem residueGCD_eq_one_iff_isUnit (q : ℕ) [NeZero q] (x : ZMod q) :
    residueGCD q x = 1 ↔ IsUnit x := by
  constructor
  · intro h
    have hc : Nat.Coprime x.val q := by
      rw [Nat.coprime_iff_gcd_eq_one]
      simpa only [residueGCD] using h
    have hcast : IsUnit (x.val : ZMod q) :=
      (ZMod.isUnit_iff_coprime x.val q).2 hc
    simpa only [ZMod.natCast_zmod_val] using hcast
  · rintro ⟨u, rfl⟩
    simpa only [residueGCD] using
      (Nat.coprime_iff_gcd_eq_one.mp (ZMod.val_coe_unit_coprime u))

/-- The part of a signal supported on the exact gcd stratum d. -/
def gcdStratumPart (q d : ℕ) (f : ZMod q → ℂ) : ZMod q → ℂ :=
  fun x => if residueGCD q x = d then f x else 0

/-- The gcd label of each residue occurs among the divisors of q. -/
theorem residueGCD_mem_divisors (q : ℕ) [NeZero q] (x : ZMod q) :
    residueGCD q x ∈ q.divisors := by
  exact Nat.mem_divisors.mpr ⟨residueGCD_dvd_modulus q x, NeZero.ne q⟩

/-- Pointwise reconstruction by the exact gcd strata. -/
theorem sum_gcdStratumPart_apply (q : ℕ) [NeZero q]
    (f : ZMod q → ℂ) (x : ZMod q) :
    (∑ d in q.divisors, gcdStratumPart q d f x) = f x := by
  classical
  calc
    (∑ d in q.divisors, gcdStratumPart q d f x) =
        gcdStratumPart q (residueGCD q x) f x := by
      apply Finset.sum_eq_single_of_mem (residueGCD q x)
        (residueGCD_mem_divisors q x)
      intro d _ hne
      simp [gcdStratumPart, Ne.symm hne]
    _ = f x := by
      simp [gcdStratumPart]

/-- Function-level reconstruction by the exact gcd strata. -/
theorem sum_gcdStratumPart (q : ℕ) [NeZero q] (f : ZMod q → ℂ) :
    (fun x => ∑ d in q.divisors, gcdStratumPart q d f x) = f := by
  funext x
  exact sum_gcdStratumPart_apply q f x

/-- Divide a residue representative by its exact gcd label. -/
def reducedResidueRepresentative (q : ℕ) (x : ZMod q) : ℕ :=
  x.val / residueGCD q x

/-- The reduced representative is coprime to the reduced modulus. -/
theorem reducedResidueRepresentative_coprime (q : ℕ) [NeZero q]
    (x : ZMod q) :
    Nat.Coprime (reducedResidueRepresentative q x)
      (q / residueGCD q x) := by
  simpa only [reducedResidueRepresentative, residueGCD] using
    (Nat.coprime_div_gcd_div_gcd
      (Nat.gcd_pos_of_pos_right x.val
        (Nat.pos_of_ne_zero (NeZero.ne q))))

/-- The multiplicative datum attached to x after passing to its own gcd stratum.
This unit lives modulo q / gcd(x.val, q), not modulo q. -/
def reducedResidueUnit (q : ℕ) [NeZero q] (x : ZMod q) :
    (ZMod (q / residueGCD q x))ˣ :=
  ZMod.unitOfCoprime (reducedResidueRepresentative q x)
    (reducedResidueRepresentative_coprime q x)

/-- Multiplying the reduced representative by its gcd label recovers x.val. -/
theorem residueGCD_mul_reducedResidueRepresentative
    (q : ℕ) [NeZero q] (x : ZMod q) :
    residueGCD q x * reducedResidueRepresentative q x = x.val := by
  simpa only [residueGCD, reducedResidueRepresentative] using
    Nat.mul_div_cancel' (Nat.gcd_dvd_left x.val q)

/-- Casting the gcd-times-reduced representative back to the original
modulus reconstructs the original residue. -/
theorem cast_residueGCD_mul_reducedResidueRepresentative
    (q : ℕ) [NeZero q] (x : ZMod q) :
    ((residueGCD q x * reducedResidueRepresentative q x : ℕ) : ZMod q) = x := by
  rw [residueGCD_mul_reducedResidueRepresentative q x]
  exact ZMod.natCast_zmod_val x

/-- The multiplicative orthogonality sum anchored at target b.
For an explicit indicator comparison, b must be a unit. -/
def unitCharacterSum (q : ℕ) [NeZero q] (a b : ZMod q) : ℂ :=
  ∑ χ : DirichletCharacter ℂ q, χ b⁻¹ * χ a

/-- Exact agreement, scaled by Euler's totient, for any unit target.
No cancellation estimate, positivity bound, or Siegel-zero theorem is used. -/
theorem unitCharacterSum_eq_totient_mul_selector (q : ℕ) [NeZero q]
    (a b : ZMod q) (hb : IsUnit b) :
    unitCharacterSum q a b =
      (q.totient : ℂ) * additiveResidueSelector q a b := by
  calc
    unitCharacterSum q a b =
        if b = a then (q.totient : ℂ) else 0 := by
      simpa only [unitCharacterSum] using
        (DirichletCharacter.sum_char_inv_mul_char_eq ℂ hb a)
    _ = (q.totient : ℂ) * additiveResidueSelector q a b := by
      rw [additiveResidueSelector_eq_indicator]
      by_cases h : a = b
      · subst a
        simp
      · have h' : b ≠ a := Ne.symm h
        simp [h, h']

/-- Keep only the character channel for unit targets; otherwise it is zero. -/
def unitCharacterCarrier (q : ℕ) [NeZero q] (a b : ZMod q) : ℂ := by
  classical
  exact if IsUnit b then unitCharacterSum q a b else 0

/-- The full additive selector left over at nonunit targets. -/
def nonunitAdditiveResidual (q : ℕ) [NeZero q] (a b : ZMod q) : ℂ := by
  classical
  exact if IsUnit b then 0 else additiveResidueSelector q a b

/-- Exact binary unit/nonunit decomposition, with the totient scale visible.
The genuine gcd-stratified reconstruction is `sum_gcdStratumPart`; this
binary theorem does not identify every nonunit gcd fiber with one another. -/
theorem scaled_selector_channels (q : ℕ) [NeZero q] (a b : ZMod q) :
    (q.totient : ℂ) * additiveResidueSelector q a b =
      unitCharacterCarrier q a b +
        (q.totient : ℂ) * nonunitAdditiveResidual q a b := by
  classical
  by_cases hb : IsUnit b
  · simp [unitCharacterCarrier, nonunitAdditiveResidual, hb,
      unitCharacterSum_eq_totient_mul_selector q a b hb]
  · simp [unitCharacterCarrier, nonunitAdditiveResidual, hb]

/-- At a nonunit target, its additive point mass survives in the residual. -/
theorem nonunit_residual_on_diagonal (q : ℕ) [NeZero q]
    (b : ZMod q) (hb : ¬ IsUnit b) :
    nonunitAdditiveResidual q b b = 1 := by
  classical
  simp [nonunitAdditiveResidual, hb, additiveResidueSelector_eq_indicator]

/-- Arbitrary ordinary Dirichlet coefficients still vanish at a nonunit. -/
theorem dirichlet_sum_zero_of_nonunit (q : ℕ) [NeZero q]
    (b : ZMod q) (hb : ¬ IsUnit b)
    (coefficient : DirichletCharacter ℂ q → ℂ) :
    (∑ χ : DirichletCharacter ℂ q, coefficient χ * χ b) = 0 := by
  apply Finset.sum_eq_zero
  intro χ _
  rw [MulChar.map_nonunit χ hb, mul_zero]

/-- The full additive point-mass selector on a nonunit cannot be expressed
by an arbitrary finite linear combination of ordinary characters. -/
theorem no_pure_dirichlet_expansion_of_nonunit (q : ℕ) [NeZero q]
    (b : ZMod q) (hb : ¬ IsUnit b) :
    ¬ ∃ coefficient : DirichletCharacter ℂ q → ℂ,
      ∀ a : ZMod q,
        additiveResidueSelector q a b =
          ∑ χ : DirichletCharacter ℂ q, coefficient χ * χ a := by
  rintro ⟨coefficient, hrepresentation⟩
  have h := hrepresentation b
  rw [additiveResidueSelector_eq_indicator, if_pos rfl,
      dirichlet_sum_zero_of_nonunit q b hb coefficient] at h
  exact one_ne_zero h

/-- Every Farey right numerator admits the exact unit/nonunit split,
without presuming invertibility of that coordinate modulo q. -/
theorem farey_right_coordinate_channels
    (I : GRWTSK.NumberTheory.Farey.Cell) (q : ℕ) [NeZero q]
    (a : ZMod q) :
    (q.totient : ℂ) *
        additiveResidueSelector q a ((I.rightNum : ℕ) : ZMod q) =
      unitCharacterCarrier q a ((I.rightNum : ℕ) : ZMod q) +
        (q.totient : ℂ) *
          nonunitAdditiveResidual q a ((I.rightNum : ℕ) : ZMod q) :=
  scaled_selector_channels q a ((I.rightNum : ℕ) : ZMod q)

/-- The exact nonunit right numerator of the previously constructed cell. -/
def nonunitFareyRightResidue : ZMod 4 :=
  ((GRWTSK.NumberTheory.Farey.nonunitEye.rightNum : ℕ) : ZMod 4)

theorem nonunitFareyRightResidue_nonunit :
    ¬ IsUnit nonunitFareyRightResidue := by
  simpa only [nonunitFareyRightResidue] using
    GRWTSK.NumberTheory.Farey.nonunitEye_right_nonunit

/-- A determinant-one Farey cell with nonzero additive residue and a
provably insufficient pure multiplicative channel. The last conjunct
rules out the indicated REPRESENTATION, not a zero-free region or RH. -/
theorem farey_nonunit_channel_certificate :
    GRWTSK.NumberTheory.Farey.modularDet
        GRWTSK.NumberTheory.Farey.nonunitEye 4 = 1 ∧
      nonunitAdditiveResidual 4
        nonunitFareyRightResidue nonunitFareyRightResidue = 1 ∧
      unitCharacterCarrier 4
        nonunitFareyRightResidue nonunitFareyRightResidue = 0 ∧
      ¬ ∃ coefficient : DirichletCharacter ℂ 4 → ℂ,
        ∀ a : ZMod 4,
          additiveResidueSelector 4 a nonunitFareyRightResidue =
            ∑ χ : DirichletCharacter ℂ 4, coefficient χ * χ a := by
  refine ⟨GRWTSK.NumberTheory.Farey.modularDet_eq_one
      GRWTSK.NumberTheory.Farey.nonunitEye 4,
    nonunit_residual_on_diagonal 4 nonunitFareyRightResidue
      nonunitFareyRightResidue_nonunit, ?_, ?_⟩
  · classical
    simp [unitCharacterCarrier, nonunitFareyRightResidue_nonunit]
  · exact no_pure_dirichlet_expansion_of_nonunit 4
      nonunitFareyRightResidue nonunitFareyRightResidue_nonunit

end GRWTSK.NumberTheory.Farey.ResidueChannelDecomposition
```
