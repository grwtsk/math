/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat
import GRWTSK.Algebra.LinearAlgebra.CommonJ
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Positive source metrics versus signed consumers

This file formalizes the reusable finite algebra behind several repository
interfaces. A positive Euclidean/Hodge energy and a signed consumer are kept
noncoercible. The signed consumer is obtained from an involutive fundamental
symmetry with + and - sectors.

The central identities are

  E(x)   = E_plus(x) + E_minus(x)
  q_J(x) = E_plus(x) - E_minus(x).

Thus positivity of E does not imply positivity of q_J. On a pure negative
sector, -q_J is the positive energy. This is the finite sign-twist pattern
that later adapters may compare with Hodge primitive signs, signed screws,
Weil negative witnesses, or the quartic sign obstruction.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge

open GRWTSK.Algebra.LinearAlgebra.FinitePositiveHodgeHeat

universe u
variable {ι : Type u}

/-- Coordinate fundamental symmetry: +1 on the selected sector and -1 on
its complement. -/
def fundamentalSymmetry (mask : ι → Bool) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  diagonal (fun i => if mask i = true then 1 else -1)

@[simp]
theorem fundamentalSymmetry_apply
    (mask : ι → Bool) (x : ι → ℝ) (i : ι) :
    fundamentalSymmetry mask x i =
      (if mask i = true then 1 else -1) * x i :=
  rfl

/-- The fundamental symmetry is involutive. -/
theorem fundamentalSymmetry_involutive
    (mask : ι → Bool) :
    (fundamentalSymmetry mask).comp (fundamentalSymmetry mask) =
      LinearMap.id := by
  ext x i
  cases h : mask i <;>
    simp [fundamentalSymmetry, diagonal, h]

/-- Positive Euclidean/Hodge energy. -/
def positiveEnergy [Fintype ι] (x : ι → ℝ) : ℝ :=
  dot x x

/-- Signed quadratic consumer represented by the fundamental symmetry. -/
def signedEnergy [Fintype ι] (mask : ι → Bool) (x : ι → ℝ) : ℝ :=
  dot (fundamentalSymmetry mask x) x

/-- Positive-sector component of the Euclidean energy. -/
def plusEnergy [Fintype ι] (mask : ι → Bool) (x : ι → ℝ) : ℝ :=
  dot (maskProjector mask x) (maskProjector mask x)

/-- Negative-sector component of the Euclidean energy. -/
def minusEnergy [Fintype ι] (mask : ι → Bool) (x : ι → ℝ) : ℝ :=
  dot (maskProjector (complementMask mask) x)
    (maskProjector (complementMask mask) x)

theorem positiveEnergy_nonneg [Fintype ι] (x : ι → ℝ) :
    0 ≤ positiveEnergy x :=
  dot_self_nonneg x

theorem plusEnergy_nonneg [Fintype ι]
    (mask : ι → Bool) (x : ι → ℝ) :
    0 ≤ plusEnergy mask x :=
  dot_self_nonneg _

theorem minusEnergy_nonneg [Fintype ι]
    (mask : ι → Bool) (x : ι → ℝ) :
    0 ≤ minusEnergy mask x :=
  dot_self_nonneg _

/-- Positive energy is the sum of the two complementary sector energies. -/
theorem positiveEnergy_eq_plus_add_minus [Fintype ι]
    (mask : ι → Bool) (x : ι → ℝ) :
    positiveEnergy x = plusEnergy mask x + minusEnergy mask x := by
  unfold positiveEnergy plusEnergy minusEnergy dot
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  cases h : mask i <;>
    simp [maskProjector, complementMask, diagonal, h]

/-- The signed consumer is the difference of positive sector energies. -/
theorem signedEnergy_eq_plus_sub_minus [Fintype ι]
    (mask : ι → Bool) (x : ι → ℝ) :
    signedEnergy mask x = plusEnergy mask x - minusEnergy mask x := by
  unfold signedEnergy plusEnergy minusEnergy dot fundamentalSymmetry
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro i _
  cases h : mask i <;>
    simp [maskProjector, complementMask, diagonal, h]

/-- Pure positive-sector condition. -/
def InPlusSector (mask : ι → Bool) (x : ι → ℝ) : Prop :=
  maskProjector (complementMask mask) x = 0

/-- Pure negative-sector condition. -/
def InMinusSector (mask : ι → Bool) (x : ι → ℝ) : Prop :=
  maskProjector mask x = 0

/-- On the + sector the signed and positive energies coincide. -/
theorem signedEnergy_eq_positiveEnergy_of_plusSector [Fintype ι]
    {mask : ι → Bool} {x : ι → ℝ}
    (hx : InPlusSector mask x) :
    signedEnergy mask x = positiveEnergy x := by
  have hminus : minusEnergy mask x = 0 := by
    unfold minusEnergy
    rw [hx]
    simp [dot]
  rw [signedEnergy_eq_plus_sub_minus,
    positiveEnergy_eq_plus_add_minus, hminus]
  ring

/-- On the - sector the sign-twisted signed energy equals the positive energy. -/
theorem neg_signedEnergy_eq_positiveEnergy_of_minusSector [Fintype ι]
    {mask : ι → Bool} {x : ι → ℝ}
    (hx : InMinusSector mask x) :
    -signedEnergy mask x = positiveEnergy x := by
  have hplus : plusEnergy mask x = 0 := by
    unfold plusEnergy
    rw [hx]
    simp [dot]
  rw [signedEnergy_eq_plus_sub_minus,
    positiveEnergy_eq_plus_add_minus, hplus]
  ring

theorem signedEnergy_nonneg_of_plusSector [Fintype ι]
    {mask : ι → Bool} {x : ι → ℝ}
    (hx : InPlusSector mask x) :
    0 ≤ signedEnergy mask x := by
  rw [signedEnergy_eq_positiveEnergy_of_plusSector hx]
  exact positiveEnergy_nonneg x

theorem signedEnergy_nonpos_of_minusSector [Fintype ι]
    {mask : ι → Bool} {x : ι → ℝ}
    (hx : InMinusSector mask x) :
    signedEnergy mask x ≤ 0 := by
  have h := positiveEnergy_nonneg x
  rw [← neg_signedEnergy_eq_positiveEnergy_of_minusSector hx] at h
  linarith

/-- A positive scalar preserves a strict negative orientation; it cannot
supply the missing sign reversal. -/
theorem positiveScalar_preserves_strict_negative
    {c q : ℝ} (hc : 0 < c) (hq : q < 0) :
    c * q < 0 :=
  mul_neg_of_pos_of_neg hc hq

/-- Two-coordinate hostile mask: coordinate zero is +, coordinate one is -. -/
def twoSectorMask : Fin 2 → Bool := ![true, false]

/-- A unit vector entirely in the negative sector. -/
def negativeSectorFixture : Fin 2 → ℝ := ![0, 1]

theorem negativeSectorFixture_positiveEnergy :
    positiveEnergy negativeSectorFixture = 1 := by
  norm_num [positiveEnergy, dot, negativeSectorFixture]

theorem negativeSectorFixture_signedEnergy :
    signedEnergy twoSectorMask negativeSectorFixture = -1 := by
  norm_num [signedEnergy, dot, fundamentalSymmetry, diagonal,
    twoSectorMask, negativeSectorFixture]

/-- Exact hostile fixture: positive total energy does not imply a nonnegative
signed consumer. -/
theorem positive_energy_does_not_force_signed_positive :
    0 < positiveEnergy negativeSectorFixture ∧
      signedEnergy twoSectorMask negativeSectorFixture < 0 := by
  rw [negativeSectorFixture_positiveEnergy,
    negativeSectorFixture_signedEnergy]
  norm_num

/-- Abstract proof-bearing sign-orientation certificate. The sign is forced to
be ±1 by `sign_sq`; no positivity conclusion is available until the sign is
known. -/
structure OrientationCertificate (X : Type*) where
  sign : ℝ
  sign_sq : sign ^ 2 = 1
  positiveSource : X → ℝ
  signedConsumer : X → ℝ
  positive_nonneg : ∀ x, 0 ≤ positiveSource x
  identity : ∀ x, sign * signedConsumer x = positiveSource x

namespace OrientationCertificate

theorem signed_nonneg_of_sign_eq_one {X : Type*}
    (certificate : OrientationCertificate X)
    (hsign : certificate.sign = 1) (x : X) :
    0 ≤ certificate.signedConsumer x := by
  have h := certificate.positive_nonneg x
  rw [← certificate.identity x, hsign, one_mul] at h
  exact h

theorem signed_nonpos_of_sign_eq_neg_one {X : Type*}
    (certificate : OrientationCertificate X)
    (hsign : certificate.sign = -1) (x : X) :
    certificate.signedConsumer x ≤ 0 := by
  have h := certificate.positive_nonneg x
  rw [← certificate.identity x, hsign, neg_one_mul] at h
  linarith

end OrientationCertificate

/-- The pure negative Hodge sector is a canonical orientation certificate
with sign -1. -/
noncomputable def negativeSectorCertificate [Fintype ι]
    (mask : ι → Bool) :
    OrientationCertificate {x : ι → ℝ // InMinusSector mask x} where
  sign := -1
  sign_sq := by norm_num
  positiveSource := fun x => positiveEnergy x.1
  signedConsumer := fun x => signedEnergy mask x.1
  positive_nonneg := fun x => positiveEnergy_nonneg x.1
  identity := by
    intro x
    have h := neg_signedEnergy_eq_positiveEnergy_of_minusSector x.2
    simpa using h

/-- Existing CommonJ sign conjugation is an exact operator-level example of
orientation reversal. It is not identified with the involutive fundamental
symmetry above: CommonJ itself squares to -I. -/
theorem commonJ_flip_reverses_generator :
    GRWTSK.Algebra.LinearAlgebra.CommonJ.flipMatrix *
      GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationMatrix (0 : ℝ) 1 *
      GRWTSK.Algebra.LinearAlgebra.CommonJ.flipMatrix =
        -GRWTSK.Algebra.LinearAlgebra.CommonJ.rotationMatrix 0 1 :=
  GRWTSK.Algebra.LinearAlgebra.CommonJ.flip_commonJ_reverse

end GRWTSK.Algebra.LinearAlgebra.SignedOrientationBridge
