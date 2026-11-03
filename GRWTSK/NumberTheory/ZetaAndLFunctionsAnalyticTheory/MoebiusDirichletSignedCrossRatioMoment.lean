/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletPairRatioFinite
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletResidueParseval
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDirichletMeanSignedSharp
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Genuine original Möbius signed CROSS: the character second moment

The preceding Dirichlet residue Parseval source controls only
the ALL-character energy mean; the signed cross mean may even
be zero at a variable q>=N(T) while individual characters
have large nonzero signed original cross.

The source-specific object in this module is the ORIGINAL
birth-gated causal real Gram pickupResponseGram(T,m,n)
with the literal ordinary Möbius weights mu(m)*mu(n),
all ordered orientations m!=n and the full endpoint
S(T)={1,...,floor(exp T)}. Nothing is squared or made positive
BEFORE the original signed cross is assembled.

For each numerator m and denominator n with n unit mod q,
the ratio is m*n^{-1} mod q. The generic PINNED finite
ratio Fourier map yields exact coefficients:
  B_(q,a)(T) =
    sum_(m!=n<=N, n unit, m*n^{-1}=a)
      mu(m)mu(n)*K_T(m,n).

For every true Dirichlet character chi:
  Z_chi(T) = sum_(a mod q) chi(a)*B_(q,a)(T),
where Z_chi is the COMPLEX original offdiagonal
Hermitian source. The original familyCross_chi is Re Z_chi.
Parseval (all characters, principal and imprimitive) gives:
  sum_chi |Z_chi(T)|² =
    phi(q)*sum_(a unit)|B_(q,a)(T)|².

The immediate certified-type target for ONE character is
  |familyCross_chi(T)|²
    <= phi(q)*sum_(a unit)|B_(q,a)(T)|².
The factor phi(q) is EXPLICIT, not concealed by the mean
identity. This is a noncircular FOURTH-ORDER arithmetic frontier:
the ratio-class square captures collisions
  m*s == n*r (mod q), with the denominator and numerator
both units after character projection.

At q>=N, the MEAN signed cross vanishes but the second
moment need not: different nonidentity residue ratios remain.
No fixed-character GRH bound or RH theorem is inferred.

All Lean bodies remain SOURCE PROOF CANDIDATES pending
pinned compilation, expected types, fresh kernel and
transitive axiom audit (NOT_RUN).
-/

namespace GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
open GRWTSK.NumberTheory.Moebius.LFunctionHermitianPickup
open GRWTSK.NumberTheory.Moebius.DirichletResidueOrthogonality
open GRWTSK.NumberTheory.Moebius.DirichletResidueParseval
open GRWTSK.NumberTheory.Moebius.DirichletPairRatioFinite

variable (q : ℕ) [NeZero q]
classical

/-- ALL original ordered positive pairs including diagonal;
the diagonal is disabled by the separate original weight. -/
def originalPairInventory (T : ℝ) : Finset (ℕ × ℕ) :=
  (endpointIndex T).product (endpointIndex T)

/-- Actual original signed causal Gram with its genuine
offdiagonal condition, represented on the entire pair inventory. -/
def originalOffdiagPairWeight (T : ℝ) (p : ℕ × ℕ) : ℂ :=
  if p.1 ≠ p.2 then originalSourcePair T p.1 p.2 else 0

/-- Original signed complex Hermitian cross BEFORE taking
its real part; the second character is always conjugated. -/
def originalCharacterCrossComplex
    (χ : DirichletCharacter ℂ q) (T : ℝ) : ℂ :=
  pairCharacterSum q (originalPairInventory T)
    (fun p => (p.1 : ZMod q))
    (fun p => (p.2 : ZMod q))
    (originalOffdiagPairWeight T) χ

/-- The exact ORIGINAL causal offdiagonal ratio packet.
Nonunit denominators are excluded because every Dirichlet
character vanishes there. Nonunit numerator ratios may be
present but are annihilated when characters are summed. -/
def originalRatioPacket (T : ℝ) (a : ZMod q) : ℂ :=
  pairRatioCoefficient q (originalPairInventory T)
    (fun p => (p.1 : ZMod q))
    (fun p => (p.2 : ZMod q))
    (originalOffdiagPairWeight T) a

/-- Every individual original Dirichlet-character cross is
the Fourier transform of genuine signed ratio-class Gram packets. -/
theorem originalCharacterCrossComplex_eq_ratioFourier
    (χ : DirichletCharacter ℂ q) (T : ℝ) :
    originalCharacterCrossComplex q χ T =
      finiteCharacterFourier q χ
        (fun a => originalRatioPacket q T a) := by
  simpa only [originalCharacterCrossComplex,
    originalRatioPacket, finiteCharacterFourier] using
    (pairCharacterSum_eq_ratioFourier q
      (originalPairInventory T)
      (fun p : ℕ × ℕ => (p.1 : ZMod q))
      (fun p : ℕ × ℕ => (p.2 : ZMod q))
      (originalOffdiagPairWeight T) χ)

/-- Exact all-character SECOND MOMENT. A genuinely positive
fourth-order arithmetic object, not an average of signed
offdiagonal values and not a new replacement kernel. -/
theorem allCharactersCrossComplex_secondMoment
    (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      ‖originalCharacterCrossComplex q χ T‖^2) =
      (q.totient : ℝ) *
        (∑ a : ZMod q,
          if IsUnit a then ‖originalRatioPacket q T a‖^2 else 0) := by
  have h := finite_character_parseval q
    (fun a => originalRatioPacket q T a)
  calc
    _ = ∑ χ : DirichletCharacter ℂ q,
        ‖finiteCharacterFourier q χ
          (fun a => originalRatioPacket q T a)‖^2 := by
      apply Finset.sum_congr rfl
      intro χ hχ
      rw [originalCharacterCrossComplex_eq_ratioFourier]
    _ = _ := h

/-- The original character-summed SIGNED cross is exactly
phi(q) times the IDENTITY ratio packet a=1. This is an
UNSIGNED algebraic first moment of the complex signed source;
it explains the earlier all-character signed-mean cancellation
without controlling other ratio packets or any second moment. -/
theorem allCharactersCrossComplex_sum_eq_oneRatio (T : ℝ) :
    (∑ χ : DirichletCharacter ℂ q,
      originalCharacterCrossComplex q χ T) =
      (q.totient : ℂ) * originalRatioPacket q T 1 := by
  calc
    _ = ∑ χ : DirichletCharacter ℂ q,
        ∑ a : ZMod q, χ a * originalRatioPacket q T a := by
      apply Finset.sum_congr rfl
      intro χ hχ
      rw [originalCharacterCrossComplex_eq_ratioFourier]
      rfl
    _ = ∑ a : ZMod q,
        ∑ χ : DirichletCharacter ℂ q,
          χ a * originalRatioPacket q T a := Finset.sum_comm
    _ = ∑ a : ZMod q,
        (∑ χ : DirichletCharacter ℂ q, χ a) *
          originalRatioPacket q T a := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [Finset.sum_mul]
    _ = ∑ a : ZMod q,
        (if a = 1 then (q.totient : ℂ) else 0) *
          originalRatioPacket q T a := by
      apply Finset.sum_congr rfl
      intro a ha
      rw [DirichletCharacter.sum_characters_eq ℂ a]
    _ = (q.totient : ℂ) *
        originalRatioPacket q T 1 := by simp

/-- Source-exact bridge to the EXISTING real familyCross.
No claim that the original ordered signed source is positive;
we only take the true real part after preserving conjugation. -/
theorem originalCharacterCrossComplex_re_eq_familyCross
    (χ : DirichletCharacter ℂ q) (T : ℝ) :
    (originalCharacterCrossComplex q χ T).re =
      familyCross (dirichletCharacterCoefficients χ) T := by
  have hpair (m n : ℕ) :
      χ (m : ZMod q) * star (χ (n : ZMod q)) *
        originalSourcePair T m n =
      familyHermitianKernel
        (dirichletCharacterCoefficients χ) T m n := by
    unfold originalSourcePair familyHermitianKernel
    rw [dirichletCharacter_mobius_apply χ m,
      dirichletCharacter_mobius_apply χ n]
    simp only [star_mul, star_intCast]
    ring
  unfold originalCharacterCrossComplex
    pairCharacterSum originalPairInventory
    originalOffdiagPairWeight familyCross
  rw [Finset.sum_product]
  congr 1
  apply Finset.sum_congr rfl
  intro m hm
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hne : m ≠ n
  · simp only [if_pos hne]
    exact hpair m n
  · simp [hne]

/-- Honest individual-character source upper with its FULL
character-count cost. To obtain every-positive-rate bounds
one MUST prove a nontrivial ratio-class SECOND-MOMENT bound;
all-character signed-mean cancellation does not supply it. -/
theorem individualFamilyCross_sq_le_ratioMoment
    (χ : DirichletCharacter ℂ q) (T : ℝ) :
    (familyCross (dirichletCharacterCoefficients χ) T)^2 ≤
      (q.totient : ℝ) *
        (∑ a : ZMod q,
          if IsUnit a then ‖originalRatioPacket q T a‖^2 else 0) := by
  let Z : ℂ := originalCharacterCrossComplex q χ T
  have hRe : |Z.re| ≤ ‖Z‖ := Complex.abs_re_le_norm _
  have hSq : Z.re^2 ≤ ‖Z‖^2 := by
    calc
      Z.re^2 = |Z.re|^2 := (sq_abs _).symm
      _ ≤ ‖Z‖^2 :=
        (sq_le_sq₀ (abs_nonneg _) (norm_nonneg _)).mpr hRe
  have hsingle :
      ‖originalCharacterCrossComplex q χ T‖^2 ≤
        ∑ ψ : DirichletCharacter ℂ q,
          ‖originalCharacterCrossComplex q ψ T‖^2 :=
    Finset.single_le_sum
      (fun ψ hψ hne => sq_nonneg _) (Finset.mem_univ χ)
  have hmoment := allCharactersCrossComplex_secondMoment q T
  rw [← originalCharacterCrossComplex_re_eq_familyCross q χ T]
  exact hSq.trans (hsingle.trans_eq hmoment)

end GRWTSK.NumberTheory.Moebius.DirichletSignedCrossRatioMoment
