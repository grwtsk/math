/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScaleTopology
import Mathlib.Algebra.BigOperators.Finsupp.Basic
import Mathlib.Tactic

set_option autoImplicit false

open scoped BigOperators

/-!
# Prime-power atoms before exponent collapse

The source-faithful arithmetic object in this file distinguishes an atom at
`p^m` from `m` copies of the atom at `p`.  The natural collapse to net
prime exponents is a split surjection, but it is not injective.

This is the exact information-loss boundary required before any explicit-
formula, quadratic, or Weil comparison.  It uses no prime-distribution
estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale

/-- Positive exponent carried by one prime-power atom. -/
abbrev PositiveExponent := {m : ℕ // 0 < m}

/-- One source atom indexed by a prime and a positive exponent. -/
structure PrimePowerAtom where
  prime : PrimeIndex
  exponent : PositiveExponent
deriving DecidableEq

/-- Finite linear combinations of prime-power atoms. -/
abbrev PrimePowerModule (R : Type*) [Zero R] := PrimePowerAtom →₀ R

/-- Canonical atom constructor. -/
def atom (p : PrimeIndex) (m : ℕ) (hm : 0 < m) : PrimePowerAtom :=
  ⟨p, ⟨m, hm⟩⟩

/-- The exponent-one atom. -/
def unitAtom (p : PrimeIndex) : PrimePowerAtom :=
  atom p 1 (by simp)

/-- The exponent-two atom. -/
def squareAtom (p : PrimeIndex) : PrimePowerAtom :=
  atom p 2 (by norm_num)

@[simp] theorem unitAtom_prime (p : PrimeIndex) : (unitAtom p).prime = p := rfl
@[simp] theorem squareAtom_prime (p : PrimeIndex) : (squareAtom p).prime = p := rfl
@[simp] theorem unitAtom_exponent (p : PrimeIndex) : (unitAtom p).exponent.1 = 1 := rfl
@[simp] theorem squareAtom_exponent (p : PrimeIndex) : (squareAtom p).exponent.1 = 2 := rfl

/-- The Archimedean location attached to one atom. -/
noncomputable def logLocation (a : PrimePowerAtom) : ℝ :=
  (a.exponent.1 : ℝ) * Real.log (a.prime.1 : ℝ)

/-- One atom contributes its exponent to its prime coordinate. -/
def atomCollapseHom (a : PrimePowerAtom) : ℤ →+ PrimeExponent where
  toFun k := Finsupp.single a.prime ((a.exponent.1 : ℤ) * k)
  map_zero' := by simp
  map_add' x y := by
    simp [mul_add, Finsupp.single_add]

/-- Collapse the source-faithful prime-power atom module to net prime
exponents.  This map deliberately forgets how an exponent was partitioned
among prime-power atoms. -/
def collapse : PrimePowerModule ℤ →+ PrimeExponent :=
  Finsupp.liftAddHom atomCollapseHom

@[simp]
theorem collapse_single (a : PrimePowerAtom) (k : ℤ) :
    collapse (Finsupp.single a k) =
      Finsupp.single a.prime ((a.exponent.1 : ℤ) * k) := by
  simp [collapse, atomCollapseHom]

/-- Insert an exponent vector using only exponent-one atoms. -/
def unitAtomSection : PrimeExponent →+ PrimePowerModule ℤ :=
  Finsupp.liftAddHom fun p => Finsupp.singleAddHom (unitAtom p)

@[simp]
theorem unitAtomSection_single (p : PrimeIndex) (k : ℤ) :
    unitAtomSection (Finsupp.single p k) =
      Finsupp.single (unitAtom p) k := by
  simp [unitAtomSection]

/-- The collapse has an explicit right inverse. -/
theorem collapse_unitAtomSection (x : PrimeExponent) :
    collapse (unitAtomSection x) = x := by
  classical
  induction x using Finsupp.induction with
  | zero =>
      simp [collapse, unitAtomSection]
  | @single_add p k x hp hk ih =>
      rw [map_add, map_add, ih]
      simp [unitAtomSection, collapse_single]

/-- Therefore collapse is surjective. -/
theorem collapse_surjective : Function.Surjective collapse := by
  intro x
  exact ⟨unitAtomSection x, collapse_unitAtomSection x⟩

theorem squareAtom_ne_unitAtom (p : PrimeIndex) :
    squareAtom p ≠ unitAtom p := by
  intro h
  have h' := congrArg (fun a : PrimePowerAtom => a.exponent.1) h
  norm_num at h'

/-- The elementary information-loss witness:
one `p^2` atom minus two `p` atoms. -/
def collapseKernelWitness (p : PrimeIndex) : PrimePowerModule ℤ :=
  Finsupp.single (squareAtom p) 1 -
    Finsupp.single (unitAtom p) 2

theorem collapseKernelWitness_apply_square (p : PrimeIndex) :
    collapseKernelWitness p (squareAtom p) = 1 := by
  classical
  simp [collapseKernelWitness, squareAtom_ne_unitAtom]

/-- The elementary witness is genuinely nonzero. -/
theorem collapseKernelWitness_ne_zero (p : PrimeIndex) :
    collapseKernelWitness p ≠ 0 := by
  intro h
  have h' := congrArg (fun x : PrimePowerModule ℤ => x (squareAtom p)) h
  simp [collapseKernelWitness_apply_square] at h'

/-- The elementary witness is killed by exponent collapse. -/
theorem collapseKernelWitness_mem_kernel (p : PrimeIndex) :
    collapse (collapseKernelWitness p) = 0 := by
  classical
  rw [collapseKernelWitness, map_sub, collapse_single, collapse_single]
  change Finsupp.single p (2 : ℤ) - Finsupp.single p (1 * 2 : ℤ) = 0
  norm_num

/-- Prime-power collapse is never injective. -/
theorem collapse_not_injective (p : PrimeIndex) :
    ¬ Function.Injective collapse := by
  intro h
  have hz :
      collapse (collapseKernelWitness p) = collapse 0 := by
    simpa using collapseKernelWitness_mem_kernel p
  have heq := h hz
  exact collapseKernelWitness_ne_zero p (by simpa using heq)

/-- Atom readout `φ` factors through net exponent data when one additive map
on the exponent lattice reproduces every atomic value. -/
def FactorsThroughCollapse {A : Type*} [AddCommGroup A]
    (φ : PrimePowerAtom → A) : Prop :=
  ∃ ψ : PrimeExponent →+ A, ∀ a,
    φ a = ψ (Finsupp.single a.prime (a.exponent.1 : ℤ))

/-- Any readout surviving exponent collapse must be linear in the prime-power
exponent along each fixed prime ray. -/
theorem factorsThroughCollapse_exponent_linear
    {A : Type*} [AddCommGroup A]
    {φ : PrimePowerAtom → A}
    (h : FactorsThroughCollapse φ)
    (p : PrimeIndex) (m : ℕ) (hm : 0 < m) :
    φ (atom p m hm) = (m : ℤ) • φ (unitAtom p) := by
  obtain ⟨ψ, hψ⟩ := h
  rw [hψ, hψ]
  have hsingle :
      Finsupp.single p (m : ℤ) =
        (m : ℤ) • Finsupp.single p (1 : ℤ) := by
    ext q
    by_cases hq : q = p
    · subst q
      simp
    · simp [hq]
  change ψ (Finsupp.single p (m : ℤ)) = (m : ℤ) • ψ (Finsupp.single p (1 : ℤ))
  rw [hsingle, map_zsmul]

/-- A deliberately nonlinear atom readout used as a hostile control. -/
def squaredExponentReadout (a : PrimePowerAtom) : ℤ :=
  (a.exponent.1 : ℤ) ^ 2

/-- The nonlinear readout cannot factor through exponent collapse. -/
theorem squaredExponentReadout_not_factors (p : PrimeIndex) :
    ¬ FactorsThroughCollapse squaredExponentReadout := by
  intro h
  have hlin :=
    factorsThroughCollapse_exponent_linear h p 2 (by norm_num)
  change (2 : ℤ) ^ 2 = (2 : ℤ) • (1 : ℤ) ^ 2 at hlin
  norm_num at hlin

/-- Read an atom by evaluating an arbitrary real test at its logarithmic
prime-power location. -/
noncomputable def logTestReadout (f : ℝ → ℝ) (a : PrimePowerAtom) : ℝ :=
  f (logLocation a)

/-- Factoring a logarithmic test readout through exponent coordinates forces
integer-linearity along every prime ray.  This condition is not automatic for
an arbitrary explicit-formula test. -/
theorem logTest_factorization_requires_prime_ray_linearity
    (f : ℝ → ℝ) (h : FactorsThroughCollapse (logTestReadout f))
    (p : PrimeIndex) (m : ℕ) (hm : 0 < m) :
    f ((m : ℝ) * Real.log (p.1 : ℝ)) =
      (m : ℤ) • f (Real.log (p.1 : ℝ)) := by
  have hlin := factorsThroughCollapse_exponent_linear h p m hm
  change f ((m : ℝ) * Real.log (p.1 : ℝ)) =
    (m : ℤ) • f (((1 : ℕ) : ℝ) * Real.log (p.1 : ℝ)) at hlin
  simpa only [Nat.cast_one, one_mul] using hlin

/-- A finite source stage for the dynamically sized fourth witness channel. -/
structure PrimePowerWitnessStage where
  atoms : Finset PrimePowerAtom

/-- Witness indices carried by one finite prime-power source stage. -/
def PrimePowerWitnessStage.WitnessIndex
    (stage : PrimePowerWitnessStage) : Type :=
  {a : PrimePowerAtom // a ∈ stage.atoms}

instance (stage : PrimePowerWitnessStage) :
    Fintype stage.WitnessIndex :=
  Fintype.ofFinset stage.atoms fun _ => Iff.rfl

/-- Populate only the witness *channel* index by prime-power atoms.  The three
triangle phases remain separate in the parent three-plus-one type. -/
def primePowerDynamicWitnessChannel :
    GRWTSK.Geometry.ThreePlusOne.DynamicWitnessChannel
      PrimePowerWitnessStage where
  WitnessIndex := PrimePowerWitnessStage.WitnessIndex
  finiteWitness := fun stage => Finite.of_fintype stage.WitnessIndex

end GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms

end
