/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Pro.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Finsupp.Basic
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.NumberTheory.Padics.PadicNorm
import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic

set_option autoImplicit false

open scoped BigOperators

/-!
# PNT-free prime-exponent scale coordinates

This file isolates the algebraic scale skeleton of positive rational dilations.
The primitive coordinate object is the finitely supported family of integral
prime exponents.  The real logarithmic realization and the individual
`p`-adic radial coordinates are different representations of that one
arithmetic object.

No prime-counting estimate, Euler-product limit, zero-free theorem, or
asymptotic information about the primes occurs here.

The direct sums and projectors below are algebraic.  The inherited Euclidean
topology on the real logarithmic image is treated separately in
`PrimeExponentScaleTopology`.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale

/-- A prime used as an index, retaining the primality proof. -/
abbrev PrimeIndex := {p : ℕ // Nat.Prime p}

/-- The free abelian group of finitely supported integral prime exponents. -/
abbrev PrimeExponent := PrimeIndex →₀ ℤ

/-- The `p`-coordinate on the free prime-exponent group. -/
def primeCoordinate (p : PrimeIndex) : PrimeExponent →+ ℤ :=
  Finsupp.applyAddHom p

@[simp]
theorem primeCoordinate_apply (p : PrimeIndex) (x : PrimeExponent) :
    primeCoordinate p x = x p :=
  rfl

/-- The algebraic projector retaining only the `p`-coordinate. -/
def primeProjector (p : PrimeIndex) : PrimeExponent →+ PrimeExponent :=
  (Finsupp.singleAddHom p).comp (primeCoordinate p)

@[simp]
theorem primeProjector_apply (p : PrimeIndex) (x : PrimeExponent) :
    primeProjector p x = Finsupp.single p (x p) :=
  rfl

@[simp]
theorem primeCoordinate_projector_same (p : PrimeIndex) (x : PrimeExponent) :
    primeCoordinate p (primeProjector p x) = primeCoordinate p x := by
  simp [primeCoordinate, primeProjector]

@[simp]
theorem primeCoordinate_projector_ne {p q : PrimeIndex} (hpq : p ≠ q)
    (x : PrimeExponent) :
    primeCoordinate p (primeProjector q x) = 0 := by
  simp [primeCoordinate, primeProjector, hpq]

/-- A prime projector is idempotent. -/
theorem primeProjector_idempotent (p : PrimeIndex) :
    (primeProjector p).comp (primeProjector p) = primeProjector p := by
  ext x q
  by_cases hpq : q = p
  · subst q
    simp [primeProjector, primeCoordinate]
  · simp [primeProjector, primeCoordinate, hpq]

/-- Distinct prime projectors annihilate one another. -/
theorem primeProjector_orthogonal {p q : PrimeIndex} (hpq : p ≠ q) :
    (primeProjector p).comp (primeProjector q) = 0 := by
  ext x r
  by_cases hrp : r = p
  · subst r
    simp [primeProjector, primeCoordinate, hpq]
  · simp [primeProjector, primeCoordinate, hrp]

/-- Every exponent vector is the finite sum of its prime-coordinate pieces. -/
theorem finite_prime_projector_reconstruction (x : PrimeExponent) :
    (∑ p ∈ x.support, primeProjector p x) = x := by
  exact Finsupp.sum_single x

/-- The additive logarithmic contribution of one prime coordinate. -/
noncomputable def primeLogHom (p : PrimeIndex) : ℤ →+ ℝ where
  toFun n := (n : ℝ) * Real.log (p.1 : ℝ)
  map_zero' := by simp
  map_add' m n := by
    push_cast
    ring

/-- Archimedean logarithmic realization of a finite exponent vector. -/
noncomputable def logRealization : PrimeExponent →+ ℝ :=
  Finsupp.liftAddHom primeLogHom

@[simp]
theorem logRealization_single (p : PrimeIndex) (n : ℤ) :
    logRealization (Finsupp.single p n) =
      (n : ℝ) * Real.log (p.1 : ℝ) := by
  simp [logRealization, primeLogHom]

/-- Rational realization of an exponent vector.  Negative exponents are
interpreted by integer powers in `ℚ`. -/
noncomputable def rationalRealization (x : PrimeExponent) : ℚ :=
  x.prod fun p n => (p.1 : ℚ) ^ n

theorem rationalRealization_pos (x : PrimeExponent) :
    0 < rationalRealization x := by
  classical
  rw [rationalRealization, Finsupp.prod]
  exact Finset.prod_pos fun p hp => zpow_pos (by exact_mod_cast p.2.pos) _

theorem rationalRealization_ne_zero (x : PrimeExponent) :
    rationalRealization x ≠ 0 :=
  ne_of_gt (rationalRealization_pos x)

/-- Addition of exponent vectors becomes multiplication of positive rationals. -/
theorem rationalRealization_add (x y : PrimeExponent) :
    rationalRealization (x + y) =
      rationalRealization x * rationalRealization y := by
  classical
  exact Finsupp.prod_add_index' (fun _ => zpow_zero _) fun p m n =>
    zpow_add₀ (by exact_mod_cast p.2.ne_zero) m n

@[simp]
theorem rationalRealization_zero :
    rationalRealization (0 : PrimeExponent) = 1 := by
  simp [rationalRealization]

@[simp]
theorem rationalRealization_neg (x : PrimeExponent) :
    rationalRealization (-x) = (rationalRealization x)⁻¹ := by
  have h := rationalRealization_add x (-x)
  rw [add_neg_cancel, rationalRealization_zero] at h
  exact eq_inv_of_mul_eq_one_right h.symm

/-- The valuation of one prime power at another prime. -/
theorem padicValRat_prime_zpow (p q : PrimeIndex) (n : ℤ) :
    padicValRat p.1 ((q.1 : ℚ) ^ n) =
      if p = q then n else 0 := by
  let : Fact p.1.Prime := ⟨p.2⟩
  rw [padicValRat.zpow]
  by_cases hpq : p = q
  · subst q
    simp [padicValRat.self p.2.two_le]
  · have hnotdvd : ¬ p.1 ∣ q.1 := by
      intro hdiv
      rcases (Nat.dvd_prime q.2).mp hdiv with hpone | hpqval
      · exact p.2.ne_one hpone
      · exact hpq (Subtype.ext hpqval)
    simp [hpq, padicValRat.of_nat, padicValNat.eq_zero_of_not_dvd hnotdvd]

/-- Each valuation recovers the corresponding exponent coordinate. -/
theorem padicValRat_rationalRealization (p : PrimeIndex) (x : PrimeExponent) :
    padicValRat p.1 (rationalRealization x) = x p := by
  classical
  let : Fact p.1.Prime := ⟨p.2⟩
  induction x using Finsupp.induction with
  | zero => simp [rationalRealization]
  | @single_add q n x hq hn ih =>
      rw [rationalRealization_add,
        padicValRat.mul (rationalRealization_ne_zero _) (rationalRealization_ne_zero _)]
      have hsingle : rationalRealization (Finsupp.single q n) = (q.1 : ℚ) ^ n := by
        simp [rationalRealization]
      rw [hsingle, padicValRat_prime_zpow, ih]
      by_cases hpq : p = q
      · subst q
        simp
      · simp [hpq]

/-- The rational realization is injective because all prime valuations recover
all finitely supported coordinates. -/
theorem rationalRealization_injective :
    Function.Injective rationalRealization := by
  intro x y hxy
  ext p
  have h := congrArg (padicValRat p.1) hxy
  simpa [padicValRat_rationalRealization] using h

/-- Positive rational units, viewed as a subgroup of the rational unit group. -/
def positiveRationalUnits : Subgroup ℚˣ where
  carrier := {u | 0 < (u : ℚ)}
  one_mem' := by norm_num
  mul_mem' := by
    intro a b ha hb
    simpa using mul_pos ha hb
  inv_mem' := by
    intro a ha
    change 0 < (a : ℚ) at ha
    change 0 < ((a⁻¹ : ℚˣ) : ℚ)
    rw [Units.val_inv_eq_inv_val]
    exact inv_pos.mpr ha

/-- The multiplicative group `ℚ_{>0}^×`. -/
abbrev PositiveRationalScale := positiveRationalUnits

/-- The underlying positive rational represented by a positive rational unit. -/
def positiveRationalValue (r : PositiveRationalScale) : ℚ :=
  (r.1 : ℚ)

theorem positiveRationalValue_pos (r : PositiveRationalScale) :
    0 < positiveRationalValue r :=
  r.2

/-- Realize an exponent vector as a positive rational unit. -/
noncomputable def exponentToPositiveRational
    (x : PrimeExponent) : PositiveRationalScale :=
  ⟨Units.mk0 (rationalRealization x) (rationalRealization_ne_zero x),
    rationalRealization_pos x⟩

@[simp]
theorem exponentToPositiveRational_value (x : PrimeExponent) :
    positiveRationalValue (exponentToPositiveRational x) =
      rationalRealization x :=
  rfl

/-- Restrict a natural factorization to prime indices and cast its exponents
to integers. -/
noncomputable def natPrimeExponent (n : ℕ) : PrimeExponent :=
  Finsupp.comapDomain
    (fun p : PrimeIndex => p.1)
    (n.factorization.mapRange Int.ofNat (by simp))
    Subtype.val_injective.injOn

@[simp]
theorem natPrimeExponent_apply (n : ℕ) (p : PrimeIndex) :
    natPrimeExponent n p = (n.factorization p.1 : ℤ) := by
  simp [natPrimeExponent]

/-- Natural factorization reconstruction, stated in the rational codomain. -/
theorem rationalRealization_natPrimeExponent {n : ℕ} (hn : n ≠ 0) :
    rationalRealization (natPrimeExponent n) = n := by
  classical
  let v := n.factorization.mapRange Int.ofNat (by simp)
  let e : PrimeIndex ↪ ℕ := ⟨Subtype.val, Subtype.val_injective⟩
  have hs : (v.support : Set ℕ) ⊆ Set.range e := by
    intro p hp
    have hpf : p ∈ n.factorization.support := (Finsupp.support_mapRange).trans (by rfl) hp
    have hprime : Nat.Prime p := Nat.prime_of_mem_primeFactors
      (by simpa only [Nat.support_factorization] using hpf)
    exact ⟨⟨p, hprime⟩, rfl⟩
  have he : (natPrimeExponent n).embDomain e = v :=
    Finsupp.embDomain_comapDomain hs
  calc
    rationalRealization (natPrimeExponent n) = v.prod (fun p k => (p : ℚ) ^ k) := by
      rw [← he, Finsupp.prod_embDomain]
      rfl
    _ = n.factorization.prod (fun p k => (p : ℚ) ^ (k : ℤ)) :=
      Finsupp.prod_mapRange_index (fun _ => zpow_zero _)
    _ = n := by
      simpa only [Finsupp.prod, Nat.cast_prod, Nat.cast_pow, zpow_natCast] using
        congrArg (fun a : ℕ => (a : ℚ)) (Nat.prod_factorization_pow_eq_self hn)

/-- The exact exponent vector of a positive rational, obtained by subtracting
the denominator factorization from the numerator factorization. -/
noncomputable def positiveRationalExponent
    (r : PositiveRationalScale) : PrimeExponent :=
  natPrimeExponent (positiveRationalValue r).num.natAbs -
    natPrimeExponent (positiveRationalValue r).den

/-- Exact reconstruction of a positive rational from its prime exponents. -/
theorem rationalRealization_positiveRationalExponent
    (r : PositiveRationalScale) :
    rationalRealization (positiveRationalExponent r) =
      positiveRationalValue r := by
  have hnum : (positiveRationalValue r).num ≠ 0 :=
    Rat.num_ne_zero.mpr (ne_of_gt (positiveRationalValue_pos r))
  have hnumNat :
      (positiveRationalValue r).num.natAbs ≠ 0 := by
    exact Int.natAbs_ne_zero.mpr hnum
  have hden : (positiveRationalValue r).den ≠ 0 :=
    (positiveRationalValue r).den_nz
  rw [positiveRationalExponent, sub_eq_add_neg, rationalRealization_add,
    rationalRealization_neg,
    rationalRealization_natPrimeExponent hnumNat,
    rationalRealization_natPrimeExponent hden]
  have hnumcast : ((positiveRationalValue r).num.natAbs : ℚ) =
      ((positiveRationalValue r).num : ℚ) := by
    have hcast := congrArg (fun a : ℤ => (a : ℚ))
      (Int.natAbs_of_nonneg (le_of_lt (Rat.num_pos.mpr (positiveRationalValue_pos r))))
    simpa only [Int.cast_natCast] using hcast
  rw [hnumcast, ← div_eq_mul_inv]
  exact Rat.num_div_den _

/-- Prime-exponent coordinates of a positive rational. -/
noncomputable def valuationCoordinates
    (r : PositiveRationalScale) : PrimeExponent :=
  positiveRationalExponent r

@[simp]
theorem valuationCoordinates_exponentToPositiveRational
    (x : PrimeExponent) :
    valuationCoordinates (exponentToPositiveRational x) = x := by
  apply rationalRealization_injective
  change rationalRealization (positiveRationalExponent _) = _
  rw [rationalRealization_positiveRationalExponent]
  rfl

@[simp]
theorem exponentToPositiveRational_valuationCoordinates
    (r : PositiveRationalScale) :
    exponentToPositiveRational (valuationCoordinates r) = r := by
  apply Subtype.ext
  apply Units.ext
  exact rationalRealization_positiveRationalExponent r

/-- Positive rational dilations and finite integral prime-exponent vectors are
equivalent as groups. -/
noncomputable def positiveRationalPrimeExponentEquiv :
    PositiveRationalScale ≃* Multiplicative PrimeExponent where
  toFun r := Multiplicative.ofAdd (valuationCoordinates r)
  invFun x := exponentToPositiveRational (Multiplicative.toAdd x)
  left_inv := exponentToPositiveRational_valuationCoordinates
  right_inv x := by
    exact valuationCoordinates_exponentToPositiveRational (Multiplicative.toAdd x)
  map_mul' r s := by
    change valuationCoordinates (r * s) = valuationCoordinates r + valuationCoordinates s
    apply rationalRealization_injective
    simp [valuationCoordinates, rationalRealization_positiveRationalExponent,
      positiveRationalValue, rationalRealization_add]

/-- The coordinate equivalence agrees with Mathlib's rational `p`-adic
valuation at every prime. -/
theorem valuationCoordinates_apply (r : PositiveRationalScale)
    (p : PrimeIndex) :
    valuationCoordinates r p =
      padicValRat p.1 (positiveRationalValue r) := by
  have h := padicValRat_rationalRealization p (valuationCoordinates r)
  change padicValRat p.1 (rationalRealization (positiveRationalExponent r)) = _ at h
  rw [rationalRealization_positiveRationalExponent] at h
  exact h.symm

/-- The real logarithmic realization agrees with the logarithm of the exact
positive rational realization. -/
theorem logRealization_eq_log_rationalRealization (x : PrimeExponent) :
    logRealization x = Real.log (rationalRealization x) := by
  classical
  induction x using Finsupp.induction with
  | zero => simp [logRealization, rationalRealization]
  | @single_add p n x hp hn ih =>
      rw [map_add, rationalRealization_add, Rat.cast_mul,
        Real.log_mul (by exact_mod_cast rationalRealization_ne_zero (Finsupp.single p n))
          (by exact_mod_cast rationalRealization_ne_zero x)]
      simp [rationalRealization, logRealization_single, Real.log_zpow, ih]

/-- The Archimedean realization is injective.  The proof uses only exact
factorization coordinates and injectivity of the real logarithm on positives. -/
theorem logRealization_injective :
    Function.Injective logRealization := by
  intro x y hxy
  apply rationalRealization_injective
  have hlog : Real.log (rationalRealization x) = Real.log (rationalRealization y) := by
    simpa only [logRealization_eq_log_rationalRealization] using hxy
  have hexp := congrArg Real.exp hlog
  rw [Real.exp_log (by exact_mod_cast rationalRealization_pos x),
    Real.exp_log (by exact_mod_cast rationalRealization_pos y)] at hexp
  exact_mod_cast hexp

/-- The arithmetic logarithmic scale as an additive subgroup of `ℝ`. -/
noncomputable def arithmeticLogScale : AddSubgroup ℝ :=
  AddSubgroup.map logRealization ⊤

/-- Elements of the exact arithmetic logarithmic subgroup. -/
abbrev ArithmeticLogScale := arithmeticLogScale

/-- Realize one exponent vector as an element of the arithmetic logarithmic
subgroup. -/
noncomputable def exponentToScale (x : PrimeExponent) : ArithmeticLogScale :=
  ⟨logRealization x, by
    refine ⟨x, by simp, ?_⟩
    rfl⟩

@[simp]
theorem exponentToScale_coe (x : PrimeExponent) :
    (exponentToScale x : ℝ) = logRealization x :=
  rfl

/-- Every arithmetic logarithmic scale has a unique exponent vector. -/
theorem arithmeticLogScale_existsUniqueExponent (t : ArithmeticLogScale) :
    ∃! x : PrimeExponent, exponentToScale x = t := by
  rcases t.property with ⟨x, hx, hxt⟩
  refine ⟨x, ?_, ?_⟩
  · apply Subtype.ext
    simpa [exponentToScale] using hxt
  · intro y hy
    apply logRealization_injective
    exact (congrArg Subtype.val hy).trans hxt.symm

/-- The algebraic equivalence between all prime exponents and the real
arithmetic logarithmic subgroup. -/
noncomputable def exponentEquivScale : PrimeExponent ≃+ ArithmeticLogScale where
  toFun := exponentToScale
  invFun t := Classical.choose (arithmeticLogScale_existsUniqueExponent t)
  left_inv x :=
    (Classical.choose_spec (arithmeticLogScale_existsUniqueExponent
      (exponentToScale x))).2 x rfl |>.symm
  right_inv t :=
    (Classical.choose_spec (arithmeticLogScale_existsUniqueExponent t)).1
  map_add' x y := by
    apply Subtype.ext
    simp [exponentToScale]

/-- The exact `p`-coordinate on the arithmetic logarithmic scale. -/
noncomputable def scalePrimeCoordinate (p : PrimeIndex) :
    ArithmeticLogScale →+ ℤ :=
  (primeCoordinate p).comp exponentEquivScale.symm.toAddMonoidHom

@[simp]
theorem scalePrimeCoordinate_exponentToScale (p : PrimeIndex)
    (x : PrimeExponent) :
    scalePrimeCoordinate p (exponentToScale x) = x p := by
  change (exponentEquivScale.symm (exponentEquivScale x)) p = x p
  rw [exponentEquivScale.symm_apply_apply]

/-- The split section of the `p`-coordinate. -/
noncomputable def scalePrimeSection (p : PrimeIndex) : ℤ →+ ArithmeticLogScale :=
  exponentEquivScale.toAddMonoidHom.comp (Finsupp.singleAddHom p)

@[simp]
theorem scalePrimeCoordinate_section (p : PrimeIndex) (n : ℤ) :
    scalePrimeCoordinate p (scalePrimeSection p n) = n := by
  simp [scalePrimeCoordinate, scalePrimeSection]

/-- Prime-scale projector on the real arithmetic logarithmic subgroup. -/
noncomputable def scalePrimeProjector (p : PrimeIndex) :
    ArithmeticLogScale →+ ArithmeticLogScale :=
  exponentEquivScale.toAddMonoidHom.comp
    ((primeProjector p).comp exponentEquivScale.symm.toAddMonoidHom)

theorem scalePrimeProjector_idempotent (p : PrimeIndex) :
    (scalePrimeProjector p).comp (scalePrimeProjector p) =
      scalePrimeProjector p := by
  ext t
  obtain ⟨x, rfl⟩ := exponentEquivScale.surjective t
  simp [scalePrimeProjector, primeProjector, primeCoordinate]

theorem scalePrimeProjector_orthogonal {p q : PrimeIndex} (hpq : p ≠ q) :
    (scalePrimeProjector p).comp (scalePrimeProjector q) = 0 := by
  ext t
  obtain ⟨x, rfl⟩ := exponentEquivScale.surjective t
  simp [scalePrimeProjector, primeProjector, primeCoordinate, hpq]

/-- Every real arithmetic scale is a finite sum of its prime-scale projectors. -/
theorem finite_scale_projector_reconstruction (t : ArithmeticLogScale) :
    let x := exponentEquivScale.symm t
    (∑ p ∈ x.support, scalePrimeProjector p t) = t := by
  dsimp
  have h := congrArg exponentEquivScale
    (finite_prime_projector_reconstruction (exponentEquivScale.symm t))
  simpa [scalePrimeProjector] using h

/-- The radial rational representative `p^n` of one local valuation class. -/
noncomputable def radialPrimePower (p : PrimeIndex) (n : ℤ) : ℚ :=
  (p.1 : ℚ) ^ n

/-- The radial local realization of an arithmetic logarithmic scale.  This
forgets every `p`-adic unit component. -/
noncomputable def radialRealization (p : PrimeIndex)
    (t : ArithmeticLogScale) : ℚ :=
  radialPrimePower p (scalePrimeCoordinate p t)

theorem radialRealization_zero (p : PrimeIndex) :
    radialRealization p 0 = 1 := by
  simp [radialRealization, radialPrimePower]

/-- Addition of logarithmic scales becomes multiplication of radial
representatives. -/
theorem radialRealization_add (p : PrimeIndex)
    (t u : ArithmeticLogScale) :
    radialRealization p (t + u) =
      radialRealization p t * radialRealization p u := by
  simp only [radialRealization, radialPrimePower, map_add]
  exact zpow_add₀ (by exact_mod_cast p.2.ne_zero) _ _

@[simp]
theorem radialRealization_exponentToScale (p : PrimeIndex)
    (x : PrimeExponent) :
    radialRealization p (exponentToScale x) = (p.1 : ℚ) ^ (x p) := by
  simp [radialRealization, radialPrimePower]

/-- The radial representative has exactly the requested local valuation. -/
theorem padicValRat_radialRealization (p : PrimeIndex)
    (t : ArithmeticLogScale) :
    padicValRat p.1 (radialRealization p t) =
      scalePrimeCoordinate p t := by
  let : Fact p.1.Prime := ⟨p.2⟩
  simp [radialRealization, radialPrimePower, padicValRat.zpow,
    padicValRat.self p.2.two_le]

/-- Finite product of normalized local radial norms. -/
noncomputable def finitePadicNormProduct (x : PrimeExponent) : ℝ :=
  ∏ p ∈ x.support, (p.1 : ℝ) ^ (-(x p) : ℤ)

/-- Exact finite product formula on exponent coordinates. -/
theorem exponent_product_formula (x : PrimeExponent) :
    Real.exp (logRealization x) * finitePadicNormProduct x = 1 := by
  classical
  rw [logRealization_eq_log_rationalRealization,
    Real.exp_log (by exact_mod_cast rationalRealization_pos x)]
  have hcast : (rationalRealization x : ℝ) =
      ∏ p ∈ x.support, (p.1 : ℝ) ^ (x p) := by
    simp [rationalRealization, Finsupp.prod]
  rw [hcast, finitePadicNormProduct, ← Finset.prod_mul_distrib]
  apply Finset.prod_eq_one
  intro p hp
  rw [zpow_neg]
  exact mul_inv_cancel₀ (zpow_ne_zero _ (by exact_mod_cast p.2.ne_zero))

/-- The logarithmic product formula, expressed as a finite support sum. -/
theorem exponent_log_product_formula (x : PrimeExponent) :
    logRealization x =
      -∑ p ∈ x.support,
        Real.log ((p.1 : ℝ) ^ (-(x p) : ℤ)) := by
  classical
  simp [logRealization, primeLogHom, Finsupp.sum, Real.log_zpow, Finset.sum_neg_distrib]

/-- One fixed prime line is algebraically isomorphic to `ℤ`. -/
noncomputable def primeLineEquiv (p : PrimeIndex) :
    ℤ ≃+ AddSubgroup.map (scalePrimeSection p) ⊤ where
  toFun n := ⟨scalePrimeSection p n, ⟨n, by simp, rfl⟩⟩
  invFun t := scalePrimeCoordinate p t.1
  left_inv n := scalePrimeCoordinate_section p n
  right_inv t := by
    rcases t.property with ⟨n, hn, heq⟩
    apply Subtype.ext
    change scalePrimeSection p (scalePrimeCoordinate p t.1) = t.1
    rw [← heq, scalePrimeCoordinate_section]
  map_add' m n := by
    apply Subtype.ext
    simp

end GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale

end
