# Complete source: GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassIntegralImage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09c1279803b705e13d4da51c9981f8ab3f149677` · SHA-256 `bd97b98733018a40997970c6e16fc20a93cb5f8541641651ac744af2451fe578`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

The image of INTEGER polynomial functions on a truncated branch. This is
not an assertion that the unsaturated integral origin quotient is free.
All mixed monomials are retained and reduced using the actual curve relation.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Scripts are unelaborated.
-/
import GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassRescaledJet

set_option autoImplicit false
noncomputable section

namespace GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassIntegralImage

open WeierstrassCurve
open GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

variable {S : Type*} [CommRing S]

/-- Ordered curve monomials: 1,y,x,xy,x^2,x^2*y,... . -/
def term (x y : S) (k : ℕ) : S := x^(k/2)*y^(k%2)

@[simp] theorem term_even (x y : S) (i : ℕ) : term x y (2*i)=x^i := by
  simp [term]

@[simp] theorem term_odd (x y : S) (i : ℕ) : term x y (2*i+1)=x^i*y := by
  simp [term]

/-- A finite integral span in the ACTUAL target ring, not an assigned lattice index. -/
def lattice (x y : S) (N : ℕ) : Submodule ℤ S :=
  Submodule.span ℤ (Set.range (fun k : Fin (N+1) => term x y k.val))

/-- A weighted-order vanishing statement, deduced from x in (y^2). -/
theorem monomial_zero (x y : S) (N : ℕ) (hy : y^(N+1)=0)
    (hx : y^2 ∣ x) (i j : ℕ) (hij : N<2*i+j) : x^i*y^j=0 := by
  obtain ⟨z,hz⟩ := hx
  have hle : N+1≤2*i+j := by omega
  have hp : y^(2*i+j)=0 := by
    rw [← Nat.add_sub_of_le hle,pow_add,hy,zero_mul]
  calc
    x^i*y^j = y^(2*i+j)*z^i := by rw [hz,mul_pow,pow_add,pow_mul]; ring
    _ = 0 := by rw [hp,zero_mul]

theorem term_zero (x y : S) (N : ℕ) (hy : y^(N+1)=0)
    (hx : y^2 ∣ x) (k : ℕ) (hk : N<k) : term x y k=0 := by
  apply monomial_zero x y N hy hx
  have h := Nat.mod_add_div k 2
  omega

/-- Terms beyond the stated finite frame are zero, not omitted nonzero data. -/
theorem term_mem (x y : S) (N : ℕ) (hy : y^(N+1)=0)
    (hx : y^2 ∣ x) (k : ℕ) : term x y k ∈ lattice x y N := by
  by_cases hk : k≤N
  · exact Submodule.subset_span ⟨⟨k,by omega⟩,rfl⟩
  · rw [term_zero x y N hy hx k (by omega)]
    exact Submodule.zero_mem _

theorem even_mem (x y : S) (N : ℕ) (hy : y^(N+1)=0)
    (hx : y^2 ∣ x) (i : ℕ) : x^i ∈ lattice x y N := by
  simpa using term_mem x y N hy hx (2*i)

theorem odd_mem (x y : S) (N : ℕ) (hy : y^(N+1)=0)
    (hx : y^2 ∣ x) (i : ℕ) : x^i*y ∈ lattice x y N := by
  simpa using term_mem x y N hy hx (2*i+1)

/-- The actual selected-model relation; its monic y^2 term permits integral reduction. -/
def Relation (A B : ℤ) (x y : S) : Prop :=
  y^2+x*y=x^3+(A : S)*x^2+(B : S)*x

/-- Multiplication by y on an odd frame term keeps ALL four resulting terms. -/
theorem y_mul_odd (A B : ℤ) (x y : S) (h : Relation A B x y) (i : ℕ) :
    y*(x^i*y)=(B : S)*x^(i+1)-x^(i+1)*y+
      (A : S)*x^(i+2)+x^(i+3) := by
  dsimp only [Relation] at h
  simp only [pow_add,pow_one,pow_succ]
  linear_combination x^i*h

theorem x_mul_mem (x y : S) (N : ℕ) (hy : y^(N+1)=0)
    (hx : y^2 ∣ x) (z : S) (hz : z ∈ lattice x y N) : x*z ∈ lattice x y N := by
  induction hz using Submodule.span_induction with
  | mem z hz =>
    obtain ⟨k,rfl⟩ := hz
    have hp : k.val%2=0 ∨ k.val%2=1 := by omega
    rcases hp with hp | hp
    · simpa [term,hp,pow_succ,mul_comm] using even_mem x y N hy hx (k.val/2+1)
    · simpa [term,hp,pow_succ,mul_assoc,mul_comm,mul_left_comm] using
        odd_mem x y N hy hx (k.val/2+1)
  | zero => simpa using (Submodule.zero_mem (lattice x y N))
  | add z w hz hw ihz ihw => simpa [mul_add] using (lattice x y N).add_mem ihz ihw
  | smul a z hz ih => simpa [mul_smul_comm] using (lattice x y N).smul_mem a ih

theorem y_mul_mem (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x)
    (z : S) (hz : z ∈ lattice x y N) : y*z ∈ lattice x y N := by
  induction hz using Submodule.span_induction with
  | mem z hz =>
    obtain ⟨k,rfl⟩ := hz
    have hp : k.val%2=0 ∨ k.val%2=1 := by omega
    rcases hp with hp | hp
    · simpa [term,hp,mul_comm] using odd_mem x y N hy hx (k.val/2)
    · simp only [term,hp,pow_one]
      rw [y_mul_odd A B x y h]
      exact (lattice x y N).add_mem
        ((lattice x y N).add_mem
          ((lattice x y N).sub_mem
            (by simpa [zsmul_eq_mul] using (lattice x y N).smul_mem B
              (even_mem x y N hy hx (k.val/2+1)))
            (odd_mem x y N hy hx (k.val/2+1)))
          (by simpa [zsmul_eq_mul] using (lattice x y N).smul_mem A
            (even_mem x y N hy hx (k.val/2+2))))
        (even_mem x y N hy hx (k.val/2+3))
  | zero => simpa using (Submodule.zero_mem (lattice x y N))
  | add z w hz hw ihz ihw => simpa [mul_add] using (lattice x y N).add_mem ihz ihw
  | smul a z hz ih => simpa [mul_smul_comm] using (lattice x y N).smul_mem a ih

/-- Every input is an integer polynomial on the SAME pair of quotient coordinates. -/
def evaluate (x y : S) : MvPolynomial (Fin 2) ℤ →+* S :=
  MvPolynomial.eval₂Hom (Int.castRingHom S) ![x,y]

/-- Exhaustive image theorem, not a list of convenient independent candidates. -/
theorem mem_lattice_iff (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x) (z : S) :
    z ∈ lattice x y N ↔ ∃ f : MvPolynomial (Fin 2) ℤ, evaluate x y f=z := by
  constructor
  · intro hz
    induction hz using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨k,rfl⟩ := hz
      refine ⟨MvPolynomial.X 0^(k.val/2)*MvPolynomial.X 1^(k.val%2),?_⟩
      simp [evaluate,term]
    | zero => exact ⟨0,map_zero _⟩
    | add z w hz hw ihz ihw =>
      obtain ⟨f,hf⟩ := ihz
      obtain ⟨g,hg⟩ := ihw
      exact ⟨f+g,by rw [map_add,hf,hg]⟩
    | smul a z hz ih =>
      obtain ⟨f,hf⟩ := ih
      refine ⟨MvPolynomial.C a*f,?_⟩
      rw [map_mul]
      change (a : S)*evaluate x y f=a • z
      rw [hf,zsmul_eq_mul]
  · rintro ⟨f,rfl⟩
    induction f using MvPolynomial.induction_on with
    | C a =>
      simpa [evaluate,zsmul_eq_mul] using
        (lattice x y N).smul_mem a (even_mem x y N hy hx 0)
    | add f g hf hg => simpa using (lattice x y N).add_mem hf hg
    | mul_X f i hf =>
      fin_cases i
      · simpa [evaluate,mul_comm] using x_mul_mem x y N hy hx _ hf
      · simpa [evaluate,mul_comm] using y_mul_mem A B x y h N hy hx _ hf

/-- Integer powers of the original parameter belong to the image lattice. -/
theorem parameter_pow_mem (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x) (k : ℕ) :
    y^k ∈ lattice x y N :=
  (mem_lattice_iff A B x y h N hy hx _).mpr
    ⟨MvPolynomial.X 1^k,by simp [evaluate]⟩

/-- Kill the FULL origin-ideal power before factoring through the integral jet quotient. -/
theorem relations_le_kernel (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x) :
    WeierstrassOriginJet.relations A B N ≤ RingHom.ker (evaluate x y) := by
  have hym : y ∈ (Ideal.span {y} : Ideal S) := Ideal.subset_span (by simp)
  have hxm : x ∈ (Ideal.span {y} : Ideal S) := by
    apply Ideal.mem_span_singleton.mpr
    exact dvd_trans ⟨y,by ring⟩ hx
  have hmap : WeierstrassOriginJet.origin.map (evaluate x y) ≤ Ideal.span {y} := by
    apply Ideal.map_le_iff_le_comap.mpr
    apply Ideal.span_le.mpr
    intro p hp
    simp only [Set.mem_insert_iff,Set.mem_singleton_iff] at hp
    rcases hp with rfl | rfl
    · simpa [evaluate] using hxm
    · simpa [evaluate] using hym
  apply sup_le
  · apply Ideal.span_le.mpr
    intro p hp
    rcases Set.mem_singleton_iff.mp hp with rfl
    change evaluate x y (WeierstrassOriginJet.equation A B)=0
    dsimp only [Relation] at h
    simpa [evaluate,WeierstrassOriginJet.equation,sub_sub] using sub_eq_zero.mpr h
  · apply Ideal.map_eq_bot_iff_le_ker.mp
    apply le_antisymm _ bot_le
    calc
      _ = (WeierstrassOriginJet.origin.map (evaluate x y))^(N+1) := Ideal.map_pow _ _ _
      _ ≤ (Ideal.span {y})^(N+1) := Ideal.pow_right_mono hmap _
      _ = ⊥ := by rw [Ideal.span_singleton_pow,hy,Ideal.span_singleton_zero]

/-- The actual source quotient may have torsion; no injectivity is asserted here. -/
def fromIntegralJet (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x) :
    WeierstrassOriginJet.Jet A B N →+* S :=
  Ideal.Quotient.lift _ (evaluate x y) (relations_le_kernel A B x y h N hy hx)

theorem integral_jet_image (A B : ℤ) (x y : S) (h : Relation A B x y)
    (N : ℕ) (hy : y^(N+1)=0) (hx : y^2 ∣ x) (z : S) :
    (∃ q, fromIntegralJet A B x y h N hy hx q=z) ↔ z ∈ lattice x y N := by
  rw [mem_lattice_iff A B x y h N hy hx]
  constructor
  · rintro ⟨q,hq⟩
    obtain ⟨p,rfl⟩ := Ideal.Quotient.mk_surjective q
    exact ⟨p,hq⟩
  · rintro ⟨p,hp⟩
    exact ⟨Ideal.Quotient.mk _ p,hp⟩

end GRWTSK.AlgebraicGeometry.EllipticCurve.WeierstrassIntegralImage
```
