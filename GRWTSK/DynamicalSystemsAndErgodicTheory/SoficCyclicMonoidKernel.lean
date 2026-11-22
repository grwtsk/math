/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Exact-source verification and independent review are tracked in grwtsk/math#1832.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCyclicMonoidCayley
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Minimal cyclic ideal of a one-generator lasso monoid

For μ : ℕ and p > 0, the original CyclicLassoMonoid has exactly μ+p
normal powers. The cycle powers with exponents in [μ, μ+p) form an
actual two-sided ideal. We define that exact subtype as LassoKernel,
construct its group structure by transporting the cyclic residue group,
and identify it with Multiplicative (ZMod p). We prove that its group
product agrees with multiplication in the ORIGINAL monoid, that it is
the least nonempty ideal, and that its unique idempotent is the
group identity, represented by a normal exponent divisible by p.

The time-shift monoid is not the full alphabet-indexed transition
monoid of a complete prefix-recognizing automaton. No assertion is
made that every finite semigroup's minimal ideal has a unique
idempotent, that the transient stem is a nilpotent subsemigroup,
or that a multi-generator group or RH/GRH consequence follows.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidKernel

open SoficCyclicMonoidCayley
open SoficSingletonPrefixLassoUniqueness

universe u

/-- Exactly those normal powers whose exponent is in the unique
eventual p-cycle of the original cyclic monoid. -/
@[ext] structure LassoKernel (μ p : ℕ) (hp : 0 < p) where
  toMonoid : CyclicLassoMonoid μ p hp
  ge_mu : μ ≤ toMonoid.exp.val

/-- The offset within the p-cycle is a complete and injective
coordinate for a kernel element. -/
def kernelOffsetEquiv (μ p : ℕ) (hp : 0 < p) :
    LassoKernel μ p hp ≃ Fin p where
  toFun x := ⟨x.toMonoid.exp.val - μ,
    (Nat.sub_lt_iff_lt_add' x.ge_mu).2 x.toMonoid.exp.isLt⟩
  invFun r := ⟨⟨⟨μ + r.val, Nat.add_lt_add_left r.isLt μ⟩⟩,
    Nat.le_add_right μ r.val⟩
  left_inv x := by
    apply LassoKernel.ext
    apply CyclicLassoMonoid.ext
    apply Fin.ext
    change μ + (x.toMonoid.exp.val - μ) = x.toMonoid.exp.val
    exact Nat.add_sub_of_le x.ge_mu
  right_inv r := by
    apply Fin.ext
    change μ + r.val - μ = r.val
    exact Nat.add_sub_cancel_left μ r.val

instance (μ p : ℕ) (hp : 0 < p) : Fintype (LassoKernel μ p hp) :=
  Fintype.ofEquiv (Fin p) (kernelOffsetEquiv μ p hp).symm

theorem kernel_card (μ p : ℕ) (hp : 0 < p) :
    Fintype.card (LassoKernel μ p hp) = p := by
  simpa using Fintype.card_congr (kernelOffsetEquiv μ p hp)

/-- The residual exponent completely distinguishes normal powers in
[μ, μ+p). Cancel the common μ modulo p and use the bounds on the
resulting offsets. -/
private theorem residue_injective (μ p : ℕ) (hp : 0 < p) :
    Function.Injective (fun x : LassoKernel μ p hp =>
      (x.toMonoid.exp.val : ZMod p)) := by
  intro x y h
  let e := kernelOffsetEquiv μ p hp
  let rx := e x
  let ry := e y
  have hx : μ + rx.val = x.toMonoid.exp.val := Nat.add_sub_of_le x.ge_mu
  have hy : μ + ry.val = y.toMonoid.exp.val := Nat.add_sub_of_le y.ge_mu
  have hmod : μ + rx.val ≡ μ + ry.val [MOD p] := by
    rw [hx, hy]
    exact (ZMod.natCast_eq_natCast_iff _ _ p).mp h
  have hcancel := Nat.ModEq.add_left_cancel' μ hmod
  exact e.injective (Fin.ext (hcancel.eq_of_lt_of_lt rx.isLt ry.isLt))

/-- The precise residue map, proved bijective from interval
injectivity and the equal cardinalities p. -/
noncomputable def kernelResidueEquiv (μ p : ℕ) (hp : 0 < p) :
    LassoKernel μ p hp ≃ ZMod p := by
  letI : NeZero p := ⟨Nat.ne_of_gt hp⟩
  let f : LassoKernel μ p hp → ZMod p :=
    fun x => (x.toMonoid.exp.val : ZMod p)
  have hcard : Fintype.card (LassoKernel μ p hp) =
      Fintype.card (ZMod p) := by
    calc
      Fintype.card (LassoKernel μ p hp) = p := kernel_card μ p hp
      _ = Fintype.card (ZMod p) := by
        simpa using (Fintype.card_congr (ZMod.finEquiv p).toEquiv)
  exact Equiv.ofBijective f
    ((Fintype.bijective_iff_injective_and_card f).mpr
      ⟨residue_injective μ p hp, hcard⟩)

@[simp] theorem kernelResidueEquiv_apply (μ p : ℕ) (hp : 0 < p)
    (x : LassoKernel μ p hp) :
    kernelResidueEquiv μ p hp x =
      (x.toMonoid.exp.val : ZMod p) := rfl

/-- Multiplicative notation for the additive group of residues. -/
noncomputable def kernelMultiplicativeEquiv (μ p : ℕ) (hp : 0 < p) :
    LassoKernel μ p hp ≃ Multiplicative (ZMod p) where
  toFun x := Multiplicative.ofAdd (kernelResidueEquiv μ p hp x)
  invFun z := (kernelResidueEquiv μ p hp).symm (Multiplicative.toAdd z)
  left_inv x := by
    change (kernelResidueEquiv μ p hp).symm
      (kernelResidueEquiv μ p hp x) = x
    exact (kernelResidueEquiv μ p hp).symm_apply_apply x
  right_inv z := by
    change Multiplicative.ofAdd
      (kernelResidueEquiv μ p hp
        ((kernelResidueEquiv μ p hp).symm (Multiplicative.toAdd z))) = z
    rw [(kernelResidueEquiv μ p hp).apply_symm_apply]
    rfl

/-- The actual group operations are transported along a residue
equivalence; no research axiom or unproved inverse formula is used. -/
noncomputable instance (μ p : ℕ) (hp : 0 < p) :
    CommGroup (LassoKernel μ p hp) :=
  (kernelMultiplicativeEquiv μ p hp).commGroup

/-- The kernel, written multiplicatively, is a cyclic group of
order p and isomorphic to the additive cyclic group ZMod p. -/
noncomputable def kernelIsoZMod (μ p : ℕ) (hp : 0 < p) :
    LassoKernel μ p hp ≃* Multiplicative (ZMod p) where
  toEquiv := kernelMultiplicativeEquiv μ p hp
  map_mul' x y := by
    change (kernelMultiplicativeEquiv μ p hp)
      ((kernelMultiplicativeEquiv μ p hp).symm
        ((kernelMultiplicativeEquiv μ p hp x) *
         (kernelMultiplicativeEquiv μ p hp y))) =
        (kernelMultiplicativeEquiv μ p hp x) *
        (kernelMultiplicativeEquiv μ p hp y)
    exact (kernelMultiplicativeEquiv μ p hp).apply_symm_apply _

/-- Exponent normalization is invisible after passing to ZMod p. -/
theorem reduceExp_zmod (μ p : ℕ) (hp : 0 < p) (n : ℕ) :
    ((reduceExp μ p hp n : ℕ) : ZMod p) = (n : ZMod p) := by
  by_cases h : n < μ
  · simp [reduceExp, h]
  · have hle : μ ≤ n := Nat.le_of_not_gt h
    calc
      ((reduceExp μ p hp n : ℕ) : ZMod p) =
          ((μ + (n - μ) % p : ℕ) : ZMod p) := by
            simp [reduceExp, h]
      _ = ((μ + (n - μ) : ℕ) : ZMod p) := by
            simp only [Nat.cast_add, ZMod.natCast_mod]
      _ = (n : ZMod p) := by
            rw [Nat.add_sub_of_le hle]

variable {μ p : ℕ} {hp : 0 < p}

/-- A cycle element remains in the cycle after multiplying by an
arbitrary ambient monoid element on the right. -/
def rightAbsorb (x : LassoKernel μ p hp)
    (m : CyclicLassoMonoid μ p hp) :
    LassoKernel μ p hp :=
  ⟨x.toMonoid * m, by
    change μ ≤ reduceExp μ p hp
      (x.toMonoid.exp.val + m.exp.val)
    have hsum : μ ≤ x.toMonoid.exp.val + m.exp.val :=
      x.ge_mu.trans (Nat.le_add_right _ _)
    rw [reduceExp, ite_eq_right (Nat.not_lt_of_ge hsum)]
    exact Nat.le_add_right _ _⟩

@[simp] theorem rightAbsorb_toMonoid (x : LassoKernel μ p hp)
    (m : CyclicLassoMonoid μ p hp) :
    (rightAbsorb x m).toMonoid = x.toMonoid * m := rfl

/-- The same ideal is absorbing on the left, using commutativity
of the original monogenic monoid. -/
def leftAbsorb (m : CyclicLassoMonoid μ p hp)
    (x : LassoKernel μ p hp) :
    LassoKernel μ p hp :=
  ⟨m * x.toMonoid, by
    have h := (rightAbsorb x m).ge_mu
    change μ ≤ (x.toMonoid * m).exp.val at h
    simpa only [mul_comm] using h⟩

@[simp] theorem leftAbsorb_toMonoid (m : CyclicLassoMonoid μ p hp)
    (x : LassoKernel μ p hp) :
    (leftAbsorb m x).toMonoid = m * x.toMonoid := rfl

/-- Multiplication inside the transported cyclic group is the SAME
operation as multiplication of its elements in the original monoid. -/
theorem kernel_mul_toMonoid (x y : LassoKernel μ p hp) :
    (x * y).toMonoid = x.toMonoid * y.toMonoid := by
  have hgroup :
      kernelResidueEquiv μ p hp (x * y) =
        kernelResidueEquiv μ p hp x +
        kernelResidueEquiv μ p hp y := by
    have hm := (kernelIsoZMod μ p hp).map_mul x y
    exact congrArg Multiplicative.toAdd hm
  have hsource :
      kernelResidueEquiv μ p hp (rightAbsorb x y.toMonoid) =
        kernelResidueEquiv μ p hp x +
        kernelResidueEquiv μ p hp y := by
    change ((reduceExp μ p hp
      (x.toMonoid.exp.val + y.toMonoid.exp.val) : ℕ) : ZMod p) =
        (x.toMonoid.exp.val : ZMod p) +
        (y.toMonoid.exp.val : ZMod p)
    rw [reduceExp_zmod, Nat.cast_add]
  have hk : x * y = rightAbsorb x y.toMonoid :=
    (kernelResidueEquiv μ p hp).injective
      (hgroup.trans hsource.symm)
  simpa using congrArg LassoKernel.toMonoid hk

/-- The cycle is a TWO-SIDED ideal in the original finite cyclic monoid. -/
def kernelCarrier (μ p : ℕ) (hp : 0 < p) :
    Set (CyclicLassoMonoid μ p hp) :=
  {m | μ ≤ m.exp.val}

theorem kernelCarrier_right_ideal
    (x m : CyclicLassoMonoid μ p hp)
    (hx : x ∈ kernelCarrier μ p hp) :
    x * m ∈ kernelCarrier μ p hp :=
  (rightAbsorb (⟨x, hx⟩ : LassoKernel μ p hp) m).ge_mu

theorem kernelCarrier_left_ideal
    (m x : CyclicLassoMonoid μ p hp)
    (hx : x ∈ kernelCarrier μ p hp) :
    m * x ∈ kernelCarrier μ p hp :=
  (leftAbsorb m (⟨x, hx⟩ : LassoKernel μ p hp)).ge_mu

/-- The kernel identity is precisely the unique normal cycle power
whose exponent is divisible by p, rather than generally s^μ. -/
theorem kernel_one_exp_dvd (μ p : ℕ) (hp : 0 < p) :
    p ∣ (1 : LassoKernel μ p hp).toMonoid.exp.val := by
  let e := kernelIsoZMod μ p hp
  have h := e.map_one
  have hz :
      ((1 : LassoKernel μ p hp).toMonoid.exp.val : ZMod p) = 0 := by
    have hh := congrArg Multiplicative.toAdd h
    change ((1 : LassoKernel μ p hp).toMonoid.exp.val : ZMod p) = 0 at hh
    exact hh
  exact (ZMod.natCast_eq_zero_iff _ _).mp hz

theorem kernel_eq_one_iff_dvd (μ p : ℕ) (hp : 0 < p)
    (x : LassoKernel μ p hp) :
    x = 1 ↔ p ∣ x.toMonoid.exp.val := by
  constructor
  · rintro rfl
    exact kernel_one_exp_dvd μ p hp
  · intro hdvd
    apply (kernelResidueEquiv μ p hp).injective
    rw [kernelResidueEquiv_apply, kernelResidueEquiv_apply]
    have hx : (x.toMonoid.exp.val : ZMod p) = 0 :=
      (ZMod.natCast_eq_zero_iff _ _).mpr hdvd
    have hone : ((1 : LassoKernel μ p hp).toMonoid.exp.val : ZMod p) = 0 :=
      (ZMod.natCast_eq_zero_iff _ _).mpr (kernel_one_exp_dvd μ p hp)
    exact hx.trans hone.symm

/-- An explicit normal power for the internal cycle-group identity. -/
def kernelOneFormula (μ p : ℕ) (hp : 0 < p) :
    LassoKernel μ p hp :=
  ⟨⟨⟨μ + (p - μ % p) % p, Nat.add_lt_add_left (Nat.mod_lt _ hp) μ⟩⟩,
    Nat.le_add_right _ _⟩

theorem kernelOneFormula_eq_one (μ p : ℕ) (hp : 0 < p) :
    kernelOneFormula μ p hp = (1 : LassoKernel μ p hp) := by
  apply (kernel_eq_one_iff_dvd μ p hp _).2
  apply (ZMod.natCast_eq_zero_iff _ _).mp
  have hμ : μ % p < p := Nat.mod_lt μ hp
  have hsum : μ % p + (p - μ % p) = p := by omega
  have he : ((μ + (p - μ % p) % p : ℕ) : ZMod p) = 0 := by
    calc
      ((μ + (p - μ % p) % p : ℕ) : ZMod p) =
          ((μ % p + (p - μ % p) : ℕ) : ZMod p) := by
            simp only [Nat.cast_add, ZMod.natCast_mod]
      _ = (p : ZMod p) := by rw [hsum]
      _ = 0 := by simp
  simpa [kernelOneFormula] using he

/-- A group has exactly one idempotent. We establish that fact
specifically for this minimal ideal, not for arbitrary finite semigroups. -/
theorem kernel_idempotent_iff_one (x : LassoKernel μ p hp) :
    x * x = x ↔ x = 1 := by
  constructor
  · intro h
    have hh := congrArg (fun z : LassoKernel μ p hp => z * x⁻¹) h
    simpa [mul_assoc] using hh
  · rintro rfl
    simp

/-- Every nonempty right ideal of the ORIGINAL cyclic monoid contains
the entire cycle kernel. Since the ambient monoid is commutative, this
makes the cycle the unique least nonempty two-sided ideal. -/
theorem kernel_le_nonempty_right_ideal
    (S : Set (CyclicLassoMonoid μ p hp))
    (hnonempty : S.Nonempty)
    (hclosed : ∀ {a b : CyclicLassoMonoid μ p hp},
      a ∈ S → a * b ∈ S) :
    kernelCarrier μ p hp ⊆ S := by
  obtain ⟨m, hm⟩ := hnonempty
  let s := CyclicLassoMonoid.generator μ p hp
  have hge : μ ≤ (s ^ μ).exp.val := by
    change μ ≤ ((CyclicLassoMonoid.generator μ p hp) ^ μ).exp.val
    rw [CyclicLassoMonoid.generator_pow_val]
    rw [reduceExp_id μ p hp (by omega : μ < μ + p)]
  let a : LassoKernel μ p hp := ⟨s ^ μ, hge⟩
  let b : LassoKernel μ p hp := leftAbsorb m a
  have hb : b.toMonoid ∈ S := by
    change m * (s ^ μ) ∈ S
    exact hclosed hm
  intro t ht
  let target : LassoKernel μ p hp := ⟨t, ht⟩
  let y : LassoKernel μ p hp := b⁻¹ * target
  have hk : b * y = target := by
    dsimp [y]
    simp [mul_assoc]
  have hmap : b.toMonoid * y.toMonoid = t := by
    exact (kernel_mul_toMonoid b y).symm.trans
      (congrArg LassoKernel.toMonoid hk)
  have hinS : b.toMonoid * y.toMonoid ∈ S := hclosed hb
  exact hmap ▸ hinS

/-- A Cayley edge starting inside the kernel stays there and retains
its original trace label. -/
theorem cayley_kernel_edge
    {A : Type u} (x : ℕ → A) (μ p : ℕ) (hp : 0 < p)
    (k : LassoKernel μ p hp) :
    (monoidCayleyGraph x μ p hp).edge
      k.toMonoid (x k.toMonoid.exp.val)
      (rightAbsorb k (CyclicLassoMonoid.generator μ p hp)).toMonoid := by
  exact ⟨rfl, rfl⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCyclicMonoidKernel
