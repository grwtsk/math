/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib.NumberTheory.ArithmeticFunction.Defs
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.NumberTheory.LSeries.Basic
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MertensPrimitive
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Actual family Möbius coefficients: the Dirichlet convolution inverse

An L-function coefficient sequence is not necessarily a multiplicative
function, and its inverse is not always the classical Möbius symbol.
The exact universal source is a normalized ArithmeticFunction ℂ:
  a(0)=0, a(1)=1,  mu_L := a^(-1) for Dirichlet convolution.
Pinned Mathlib supplies an actual inverse via dirichletInverse, with
a*mu_L=mu_L*a=δ_1. This is algebra, not an analytic continuation,
Euler product, functional equation, zero theorem, or GRH claim.

Concrete adapters:
  zeta: a(n)=1, mu_L(n)=ordinary mu(n);
  Dirichlet χ mod q: a(n)=χ(n) (n>=1),
    mu_L(n)=mu(n)*χ(n) including imprimitive zeros;
  products: coefficient convolution; inverse convolution;
  powers: repeated convolution, not pointwise products.

The complex Dirichlet-character inversion is already present
in pinned Mathlib as DirichletCharacter.convolution_mul_moebius
and LSeries.mul_mu_eq_one. Our adapter preserves its normalization
and does not introduce a different character or shift convention.
The analytic LSeries function uses its actual mathlib definition.
-/

namespace GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse

open ArithmeticFunction

/-- Normalized original Dirichlet coefficients over ℂ. The
value at zero is forced to zero by ArithmeticFunction itself. -/
structure NormalizedCoefficients where
  coeff : ArithmeticFunction ℂ
  coeff_one : coeff 1 = 1

namespace NormalizedCoefficients

private def coefficientOneInvertible (F : NormalizedCoefficients) :
    Invertible (F.coeff 1) := by
  rw [F.coeff_one]
  infer_instance

/-- The true Dirichlet-convolution inverse, not a new sign model. -/
def mobius (F : NormalizedCoefficients) : ArithmeticFunction ℂ :=
  ArithmeticFunction.dirichletInverse F.coeff F.coefficientOneInvertible

theorem mul_mobius (F : NormalizedCoefficients) :
    F.coeff * F.mobius = 1 :=
  ArithmeticFunction.self_mul_dirichletInverse
    F.coeff F.coefficientOneInvertible

theorem mobius_mul (F : NormalizedCoefficients) :
    F.mobius * F.coeff = 1 :=
  ArithmeticFunction.dirichletInverse_mul_self
    F.coeff F.coefficientOneInvertible

/-- A second candidate inverse must equal the canonical one.
No Euler-product or zero-free premise is required. -/
theorem mobius_unique (F : NormalizedCoefficients)
    (b : ArithmeticFunction ℂ) (hb : F.coeff * b = 1) :
    F.mobius = b := by
  calc
    F.mobius = F.mobius * 1 := by simp
    _ = F.mobius * (F.coeff * b) := by rw [hb]
    _ = (F.mobius * F.coeff) * b := by rw [mul_assoc]
    _ = b := by rw [F.mobius_mul, one_mul]

/-- The coefficient function for a product of L-series is the
Dirichlet convolution, never pointwise multiplication. -/
def product (F G : NormalizedCoefficients) : NormalizedCoefficients where
  coeff := F.coeff * G.coeff
  coeff_one := by
    rw [ArithmeticFunction.mul_apply_one, F.coeff_one, G.coeff_one]
    ring

theorem product_mobius (F G : NormalizedCoefficients) :
    (F.product G).mobius = F.mobius * G.mobius := by
  apply (F.product G).mobius_unique
  change (F.coeff * G.coeff) * (F.mobius * G.mobius) = 1
  calc
    _ = (F.coeff * F.mobius) * (G.coeff * G.mobius) := by ring
    _ = 1 := by rw [F.mul_mobius, G.mul_mobius, one_mul]

/-- Convolution power k, including the unit family at k=0. -/
def convolutionPower (F : NormalizedCoefficients) : ℕ → NormalizedCoefficients
  | 0 => { coeff := 1, coeff_one := by simp }
  | k + 1 => (convolutionPower F k).product F

/-- Actual mathlib L-series of these exact normalized coefficients.
Meaningful analytic identities require convergence hypotheses. -/
def rawLSeries (F : NormalizedCoefficients) (s : ℂ) : ℂ :=
  LSeries F.coeff s

def rawReciprocalLSeries (F : NormalizedCoefficients) (s : ℂ) : ℂ :=
  LSeries F.mobius s

end NormalizedCoefficients

/-- The integer-one coefficient zeta, defined by the pinned
arithmetic-function zeta rather than by an unrelated sequence. -/
def zetaCoefficients : NormalizedCoefficients where
  coeff := ((ArithmeticFunction.zeta : ArithmeticFunction ℕ) :
    ArithmeticFunction ℂ)
  coeff_one := by simp

def classicalMoebiusComplex : ArithmeticFunction ℂ :=
  ((ArithmeticFunction.moebius : ArithmeticFunction ℤ) :
    ArithmeticFunction ℂ)

/-- The normalized ζ inverse agrees with the ACTUAL ordinary μ. -/
theorem zeta_mobius_eq_classical :
    zetaCoefficients.mobius = classicalMoebiusComplex := by
  apply zetaCoefficients.mobius_unique
  simpa only [zetaCoefficients, classicalMoebiusComplex] using
    (ArithmeticFunction.coe_zeta_mul_coe_moebius (R := ℂ))

/-- A character twists an arithmetic function only on its
coefficients. The zero coefficient remains zero. -/
def characterTwist {q : ℕ} (χ : DirichletCharacter ℂ q)
    (f : ArithmeticFunction ℂ) : ArithmeticFunction ℂ where
  toFun n := χ (n : ZMod q) * f n
  map_zero' := by simp

theorem characterTwist_one {q : ℕ} (χ : DirichletCharacter ℂ q) :
    characterTwist χ (1 : ArithmeticFunction ℂ) = 1 := by
  ext n
  by_cases hn : n = 1
  · subst n
    simp [characterTwist]
  · simp [characterTwist, ArithmeticFunction.one_apply_ne hn]

/-- Actual character multiplication distributes over
Dirichlet convolution, using χ(mn)=χ(m)χ(n) at every factor. -/
theorem characterTwist_mul {q : ℕ}
    (χ : DirichletCharacter ℂ q)
    (f g : ArithmeticFunction ℂ) :
    characterTwist χ (f * g) =
      characterTwist χ f * characterTwist χ g := by
  ext n
  change
    χ (n : ZMod q) *
      (∑ x ∈ n.divisorsAntidiagonal, f x.fst * g x.snd) =
    ∑ x ∈ n.divisorsAntidiagonal,
      (χ (x.fst : ZMod q) * f x.fst) *
        (χ (x.snd : ZMod q) * g x.snd)
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro x hx
  have hfactor : x.fst * x.snd = n :=
    (Nat.mem_divisorsAntidiagonal.mp hx).1
  have hχ :
      χ (n : ZMod q) =
        χ (x.fst : ZMod q) * χ (x.snd : ZMod q) := by
    rw [← hfactor, Nat.cast_mul]
    exact map_mul χ _ _
  rw [hχ]
  ring

/-- Concrete Dirichlet coefficient family, at ANY modulus q,
including imprimitive and principal channels. Do not silently
replace a principal character mod q by ζ: it has missing p|q factors. -/
def dirichletCharacterCoefficients {q : ℕ}
    (χ : DirichletCharacter ℂ q) : NormalizedCoefficients where
  coeff := characterTwist χ zetaCoefficients.coeff
  coeff_one := by simp [characterTwist, zetaCoefficients]

/-- The generalized Dirichlet Möbius function μ_χ(n)=χ(n)μ(n).
This is the actual complex character, never forced real or positive. -/
def dirichletCharacterMobius {q : ℕ}
    (χ : DirichletCharacter ℂ q) : ArithmeticFunction ℂ :=
  characterTwist χ classicalMoebiusComplex

/-- Exact original Dirichlet-convolution inverse of L(s,χ).
In pinned Mathlib the same analytic identity appears as
DirichletCharacter.convolution_mul_moebius. -/
theorem dirichletCharacter_mobius_eq_twist {q : ℕ}
    (χ : DirichletCharacter ℂ q) :
    (dirichletCharacterCoefficients χ).mobius =
      dirichletCharacterMobius χ := by
  apply (dirichletCharacterCoefficients χ).mobius_unique
  change (characterTwist χ zetaCoefficients.coeff) *
    (characterTwist χ classicalMoebiusComplex) = 1
  calc
    _ = characterTwist χ
      (zetaCoefficients.coeff * classicalMoebiusComplex) :=
        (characterTwist_mul χ _ _).symm
    _ = characterTwist χ 1 := by
      rw [show zetaCoefficients.coeff * classicalMoebiusComplex = 1 by
        simpa only [zetaCoefficients, classicalMoebiusComplex] using
          (ArithmeticFunction.coe_zeta_mul_coe_moebius (R := ℂ))]
    _ = 1 := characterTwist_one χ

theorem dirichletCharacter_mobius_apply {q : ℕ}
    (χ : DirichletCharacter ℂ q) (n : ℕ) :
    (dirichletCharacterCoefficients χ).mobius n =
      χ (n : ZMod q) * (ArithmeticFunction.moebius n : ℂ) := by
  rw [dirichletCharacter_mobius_eq_twist]
  rfl

/-- L(s,χ)*L(s,μχ)=1 is already a pinned Mathlib theorem in Re(s)>1.
No claim on the critical strip is made here. -/
theorem dirichlet_right_half_plane_inverse {q : ℕ}
    (χ : DirichletCharacter ℂ q) {s : ℂ} (hs : 1 < s.re) :
    LSeries (dirichletCharacterCoefficients χ).coeff s *
      LSeries (dirichletCharacterMobius χ) s = 1 := by
  simpa [dirichletCharacterCoefficients,
    dirichletCharacterMobius, characterTwist,
    zetaCoefficients, classicalMoebiusComplex] using
      (DirichletCharacter.LSeries.mul_mu_eq_one χ hs)

end GRWTSK.NumberTheory.Moebius.LFunctionFamilyInverse
