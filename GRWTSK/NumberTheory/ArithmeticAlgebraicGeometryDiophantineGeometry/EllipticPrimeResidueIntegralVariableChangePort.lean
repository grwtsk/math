/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueYSignPort
import Mathlib.Algebra.Group.Int.Units
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Every integral Weierstrass variable change transports the residue fibers

The predecessor source handles the genuine sign change `u = -1, r = s = t = 0`.
This module adds arbitrary integral translations and then uses the classification
of units of `ℤ` to cover EVERY Mathlib `WeierstrassCurve.VariableChange ℤ`.

For the translation `(u,r,s,t) = (1,r,s,t)`, the old affine coordinates are

  X = x + r,    Y = y + s*x + t.

The inverse coordinates are written explicitly, and a polynomial identity proves
an actual equivalence of the two finite affine solution fibers at every prime.
Since every unit of `ℤ` is `1` or `-1`, a general integral variable change is
either this translation or the predecessor Y-sign change composed with it.

The result constructs target good-prime certificates and the existing global
`ChannelPort`, preserving every residue, exponent, point count, Frobenius trace,
local reciprocal factor, direct Euler coefficient and ordered signed trace packet.

This closes integral model changes over `ℤ`. It does NOT yet formalize arbitrary
unit changes over a DVR such as `PadicInt p`, identify Mathlib's chosen minimal
models, prove a global elliptic L-function comparison, BSD, RH, compilation or
kernel acceptance.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueIntegralVariableChangePort

open GRWTSK.NumberTheory.OrderedPrimeGroupAddress
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberCounting
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueYSignPort

/-- The genuine Mathlib translation variable change with unit scale. -/
def translationVariableChange (r s t : ℤ) :
    WeierstrassCurve.VariableChange ℤ where
  u := 1
  r := r
  s := s
  t := t

/-- The translated integral Weierstrass model, written coefficientwise so the
affine equation transport can be checked directly. -/
def translationModel (W : WeierstrassCurve ℤ) (r s t : ℤ) :
    WeierstrassCurve ℤ where
  a₁ := W.a₁ + 2 * s
  a₂ := W.a₂ - s * W.a₁ + 3 * r - s ^ 2
  a₃ := W.a₃ + r * W.a₁ + 2 * t
  a₄ := W.a₄ - s * W.a₃ + 2 * r * W.a₂ -
    (t + r * s) * W.a₁ + 3 * r ^ 2 - 2 * s * t
  a₆ := W.a₆ + r * W.a₄ + r ^ 2 * W.a₂ + r ^ 3 -
    t * W.a₃ - t ^ 2 - r * t * W.a₁

/-- The coefficientwise model is exactly Mathlib's actual variable-change
action; no parallel curve transformation is introduced. -/
theorem translationModel_eq_variableChange
    (W : WeierstrassCurve ℤ) (r s t : ℤ) :
    translationModel W r s t = translationVariableChange r s t • W := by
  ext <;>
    simp [translationModel, translationVariableChange,
      WeierstrassCurve.variableChange_a₁,
      WeierstrassCurve.variableChange_a₂,
      WeierstrassCurve.variableChange_a₃,
      WeierstrassCurve.variableChange_a₄,
      WeierstrassCurve.variableChange_a₆] <;>
    ring

/-- Translation does not change the integral discriminant. -/
theorem translationModel_discriminant
    (W : WeierstrassCurve ℤ) (r s t : ℤ) :
    (translationModel W r s t).Δ = W.Δ := by
  rw [translationModel_eq_variableChange,
    WeierstrassCurve.variableChange_Δ]
  simp [translationVariableChange]

/-- Exact affine equation transport from the source coordinates to the inverse
translation coordinates. The proof is one source polynomial identity. -/
theorem originalAffineEquation_translation_iff
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (r s t : ℤ) (x y : ZMod p.1) :
    originalAffineEquation W p x y ↔
      originalAffineEquation (translationModel W r s t) p
        (x - (r : ZMod p.1))
        (y - (s : ZMod p.1) * (x - (r : ZMod p.1)) -
          (t : ZMod p.1)) := by
  unfold originalAffineEquation translationModel
  push_cast
  constructor <;> intro h
  · convert h using 1 <;> ring
  · convert h using 1 <;> ring

/-- Actual equivalence of the finite affine solution subtypes under an
arbitrary integral translation. -/
def translationAffineEquiv
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (r s t : ℤ) :
    AffinePointFiber W p ≃ AffinePointFiber (translationModel W r s t) p where
  toFun z :=
    ⟨(z.1.1 - (r : ZMod p.1),
      z.1.2 - (s : ZMod p.1) * (z.1.1 - (r : ZMod p.1)) -
        (t : ZMod p.1)),
      (originalAffineEquation_translation_iff
        W p r s t z.1.1 z.1.2).mp z.2⟩
  invFun z :=
    ⟨(z.1.1 + (r : ZMod p.1),
      z.1.2 + (s : ZMod p.1) * z.1.1 + (t : ZMod p.1)), by
      apply (originalAffineEquation_translation_iff W p r s t
        (z.1.1 + (r : ZMod p.1))
        (z.1.2 + (s : ZMod p.1) * z.1.1 + (t : ZMod p.1))).mpr
      convert z.2 using 1 <;> ring⟩
  left_inv := by
    intro z
    apply Subtype.ext
    apply Prod.ext <;> dsimp <;> ring
  right_inv := by
    intro z
    apply Subtype.ext
    apply Prod.ext <;> dsimp <;> ring

/-- Geometric fiber port for an arbitrary integral translation. -/
def translationGeometricPort
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (r s t : ℤ) :
    GeometricFiberPort W (translationModel W r s t) p where
  affineEquiv := translationAffineEquiv W p r s t

theorem translation_pointCount_eq
    (W : WeierstrassCurve ℤ) (p : PrimeIndex)
    (r s t : ℤ) :
    integralModelCount W p.1 =
      integralModelCount (translationModel W r s t) p.1 :=
  (translationGeometricPort W p r s t).pointCount_eq

/-- Composition of actual geometric fiber ports. -/
def geometricPortComp
    {W V U : WeierstrassCurve ℤ} {p : PrimeIndex}
    (f : GeometricFiberPort W V p)
    (g : GeometricFiberPort V U p) :
    GeometricFiberPort W U p where
  affineEquiv := f.affineEquiv.trans g.affineEquiv

/-- Every unit of `ℤ` is `1` or `-1`, so every integral variable change is
a translation or the genuine Y-sign change followed by a translation. -/
theorem integralVariableChange_eq_translation_or_ySign
    (C : WeierstrassCurve.VariableChange ℤ) :
    C = translationVariableChange C.r C.s C.t ∨
      C = ySignVariableChange *
        translationVariableChange C.r C.s C.t := by
  rcases C with ⟨u, r, s, t⟩
  have hu := Int.isUnit_eq_one_or u.isUnit
  rcases hu with hu | hu
  · have hu' : u = 1 := Units.ext hu
    subst u
    exact Or.inl rfl
  · have hu' : u = -1 := Units.ext hu
    subst u
    right
    ext <;>
      simp [ySignVariableChange, translationVariableChange,
        WeierstrassCurve.VariableChange.mul_def]

/-- The target curve of every integral variable change is one of the two
explicit geometric models above. -/
theorem integralVariableChange_model_cases
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ) :
    C • W = translationModel W C.r C.s C.t ∨
      C • W = reverseYModel (translationModel W C.r C.s C.t) := by
  rcases integralVariableChange_eq_translation_or_ySign C with hC | hC
  · left
    calc
      C • W =
          translationVariableChange C.r C.s C.t • W :=
        congrArg (fun D : WeierstrassCurve.VariableChange ℤ => D • W) hC
      _ = translationModel W C.r C.s C.t :=
        (translationModel_eq_variableChange W C.r C.s C.t).symm
  · right
    calc
      C • W =
          (ySignVariableChange *
            translationVariableChange C.r C.s C.t) • W :=
        congrArg (fun D : WeierstrassCurve.VariableChange ℤ => D • W) hC
      _ = ySignVariableChange •
          (translationVariableChange C.r C.s C.t • W) := by
        rw [mul_smul]
      _ = ySignVariableChange •
          translationModel W C.r C.s C.t := by
        rw [← translationModel_eq_variableChange]
      _ = reverseYModel (translationModel W C.r C.s C.t) :=
        (reverseYModel_eq_variableChange _).symm

/-- Every integral variable change gives an actual equivalence of affine
solution fibers at every prime. -/
noncomputable def integralVariableChangeGeometricPort
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ) (p : PrimeIndex) :
    GeometricFiberPort W (C • W) p := by
  rcases integralVariableChange_model_cases C W with h | h
  · rw [h]
    exact translationGeometricPort W p C.r C.s C.t
  · rw [h]
    exact geometricPortComp
      (translationGeometricPort W p C.r C.s C.t)
      (reverseYGeometricPort (translationModel W C.r C.s C.t) p)

/-- Full finite point counts, including infinity, are invariant under every
integral admissible variable change. -/
theorem integralVariableChange_pointCount_eq
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ) (p : PrimeIndex) :
    integralModelCount W p.1 = integralModelCount (C • W) p.1 :=
  (integralVariableChangeGeometricPort C W p).pointCount_eq

/-- The discriminant is exactly unchanged over `ℤ`, because the only possible
scales are `±1`. -/
theorem integralVariableChange_discriminant
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ) :
    (C • W).Δ = W.Δ := by
  rcases integralVariableChange_model_cases C W with h | h
  · rw [h, translationModel_discriminant]
  · rw [h, reverseYModel_discriminant, translationModel_discriminant]

/-- Build the target good-reduction point-count certificate from the source
certificate and the actual integral variable change. -/
def integralVariableChangeCertificate
    {W : WeierstrassCurve ℤ} {p : PrimeIndex}
    (C : WeierstrassCurve.VariableChange ℤ)
    (x : ChannelAt W p) :
    GoodPointCountCertificate p.1 where
  model := C • W
  prime := p.2
  good := by
    have hgood : (W.Δ : ZMod p.1) ≠ 0 := by
      simpa [x.source_eq] using x.certificate.good
    simpa [integralVariableChange_discriminant C W] using hgood
  count := x.certificate.count
  count_eq := by
    calc
      x.certificate.count = integralModelCount W p.1 := by
        simpa [x.source_eq] using x.certificate.count_eq
      _ = integralModelCount (C • W) p.1 :=
        integralVariableChange_pointCount_eq C W p

/-- Transport one complete prime-dependent channel. -/
def integralVariableChangeChannelAt
    {W : WeierstrassCurve ℤ} {p : PrimeIndex}
    (C : WeierstrassCurve.VariableChange ℤ)
    (x : ChannelAt W p) :
    ChannelAt (C • W) p where
  certificate := integralVariableChangeCertificate C x
  source_eq := rfl
  residue := x.residue
  exponent := x.exponent

/-- Global observation port for every integral Mathlib variable change.
The predicate is `True`; no unrelated curve-class theorem is invented. -/
def integralVariableChangeChannelPort
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ) :
    ChannelPort (fun _ => True) W (C • W) where
  toFiber x := ⟨x.1, integralVariableChangeChannelAt C x.2⟩
  prime_eq := by intro x; rfl
  count_eq := by intro x; rfl
  residue_eq := by intro x; rfl
  exponent_eq := by intro x; rfl
  class_forward := fun _ => trivial

theorem integralVariableChange_localDirectCoeff
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ)
    (x : CurveFiber W) (n : ℕ) :
    localDirectCoeff
        ((integralVariableChangeChannelPort C W).toFiber x) n =
      localDirectCoeff x n :=
  (integralVariableChangeChannelPort C W).localDirectCoeff_eq x n

theorem integralVariableChange_localReciprocal
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ)
    (x : CurveFiber W) (T : ℚ) :
    localReciprocal
        ((integralVariableChangeChannelPort C W).toFiber x) T =
      localReciprocal x T :=
  (integralVariableChangeChannelPort C W).localReciprocal_eq x T

/-- The complete ordered signed trace packet is invariant, including both
orientations and repeated source occurrences. -/
theorem integralVariableChange_orderedTrace
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ) {ι : Type*}
    (F : BoundedSample W ι) (S : Finset ι) :
    orderedPacket
        (F.route (integralVariableChangeChannelPort C W)) S traceKernel =
      orderedPacket F S traceKernel :=
  tracePacket_route F (integralVariableChangeChannelPort C W) S

/-- Every finite local reciprocal-factor product is invariant. -/
theorem integralVariableChange_finiteEulerWindow
    (C : WeierstrassCurve.VariableChange ℤ)
    (W : WeierstrassCurve ℤ) {ι : Type*}
    (F : BoundedSample W ι) (S : Finset ι) (T : ℚ) :
    (∏ i ∈ S,
      localReciprocal
        ((F.route (integralVariableChangeChannelPort C W)).observation i) T) =
      ∏ i ∈ S, localReciprocal (F.observation i) T :=
  finite_good_euler_window_route F
    (integralVariableChangeChannelPort C W) S T

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueIntegralVariableChangePort
