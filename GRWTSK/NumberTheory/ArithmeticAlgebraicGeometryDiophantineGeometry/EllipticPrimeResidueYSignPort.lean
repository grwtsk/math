/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueSamplewiseTransport
import Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange
import Mathlib.Tactic

/-!
# A genuine unit-scaling coordinate-change elliptic fiber port

The predecessor transport handles two models whose five coefficients are
equal modulo a prime in the SAME affine coordinates. This module uses the
actual Mathlib WeierstrassCurve.VariableChange with scaling unit -1.
The change (x,y) -> (x,-y) takes a model (a1,a2,a3,a4,a6) to the
actual integral model (-a1,a2,-a3,a4,a6), which need not have matching
coefficients modulo odd primes.

The affine F_p solution sets are explicitly equivalent at EVERY prime.
The original discriminant is unchanged by the genuine u^-12 law.
Thus every source GoodPointCountCertificate can be transported to a
target certificate, and the already existing GLOBAL ChannelPort for class
True is constructed without a freely supplied count or an all-prime
coefficient-congruence assumption. All signs, residues, exponents, source
local Euler coefficients and ordered trace packets are retained.

This is one genuine admissible unit-scaling case, NOT a proof for every
unit u, general (r,s,t), all minimal model changes, global elliptic
L-function analytic equality, RH or BSD.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueYSignPort

open GRWTSK.NumberTheory.OrderedPrimeGroupAddress
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberCounting

/-- A genuine integral Weierstrass model with the Y-coordinate reversed. -/
def reverseYModel (W : WeierstrassCurve ℤ) : WeierstrassCurve ℤ where
  a₁ := -W.a₁
  a₂ := W.a₂
  a₃ := -W.a₃
  a₄ := W.a₄
  a₆ := W.a₆

/-- Actual admissible Mathlib variable change, not an invented port:
u=-1 is a unit over Z; r=s=t=0. -/
def ySignVariableChange : WeierstrassCurve.VariableChange ℤ where
  u := -1
  r := 0
  s := 0
  t := 0

/-- The explicit sign change is exactly the original Mathlib admissible
change of variables, with all five integral coefficients retained. -/
theorem reverseYModel_eq_variableChange (W : WeierstrassCurve ℤ) :
    reverseYModel W = ySignVariableChange • W := by
  apply WeierstrassCurve.ext
  · simp [reverseYModel, ySignVariableChange, WeierstrassCurve.variableChange_a₁]
  · simp [reverseYModel, ySignVariableChange, WeierstrassCurve.variableChange_a₂]
  · simp [reverseYModel, ySignVariableChange, WeierstrassCurve.variableChange_a₃]
  · simp [reverseYModel, ySignVariableChange, WeierstrassCurve.variableChange_a₄]
  · simp [reverseYModel, ySignVariableChange, WeierstrassCurve.variableChange_a₆]

/-- The source discriminant survives exactly, not just up to a possible
zero divisor: (-1)^(-12)=1 in the original integer ring. -/
theorem reverseYModel_discriminant (W : WeierstrassCurve ℤ) :
    (reverseYModel W).Δ = W.Δ := by
  rw [reverseYModel_eq_variableChange, WeierstrassCurve.variableChange_Δ]
  norm_num [ySignVariableChange]

/-- The actual affine equation, using exactly the same source polynomial
as the preexisting AffinePointFiber subtype. -/
def originalAffineEquation
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (x y : ZMod p.1) : Prop :=
  y ^ 2 + (W.a₁ : ZMod p.1) * x * y +
    (W.a₃ : ZMod p.1) * y =
  x ^ 3 + (W.a₂ : ZMod p.1) * x ^ 2 +
    (W.a₄ : ZMod p.1) * x + (W.a₆ : ZMod p.1)

/-- Explicit pointwise affine equation equivalence. There is no change
in p, no point-enumeration assumption, and no division by 2. -/
theorem originalAffineEquation_reverseY_iff
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (x y : ZMod p.1) :
    originalAffineEquation W p x y ↔
      originalAffineEquation (reverseYModel W) p x (-y) := by
  unfold originalAffineEquation
  constructor
  · intro h
    change (-y) ^ 2 +
      ((-W.a₁ : ℤ) : ZMod p.1) * x * (-y) +
      ((-W.a₃ : ℤ) : ZMod p.1) * (-y) =
      x ^ 3 + (W.a₂ : ZMod p.1) * x ^ 2 +
        (W.a₄ : ZMod p.1) * x + (W.a₆ : ZMod p.1)
    convert h using 1 <;> ring
  · intro h
    change (-y) ^ 2 +
      ((-W.a₁ : ℤ) : ZMod p.1) * x * (-y) +
      ((-W.a₃ : ℤ) : ZMod p.1) * (-y) =
      x ^ 3 + (W.a₂ : ZMod p.1) * x ^ 2 +
        (W.a₄ : ZMod p.1) * x + (W.a₆ : ZMod p.1) at h
    convert h using 1 <;> ring

/-- A real bijection of the source and target affine solution subtypes.
The source and target models are not required to be coefficient-congruent. -/
def reverseYAffineEquiv (W : WeierstrassCurve ℤ) (p : PrimeIndex) :
    AffinePointFiber W p ≃ AffinePointFiber (reverseYModel W) p where
  toFun z :=
    ⟨(z.1.1, -z.1.2),
      (originalAffineEquation_reverseY_iff W p z.1.1 z.1.2).mp z.2⟩
  invFun z :=
    ⟨(z.1.1, -z.1.2), by
      apply (originalAffineEquation_reverseY_iff W p z.1.1 (-z.1.2)).mpr
      simpa only [neg_neg] using z.2⟩
  left_inv := by
    intro z
    apply Subtype.ext
    simp
  right_inv := by
    intro z
    apply Subtype.ext
    simp

/-- A genuine geometric port on ALL primes from the same integral
admissible coordinate change. -/
def reverseYGeometricPort (W : WeierstrassCurve ℤ) (p : PrimeIndex) :
    GeometricFiberPort W (reverseYModel W) p where
  affineEquiv := reverseYAffineEquiv W p

theorem reverseY_pointCount_eq (W : WeierstrassCurve ℤ) (p : PrimeIndex) :
    integralModelCount W p.1 =
      integralModelCount (reverseYModel W) p.1 :=
  (reverseYGeometricPort W p).pointCount_eq

/-- The actual target good-reduction count certificate is constructed,
not postulated: both good and count_eq have original-source proofs. -/
def reverseYCertificate
    {W : WeierstrassCurve ℤ} {p : PrimeIndex}
    (x : ChannelAt W p) : GoodPointCountCertificate p.1 where
  model := reverseYModel W
  prime := p.2
  good := by
    have hgood : (W.Δ : ZMod p.1) ≠ 0 := by
      simpa [x.source_eq] using x.certificate.good
    simpa [reverseYModel_discriminant] using hgood
  count := x.certificate.count
  count_eq := by
    calc
      x.certificate.count = integralModelCount W p.1 := by
        simpa [x.source_eq] using x.certificate.count_eq
      _ = integralModelCount (reverseYModel W) p.1 :=
        reverseY_pointCount_eq W p

/-- Transport the source's complete dependent prime/residue/exponent state. -/
def reverseYChannelAt
    {W : WeierstrassCurve ℤ} {p : PrimeIndex}
    (x : ChannelAt W p) : ChannelAt (reverseYModel W) p where
  certificate := reverseYCertificate x
  source_eq := rfl
  residue := x.residue
  exponent := x.exponent

/-- A genuine global ChannelPort exists for THIS proven integral variable
change, with class predicate True. No arbitrary CM, isogeny, Hodge or other
curve-class arrow is invented. -/
def reverseYChannelPort (W : WeierstrassCurve ℤ) :
    ChannelPort (fun _ => True) W (reverseYModel W) where
  toFiber x := ⟨x.1, reverseYChannelAt x.2⟩
  prime_eq := by intro x; rfl
  count_eq := by intro x; rfl
  residue_eq := by intro x; rfl
  exponent_eq := by intro x; rfl
  class_forward := fun _ => trivial

/-- All genuine local direct coefficients are preserved at every prime
and every prime power. This is the existing accepted-type port consumer. -/
theorem reverseY_localDirectCoeff
    (W : WeierstrassCurve ℤ) (x : CurveFiber W) (n : ℕ) :
    localDirectCoeff ((reverseYChannelPort W).toFiber x) n =
      localDirectCoeff x n :=
  (reverseYChannelPort W).localDirectCoeff_eq x n

/-- Every finite source indexed signed trace packet, both orientations
and duplicate source occurrences included, is exactly preserved. -/
theorem reverseY_orderedTrace
    (W : WeierstrassCurve ℤ) {ι : Type*}
    (F : BoundedSample W ι) (S : Finset ι) :
    orderedPacket (F.route (reverseYChannelPort W)) S traceKernel =
      orderedPacket F S traceKernel :=
  tracePacket_route F (reverseYChannelPort W) S

/-- The exact local reciprocal factor at ANY rational parameter is
preserved by this source-actual admissible coordinate change. -/
theorem reverseY_localReciprocal
    (W : WeierstrassCurve ℤ) (x : CurveFiber W) (T : ℚ) :
    localReciprocal ((reverseYChannelPort W).toFiber x) T =
      localReciprocal x T :=
  (reverseYChannelPort W).localReciprocal_eq x T

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueYSignPort
