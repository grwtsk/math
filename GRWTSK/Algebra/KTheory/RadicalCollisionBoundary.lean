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

/-- The source-dependent diagonal-biased arithmetic diffusion detects
both Boolean multiplicity labels after one step from **any**
nonnegative initial finite-scope distribution with positive mass.
Nevertheless, no decoder depending only on the radical-derived
K₀-shaped feature recovers these labels on the certified scope.
This is finite type coverage coupled to a concrete information-loss
obstruction; no analytic K-theory or asymptotic steering is inferred. -/
theorem multiplicityOneType_diagonal_complete_and_collision
    (lift : ℕ →* M) (N : ℕ) (hN : 1 ≤ N) (h4 : 4 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_positive : ∃ n ∈ scope N, 0 < initial n) :
    (certifiedArithmeticInventory 3 N hN).sieveTypeCompleteAt
        1 multiplicityOneType
        (fun _ n => (diagonalKernel 3 N hN).step initial n) 1 ∧
      ¬ ∃ decode : GrothendieckKZero M → Bool,
          ∀ n ∈ (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1,
            multiplicityOneType n = decode (kZeroRadical lift n) := by
  constructor
  · apply (diagonalKernel_certified_oneStep_complete_iff
      3 N hN initial initial_nonneg initial_positive
        multiplicityOneType).mpr
    intro label
    cases label with
    | false =>
        refine ⟨4, ?_, multiplicityOneType_four, ?_⟩
        · change (4 : ℕ) ∈ Finset.Icc 1 N
          exact Finset.mem_Icc.mpr ⟨by omega, h4⟩
        · decide
    | true =>
        refine ⟨2, ?_, multiplicityOneType_two, ?_⟩
        · change (2 : ℕ) ∈ Finset.Icc 1 N
          exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
        · decide
  · exact no_exact_multiplicityOneType_decoder_on_certified_sieve
      lift N hN h4

/-! ## Explicit rate for two collision-distinct exact type fibers

For every cutoff N ≥ 4, both Boolean labels already have arithmetic
witnesses 2 and 4. The diagonal source-dependent kernel assigns at
least 1/(2*N²) mass to either type after *every positive* number of
steps from any normalized nonnegative input.

This lower bound is uniform in the step count, not a positive
N-independent limiting density or character-cancellation result.
-/

/-- Quantitative finite-cutoff steering for both Boolean 2-adic
multiplicity types. No K₀ injectivity or analytic mixing is assumed;
the two labels use distinct representatives 2 and 4 even though
their radical-derived K₀-shaped observations collide. -/
theorem multiplicityOneType_diagonal_mass_ge_inv_two_cutoff_sq
    (N : ℕ) (hN : 1 ≤ N) (h4 : 4 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_mass_one : (∑ n ∈ scope N, initial n) = 1)
    (depth : ℕ) (label : Bool) :
    ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ ≤
      (diagonalKernel 3 N hN).typeMass initial
        multiplicityOneType (depth + 1) label := by
  cases label with
  | false =>
      apply diagonalKernel_typeMass_succ_ge_inv_two_cutoff_sq
        3 N hN initial initial_nonneg initial_mass_one
        multiplicityOneType false 4 depth
      · change (4 : ℕ) ∈ Finset.Icc 1 N
        exact Finset.mem_Icc.mpr ⟨by omega, h4⟩
      · exact multiplicityOneType_four
      · decide
  | true =>
      apply diagonalKernel_typeMass_succ_ge_inv_two_cutoff_sq
        3 N hN initial initial_nonneg initial_mass_one
        multiplicityOneType true 2 depth
      · change (2 : ℕ) ∈ Finset.Icc 1 N
        exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
      · exact multiplicityOneType_two
      · decide

/-- The polynomial baseline is strictly positive at every finite
cutoff N≥4. It tends to zero with the cutoff, so this conclusion
is not a positive limiting density statement. -/
theorem multiplicityOneType_diagonal_rate_pos
    (N : ℕ) (h4 : 4 ≤ N) :
    (0 : ℝ) < ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ := by
  have hn : (0 : ℝ) < (N : ℝ) := by
    exact_mod_cast (show 0 < N by omega)
  positivity

/-- Both finite Boolean multiplicity classes remain certified
type hits at *every positive diffusion time* from any nonnegative
unit-mass initial sieve distribution, with the certified graph
search depth fixed at one. This follows from the explicit
inverse-quadratic quantitative rate and does not infer a prime-
type density or a positive lower bound uniform in N. -/
theorem multiplicityOneType_diagonal_complete_all_positive_steps
    (N : ℕ) (hN : 1 ≤ N) (h4 : 4 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_mass_one : (∑ n ∈ scope N, initial n) = 1) :
    ∀ depth : ℕ,
      (certifiedArithmeticInventory 3 N hN).sieveTypeCompleteAt
        1 multiplicityOneType
        (fun _ n => (diagonalKernel 3 N hN).evolve
          initial (depth + 1) n) 1 := by
  intro depth label
  have hbase :
      (0 : ℝ) < ((2 : ℝ) * (N : ℝ) * (N : ℝ))⁻¹ :=
    multiplicityOneType_diagonal_rate_pos N h4
  cases label with
  | false =>
      have hfour : (4 : ℕ) ∈ scope N := by
        change (4 : ℕ) ∈ Finset.Icc 1 N
        exact Finset.mem_Icc.mpr ⟨by omega, h4⟩
      have hreach :
          (4 : ℕ) ∈
            (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1 := by
        rw [certifiedArithmeticInventory_search_one_eq_survivors 3 N hN]
        exact Finset.mem_filter.mpr ⟨hfour, by decide⟩
      refine ⟨4, hreach, multiplicityOneType_four, ?_⟩
      exact hbase.trans_le
        (diagonalKernel_evolve_succ_ge_inv_two_cutoff_sq
          3 N hN initial initial_nonneg initial_mass_one
          depth 4 hfour (by decide))
  | true =>
      have htwo : (2 : ℕ) ∈ scope N := by
        change (2 : ℕ) ∈ Finset.Icc 1 N
        exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
      have hreach :
          (2 : ℕ) ∈
            (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1 := by
        rw [certifiedArithmeticInventory_search_one_eq_survivors 3 N hN]
        exact Finset.mem_filter.mpr ⟨htwo, by decide⟩
      refine ⟨2, hreach, multiplicityOneType_two, ?_⟩
      exact hbase.trans_le
        (diagonalKernel_evolve_succ_ge_inv_two_cutoff_sq
          3 N hN initial initial_nonneg initial_mass_one
          depth 2 htwo (by decide))

/-! ## Arithmetic-progression suppliers for the buffered sieve

The progressions 12*k+1 and 12*k+2 are both coprime to 3.
Their exact prime-2 factorization types are respectively zero and
one, hence the existing Boolean classifier assigns them false and
true. These are unconditional elementary arithmetic witnesses, not
prime-counting or character-cancellation estimates. -/

/-- All integers 12*k+1 are coprime to the nontrivial modulus 3. -/
theorem twelve_mul_add_one_coprime_three (k : ℕ) :
    Nat.Coprime (12 * k + 1) 3 := by
  have hnot : ¬ (3 : ℕ) ∣ (12 * k + 1) := by
    rintro ⟨c, hc⟩
    omega
  have hp : Nat.Prime 3 := by norm_num
  exact ((Nat.Prime.coprime_iff_not_dvd hp).mpr hnot).symm

/-- The progression 12*k+2 survives the same arithmetic sieve. -/
theorem twelve_mul_add_two_coprime_three (k : ℕ) :
    Nat.Coprime (12 * k + 2) 3 := by
  have hnot : ¬ (3 : ℕ) ∣ (12 * k + 2) := by
    rintro ⟨c, hc⟩
    omega
  have hp : Nat.Prime 3 := by norm_num
  exact ((Nat.Prime.coprime_iff_not_dvd hp).mpr hnot).symm

/-- The progression 12*k+1 contains no prime factor 2, so it has
multiplicityOneType=false at every k. -/
theorem multiplicityOneType_twelve_mul_add_one (k : ℕ) :
    multiplicityOneType (12 * k + 1) = false := by
  have hnot : ¬ (2 : ℕ) ∣ (12 * k + 1) := by
    rintro ⟨c, hc⟩
    omega
  have hfactor : (12 * k + 1).factorization 2 = 0 :=
    Nat.factorization_eq_zero_of_not_dvd hnot
  simp [multiplicityOneType, twoAdicMultiplicityType, hfactor]

/-- The progression 12*k+2 has exactly one factor 2, and hence
multiplicityOneType=true at every k. -/
theorem multiplicityOneType_twelve_mul_add_two (k : ℕ) :
    multiplicityOneType (12 * k + 2) = true := by
  have hmzero : 6 * k + 1 ≠ 0 := by omega
  have hodd : ¬ (2 : ℕ) ∣ (6 * k + 1) := by
    rintro ⟨c, hc⟩
    omega
  have hfactorOdd : (6 * k + 1).factorization 2 = 0 :=
    Nat.factorization_eq_zero_of_not_dvd hodd
  have hfactorTwo : (2 : ℕ).factorization 2 = 1 := by
    have hp : Nat.Prime 2 := by norm_num
    exact hp.factorization_self
  have hdecomp : 12 * k + 2 = 2 * (6 * k + 1) := by omega
  have hfactor : (12 * k + 2).factorization 2 = 1 := by
    rw [hdecomp, Nat.factorization_mul (by norm_num) hmzero]
    simp [hfactorOdd, hfactorTwo]
  simp [multiplicityOneType, twoAdicMultiplicityType, hfactor]

/-- Each Boolean prime-2 multiplicity class contains at least
floor(N/12) coprime representatives in the positive cutoff when
N≥12. The proof is a finite injection of the arithmetic progressions
12*k+1 and 12*k+2, not an asymptotic prime-density hypothesis. -/
theorem multiplicityOneType_survivors_card_ge_div_twelve
    (N : ℕ) (h12 : 12 ≤ N) (label : Bool) :
    N / 12 ≤
      (bufferedTypeSurvivors 3 N multiplicityOneType label).card := by
  classical
  have progression (a : ℕ) (ha : 1 ≤ a) (ha12 : a ≤ 12)
      (htype : ∀ k : ℕ,
        multiplicityOneType (12 * k + a) = label)
      (hcoprime : ∀ k : ℕ,
        Nat.Coprime (12 * k + a) 3) :
      N / 12 ≤
        (bufferedTypeSurvivors 3 N multiplicityOneType label).card := by
    have hinj : Function.Injective (fun k : ℕ => 12 * k + a) := by
      intro i j hij
      omega
    have hsub :
        ((Finset.range (N / 12)).image (fun k : ℕ => 12 * k + a)) ⊆
          bufferedTypeSurvivors 3 N multiplicityOneType label := by
      intro target member
      obtain ⟨k, hk, rfl⟩ := Finset.mem_image.mp member
      have hscope : 12 * k + a ∈ scope N := by
        change 12 * k + a ∈ Finset.Icc 1 N
        have hlt : k < N / 12 := Finset.mem_range.mp hk
        exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩
      change 12 * k + a ∈
        (scope N).filter
          (fun n => multiplicityOneType n = label ∧ Nat.Coprime n 3)
      exact Finset.mem_filter.mpr
        ⟨hscope, htype k, hcoprime k⟩
    calc
      N / 12 = (Finset.range (N / 12)).card := by simp
      _ = ((Finset.range (N / 12)).image
            (fun k : ℕ => 12 * k + a)).card :=
        (Finset.card_image_of_injective _ hinj).symm
      _ ≤ (bufferedTypeSurvivors 3 N multiplicityOneType label).card :=
        Finset.card_le_card hsub
  cases label with
  | false =>
      exact progression 1 (by omega) (by omega)
        multiplicityOneType_twelve_mul_add_one
        twelve_mul_add_one_coprime_three
  | true =>
      exact progression 2 (by omega) (by omega)
        multiplicityOneType_twelve_mul_add_two
        twelve_mul_add_two_coprime_three

/-- The arithmetic progression count supplies a concrete uniform
survivor density of at least 1/24 for each Boolean type, at all N≥12.
The 1/24 constant is deliberately conservative: N≤24*floor(N/12). -/
theorem multiplicityOneType_buffered_survivor_density
    (N : ℕ) (h12 : 12 ≤ N) (label : Bool) :
    ((1 : ℝ) / 24) * (N : ℝ) ≤
      ((bufferedTypeSurvivors 3 N multiplicityOneType label).card : ℝ) := by
  have hcard : N / 12 ≤
      (bufferedTypeSurvivors 3 N multiplicityOneType label).card :=
    multiplicityOneType_survivors_card_ge_div_twelve N h12 label
  have hfloor : N ≤ 24 * (N / 12) := by omega
  have hbound : N ≤
      24 * (bufferedTypeSurvivors 3 N multiplicityOneType label).card :=
    hfloor.trans (Nat.mul_le_mul_left 24 hcard)
  have hreal :
      (N : ℝ) ≤
        (24 : ℝ) *
          ((bufferedTypeSurvivors 3 N multiplicityOneType label).card : ℝ) := by
    exact_mod_cast hbound
  nlinarith

/-- Cutoff-independent positive mass for both exact Boolean
prime-2 multiplicity types under the **buffered** radical sieve.
For every N≥12, every positive Markov time and every nonnegative
unit-mass initial distribution, each type receives ≥ 1/96 mass.
This is a finite two-type uniform steering result, not a proof of
prime-counting asymptotics or of completeness for all valuation types. -/
theorem multiplicityOneType_buffered_mass_ge_one_ninety_six
    (N : ℕ) (hN : 1 ≤ N) (h12 : 12 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_mass_one : (∑ n ∈ scope N, initial n) = 1)
    (depth : ℕ) (label : Bool) :
    (1 : ℝ) / 96 ≤
      (bufferedDiagonalKernel 3 N hN).typeMass
        initial multiplicityOneType (depth + 1) label := by
  have hcount :
      ((1 : ℝ) / 24) * (N : ℝ) ≤
        ((bufferedTypeSurvivors 3 N multiplicityOneType label).card : ℝ) :=
    multiplicityOneType_buffered_survivor_density N h12 label
  have hmass :=
    bufferedDiagonalKernel_typeMass_ge_of_survivor_density
      3 N hN initial initial_nonneg initial_mass_one
      multiplicityOneType label ((1 : ℝ) / 24) depth hcount
  convert hmass using 1 <;> norm_num

end GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
