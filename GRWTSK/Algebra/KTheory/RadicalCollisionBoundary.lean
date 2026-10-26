/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.Algebra.KTheory.GrothendieckPort
import GRWTSK.GraphSandwichDiffusion
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Arithmetic radical collisions under a K₀-shaped group completion

The arithmetic radical is a **squarefree compression**. Given an explicitly
supplied multiplicative map from natural numbers into a commutative monoid
of stable objects, its group-completed observable cannot recover discarded
prime exponents. This is a typed information-loss boundary, not a
construction of analytic K₀ for a C*-algebra, a complete K-invariant, or
a map from primitive additive triples without a separate adapter.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.KTheory.RadicalCollisionBoundary

variable {M : Type*} [CommMonoid M]

/-- A radical-dependent value in the universal group completion.
The lift and the stable-object monoid must be supplied explicitly. -/
noncomputable def kZeroRadical (lift : ℕ →* M) (n : ℕ) :
    GrothendieckKZero M :=
  Algebra.GrothendieckGroup.of (lift (Nat.radical n))

/-- Arithmetic radical collisions are invisible to every observable
factoring through this K₀-shaped group completion. -/
theorem kZeroRadical_eq_of_radical_eq
    (lift : ℕ →* M) {m n : ℕ}
    (h : Nat.radical m = Nat.radical n) :
    kZeroRadical lift m = kZeroRadical lift n := by
  unfold kZeroRadical
  rw [h]

/-- Positive powers retain the same squarefree radical, and hence the
same radical-factored group-completion value. -/
theorem kZeroRadical_pow (lift : ℕ →* M)
    (n k : ℕ) (hk : k ≠ 0) :
    kZeroRadical lift (n ^ k) = kZeroRadical lift n := by
  apply kZeroRadical_eq_of_radical_eq
  exact UniqueFactorizationMonoid.radical_pow n hk

/-- A radical-factored K₀-shaped observable is never injective on all
natural numbers: 2 and 2² are a concrete collision fixture. -/
theorem kZeroRadical_not_injective (lift : ℕ →* M) :
    ¬ Function.Injective (kZeroRadical lift) := by
  intro hinj
  have h : (2 : ℕ) ^ 2 = 2 :=
    hinj (kZeroRadical_pow lift 2 2 (by norm_num))
  norm_num at h

/-- An observation that separates two radical-factored group-completion
values certifies distinct radicals. The converse is not asserted:
neither the lift nor group completion need be injective. -/
theorem radical_ne_of_kZero_observation_ne
    {C : Type*} (lift : ℕ →* M)
    (observer : GrothendieckKZero M → C) {m n : ℕ}
    (h : observer (kZeroRadical lift m) ≠
      observer (kZeroRadical lift n)) :
    Nat.radical m ≠ Nat.radical n := by
  intro sameRadical
  exact h (congrArg observer
    (kZeroRadical_eq_of_radical_eq lift sameRadical))

/-- A stable port cannot recover exponent information once the source
observable has passed through the arithmetic radical. -/
theorem kZeroRadical_port_pow_collision
    {N : Type*} [CommMonoid N]
    (port : StablePort M N) (lift : ℕ →* M)
    (n k : ℕ) (hk : k ≠ 0) :
    port.kZeroMap (kZeroRadical lift (n ^ k)) =
      port.kZeroMap (kZeroRadical lift n) :=
  congrArg port.kZeroMap (kZeroRadical_pow lift n k hk)

/-- An exact natural-number type decoder cannot factor through the
pair of a radical-derived K₀-shaped class and that same arithmetic
radical. Distinct positive powers remain a hostile collision fixture.
This specializes the obstruction represented by
`GRWTSK.Algebra.KTheory.JointCollision`. -/
theorem no_exact_nat_type_decoder (lift : ℕ →* M) :
    ¬ ∃ decoder : GrothendieckKZero M × ℕ → ℕ,
        ∀ n : ℕ, decoder (kZeroRadical lift n, Nat.radical n) = n := by
  rintro ⟨decoder, correct⟩
  have hrad : Nat.radical ((2 : ℕ) ^ 2) = Nat.radical 2 :=
    UniqueFactorizationMonoid.radical_pow 2 (by norm_num)
  have hk : kZeroRadical lift ((2 : ℕ) ^ 2) =
      kZeroRadical lift 2 :=
    kZeroRadical_pow lift 2 2 (by norm_num)
  have hcollision :
      decoder (kZeroRadical lift ((2 : ℕ) ^ 2),
        Nat.radical ((2 : ℕ) ^ 2)) =
      decoder (kZeroRadical lift 2, Nat.radical 2) :=
    congrArg decoder (Prod.ext hk hrad)
  have hcontra : (2 : ℕ) ^ 2 = 2 := by
    calc
      (2 : ℕ) ^ 2 =
          decoder (kZeroRadical lift ((2 : ℕ) ^ 2),
            Nat.radical ((2 : ℕ) ^ 2)) := (correct _).symm
      _ = decoder (kZeroRadical lift 2, Nat.radical 2) :=
        hcollision
      _ = 2 := correct 2
  norm_num at hcontra

/-- Any deterministic steering or diffusion output that only reads the
radical-derived K₀-shaped feature remains constant on equal-radical
inputs. This is a collision obstruction, not an analytic mixing theorem. -/
theorem steered_observation_eq_of_radical_eq
    {State : Type*} (lift : ℕ →* M)
    (steer : GrothendieckKZero M → State)
    {m n : ℕ} (h : Nat.radical m = Nat.radical n) :
    steer (kZeroRadical lift m) = steer (kZeroRadical lift n) :=
  congrArg steer (kZeroRadical_eq_of_radical_eq lift h)

/-- If two inputs have the same radical-derived K₀-shaped feature but
different exact types, no feature-only steering map can decode both.
The type-separation premise is explicit. -/
theorem no_type_complete_feature_only_steering_of_collision
    {TypeLabel : Type*} (lift : ℕ →* M)
    (typeOf : ℕ → TypeLabel)
    {m n : ℕ}
    (hRadical : Nat.radical m = Nat.radical n)
    (hType : typeOf m ≠ typeOf n) :
    ¬ ∃ steer : GrothendieckKZero M → TypeLabel,
        ∀ x : ℕ, steer (kZeroRadical lift x) = typeOf x := by
  rintro ⟨steer, correct⟩
  apply hType
  calc
    typeOf m = steer (kZeroRadical lift m) := (correct m).symm
    _ = steer (kZeroRadical lift n) :=
      steered_observation_eq_of_radical_eq lift steer hRadical
    _ = typeOf n := correct n

/-! ## A concrete multiplicity-sensitive certified-sieve collision

This comparison keeps the arithmetic kernel/inventory separate from
the K₀-shaped group completion: the former certifies positive finite
coprimality transitions, while the latter depends only on the radical.
Two different exact 2-adic valuation types can both carry positive
sieve mass even though K₀-shaped radical-only decoding fails.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/

open GRWTSK.GraphSandwichDiffusion
open GRWTSK.GraphSandwichDiffusion.ArithmeticSieveKernel

/-- Multiplicity-sensitive arithmetic type: the actual exponent of
prime 2 in the natural factorization. Unlike radical support, this
classifier records prime-power depth. -/
def twoAdicMultiplicityType (n : ℕ) : ℕ := n.factorization 2

theorem twoAdicMultiplicityType_two :
    twoAdicMultiplicityType 2 = 1 := by
  change (2 : ℕ).factorization 2 = 1
  have hp : Nat.Prime 2 := by norm_num
  exact hp.factorization_self

theorem twoAdicMultiplicityType_four :
    twoAdicMultiplicityType 4 = 2 := by
  change (4 : ℕ).factorization 2 = 2
  have hp : Nat.Prime 2 := by norm_num
  have hpow : (2 : ℕ) ^ 2 = 4 := by norm_num
  rw [← hpow]
  exact Nat.factorization_pow_self (p := 2) (n := 2) hp

/-- The two positive integers 2 and 4 have distinct exact
multiplicity types despite the same arithmetic radical. -/
theorem twoAdicMultiplicityType_two_ne_four :
    twoAdicMultiplicityType 2 ≠ twoAdicMultiplicityType 4 := by
  rw [twoAdicMultiplicityType_two, twoAdicMultiplicityType_four]
  norm_num

/-- Both multiplicity types are positively represented in the
certified arithmetic sieve at depth one, for q = 3 and N ≥ 4.
The type set here is the two exhibited types, not every possible
multiplicity type. -/
theorem two_four_certified_type_hits
    (N : ℕ) (hN : 1 ≤ N) (h4 : 4 ≤ N) :
    (certifiedArithmeticInventory 3 N hN).sieveTypeHit
        1 twoAdicMultiplicityType
        (fun _ n => radicalCoprimeWeight 3 n) 1
        (twoAdicMultiplicityType 2) ∧
    (certifiedArithmeticInventory 3 N hN).sieveTypeHit
        1 twoAdicMultiplicityType
        (fun _ n => radicalCoprimeWeight 3 n) 1
        (twoAdicMultiplicityType 4) := by
  constructor
  · apply (certifiedArithmeticInventory_oneStep_hit_iff
      3 N hN twoAdicMultiplicityType
        (twoAdicMultiplicityType 2)).mpr
    refine ⟨2, ?_, rfl, ?_⟩
    · change (2 : ℕ) ∈ Finset.Icc 1 N
      exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
    · decide
  · apply (certifiedArithmeticInventory_oneStep_hit_iff
      3 N hN twoAdicMultiplicityType
        (twoAdicMultiplicityType 4)).mpr
    refine ⟨4, ?_, rfl, ?_⟩
    · change (4 : ℕ) ∈ Finset.Icc 1 N
      exact Finset.mem_Icc.mpr ⟨by omega, h4⟩
    · decide

/-- The actual arithmetic certified inventory contains two distinct
exact multiplicity types but a K₀-shaped radical-only feature cannot
decode their types on that certified scope. This obstruction uses the
explicit finite graph construction, not the unrelated seed graph.
It does not prevent the two types from receiving positive mass. -/
theorem no_exact_twoAdic_type_decoder_on_certified_sieve
    (lift : ℕ →* M) (N : ℕ) (hN : 1 ≤ N) (h4 : 4 ≤ N) :
    ¬ ∃ decode : GrothendieckKZero M → ℕ,
        ∀ n ∈ (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1,
          twoAdicMultiplicityType n = decode (kZeroRadical lift n) := by
  have htwoScope : (2 : ℕ) ∈ scope N := by
    change (2 : ℕ) ∈ Finset.Icc 1 N
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  have hfourScope : (4 : ℕ) ∈ scope N := by
    change (4 : ℕ) ∈ Finset.Icc 1 N
    exact Finset.mem_Icc.mpr ⟨by omega, h4⟩
  have htwoCoprime : Nat.Coprime 2 3 := by decide
  have hfourCoprime : Nat.Coprime 4 3 := by decide
  have htwoReach :
      (2 : ℕ) ∈
        (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1 := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors 3 N hN]
    exact Finset.mem_filter.mpr ⟨htwoScope, htwoCoprime⟩
  have hfourReach :
      (4 : ℕ) ∈
        (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1 := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors 3 N hN]
    exact Finset.mem_filter.mpr ⟨hfourScope, hfourCoprime⟩
  have hpow : (2 : ℕ) ^ 2 = 4 := by norm_num
  have hsameK : kZeroRadical lift (2 : ℕ) =
      kZeroRadical lift (4 : ℕ) := by
    have h := kZeroRadical_pow lift 2 2 (by norm_num)
    simpa only [hpow] using h.symm
  exact (certifiedArithmeticInventory 3 N hN).no_exact_feature_type_of_collision
    1 twoAdicMultiplicityType (kZeroRadical lift) 1
    htwoReach hfourReach hsameK twoAdicMultiplicityType_two_ne_four

/-- Finite multiplicity-sensitive type label. It distinguishes
whether the exponent of prime 2 is exactly one; it is not a
reconstruction of all possible factorization types. -/
def multiplicityOneType (n : ℕ) : Bool :=
  decide (twoAdicMultiplicityType n = 1)

theorem multiplicityOneType_two :
    multiplicityOneType 2 = true := by
  simp [multiplicityOneType, twoAdicMultiplicityType_two]

theorem multiplicityOneType_four :
    multiplicityOneType 4 = false := by
  simp [multiplicityOneType, twoAdicMultiplicityType_four]

/-- Both declared Boolean multiplicity types have positive certified
arithmetic sieve weight at search depth one for q=3, N≥4. This is
actual finite type coverage, not asymptotic completeness. -/
theorem multiplicityOneType_completeAt_certified_sieve
    (N : ℕ) (hN : 1 ≤ N) (h4 : 4 ≤ N) :
    (certifiedArithmeticInventory 3 N hN).sieveTypeCompleteAt
      1 multiplicityOneType
      (fun _ n => radicalCoprimeWeight 3 n) 1 := by
  intro targetType
  cases targetType with
  | false =>
      apply (certifiedArithmeticInventory_oneStep_hit_iff
        3 N hN multiplicityOneType false).mpr
      refine ⟨4, ?_, ?_, ?_⟩
      · change (4 : ℕ) ∈ Finset.Icc 1 N
        exact Finset.mem_Icc.mpr ⟨by omega, h4⟩
      · exact multiplicityOneType_four
      · decide
  | true =>
      apply (certifiedArithmeticInventory_oneStep_hit_iff
        3 N hN multiplicityOneType true).mpr
      refine ⟨2, ?_, ?_, ?_⟩
      · change (2 : ℕ) ∈ Finset.Icc 1 N
        exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
      · exact multiplicityOneType_two
      · decide

/-- Radical-factored K₀-shaped data cannot decode the two Boolean
multiplicity labels on the exact finite certified scope, despite
positive sieve coverage of both types. -/
theorem no_exact_multiplicityOneType_decoder_on_certified_sieve
    (lift : ℕ →* M) (N : ℕ) (hN : 1 ≤ N) (h4 : 4 ≤ N) :
    ¬ ∃ decode : GrothendieckKZero M → Bool,
        ∀ n ∈ (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1,
          multiplicityOneType n = decode (kZeroRadical lift n) := by
  have htwoScope : (2 : ℕ) ∈ scope N := by
    change (2 : ℕ) ∈ Finset.Icc 1 N
    exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
  have hfourScope : (4 : ℕ) ∈ scope N := by
    change (4 : ℕ) ∈ Finset.Icc 1 N
    exact Finset.mem_Icc.mpr ⟨by omega, h4⟩
  have htwoReach :
      (2 : ℕ) ∈
        (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1 := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors 3 N hN]
    exact Finset.mem_filter.mpr ⟨htwoScope, by decide⟩
  have hfourReach :
      (4 : ℕ) ∈
        (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1 := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors 3 N hN]
    exact Finset.mem_filter.mpr ⟨hfourScope, by decide⟩
  have hpow : (2 : ℕ) ^ 2 = 4 := by norm_num
  have hsameK :
      kZeroRadical lift (2 : ℕ) = kZeroRadical lift (4 : ℕ) := by
    have h := kZeroRadical_pow lift 2 2 (by norm_num)
    simpa only [hpow] using h.symm
  have hdistinct :
      multiplicityOneType 2 ≠ multiplicityOneType 4 := by
    rw [multiplicityOneType_two, multiplicityOneType_four]
    decide
  exact (certifiedArithmeticInventory 3 N hN).no_exact_feature_type_of_collision
    1 multiplicityOneType (kZeroRadical lift) 1
    htwoReach hfourReach hsameK hdistinct

end GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
