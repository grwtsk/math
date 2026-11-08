/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.TotientFrobeniusProjectedWeilReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilDirichletStageChain
import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
import Mathlib.Algebra.IsPrimePow
import Mathlib.Tactic

/-!
# Full-window prime-power return from character-projected Frobenius traces

The source is the ORIGINAL LowSchur.activePrimePowers T, which is the
finite set of ALL integers q >= 2 below exp(2*T), not a set of primes.
LowSchur.primeWeight q = vonMangoldt(q)/sqrt(q) determines the arithmetic
support. This module does not change that inventory or its strict cutoff.

For the ACTUAL DirichletCharacter chi modulo N and correlation C, put
  sourceTerm(q) = primeWeight(q) * Re(conj(chi(q))*C(q)).
An unramified power means q=p^m for prime p, m>0 and gcd(p,N)=1.
For such q, the PREVIOUS projected finite operator on the actual
(ZMod N)^x fiber gives
  Tr(windingMatrix(frobeniusUnit N p)^m * P_chi) = chi(p)^m = chi(q).
The source term is returned with its original complex conjugation,
the original signed correlation, the exact von Mangoldt weight and
the original integer q.

For every other q the ORIGINAL source term is ZERO:
  * off prime powers: vonMangoldt(q)=0;
  * ramified prime powers p^m with p|N: chi(p^m)=0.
Thus no finite signed residual is discarded and the whole original
CharacterWindow.twistedPrime T chi C equals the sum of projected
Frobenius traces over its full integer-indexed window. This is an
exact SOURCE identity, not an invented prime-power set. The selected
prime/exponent witness is a noncomputable representation of a unique
arithmetic factorization; no effective witness algorithm is claimed.

The full primitive nonprincipal Dirichlet arithmetic source is then
returned with the SAME conductor-dependent gammaConstant, gammaParity,
whole-line L2 energy, gammaCorrectionDensity integral, actual physical
correlation, and MINUS the signed projected prime expression. The
conjugate-paired primitive response is recovered by averaging the two
native characters, not by erasing an individual complex phase.

The source-to-completed-zero explicit formula, compact-test domains,
gamma analytical bounds, high-complement floor, zeta pole, independent
Weil operator identity and a positive all-window/all-sector sign are
still SEPARATE open obligations. The current theorem does not give
a null geodesic, RH or Dirichlet GRH.

Analytic source: Connes, Consani and Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)-(3.20); primitive Dirichlet comparison:
Fiorilli and Miller (2012), equation (2.2).
Prior source from grwtsk/math at
648706919978c5cb151c3647291b26adef25ff2f:
  WeilLowSchurEnclosure.activePrimePowers and primeWeight,
  CharacterWeilWindowBounds.twistedPrime,
  WeilConductorFrontier.primitiveArithmeticValue,
  WeilOddRootProjection.pairedPrimeResponse,
  TotientFrobeniusProjectedWeilReturn.projectedPrimePowerTerm.
Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612:
  ArithmeticFunction.vonMangoldt_eq_zero_iff,
  isPrimePow_nat_iff, Nat.coprime_pow_left_iff,
  ZMod.isUnit_iff_coprime, MulChar.map_nonunit.

Mathematical mechanism: classical support decomposition plus the
already-defined exact character projector. No novelty claim.
Lean compilation, fresh kernel replay, transitive axiom audit and
independent analytic review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FullFrobeniusWindowReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusProjectedWeilReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitCharacterReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.DirichletStageChain

variable (N : ℕ) [NeZero N]

/-- The exact arithmetic condition allowing a UNIT-valued cyclotomic
Frobenius projector. Positive power excludes the artificial p^0 = 1. -/
def UnramifiedPrimePower (q : ℕ) : Prop :=
  ∃ (p m : ℕ), Nat.Prime p ∧ 0 < m ∧ p ^ m = q ∧ Nat.Coprime p N

/-- The prime-power condition and coprimality of its integer q are
equivalent to the full typed Frobenius witness. -/
theorem unramifiedPrimePower_iff (q : ℕ) :
    UnramifiedPrimePower N q ↔ IsPrimePow q ∧ Nat.Coprime q N := by
  constructor
  · rintro ⟨p, m, hprime, hm, hpow, hcoprime⟩
    refine ⟨(isPrimePow_nat_iff q).2
      ⟨p, m, hprime, hm, hpow⟩, ?_⟩
    rw [← hpow]
    exact (Nat.coprime_pow_left_iff hm p N).2 hcoprime
  · rintro ⟨hpow, hcoprime⟩
    obtain ⟨p, m, hprime, hm, hvalue⟩ :=
      (isPrimePow_nat_iff q).1 hpow
    refine ⟨p, m, hprime, hm, hvalue, ?_⟩
    exact (Nat.coprime_pow_left_iff hm p N).1
      (by simpa [hvalue] using hcoprime)

/-- All witness fields are retained together. Its selection is not
claimed computationally executable. -/
private noncomputable def choosePrimePower (q : ℕ)
    (h : UnramifiedPrimePower N q) :
    { pm : ℕ × ℕ //
      Nat.Prime pm.1 ∧ 0 < pm.2 ∧
      pm.1 ^ pm.2 = q ∧ Nat.Coprime pm.1 N } := by
  classical
  have hex : ∃ pm : ℕ × ℕ,
      Nat.Prime pm.1 ∧ 0 < pm.2 ∧
      pm.1 ^ pm.2 = q ∧ Nat.Coprime pm.1 N := by
    obtain ⟨p, m, hp, hm, heq, hcoprime⟩ := h
    exact ⟨(p, m), hp, hm, heq, hcoprime⟩
  exact ⟨Classical.choose hex, Classical.choose_spec hex⟩

/-- The native signed source term before any grouping or comparison. -/
def nativeWindowTerm (chi : DirichletCharacter ℂ N)
    (C : ℕ → ℂ) (q : ℕ) : ℝ :=
  primeWeight q * (conj (chi q) * C q).re

/-- No unramified prime-power witness means that the actual signed
source term is zero, for exactly the two mathematical reasons
(von Mangoldt support, or nonunit Dirichlet character value). -/
theorem nativeWindowTerm_zero_of_not_unramified
    (chi : DirichletCharacter ℂ N) (C : ℕ → ℂ) (q : ℕ)
    (hnot : ¬ UnramifiedPrimePower N q) :
    nativeWindowTerm N chi C q = 0 := by
  by_cases hpow : IsPrimePow q
  · obtain ⟨p, m, hprime, hm, hvalue⟩ :=
      (isPrimePow_nat_iff q).1 hpow
    have hnotcoprime : ¬ Nat.Coprime p N := by
      intro hcoprime
      exact hnot ⟨p, m, hprime, hm, hvalue, hcoprime⟩
    have hnotunit : ¬ IsUnit (p : ZMod N) :=
      (ZMod.isUnit_iff_coprime p N).not.mpr hnotcoprime
    have hpzero : chi p = 0 :=
      MulChar.map_nonunit chi hnotunit
    have hqzero : chi q = 0 := by
      calc
        chi q = chi (p ^ m) :=
          congrArg (fun t : ℕ => chi t) hvalue.symm
        _ = (chi p) ^ m :=
          dirichlet_prime_power_phase chi p m
        _ = 0 := by rw [hpzero]; exact zero_pow hm.ne'
    simp [nativeWindowTerm, hqzero]
  · have hvon : ArithmeticFunction.vonMangoldt q = 0 :=
      (ArithmeticFunction.vonMangoldt_eq_zero_iff).2 hpow
    simp [nativeWindowTerm, primeWeight, hvon]

/-- Full source-returning projected term on EVERY q of the ORIGINAL
active window. Only its supported branch invokes a finite projector. -/
noncomputable def projectedWindowTerm
    (chi : DirichletCharacter ℂ N) (C : ℕ → ℂ) (q : ℕ) : ℝ :=
  if h : UnramifiedPrimePower N q then
    let witness := choosePrimePower N q h
    projectedPrimePowerTerm N chi
      witness.1.1 witness.1.2
      witness.2.1 witness.2.2.2 C
  else 0

/-- This identity is for EVERY integer q, with neither a supplied
prime-power inventory nor a new arithmetic weight. -/
theorem projectedWindowTerm_eq_native
    (chi : DirichletCharacter ℂ N) (C : ℕ → ℂ) (q : ℕ) :
    projectedWindowTerm N chi C q = nativeWindowTerm N chi C q := by
  classical
  unfold projectedWindowTerm
  split_ifs with h
  · let w := choosePrimePower N q h
    have hprime : Nat.Prime w.1.1 := w.2.1
    have hvalue : w.1.1 ^ w.1.2 = q := w.2.2.1
    have hcoprime : Nat.Coprime w.1.1 N := w.2.2.2
    change projectedPrimePowerTerm N chi w.1.1 w.1.2
      hprime hcoprime C = nativeWindowTerm N chi C q
    calc
      _ = primePowerHolonomyTerm chi C w.1.1 w.1.2 :=
        projectedPrimePowerTerm_eq_original N chi
          w.1.1 w.1.2 hprime hcoprime C
      _ = primeWeight (w.1.1 ^ w.1.2) *
          (conj (chi (w.1.1 ^ w.1.2)) *
            C (w.1.1 ^ w.1.2)).re :=
        primePowerHolonomyTerm_eq_source chi C w.1.1 w.1.2
      _ = nativeWindowTerm N chi C q := by rw [hvalue]; rfl
  · exact (nativeWindowTerm_zero_of_not_unramified N chi C q h).symm

/-- The full projected arithmetic window uses exactly the source
activePrimePowers T: all integers q>=2 below the strict cutoff. -/
noncomputable def fullProjectedWindow
    (chi : DirichletCharacter ℂ N) (T : ℝ) (C : ℕ → ℂ) : ℝ :=
  2 * ∑ q ∈ activePrimePowers T, projectedWindowTerm N chi C q

/-- The complete finite source sign is returned exactly, including
all prime powers and the zero-valued ramified and non-prime terms. -/
theorem fullProjectedWindow_eq_twistedPrime
    (chi : DirichletCharacter ℂ N) (T : ℝ) (C : ℕ → ℂ) :
    fullProjectedWindow N chi T C = twistedPrime T chi C := by
  unfold fullProjectedWindow twistedPrime
  congr 1
  apply Finset.sum_congr rfl
  intro q hq
  exact projectedWindowTerm_eq_native N chi C q

/-- A source-bound converse: no new positivity can be inferred merely
by replacing the original prime expression with finite projections. -/
theorem fullProjectedWindow_nonneg_iff_native
    (chi : DirichletCharacter ℂ N) (T : ℝ) (C : ℕ → ℂ) :
    0 ≤ fullProjectedWindow N chi T C ↔
      0 ≤ twistedPrime T chi C := by
  rw [fullProjectedWindow_eq_twistedPrime]

/-- The real CONJUGATE-PAIRED arithmetic source is an average of
both native character returns, not a magnitude or one-sector readout. -/
def pairedProjectedWindow
    (chi : DirichletCharacter ℂ N) (T : ℝ) (C : ℕ → ℂ) : ℝ :=
  (fullProjectedWindow N chi T C +
    fullProjectedWindow N (conjugateCharacter chi) T C) / 2

theorem pairedProjectedWindow_eq_source
    (chi : DirichletCharacter ℂ N) (T : ℝ) (C : ℕ → ℂ) :
    pairedProjectedWindow N chi T C =
      pairedPrimeResponse chi T C := by
  unfold pairedProjectedWindow pairedPrimeResponse
  rw [fullProjectedWindow_eq_twistedPrime,
    fullProjectedWindow_eq_twistedPrime]

/-- The ACTUAL primitive nonprincipal arithmetic value with the
complete conductor/parity/gamma/physical domain expression unchanged.
Only its prime response is expressed by the proved full-window port. -/
def projectedPrimitiveArithmeticValue
    (chi : DirichletCharacter ℂ N)
    (_primitive : chi.IsPrimitive) (_nonprincipal : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) : ℝ :=
  gammaConstant N (gammaParity chi) * energy f +
    (∫ r in Set.Ioi (0 : ℝ),
      gammaCorrectionDensity (gammaParity chi) f r) -
    fullProjectedWindow N chi T
      (fun q => correlation f (Real.log (q : ℝ)))

/-- THIS conclusion refers to the existing primitiveArithmeticValue
with the real (unshifted) complex correlation, not an invented form.
All nonprime pieces are literally unchanged. -/
theorem projectedPrimitiveArithmeticValue_eq_source
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) :
    projectedPrimitiveArithmeticValue N chi hprimitive hnonprincipal T f =
      primitiveArithmeticValue chi hprimitive hnonprincipal T f := by
  unfold projectedPrimitiveArithmeticValue primitiveArithmeticValue
  rw [fullProjectedWindow_eq_twistedPrime]

/-- Exact finite-to-source sign transport on the SAME function, with
NO positivity premise supplied by the finite projector. -/
theorem projectedPrimitive_nonneg_iff_source
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (T : ℝ) (f : ℝ → ℂ) :
    (0 ≤ projectedPrimitiveArithmeticValue N chi hprimitive hnonprincipal T f) ↔
      (0 ≤ primitiveArithmeticValue chi hprimitive hnonprincipal T f) := by
  rw [projectedPrimitiveArithmeticValue_eq_source]

/-- The consumer is the existing small-conductor stage predicate.
A proof of its projected supplier would still be needed; no stage
bound is inferred from the preceding algebraic identities. -/
theorem primitiveStageLower_iff_projected
    (chi : DirichletCharacter ℂ N)
    (hprimitive : chi.IsPrimitive) (hnonprincipal : chi ≠ 1)
    (j : ℕ) :
    PrimitiveStageLower chi hprimitive hnonprincipal j ↔
      ∀ f : ℝ → ℝ,
        Admissible chi ((j : ℝ) + 1) f →
        -((1 / 2 : ℝ) ^ j) * energy (liftReal f) ≤
          projectedPrimitiveArithmeticValue N chi hprimitive hnonprincipal
            ((j : ℝ) + 1) (liftReal f) := by
  simp only [PrimitiveStageLower,
    projectedPrimitiveArithmeticValue_eq_source]

end GRWTSK.NumberTheory.WeilQuadraticForm.FullFrobeniusWindowReturn
