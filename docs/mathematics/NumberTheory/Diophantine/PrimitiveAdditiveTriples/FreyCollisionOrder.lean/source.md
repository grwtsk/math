# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionOrder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b75164a279c8b684bd5cb0f6bb7133bbb3d43c27` · SHA-256 `024a666794eadca11e1ae77997b1eb8f98e98989b189d674cfe76d751fd93da4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

Retain the two colliding ORIGINAL projective labels in a rank-two coefficient
algebra on the SAME selected equation. The specialization is nonreduced;
value-only recovery is not restored by calling a repeated value a jet.
No intrinsic principal-parts, global section recovery, conductor, or uniform
height theorem is asserted. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySelectedProjectiveMarks

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionOrder

open WeierstrassCurve
open GRWTSK.Algebra.RingTheory.QuadraticCollisionOrder
open GRWTSK.AlgebraicGeometry.EllipticCurve.ProjectiveHalfScaleMarks
open FreyTwoBranchDecision FreyGlobalMinimalDiscriminant FreySelectedProjectiveMarks

/-- Not two arbitrary fitted points: both coordinate equalities reference the
OLD source-labelled representatives on the OLD selected integral equation. -/
structure PairFrame (t : PrimitiveAdditiveTriple) where
  leftLabel : Fin 3
  rightLabel : Fin 3
  labels_ne : leftLabel ≠ rightLabel
  gap : ℤ
  gap_even : (2 : ℤ) ∣ gap
  gap_ne : gap ≠ 0
  left_coordinates : coordinates t leftLabel = ![0,0,1]
  right_coordinates : coordinates t rightLabel = ![-2*gap,gap,1]

/-- Use the old normalization BEFORE taking a residue. -/
theorem coordinates_multiple (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (i : Fin 3) (q : ℤ) (hq : displacement t i=16*q) :
    coordinates t i = ![4*q,-2*q,1] := by
  have hdiv : (16 : ℤ) ∣ displacement t i := ⟨q,hq⟩
  have hquot : displacement t i/16=q := by omega
  simp only [coordinates,if_pos hd,mark,if_pos hdiv,affineIntegral,hquot]

/-- First chamber: Ta and Tb, with POSITIVE Y-gap c/8. -/
def firstPair (t : PrimitiveAdditiveTriple) (hf : t.a%4=1 ∧ 16 ∣ t.c) : PairFrame t := by
  let h := firstWitness t hf
  have hd : Descends t := Or.inl hf
  have hn : 0 < h.n := h.n_pos
  have hs : (t.a : ℤ)+(t.b : ℤ)=(t.c : ℤ) := by exact_mod_cast t.sum_eq
  have hc : (t.c : ℤ)=16*(h.n : ℤ) := by exact_mod_cast h.c_eq
  have h1 : displacement t 1=16*(0 : ℤ) := by simp [displacement,sourceX,anchor,hf]
  have h2 : displacement t 2=16*(-(h.n : ℤ)) := by
    simp only [displacement,sourceX,anchor,if_pos hf,Matrix.cons_val_two]
    omega
  refine ⟨1,2,by decide,2*(h.n : ℤ),⟨h.n,rfl⟩,?_,?_,?_⟩
  · have hn' : (0 : ℤ)<h.n := by exact_mod_cast hn
    omega
  · simpa using coordinates_multiple t hd 1 0 h1
  · convert coordinates_multiple t hd 2 (-(h.n : ℤ)) h2 using 1 <;>
      ext i <;> fin_cases i <;> simp <;> ring

/-- Second chamber, a even: T0 and Ta, with NEGATIVE Y-gap -a/8. -/
def evenAPair (t : PrimitiveAdditiveTriple)
    (hf : ¬ (t.a%4=1 ∧ 16 ∣ t.c))
    (he : ((t.b : ℤ)-t.a)%4=1 ∧ 16 ∣ t.a*t.b) (ha : 16 ∣ t.a) : PairFrame t := by
  let n := t.a/16
  have han : t.a=16*n := by
    have hm := Nat.mod_eq_zero_of_dvd ha
    dsimp [n]
    omega
  have hn : 0<n := by have hh := t.a_pos; omega
  have haq : (t.a : ℤ)=16*(n : ℤ) := by exact_mod_cast han
  have hd : Descends t := Or.inr he
  have h0 : displacement t 0=16*(0 : ℤ) := by simp [displacement,sourceX,anchor,hf]
  have h1 : displacement t 1=16*(n : ℤ) := by
    simpa [displacement,sourceX,anchor,hf] using haq
  refine ⟨0,1,by decide,-2*(n : ℤ),⟨-(n : ℤ),by ring⟩,?_,?_,?_⟩
  · have hn' : (0 : ℤ)<n := by exact_mod_cast hn
    omega
  · simpa using coordinates_multiple t hd 0 0 h0
  · convert coordinates_multiple t hd 1 (n : ℤ) h1 using 1 <;>
      ext i <;> fin_cases i <;> simp <;> ring

/-- Second chamber, b even: T0 and Tb, with POSITIVE Y-gap b/8. -/
def evenBPair (t : PrimitiveAdditiveTriple)
    (hf : ¬ (t.a%4=1 ∧ 16 ∣ t.c))
    (he : ((t.b : ℤ)-t.a)%4=1 ∧ 16 ∣ t.a*t.b) (hb : 16 ∣ t.b) : PairFrame t := by
  let n := t.b/16
  have hbn : t.b=16*n := by
    have hm := Nat.mod_eq_zero_of_dvd hb
    dsimp [n]
    omega
  have hn : 0<n := by have hh := t.b_pos; omega
  have hbq : (t.b : ℤ)=16*(n : ℤ) := by exact_mod_cast hbn
  have hd : Descends t := Or.inr he
  have h0 : displacement t 0=16*(0 : ℤ) := by simp [displacement,sourceX,anchor,hf]
  have h2 : displacement t 2=16*(-(n : ℤ)) := by
    simp only [displacement,sourceX,anchor,if_neg hf,Matrix.cons_val_two,sub_zero]
    omega
  refine ⟨0,2,by decide,2*(n : ℤ),⟨n,rfl⟩,?_,?_,?_⟩
  · have hn' : (0 : ℤ)<n := by exact_mod_cast hn
    omega
  · simpa using coordinates_multiple t hd 0 0 h0
  · convert coordinates_multiple t hd 2 (-(n : ℤ)) h2 using 1 <;>
      ext i <;> fin_cases i <;> simp <;> ring

/-- The selection is determined by OLD original-source guards, never by fitting a gap. -/
def selectedPair (t : PrimitiveAdditiveTriple) (hd : Descends t) : PairFrame t := by
  by_cases hf : t.a%4=1 ∧ 16 ∣ t.c
  · exact firstPair t hf
  · have he := hd.resolve_left hf
    by_cases ha : 16 ∣ t.a
    · exact evenAPair t hf he ha
    · have hb : 16 ∣ t.b := by
        rcases even_distribution t he.2 with h | h
        · exact (ha h.1).elim
        · exact h.2
      exact evenBPair t hf he hb

theorem selected_coefficients (t : PrimitiveAdditiveTriple) (hd : Descends t) :
    (integerModel t).a₁=1 ∧ (integerModel t).a₃=0 ∧ (integerModel t).a₆=0 := by
  unfold integerModel
  split_ifs with hf he
  · exact ⟨rfl,rfl,rfl⟩
  · exact ⟨rfl,rfl,rfl⟩
  · exact (hd.elim hf he).elim

/-- Derive the gap relation from the OLD equation of the second labelled point. -/
theorem gap_relation (t : PrimitiveAdditiveTriple) (hd : Descends t) (P : PairFrame t) :
    8*P.gap^2-(1+4*(integerModel t).a₂)*P.gap+2*(integerModel t).a₄=0 := by
  obtain ⟨h1,h3,h6⟩ := selected_coefficients t hd
  have he := integer_equation t P.rightLabel
  rw [P.right_coordinates,Projective.equation_iff] at he
  simp only [Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,h1,h3,h6] at he
  have hp : P.gap*(8*P.gap^2-(1+4*(integerModel t).a₂)*P.gap+
      2*(integerModel t).a₄)=0 := by linear_combination he
  exact (mul_eq_zero.mp hp).resolve_left P.gap_ne

/-- A literal coordinate-ring relation; the residual cubic factor is not discarded. -/
theorem line_factorization (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (P : PairFrame t) (z : ℤ) :
    (integerModel t).toAffine.polynomial.evalEval (-2*z) z =
      z*(z-P.gap)*(8*z+8*P.gap-(1+4*(integerModel t).a₂)) := by
  obtain ⟨h1,h3,h6⟩ := selected_coefficients t hd
  have hg := gap_relation t hd P
  rw [Affine.evalEval_polynomial,h1,h3,h6]
  linear_combination z*hg

/-- Actual algebra-valued point on the SAME selected integral curve.
This supplies a finite rank-two algebra, not yet an intrinsic jet equivalence. -/
theorem equation_over_order (t : PrimitiveAdditiveTriple) (hd : Descends t)
    (P : PairFrame t) :
    ((integerModel t).map (algebraMap ℤ (Carrier ℤ P.gap))).toAffine.Equation
      (-2*generator P.gap) (generator P.gap) := by
  obtain ⟨h1,h3,h6⟩ := selected_coefficients t hd
  have hg := gap_relation t hd P
  rw [Affine.equation_iff]
  simp only [WeierstrassCurve.map_a₁,WeierstrassCurve.map_a₂,WeierstrassCurve.map_a₃,
    WeierstrassCurve.map_a₄,WeierstrassCurve.map_a₆,h1,h3,h6,map_one,map_zero,
    one_mul,zero_mul,add_zero]
  apply QuadraticAlgebra.ext
  · simp [generator,pow_succ,pow_two]
  · simp [generator,pow_succ,pow_two]
    linear_combination hg

/-- Evaluation agrees with the two previous marks in their Z=1 chart. -/
theorem evaluations_recover_marks (t : PrimitiveAdditiveTriple) (P : PairFrame t) :
    values P.gap (-2*generator P.gap)=(coordinates t P.leftLabel 0,coordinates t P.rightLabel 0) ∧
    values P.gap (generator P.gap)=(coordinates t P.leftLabel 1,coordinates t P.rightLabel 1) := by
  rw [P.left_coordinates,P.right_coordinates]
  constructor <;> ext <;> simp [values,generator] <;> ring

/-- Multiplicity survives reduction; the generic evaluation injectivity does not. -/
def specialFiber (t : PrimitiveAdditiveTriple) (P : PairFrame t) :
    (Carrier ℤ P.gap ⧸ RingHom.ker (binaryReduction P.gap P.gap_even)) ≃+*
      Carrier (ZMod 2) 0 := binaryFiberEquiv P.gap P.gap_even

theorem collision_clearing (t : PrimitiveAdditiveTriple) (P : PairFrame t) (d : ℤ) :
    (∀ v : ℤ × ℤ, ∃ z : Carrier ℤ P.gap,
      values P.gap z=(d*v.1,d*v.2)) ↔ P.gap ∣ d := universal_clearing_iff P.gap d

/-- Rank is TWO over both coefficient rings; the residue-value rank is not substituted. -/
theorem coefficient_ranks (t : PrimitiveAdditiveTriple) (P : PairFrame t) :
    Module.finrank ℤ (Carrier ℤ P.gap)=2 ∧
      Module.finrank (ZMod 2) (Carrier (ZMod 2) 0)=2 := ⟨rank_two _,rank_two _⟩

/-- The special algebra lies in the vertical direction X=0, Y=epsilon.
At a singular collision this is not the entire two-dimensional tangent space. -/
theorem special_coordinates (t : PrimitiveAdditiveTriple) (P : PairFrame t) :
    binaryReduction P.gap P.gap_even (-2*generator P.gap)=0 ∧
      binaryReduction P.gap P.gap_even (generator P.gap)=generator (0 : ZMod 2) := by
  constructor <;> ext <;> simp [binaryReduction,generator]

/-- Divided differences retain the gap; their limit is only a first jet.
No division by the even gap occurs inside the special-fiber field. -/
theorem quadratic_pair_observation (t : PrimitiveAdditiveTriple) (P : PairFrame t)
    (c₀ c₁ c₂ : ℤ) :
    values P.gap ⟨c₀,c₁+P.gap*c₂⟩ =
      (c₀,c₀+c₁*P.gap+c₂*P.gap^2) := by
  simp only [values_mk]
  congr 1
  ring

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCollisionOrder
```
