/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletSignedCrossRatioMoment
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# The original Hermitian character cross is REAL, not merely a real part

This module closes the purely finite symmetry between the actual
full ordered original source pair (m,n) and its reverse (n,m).

The maintained real causal Gram satisfies K_T(m,n)=K_T(n,m)
by commutativity of its literal two-response integrand.
The ORIGINAL mu coefficients and Gram are REAL, so
  star(mu(m)mu(n)K_T(m,n))=mu(n)mu(m)K_T(n,m).

In the complex chi-weighted offdiagonal full ordered source,
conjugation therefore swaps the ordered indices. Swapping the
two complete finite source summations proves star Z_chi=Z_chi.
Thus the imaginary part is ZERO and
  norm(Z_chi)^2=(Re Z_chi)^2 = familyCross(chi,T)^2.

Combined with the newly authored exact complex character
ratio-class Parseval, this gives the EXACT genuinely SIGNED
second-moment identity (not merely an upper bound):
  sum_(chi mod q) familyCross(chi,T)^2
    = phi(q)*sum_(a unit)|B_(q,a)(T)|².

All source orientations, signs, birth gates and the second
character's conjugation are maintained. No Mertens cancellation,
functional equation or GRH assumption enters this finite algebra.

Lean proof bodies are SOURCE PROOF CANDIDATES. Full pinned
compilation, expected types, fresh kernel and axioms NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletSignedCrossReality

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
open GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment
open GRWTSK.NumberTheory.Moebius.DirichletPairRatioFinite

variable (q : ℕ) [NeZero q]
classical

private theorem originalPickupGram_comm
    (T : ℝ) (m n : ℕ) :
    pickupResponseGram T m n = pickupResponseGram T n m := by
  unfold pickupResponseGram
  apply intervalIntegral.integral_congr
  intro u hu
  ring

private theorem originalSourcePair_star_reverse
    (T : ℝ) (m n : ℕ) :
    star (originalSourcePair T m n) =
      originalSourcePair T n m := by
  unfold originalSourcePair
  simp only [star_mul, star_intCast]
  have hreal :
      star ((pickupResponseGram T m n : ℝ) : ℂ) =
        ((pickupResponseGram T m n : ℝ) : ℂ) := by simp
  rw [hreal, originalPickupGram_comm]
  ring

/-- The character-weighted original causal cross is self-adjoint,
because both (m,n) and (n,m) are retained. -/
theorem originalCharacterCrossComplex_star_self
    (χ : DirichletCharacter ℂ q) (T : ℝ) :
    star (originalCharacterCrossComplex q χ T) =
      originalCharacterCrossComplex q χ T := by
  let S : Finset ℕ := endpointIndex T
  have hrepr :
      originalCharacterCrossComplex q χ T =
        ∑ m ∈ S, ∑ n ∈ S,
          if m ≠ n then
            χ (m : ZMod q) * star (χ (n : ZMod q)) *
              originalSourcePair T m n else 0 := by
    unfold originalCharacterCrossComplex pairCharacterSum
      originalPairInventory originalOffdiagPairWeight
    rw [Finset.sum_product]
    apply Finset.sum_congr rfl
    intro m hm
    apply Finset.sum_congr rfl
    intro n hn
    by_cases hmn : m ≠ n
    · simp [hmn]
    · simp [hmn]
  have hterm (m n : ℕ) :
      star (if m ≠ n then
          χ (m : ZMod q) * star (χ (n : ZMod q)) *
            originalSourcePair T m n else 0) =
      if n ≠ m then
        χ (n : ZMod q) * star (χ (m : ZMod q)) *
          originalSourcePair T n m else 0 := by
    by_cases hmn : m ≠ n
    · have hnm : n ≠ m := Ne.symm hmn
      simp only [if_pos hmn, if_pos hnm, star_mul, star_star]
      rw [originalSourcePair_star_reverse]
      ring
    · have hnm : ¬n ≠ m := by simpa [eq_comm] using hmn
      simp [hmn,hnm]
  rw [hrepr]
  simp only [star_sum]
  calc
    (∑ m ∈ S, ∑ n ∈ S,
      star (if m ≠ n then
        χ (m : ZMod q) * star (χ (n : ZMod q)) *
          originalSourcePair T m n else 0)) =
      ∑ m ∈ S, ∑ n ∈ S,
        if n ≠ m then
          χ (n : ZMod q) * star (χ (m : ZMod q)) *
            originalSourcePair T n m else 0 := by
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      exact hterm m n
    _ = ∑ n ∈ S, ∑ m ∈ S,
        if m ≠ n then
          χ (m : ZMod q) * star (χ (n : ZMod q)) *
            originalSourcePair T m n else 0 := Finset.sum_comm

/-- In particular the complex original Hermitian cross has
zero imaginary component, even for nonreal characters. -/
theorem originalCharacterCrossComplex_im_zero
    (χ : DirichletCharacter ℂ q) (T : ℝ) :
    (originalCharacterCrossComplex q χ T).im = 0 := by
  have h := originalCharacterCrossComplex_star_self q χ T
  exact Complex.conj_eq_iff_im.mp (by
    simpa only [Complex.star_def] using h)

/-- Exact second moment of the ACTUAL REAL signed Dirichlet
Möbius cross. This is a fourth-order original arithmetic
correlation in the ratio variable, not an averaging assumption. -/
theorem allCharactersRealCross_secondMoment
    (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      (familyCross (dirichletCharacterCoefficients χ) T)^2) =
      (q.totient : ℝ) *
        (∑ a : ZMod q,
          if IsUnit a then ‖originalRatioPacket q T a‖^2 else 0) := by
  calc
    _ = ∑ χ : DirichletCharacter ℂ q,
        ‖originalCharacterCrossComplex q χ T‖^2 := by
      apply Finset.sum_congr rfl
      intro χ hχ
      let z : ℂ := originalCharacterCrossComplex q χ T
      have hre :
          z.re = familyCross (dirichletCharacterCoefficients χ) T :=
        originalCharacterCrossComplex_re_eq_familyCross q χ T
      have him : z.im = 0 :=
        originalCharacterCrossComplex_im_zero q χ T
      have hnorm := Complex.sq_norm_sub_sq_re z
      have hsq : z.re^2 = ‖z‖^2 := by
        rw [him] at hnorm
        nlinarith
      exact (congrArg (fun x : ℝ => x^2) hre).symm.trans hsq
    _ = _ := allCharactersCrossComplex_secondMoment q T

end GRWTSK.NumberTheory.Moebius.DirichletSignedCrossReality
