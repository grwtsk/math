/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors; formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMRiemannSemicharacter
import Mathlib.Tactic

/-!
# True oriented lattice-area flux of original CM residue triangles

The previous source U_ij=(-1)^B_ξ(s_i,s_j) has a triangle product.
This module shows that its exponent is not an arbitrary sum of phases:
  B(s_i,s_j)+B(s_j,s_k)+B(s_k,s_i)
    = B(s_j-s_i,s_k-s_i).
The RHS is the original denominator-cleared alternating CM trace form on
actual relative lattice edges. It is invariant under all common integer
lattice translations and changes sign when triangle orientation is reversed.
Consequently any ODD source area, not just area=1, has holonomy -1 and
cannot be changed into flat links by an arbitrary local U(1) rephasing.

No period identification with the specified original CM variety, curvature
of an actual Chern connection, or physical all-rate arithmetic bound follows.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannTriangleFluxArea

open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMNumberFieldIndex
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMArchimedeanPositivity
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMLatticePolarization
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannResidueHolonomy
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannSemicharacter
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks

section FiniteAlternatingMatrix
variable {ι : Type*} [Fintype ι] [LinearOrder ι] [DecidableEq ι]
variable (M : ι → ι → ℤ)

theorem matrixPairing_add_left (a b c : ι → ℤ) :
    matrixPairing M (a+b) c = matrixPairing M a c + matrixPairing M b c := by
  unfold matrixPairing
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  simp [Pi.add_apply, add_mul]
  ring

theorem matrixPairing_add_right (a b c : ι → ℤ) :
    matrixPairing M a (b+c) = matrixPairing M a b + matrixPairing M a c := by
  unfold matrixPairing
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j _
  simp [Pi.add_apply, mul_add]
  ring

theorem matrixPairing_sub_left (a b c : ι → ℤ) :
    matrixPairing M (a-b) c = matrixPairing M a c - matrixPairing M b c := by
  simp [matrixPairing, Pi.sub_apply, sub_mul, Finset.sum_sub_distrib]

theorem matrixPairing_sub_right (a b c : ι → ℤ) :
    matrixPairing M a (b-c) = matrixPairing M a b - matrixPairing M a c := by
  simp [matrixPairing, Pi.sub_apply, mul_sub, Finset.sum_sub_distrib]

theorem matrixPairing_skew (hskew : ∀ i j : ι, M j i = -M i j)
    (hdiag : ∀ i : ι, M i i = 0) (a b : ι → ℤ) :
    matrixPairing M b a = -matrixPairing M a b := by
  rw [matrixPairing_eq_upper_sub M hskew hdiag b a,
    matrixPairing_eq_upper_sub M hskew hdiag a b]
  ring

theorem matrixPairing_self (hskew : ∀ i j : ι, M j i = -M i j)
    (hdiag : ∀ i : ι, M i i = 0) (a : ι → ℤ) :
    matrixPairing M a a = 0 := by
  rw [matrixPairing_eq_upper_sub M hskew hdiag a a]
  ring

/-- Exact oriented integral symplectic area of the translated triangle. -/
theorem triangleFlux_eq_relative_area
    (hskew : ∀ i j : ι, M j i = -M i j)
    (hdiag : ∀ i : ι, M i i = 0) (a b c : ι → ℤ) :
    matrixPairing M a b + matrixPairing M b c + matrixPairing M c a =
      matrixPairing M (b-a) (c-a) := by
  rw [matrixPairing_sub_left, matrixPairing_sub_right,
    matrixPairing_sub_right]
  have hba := matrixPairing_skew M hskew hdiag a b
  have hca := matrixPairing_skew M hskew hdiag a c
  have haa := matrixPairing_self M hskew hdiag a
  rw [hba, haa]
  rw [hca]
  ring

theorem triangleFlux_translation_invariant
    (hskew : ∀ i j : ι, M j i = -M i j)
    (hdiag : ∀ i : ι, M i i = 0)
    (a b c t : ι → ℤ) :
    matrixPairing M (a+t) (b+t) +
      matrixPairing M (b+t) (c+t) +
      matrixPairing M (c+t) (a+t) =
    matrixPairing M a b + matrixPairing M b c + matrixPairing M c a := by
  rw [triangleFlux_eq_relative_area M hskew hdiag,
    triangleFlux_eq_relative_area M hskew hdiag]
  have hb : (b+t)-(a+t) = b-a := by
    funext i
    simp [Pi.add_apply, Pi.sub_apply]
    ring
  have hc : (c+t)-(a+t) = c-a := by
    funext i
    simp [Pi.add_apply, Pi.sub_apply]
    ring
  rw [hb, hc]

end FiniteAlternatingMatrix

section OriginalCM
variable (E : Type*) [Field E] [NumberField E] [IsCMField E] [IsGalois ℚ E]
variable {v : OddSignRow E}
local notation "n" => Module.finrank ℚ E

/-- The original CM residue holonomy is an oriented trace-pairing area. -/
theorem sourceTriangleHolonomy_eq_area (X : SignControlledXi E v)
    (d : ℕ) (sites : ResidueSites E d) (i j k : Sector d) :
    triangleHolonomy d (sourceRiemannLinks E X d sites) i j k =
      (-1 : ℂ) ^
        (integralPairing E X (sites j - sites i) (sites k - sites i)) := by
  rw [sourceRiemannLinks_triangle]
  congr 1
  exact (triangleFlux_eq_relative_area
    (integralPairingMatrix E X)
    (sourceMatrix_skew E X) (sourceMatrix_diagonal E X)
    (sites i) (sites j) (sites k)).symm

/-- Any odd oriented source area forces the true nonflat gauge-invariant
quantized holonomy; the earlier source accepted only exponent exactly one. -/
theorem sourceTriangleHolonomy_odd_area (X : SignControlledXi E v)
    (d : ℕ) (sites : ResidueSites E d) (i j k : Sector d)
    (hodd : Odd (integralPairing E X (sites j - sites i) (sites k - sites i))) :
    triangleHolonomy d (sourceRiemannLinks E X d sites) i j k = -1 := by
  rw [sourceTriangleHolonomy_eq_area]
  exact hodd.neg_one_zpow

/-- Every original CM lattice translate of the channels has the identical
oriented flux, not merely the same unsigned norm. -/
theorem sourceTriangleHolonomy_translation (X : SignControlledXi E v)
    (d : ℕ) (sites : ResidueSites E d) (t : Fin n → ℤ)
    (i j k : Sector d) :
    triangleHolonomy d
      (sourceRiemannLinks E X d (fun s => sites s + t)) i j k =
    triangleHolonomy d (sourceRiemannLinks E X d sites) i j k := by
  rw [sourceTriangleHolonomy_eq_area,
      sourceTriangleHolonomy_eq_area]
  have hb : (sites j + t) - (sites i + t) = sites j - sites i := by
    funext h
    simp [Pi.add_apply, Pi.sub_apply]
    ring
  have hc : (sites k + t) - (sites i + t) = sites k - sites i := by
    funext h
    simp [Pi.add_apply, Pi.sub_apply]
    ring
  rw [hb, hc]

/-- Odd source area is immune to arbitrary local U(1) rephasings and cannot
be identified with the flat link field by gauge choice alone. -/
theorem sourceOddArea_not_gauge_flat (X : SignControlledXi E v)
    (d : ℕ) (sites : ResidueSites E d)
    (i j k : Sector d)
    (hodd : Odd (integralPairing E X (sites j - sites i) (sites k - sites i)))
    (g : Gauge d) :
    gaugeLinks d g (sourceRiemannLinks E X d sites) ≠ flatLinks d := by
  intro hflat
  have h := triangleHolonomy_gauge d g (sourceRiemannLinks E X d sites) i j k
  rw [hflat, triangleHolonomy_flat] at h
  have ha := sourceTriangleHolonomy_odd_area E X d sites i j k hodd
  rw [ha] at h
  norm_num at h

end OriginalCM

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannTriangleFluxArea
