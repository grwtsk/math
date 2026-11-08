/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicFrobeniusLoops
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilPrimePhaseSignedReturn
import Mathlib.Tactic

/-!
# Cyclotomic Frobenius holonomy in the original paired Weil prime source

## Mathematical objects and source-exact consumer

The existing CyclotomicFrobeniusLoops.dirichlet_frobenius_power identifies
the unramified character of the actual Frobenius residue with χ(p)^m.
OddRootProjection.pairedPrimeWeight is the **signed** coefficient of
the existing primitive conjugate-pair Weil sine matrix; it uses the original
LowSchur.primeWeight = vonMangoldt(n)/sqrt(n), not a new source weight.

For p prime, m>0, and gcd(p,q)=1, the source coefficient on p^m equals
the original primeWeight(p^m) times Re of the genuine Frobenius character
power. We retain the exact prime label, exponent, support-dependent log shift,
conductor and complex character rather than compressing to p modulo q.

The original paired phase expression is Re(c)*Re(z) with
  c = χ(p)^m, z = PPNC.primePhase(p^m, ξ).
A complex-product representation has a **signed residual**:
  Re(c)*Re(z) = Re(c*z) + Im(c)*Im(z).
The last summand cannot be deleted for general nonreal characters.
The theorem below returns the exact paired source, including this
imaginary cross-term. An arbitrary finite list is handled term by term,
including duplicates; the original paired source's outer factor two
is retained by a separate direct corollary.

## Analytic comparison and hostile boundary

The proof is arithmetic character multiplicativity plus the elementary
complex multiplication identity. No spectral positivity or diffusion
smoothing is invoked. A hostile example is p=2 and p=7 modulo q=5:
the residue character values coincide, but log(2) != log(7).
Finite Frobenius residue transport alone cannot decode the exact prime
index or the shift appearing in the Weil source.

This result connects one previously separate finite arithmetic source
interface to its *actual consuming coefficient*. It does NOT prove that
a list enumerates all activePrimePowers(T), pay ramified terms, replace
the primitive-pair gamma/conductor kernel, include the zeta pole, give
a full-domain comparison, obtain a cofinal signed lower bound, or
prove RH or Dirichlet GRH. The original signed source remains unchanged.

Primary references: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1 (3.19)--(3.20); Connes--Consani, Knots, primes and
class field theory, arXiv:2501.06560v1. Consumed local interfaces:
CyclotomicFrobeniusLoops.dirichlet_frobenius_power (blob
30d6ddc8b7ef24aff5ce896525d092e5e77d39d1);
WeilOddSineProjection.pairedPrimeWeight (blob
f4417e2b06319a9ab4f1e922df1216be555f72e5);
WeilPrimePhaseSignedReturn.pairedPrimePhaseResponse (blob
5a6801dbcd2e1f5cebbe99df9c041408f6a2c247).

Standard arithmetic and complex algebra; theorem-level novelty UNASSESSED.
AI-assisted source drafting; independent analytical review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicFrobeniusPrimeBridge

open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.CyclotomicFrobeniusLoops
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

variable {q : ℕ} [NeZero q]

/-- Retain a **prime** and positive exponent as well as the coprime
residue witness. A residue class alone is not an injective prime code. -/
structure UnramifiedPrimePower (q : ℕ) where
  prime : ℕ
  exponent : ℕ
  prime_prime : Nat.Prime prime
  exponent_pos : 0 < exponent
  coprime : Nat.Coprime prime q

namespace UnramifiedPrimePower

/-- Literal prime-power argument in the original von Mangoldt source. -/
def index (tag : UnramifiedPrimePower q) : ℕ :=
  tag.prime ^ tag.exponent

/-- Character value of the unramified Frobenius element to the m-th power.
Do not replace this complex number by its magnitude or its real part. -/
def frobeniusValue (χ : DirichletCharacter ℂ q)
    (tag : UnramifiedPrimePower q) : ℂ :=
  (((χ.toUnitHom (frobeniusUnit tag.coprime)) ^ tag.exponent : ℂˣ) : ℂ)

/-- The actual Dirichlet character of p^m, not a new model character.
The source's Frobenius theorem supplies the arithmetic input. -/
theorem frobeniusValue_eq_character
    (χ : DirichletCharacter ℂ q) (tag : UnramifiedPrimePower q) :
    tag.frobeniusValue χ = χ (tag.index : ZMod q) := by
  unfold frobeniusValue index
  rw [dirichlet_frobenius_power tag.coprime χ tag.exponent]
  simp only [Nat.cast_pow, map_pow]

/-- The original signed real primitive-pair coefficient. -/
def sourceWeight (χ : DirichletCharacter ℂ q)
    (tag : UnramifiedPrimePower q) : ℝ :=
  pairedPrimeWeight χ tag.index

/-- Same actual von Mangoldt weight, now read through Frobenius. -/
def frobeniusWeight (χ : DirichletCharacter ℂ q)
    (tag : UnramifiedPrimePower q) : ℝ :=
  primeWeight tag.index * (tag.frobeniusValue χ).re

/-- Exact source-to-Frobenius coefficient return, for each unramified tag. -/
theorem sourceWeight_eq_frobeniusWeight
    (χ : DirichletCharacter ℂ q) (tag : UnramifiedPrimePower q) :
    tag.sourceWeight χ = tag.frobeniusWeight χ := by
  unfold sourceWeight frobeniusWeight pairedPrimeWeight
  rw [frobeniusValue_eq_character χ tag]

/-- Return the literal sine matrix's prime-shift coefficient and logarithm.
This does not identify finite terms with the whole sine matrix. -/
theorem source_sine_term_eq_frobenius
    (χ : DirichletCharacter ℂ q) (tag : UnramifiedPrimePower q)
    (T : ℝ) (i j : ℕ) :
    tag.sourceWeight χ *
        sineShiftEntry T i j (Real.log (tag.index : ℝ)) =
      tag.frobeniusWeight χ *
        sineShiftEntry T i j (Real.log (tag.index : ℝ)) := by
  rw [sourceWeight_eq_frobeniusWeight χ tag]

/-- Joint complex character/Fourier holonomy at the original prime power. -/
def frobeniusFourierPhase (χ : DirichletCharacter ℂ q)
    (tag : UnramifiedPrimePower q) (ξ : ℝ) : ℂ :=
  tag.frobeniusValue χ * PPNC.primePhase tag.index ξ

/-- Signed residual needed when replacing the real paired source by the
real part of a product of *complex* phases. -/
theorem source_phase_eq_complex_holonomy_add_residual
    (χ : DirichletCharacter ℂ q) (tag : UnramifiedPrimePower q)
    (ξ : ℝ) (c : ℕ → ℝ) :
    tag.sourceWeight χ * c tag.index *
        (PPNC.primePhase tag.index ξ).re =
      primeWeight tag.index * c tag.index *
        ((tag.frobeniusFourierPhase χ ξ).re +
         (tag.frobeniusValue χ).im *
           (PPNC.primePhase tag.index ξ).im) := by
  unfold sourceWeight pairedPrimeWeight frobeniusFourierPhase
  rw [← frobeniusValue_eq_character χ tag]
  simp only [Complex.mul_re]
  ring

/-- The imaginary residual vanishes for a genuinely real Frobenius
character value. No universal real-character premise is assumed. -/
theorem source_phase_eq_complex_holonomy_of_real
    (χ : DirichletCharacter ℂ q) (tag : UnramifiedPrimePower q)
    (ξ : ℝ) (c : ℕ → ℝ)
    (hreal : (tag.frobeniusValue χ).im = 0) :
    tag.sourceWeight χ * c tag.index *
        (PPNC.primePhase tag.index ξ).re =
      primeWeight tag.index * c tag.index *
        (tag.frobeniusFourierPhase χ ξ).re := by
  rw [source_phase_eq_complex_holonomy_add_residual χ tag ξ c, hreal]
  ring

end UnramifiedPrimePower

/-! ## Finite source lists; completeness of the full source remains open. -/

/-- Source-exact signed sine coefficient ledger on any finite unramified list.
A repeated tag is counted repeatedly; a complete active inventory is NOT
inferred by this equality. -/
theorem tagged_sine_sum_source_return
    (χ : DirichletCharacter ℂ q) (tags : List (UnramifiedPrimePower q))
    (T : ℝ) (i j : ℕ) :
    (tags.map (fun tag =>
      tag.sourceWeight χ *
        sineShiftEntry T i j (Real.log (tag.index : ℝ)))).sum =
    (tags.map (fun tag =>
      tag.frobeniusWeight χ *
        sineShiftEntry T i j (Real.log (tag.index : ℝ)))).sum := by
  induction tags with
  | nil => rfl
  | cons tag rest ih =>
      simp only [List.map_cons, List.sum_cons]
      rw [UnramifiedPrimePower.sourceWeight_eq_frobeniusWeight χ tag, ih]

/-- The inner sum of the original conjugate-paired real phase response. -/
def taggedPairedPhaseSource
    (χ : DirichletCharacter ℂ q) (tags : List (UnramifiedPrimePower q))
    (ξ : ℝ) (c : ℕ → ℝ) : ℝ :=
  (tags.map (fun tag =>
    tag.sourceWeight χ * c tag.index *
      (PPNC.primePhase tag.index ξ).re)).sum

/-- Joint complex product, before paying the imaginary mixed term. -/
def taggedHolonomyReadout
    (χ : DirichletCharacter ℂ q) (tags : List (UnramifiedPrimePower q))
    (ξ : ℝ) (c : ℕ → ℝ) : ℝ :=
  (tags.map (fun tag =>
    primeWeight tag.index * c tag.index *
      (tag.frobeniusFourierPhase χ ξ).re)).sum

/-- Full signed imaginary cross-term, not an absolute-value allowance. -/
def taggedImaginaryResidual
    (χ : DirichletCharacter ℂ q) (tags : List (UnramifiedPrimePower q))
    (ξ : ℝ) (c : ℕ → ℝ) : ℝ :=
  (tags.map (fun tag =>
    primeWeight tag.index * c tag.index *
      ((tag.frobeniusValue χ).im *
        (PPNC.primePhase tag.index ξ).im))).sum

/-- Every listed original paired source term is preserved with its signed
mixed imaginary contribution, for arbitrary complex Dirichlet characters. -/
theorem taggedPairedPhaseSource_exact_return
    (χ : DirichletCharacter ℂ q) (tags : List (UnramifiedPrimePower q))
    (ξ : ℝ) (c : ℕ → ℝ) :
    taggedPairedPhaseSource χ tags ξ c =
      taggedHolonomyReadout χ tags ξ c +
      taggedImaginaryResidual χ tags ξ c := by
  induction tags with
  | nil =>
      simp [taggedPairedPhaseSource, taggedHolonomyReadout,
        taggedImaginaryResidual]
  | cons tag rest ih =>
      simp only [taggedPairedPhaseSource, taggedHolonomyReadout,
        taggedImaginaryResidual, List.map_cons, List.sum_cons] at *
      rw [UnramifiedPrimePower.source_phase_eq_complex_holonomy_add_residual χ tag ξ c]
      rw [ih]
      ring

/-- The genuine outer factor two in pairedPrimePhaseResponse remains intact.
The equality applies to this tagged subinventory, not automatically to
the full activePrimePowers(T). -/
theorem paired_factor_two_tagged_return
    (χ : DirichletCharacter ℂ q) (tags : List (UnramifiedPrimePower q))
    (ξ : ℝ) (c : ℕ → ℝ) :
    2 * taggedPairedPhaseSource χ tags ξ c =
      2 * taggedHolonomyReadout χ tags ξ c +
      2 * taggedImaginaryResidual χ tags ξ c := by
  rw [taggedPairedPhaseSource_exact_return χ tags ξ c]
  ring

/-! ## Hostile test: residue holonomy does not decode the prime label. -/

/-- Distinct primes 2 and 7 are indistinguishable modulo 5, even before
restricting to an individual Dirichlet character. -/
theorem frobenius_residue_alias_two_seven
    (χ : DirichletCharacter ℂ 5) :
    χ (2 : ZMod 5) = χ (7 : ZMod 5) ∧ (2 : ℕ) ≠ 7 := by
  constructor
  · exact congrArg χ (by decide : (2 : ZMod 5) = (7 : ZMod 5))
  · decide

/-- Their full source logarithmic translation lengths differ. This
is exactly why the prime label must accompany a Frobenius residue. -/
theorem source_log_two_ne_seven :
    Real.log (2 : ℝ) ≠ Real.log (7 : ℝ) := by
  exact ne_of_lt (Real.log_lt_log (by norm_num) (by norm_num))

end GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicFrobeniusPrimeBridge
