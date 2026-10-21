/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Formalization assistance: OpenAI.

Three ORIGINAL source labels on the previous selected minimal equation.
Primitive homogeneous representatives at two are constructed before reducing.
The two colliding labels are retained; no recovery, etaleness, Neron-model,
proper-model universal property, jet-lattice or height estimate is inferred.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.ProjectiveHalfScaleMarks
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySelectedSplitReduction

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySelectedProjectiveMarks

open WeierstrassCurve
open GRWTSK.AlgebraicGeometry.EllipticCurve.ProjectiveHalfScaleMarks
open GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale
open FreyOddReduction FreyTwoBranchDecision FreyGlobalMinimalDiscriminant

local instance : Fact (Nat.Prime 2) := ⟨Nat.prime_two⟩

/-- Source order is T0, Ta, Tb; there is no permutation of the primitive triple. -/
def sourceX (t : PrimitiveAdditiveTriple) : Fin 3 → ℤ := ![0, t.a, -(t.b : ℤ)]

def anchor (t : PrimitiveAdditiveTriple) : ℤ :=
  if t.a%4=1 ∧ 16 ∣ t.c then t.a else 0

def displacement (t : PrimitiveAdditiveTriple) (i : Fin 3) : ℤ := sourceX t i-anchor t

/-- Representatives in the actual selected projective equation, not a new curve. -/
def coordinates (t : PrimitiveAdditiveTriple) (i : Fin 3) : Fin 3 → ℤ :=
  if Descends t then mark (displacement t i) else ![sourceX t i, 0, 1]

def reduced (t : PrimitiveAdditiveTriple) (i : Fin 3) : Fin 3 → ZMod 2 :=
  binary (coordinates t i)

theorem source_equation (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    t.freyCurve.toAffine.Equation (sourceX t i : ℚ) 0 := by
  fin_cases i
  · exact t.freyCurve_equation_T0
  · simpa [sourceX] using t.freyCurve_equation_Ta
  · simpa [sourceX] using t.freyCurve_equation_Tb

/-- Reuse the actual selectedChange, including its old signed chamber guards. -/
theorem selected_change (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    selectedChange t = halfChange (anchor t : ℚ) := by
  unfold selectedChange anchor
  split_ifs with hfirst heven
  · rfl
  · rfl
  · exact (hd.elim hfirst heven).elim

/-- Sixteen divides the even factor, not necessarily the last source coordinate. -/
theorem even_distribution (t : PrimitiveAdditiveTriple) (h16 : 16 ∣ t.a*t.b) :
    (16 ∣ t.a ∧ ¬ 2 ∣ t.b) ∨ (¬ 2 ∣ t.a ∧ 16 ∣ t.b) := by
  by_cases ha : 2 ∣ t.a
  · have hb : ¬ 2 ∣ t.b := by
      intro hb
      have h := Nat.dvd_gcd ha hb
      rw [t.coprime_ab.gcd_eq_one] at h
      norm_num at h
    have hc : Nat.Coprime 16 t.b := by
      rw [show (16 : ℕ)=2^4 by norm_num]
      exact (Nat.prime_two.coprime_iff_not_dvd.mpr hb).pow_left 4
    exact Or.inl ⟨hc.dvd_of_dvd_mul_right h16, hb⟩
  · have hc : Nat.Coprime 16 t.a := by
      rw [show (16 : ℕ)=2^4 by norm_num]
      exact (Nat.prime_two.coprime_iff_not_dvd.mpr ha).pow_left 4
    exact Or.inr ⟨ha, hc.dvd_of_dvd_mul_left h16⟩

/-- The precise domain on which the generic normalization has a unit coordinate. -/
theorem displacement_domain (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (i : Fin 3) : (16 : ℤ) ∣ displacement t i ∨ ¬ (2 : ℤ) ∣ displacement t i := by
  by_cases hf : t.a%4=1 ∧ 16 ∣ t.c
  · have ha : ¬ (2 : ℤ) ∣ (t.a : ℤ) := by omega
    have hc : (16 : ℤ) ∣ (t.c : ℤ) := by exact_mod_cast hf.2
    have hs : (t.a : ℤ)+(t.b : ℤ)=(t.c : ℤ) := by exact_mod_cast t.sum_eq
    fin_cases i
    · right
      simpa [displacement, sourceX, anchor, hf] using ha
    · left
      simp [displacement, sourceX, anchor, hf]
    · left
      have he : displacement t 2 = -(t.c : ℤ) := by
        simp only [displacement,sourceX,anchor,if_pos hf,Matrix.cons_val_two]
        omega
      rw [he]
      exact dvd_neg.mpr hc
  · have he := hd.resolve_left hf
    rcases even_distribution t he.2 with ⟨ha,hb⟩ | ⟨ha,hb⟩
    · have ha' : (16 : ℤ) ∣ (t.a : ℤ) := by exact_mod_cast ha
      have hb' : ¬ (2 : ℤ) ∣ (t.b : ℤ) := by exact_mod_cast hb
      fin_cases i
      · left; simp [displacement,sourceX,anchor,hf]
      · left; simpa [displacement,sourceX,anchor,hf] using ha'
      · right; simpa [displacement,sourceX,anchor,hf] using hb'
    · have ha' : ¬ (2 : ℤ) ∣ (t.a : ℤ) := by exact_mod_cast ha
      have hb' : (16 : ℤ) ∣ (t.b : ℤ) := by exact_mod_cast hb
      fin_cases i
      · left; simp [displacement,sourceX,anchor,hf]
      · right; simpa [displacement,sourceX,anchor,hf] using ha'
      · left; simpa [displacement,sourceX,anchor,hf] using dvd_neg.mpr hb'

/-- All three rational representatives lie on the SAME old selectedCurve. -/
theorem rational_equation (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (selectedCurve t).toProjective.Equation (rational (coordinates t i)) := by
  by_cases hd : Descends t
  · rw [coordinates,if_pos hd]
    apply mark_equation_of_cleared
    unfold selectedCurve
    rw [selected_change t hd]
    exact half_cleared_equation t.freyCurve (anchor t) (sourceX t i)
      (source_equation t i)
  · have hf : ¬ (t.a%4=1 ∧ 16 ∣ t.c) := fun h => hd (Or.inl h)
    have he : ¬ (((t.b : ℤ)-t.a)%4=1 ∧ 16 ∣ t.a*t.b) := fun h => hd (Or.inr h)
    simpa [coordinates,hd,selectedCurve,selectedChange,hf,he,rational,
      Projective.equation_some] using source_equation t i

/-- Equation descent through the injective Z -> Q map, not mere agreement of invariants. -/
theorem integer_equation (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (integerModel t).toProjective.Equation (coordinates t i) := by
  have h := rational_equation t i
  rw [← integerModel_baseChange t,Projective.equation_iff] at h
  rw [Projective.equation_iff]
  simp only [WeierstrassCurve.baseChange, WeierstrassCurve.map, rational] at h
  exact_mod_cast h

/-- Exact inverse affine coordinates, retained only over Q. -/
theorem affine_ratios (t : PrimitiveAdditiveTriple) (hd : Descends t) (i : Fin 3) :
    rational (coordinates t i) 0 / rational (coordinates t i) 2 =
      (displacement t i : ℚ)/4 ∧
    rational (coordinates t i) 1 / rational (coordinates t i) 2 =
      -(displacement t i : ℚ)/8 := by
  simpa only [coordinates,if_pos hd] using mark_ratios (displacement t i)

/-- One genuine local unit coordinate; a rational nonzero vector alone would not suffice. -/
theorem local_unit_coordinate (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    ∃ j : Fin 3, IsUnit (algebraMap ℤ (LocalRing 2) (coordinates t i j)) := by
  by_cases hd : Descends t
  · rcases displacement_domain t hd i with hh | hh
    · refine ⟨2,?_⟩
      simp [coordinates,hd,mark,hh,affineIntegral]
    · have hn : ¬ (16 : ℤ) ∣ displacement t i :=
        fun h => hh (dvd_trans (by norm_num) h)
      refine ⟨1,?_⟩
      rw [int_unit_iff]
      simpa [coordinates,hd,mark,hn,cleared] using hh
  · refine ⟨2,?_⟩
    simp [coordinates,hd]

theorem reduced_ne_zero (t : PrimitiveAdditiveTriple) (i : Fin 3) : reduced t i ≠ 0 := by
  by_cases hd : Descends t
  · simpa only [reduced,coordinates,if_pos hd] using
      mark_binary_ne_zero (displacement t i) (displacement_domain t hd i)
  · intro h
    have he := congrFun h 2
    norm_num [reduced,coordinates,hd,binary] at he

/-- Specialize only an already primitive integral representative. -/
theorem reduced_equation (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    (FreySelectedSplitReduction.selectedResidueModel t 2).toProjective.Equation
      (reduced t i) := by
  have h := integer_equation t i
  rw [Projective.equation_iff] at h ⊢
  have he := congrArg (fun z : ℤ => (z : ZMod 2)) h
  simpa [reduced,binary,FreySelectedSplitReduction.selectedResidueModel,
    WeierstrassCurve.map] using he

/-- The two possible residues on the descending domain remain differently named. -/
theorem reduced_two_values (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (i : Fin 3) : reduced t i = ![0,1,0] ∨ reduced t i = ![0,0,1] := by
  rcases displacement_domain t hd i with hh | hh
  · right
    simpa only [reduced,coordinates,if_pos hd] using
      mark_binary_of_divisible (displacement t i) hh
  · left
    simpa only [reduced,coordinates,if_pos hd] using
      mark_binary_of_odd (displacement t i) hh

/-- Three retained labels in two residue positions cannot be an injective observation. -/
theorem reduction_collision (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    ∃ i j : Fin 3, i ≠ j ∧ reduced t i = reduced t j := by
  rcases reduced_two_values t hd 0 with h0 | h0 <;>
    rcases reduced_two_values t hd 1 with h1 | h1
  · exact ⟨0,1,by decide,h0.trans h1.symm⟩
  · rcases reduced_two_values t hd 2 with h2 | h2
    · exact ⟨0,2,by decide,h0.trans h2.symm⟩
    · exact ⟨1,2,by decide,h1.trans h2.symm⟩
  · rcases reduced_two_values t hd 2 with h2 | h2
    · exact ⟨1,2,by decide,h1.trans h2.symm⟩
    · exact ⟨0,2,by decide,h0.trans h2.symm⟩
  · exact ⟨0,1,by decide,h0.trans h1.symm⟩

/-- Source-labelled collision in the first chamber: Ta and Tb, NOT T0. -/
theorem first_residues (t : PrimitiveAdditiveTriple) (hf : t.a%4=1 ∧ 16 ∣ t.c) :
    reduced t 0 = ![0,1,0] ∧ reduced t 1 = ![0,0,1] ∧
      reduced t 2 = ![0,0,1] := by
  have hd : Descends t := Or.inl hf
  have ha : ¬ (2 : ℤ) ∣ -(t.a : ℤ) := by omega
  have hc : (16 : ℤ) ∣ -(t.c : ℤ) := by
    apply dvd_neg.mpr
    exact_mod_cast hf.2
  have hs : (t.a : ℤ)+(t.b : ℤ)=(t.c : ℤ) := by exact_mod_cast t.sum_eq
  have h0 : displacement t 0 = -(t.a : ℤ) := by simp [displacement,sourceX,anchor,hf]
  have h1 : displacement t 1 = 0 := by simp [displacement,sourceX,anchor,hf]
  have h2 : displacement t 2 = -(t.c : ℤ) := by
    simp only [displacement,sourceX,anchor,if_pos hf,Matrix.cons_val_two]
    omega
  simp only [reduced,coordinates,if_pos hd,h0,h1,h2]
  exact ⟨mark_binary_of_odd _ ha,mark_binary_of_divisible 0 (dvd_zero 16),
    mark_binary_of_divisible _ hc⟩

/-- Second-chamber labels: the ODD summand goes to infinity, while T0
and the even summand collide at the affine origin. -/
theorem even_residues (t : PrimitiveAdditiveTriple)
    (hf : ¬ (t.a%4=1 ∧ 16 ∣ t.c))
    (he : ((t.b : ℤ)-t.a)%4=1 ∧ 16 ∣ t.a*t.b) :
    reduced t 0 = ![0,0,1] ∧
      (if 2 ∣ t.a then
        reduced t 1 = ![0,0,1] ∧ reduced t 2 = ![0,1,0]
       else reduced t 1 = ![0,1,0] ∧ reduced t 2 = ![0,0,1]) := by
  have hd : Descends t := Or.inr he
  have h0 : displacement t 0=0 := by simp [displacement,sourceX,anchor,hf]
  have h1 : displacement t 1=(t.a : ℤ) := by simp [displacement,sourceX,anchor,hf]
  have h2 : displacement t 2= -(t.b : ℤ) := by simp [displacement,sourceX,anchor,hf]
  simp only [reduced,coordinates,if_pos hd,h0,h1,h2]
  refine ⟨mark_binary_of_divisible 0 (dvd_zero 16),?_⟩
  rcases even_distribution t he.2 with ⟨ha,hb⟩ | ⟨ha,hb⟩
  · have ha2 : 2 ∣ t.a := dvd_trans (by decide : 2 ∣ 16) ha
    have ha' : (16 : ℤ) ∣ (t.a : ℤ) := by exact_mod_cast ha
    have hb' : ¬ (2 : ℤ) ∣ -(t.b : ℤ) := by
      rw [dvd_neg]
      exact_mod_cast hb
    rw [if_pos ha2]
    exact ⟨mark_binary_of_divisible _ ha',mark_binary_of_odd _ hb'⟩
  · have ha' : ¬ (2 : ℤ) ∣ (t.a : ℤ) := by exact_mod_cast ha
    have hb' : (16 : ℤ) ∣ -(t.b : ℤ) := by
      apply dvd_neg.mpr
      exact_mod_cast hb
    rw [if_neg ha]
    exact ⟨mark_binary_of_odd _ ha',mark_binary_of_divisible _ hb'⟩

/-- The same Y-unit chart gives a constant first coordinate but retains the
source-dependent second coordinate. This is not a height bound or full jet map. -/
theorem odd_mark_infinity_chart (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (i : Fin 3) (ho : ¬ (2 : ℤ) ∣ displacement t i) :
    -(rational (coordinates t i) 0)/rational (coordinates t i) 1 = 2 ∧
    -(rational (coordinates t i) 2)/rational (coordinates t i) 1 =
      8/(displacement t i : ℚ) := by
  have hn : ¬ (16 : ℤ) ∣ displacement t i :=
    fun h => ho (dvd_trans (by norm_num) h)
  have h0 : displacement t i ≠ 0 := by
    intro h
    apply ho
    simp only [h]
    exact dvd_zero 2
  simpa only [coordinates,if_pos hd,mark,if_neg hn] using
    infinity_chart (displacement t i) h0

/-- Integral representatives do not assert that the collision is in the smooth locus. -/
theorem collision_point_nonsingular_iff (t : PrimitiveAdditiveTriple) :
    (FreySelectedSplitReduction.selectedResidueModel t 2).toProjective.Nonsingular ![0,0,1] ↔
      ((integerModel t).a₄ : ZMod 2) ≠ 0 := by
  have h3 : (integerModel t).a₃=0 := by
    unfold integerModel
    split_ifs <;> rfl
  have h6 : (integerModel t).a₆=0 := by
    unfold integerModel
    split_ifs <;> rfl
  apply affine_origin_nonsingular_iff <;>
    simp [FreySelectedSplitReduction.selectedResidueModel, h3, h6]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySelectedProjectiveMarks
