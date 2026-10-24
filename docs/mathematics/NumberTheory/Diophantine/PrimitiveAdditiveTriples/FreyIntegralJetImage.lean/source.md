# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetImage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b327bf779267e76618c63f959a23b56617903033` · SHA-256 `6d010aa44526dbdfb4f7fd72ce8753eafed0a70a1bf7eafd3c9435c0bab84f9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The image of the SAME integral selected origin quotient inside its OLD
rational parameter algebra. The integer quotient is not declared flat or
identified with this torsion-free image. Determinant and coefficient-vector
clearing are kept separate. No global section-space or Hodge claim.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassImageFrame
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionJetDenominator

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetImage

open WeierstrassCurve
open GRWTSK.AlgebraicGeometry.EllipticCurve
open FreyGlobalMinimalDiscriminant FreyTwoBranchDecision FreyCollisionSecondJet
open FreyCollisionJetTower

abbrev Target (N : ℕ) := FreyJetQuotient.Parameter ℚ N
abbrev Source (t : PrimitiveAdditiveTriple) (N : ℕ) := SelectedJet t (RingHom.id ℤ) N

def parameter (N : ℕ) : Target N := FreyJetQuotient.parameter ℚ N

def branch (t : PrimitiveAdditiveTriple) (N : ℕ) : Target N :=
  WeierstrassMixedLift.lift
    (FreyJetQuotient.parameterScalar ℚ N ((integerModel t).a₂ : ℚ))
    (FreyJetQuotient.parameterScalar ℚ N (((integerModel t).a₄ : ℚ)⁻¹))
    (parameter N) (N+1)

theorem parameter_nilpotent (N : ℕ) : parameter N^(N+1)=0 :=
  FreyJetQuotient.parameter_pow N

theorem branch_square (t : PrimitiveAdditiveTriple) (N : ℕ) : parameter N^2 ∣ branch t N :=
  WeierstrassMixedLift.lift_square_dvd _ _ _ _

/-- The old solver and actual selected coefficients supply the exact curve relation. -/
theorem branch_relation (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    WeierstrassIntegralImage.Relation (integerModel t).a₂ (integerModel t).a₄
      (branch t N) (parameter N) := by
  let c := FreyJetQuotient.parameterScalar ℚ N
  have hb : ((integerModel t).a₄ : ℚ)≠0 := by exact_mod_cast selected_a4_ne_zero t hd
  have hi : c ((integerModel t).a₄ : ℚ)*c (((integerModel t).a₄ : ℚ)⁻¹)=1 := by
    rw [← map_mul,mul_inv_cancel₀ hb,map_one]
  have he := WeierstrassMixedLift.lift_equation
    (c ((integerModel t).a₂ : ℚ)) (c ((integerModel t).a₄ : ℚ))
    (c (((integerModel t).a₄ : ℚ)⁻¹)) (parameter N) hi (N+1) (parameter_nilpotent N)
  rw [Affine.equation_iff] at he
  simpa [WeierstrassIntegralImage.Relation,WeierstrassSecondJet.model,branch,c] using he

/-- Coefficient-level reconciliation to the inherited rational origin-jet map. -/
theorem branch_eq_old_x_image (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ)
    (hj : ((integerModel t).a₄ : ℚ)*(((integerModel t).a₄ : ℚ)⁻¹)=1) :
    branch t N=WeierstrassOriginJet.toParameter
      ((integerModel t).a₂ : ℚ) ((integerModel t).a₄ : ℚ)
      (((integerModel t).a₄ : ℚ)⁻¹) hj N
      (WeierstrassOriginJet.x ((integerModel t).a₂ : ℚ) ((integerModel t).a₄ : ℚ) N) := by
  rw [WeierstrassOriginJet.toParameter_x] <;> rfl

/-- Reuse ALL FIVE original coefficients through selectedEquation_eq before factoring. -/
def toParameter (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    Source t N →+* Target N := by
  unfold Source SelectedJet
  rw [selectedEquation_eq t hd (RingHom.id ℤ)]
  exact WeierstrassIntegralImage.fromIntegralJet (integerModel t).a₂ (integerModel t).a₄
    (branch t N) (parameter N) (branch_relation t hd N) N
    (parameter_nilpotent N) (branch_square t N)

/-- Definition names the actual integral image frame, not independent height data. -/
def imageLattice (t : PrimitiveAdditiveTriple) (N : ℕ) : Submodule ℤ (Target N) :=
  WeierstrassIntegralImage.lattice (branch t N) (parameter N) N

theorem image_iff (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ)
    (z : Target N) : (∃ q, toParameter t hd N q=z) ↔ z ∈ imageLattice t N := by
  unfold toParameter Source SelectedJet
  rw [selectedEquation_eq t hd (RingHom.id ℤ)]
  exact WeierstrassIntegralImage.integral_jet_image _ _ _ _ (branch_relation t hd N)
    N (parameter_nilpotent N) (branch_square t N) z

/-- Retain the entire old integral parameter lattice inside the image. -/
theorem standard_lattice_le (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    Submodule.span ℤ (Set.range (fun k : Fin (N+1) => parameter N^k.val)) ≤
      imageLattice t N := by
  apply Submodule.span_le.mpr
  rintro z ⟨k,rfl⟩
  exact WeierstrassIntegralImage.parameter_pow_mem _ _ _ _ (branch_relation t hd N)
    N (parameter_nilpotent N) (branch_square t N) k.val

/-- The same integer-origin coordinate maps to zero at order one. This is not
an injectivity theorem for the integral source quotient. -/
theorem branch_order_one_zero (t : PrimitiveAdditiveTriple) : branch t 1=0 := by
  have h := branch_square t 1
  rw [parameter_nilpotent 1,zero_dvd_iff] at h
  exact h

/-- Every matrix column represents exactly the corresponding curve monomial. -/
theorem frame_represents (t : PrimitiveAdditiveTriple) (hd : Descends t) (N k : ℕ) :
    (WeierstrassImageFrame.framePolynomial (integerModel t).a₂ (integerModel t).a₄ N k).eval₂
      (FreyJetQuotient.parameterScalar ℚ N) (parameter N)=
      WeierstrassIntegralImage.term (branch t N) (parameter N) k := by
  exact WeierstrassImageFrame.frame_represents _ _ (selected_a4_ne_zero t hd) N k

/-- Nonzero determinant certifies the actual finite frame; its index interpretation
requires the integral image theorem, not just equality of rational dimensions. -/
theorem same_source_determinant (t : PrimitiveAdditiveTriple) (hd : Descends t) (N : ℕ) :
    (WeierstrassImageFrame.frameMatrix (integerModel t).a₂ (integerModel t).a₄ N).det=
      (1/((integerModel t).a₄ : ℚ))^((N/2)*((N+1)/2)) := by
  rw [WeierstrassImageFrame.frame_determinant _ _ (selected_a4_ne_zero t hd),
    WeierstrassImageFrame.weightSum_formula]

theorem same_source_determinant_nonzero (t : PrimitiveAdditiveTriple)
    (hd : Descends t) (N : ℕ) :
    (WeierstrassImageFrame.frameMatrix (integerModel t).a₂ (integerModel t).a₄ N).det≠0 :=
  WeierstrassImageFrame.frame_determinant_ne_zero _ _ (selected_a4_ne_zero t hd) N

/-- A scalar denominator and a full image-frame determinant differ on ONE source. -/
theorem fixed_source_order_four :
    (WeierstrassImageFrame.frameMatrix
      (integerModel (FreyCollisionJetDenominator.family 3 (by decide))).a₂
      (integerModel (FreyCollisionJetDenominator.family 3 (by decide))).a₄ 4).det=1/81 ∧
    GRWTSK.NumberTheory.Height.RationalVectorAffineHeight.denominator
      (FreyCollisionJetDenominator.jetCoefficients
        (FreyCollisionJetDenominator.family 3 (by decide)) 4)=27 := by
  constructor
  · rw [same_source_determinant _ (FreyCollisionJetDenominator.family_descends 3 (by decide)),
      (FreyCollisionJetDenominator.family_coefficients 3 (by decide)).2]
    norm_num
  · rw [FreyCollisionJetDenominator.family_common_denominator 3 (by decide) 4 (by decide)]
    norm_num

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyIntegralJetImage
```
