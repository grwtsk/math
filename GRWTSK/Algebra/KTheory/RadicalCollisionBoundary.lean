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

/-- Buffered radical-coprimality sieve: for every N≥12 and every
nonnegative unit-mass input, both Boolean prime-2 multiplicity classes
remain certified type hits at every *positive* Markov time, with an
N-independent mass lower bound of 1/96 on each class.

Nevertheless, no decoder factoring only through the radical-derived
K₀-shaped feature can correctly distinguish the two types on this
certified scope (the 2 vs 4 collision persists).

This is a concrete two-type uniform coverage result under the
*buffered* weighting, not a theorem for the earlier unbuffered model,
all valuation types, analytic K₀/KK, or a Goldbach distribution. -/
theorem multiplicityOneType_buffered_uniform_complete_and_collision
    (lift : ℕ →* M)
    (N : ℕ) (hN : 1 ≤ N) (h12 : 12 ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_mass_one : (∑ n ∈ scope N, initial n) = 1) :
    (∀ depth : ℕ,
      (certifiedArithmeticInventory 3 N hN).sieveTypeCompleteAt
        1 multiplicityOneType
        (fun _ n => (bufferedDiagonalKernel 3 N hN).evolve
          initial (depth + 1) n) 1) ∧
    (∀ depth : ℕ, ∀ label : Bool,
      (1 : ℝ) / 96 ≤
        (bufferedDiagonalKernel 3 N hN).typeMass
          initial multiplicityOneType (depth + 1) label) ∧
    ¬ ∃ decode : GrothendieckKZero M → Bool,
        ∀ n ∈ (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1,
          multiplicityOneType n = decode (kZeroRadical lift n) := by
  have h4 : 4 ≤ N := by omega
  have hfloor :
      (0 : ℝ) < ((4 : ℝ) * (N : ℝ))⁻¹ :=
    bufferedDiagonalKernel_rate_pos N hN
  refine ⟨?_, ?_, ?_⟩
  · intro depth label
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
        exact hfloor.trans_le
          (bufferedDiagonalKernel_evolve_succ_ge_inv_four_cutoff
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
        exact hfloor.trans_le
          (bufferedDiagonalKernel_evolve_succ_ge_inv_four_cutoff
            3 N hN initial initial_nonneg initial_mass_one
            depth 2 htwo (by decide))
  · intro depth label
    exact multiplicityOneType_buffered_mass_ge_one_ninety_six
      N hN h12 initial initial_nonneg initial_mass_one depth label
  · exact no_exact_multiplicityOneType_decoder_on_certified_sieve
      lift N hN h4

/-! ## Pointwise asymptotic completeness for every fixed 2-adic type

For each exact prime-2 valuation k, the progression
  (2^k) * (12*j + 1)
is coprime to 3 and has valuation exactly k. When N is at least
12*2^k, a finite injection yields at least floor(N/(12*2^k))
different surviving integers of this type.

The buffered source-dependent sieve therefore has type-k mass
at least 1/(96*2^k) at *every positive Markov time* and cutoff
N≥12*2^k, regardless of its nonnegative unit-mass initial weights.

This is pointwise in k. The cutoff and positive mass constant depend
on k; no finite cutoff can simultaneously contain all natural
valuation types. K₀-shaped radical collisions still block exact
recovery of prime-power multiplicities from that feature.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/

/-- The arithmetic progression's exact period for valuation k. -/
def twoAdicTypePeriod (k : ℕ) : ℕ := 12 * 2 ^ k

/-- Its positive terms all have exact factorization exponent k at 2. -/
def twoAdicTypeProgression (k j : ℕ) : ℕ :=
  2 ^ k * (12 * j + 1)

theorem twoAdicTypePeriod_pos (k : ℕ) : 0 < twoAdicTypePeriod k := by
  dsimp [twoAdicTypePeriod]
  positivity

theorem twoAdicTypeProgression_pos (k j : ℕ) :
    0 < twoAdicTypeProgression k j := by
  dsimp [twoAdicTypeProgression]
  positivity

/-- Actual factorization, rather than radical support, records each
arbitrarily large fixed exponent k. -/
theorem twoAdicTypeProgression_factorization_two (k j : ℕ) :
    twoAdicMultiplicityType (twoAdicTypeProgression k j) = k := by
  have hp : Nat.Prime 2 := by norm_num
  have hpow : ((2 : ℕ) ^ k).factorization 2 = k :=
    Nat.factorization_pow_self hp
  have hpow_ne : (2 : ℕ) ^ k ≠ 0 := by positivity
  have hodd_ne : 12 * j + 1 ≠ 0 := by omega
  have hnot : ¬ (2 : ℕ) ∣ (12 * j + 1) := by
    rintro ⟨c, hc⟩
    omega
  have hodd : (12 * j + 1).factorization 2 = 0 :=
    Nat.factorization_eq_zero_of_not_dvd hnot
  change ((2 : ℕ) ^ k * (12 * j + 1)).factorization 2 = k
  rw [Nat.factorization_mul hpow_ne hodd_ne]
  simp [hpow, hodd]

/-- Multiplication by a positive power of 2 preserves coprimality to
3 for the progression of odd integers 12*j+1. -/
theorem twoAdicTypeProgression_coprime_three (k j : ℕ) :
    Nat.Coprime (twoAdicTypeProgression k j) 3 := by
  have htwo : Nat.Coprime 2 3 := by decide
  have hpow : Nat.Coprime ((2 : ℕ) ^ k) 3 := htwo.pow_left k
  have hodd : Nat.Coprime (12 * j + 1) 3 :=
    twelve_mul_add_one_coprime_three j
  change Nat.Coprime ((2 : ℕ) ^ k * (12 * j + 1)) 3
  exact Nat.coprime_mul_iff_left.mpr ⟨hpow, hodd⟩

/-- Different progression indices give distinct positive integers,
since multiplication by 2^k and by 12 is cancellative. -/
theorem twoAdicTypeProgression_injective (k : ℕ) :
    Function.Injective (twoAdicTypeProgression k) := by
  intro i j heq
  have hpow : (2 : ℕ) ^ k ≠ 0 := by positivity
  have hmul :
      (2 : ℕ) ^ k * (12 * i + 1) =
        (2 : ℕ) ^ k * (12 * j + 1) := by
    simpa only [twoAdicTypeProgression] using heq
  have hsame : 12 * i + 1 = 12 * j + 1 :=
    mul_left_cancel₀ hpow hmul
  omega

/-- If j is smaller than the quotient N/(12*2^k), the j-th
progression term lies in the inclusive integer sieve cutoff. -/
theorem twoAdicTypeProgression_mem_scope
    (k N j : ℕ) (hj : j < N / twoAdicTypePeriod k) :
    twoAdicTypeProgression k j ∈ scope N := by
  have hjle : j + 1 ≤ N / twoAdicTypePeriod k := by omega
  have hupper : twoAdicTypeProgression k j ≤ N := by
    calc
      twoAdicTypeProgression k j ≤
          twoAdicTypePeriod k * (j + 1) := by
        dsimp [twoAdicTypeProgression, twoAdicTypePeriod]
        calc
          (2 : ℕ) ^ k * (12 * j + 1) ≤
              (2 : ℕ) ^ k * (12 * (j + 1)) :=
            Nat.mul_le_mul_left _ (by omega)
          _ = (12 * 2 ^ k) * (j + 1) := by ring
      _ ≤ twoAdicTypePeriod k * (N / twoAdicTypePeriod k) :=
        Nat.mul_le_mul_left _ hjle
      _ ≤ N := Nat.mul_div_le N (twoAdicTypePeriod k)
  change twoAdicTypeProgression k j ∈ Finset.Icc 1 N
  exact Finset.mem_Icc.mpr
    ⟨Nat.succ_le_iff.mpr (twoAdicTypeProgression_pos k j), hupper⟩

/-- Finite arithmetic count: each fixed valuation k has at least
floor(N/(12*2^k)) distinct coprime representatives up to N.
This uses an explicit injective progression, not sieve density. -/
theorem twoAdicType_survivors_card_ge_floor (k N : ℕ) :
    N / twoAdicTypePeriod k ≤
      (bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card := by
  classical
  have hsub :
      ((Finset.range (N / twoAdicTypePeriod k)).image
        (twoAdicTypeProgression k)) ⊆
          bufferedTypeSurvivors 3 N twoAdicMultiplicityType k := by
    intro target ht
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp ht
    have hscope :
        twoAdicTypeProgression k j ∈ scope N :=
      twoAdicTypeProgression_mem_scope k N j (Finset.mem_range.mp hj)
    change twoAdicTypeProgression k j ∈
      (scope N).filter
        (fun n => twoAdicMultiplicityType n = k ∧ Nat.Coprime n 3)
    exact Finset.mem_filter.mpr
      ⟨hscope, twoAdicTypeProgression_factorization_two k j,
        twoAdicTypeProgression_coprime_three k j⟩
  calc
    N / twoAdicTypePeriod k =
        (Finset.range (N / twoAdicTypePeriod k)).card := by simp
    _ = ((Finset.range (N / twoAdicTypePeriod k)).image
          (twoAdicTypeProgression k)).card :=
      (Finset.card_image_of_injective _
        (twoAdicTypeProgression_injective k)).symm
    _ ≤ (bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card :=
      Finset.card_le_card hsub

/-- Division by a positive integer loses at most half the available
linear proportion when N ≥ that integer. In the present case,
each fixed valuation k has surviving density ≥ 1/(24*2^k).
No positive bound uniform in k is asserted. -/
theorem twoAdicType_survivor_density
    (k N : ℕ) (hcutoff : twoAdicTypePeriod k ≤ N) :
    ((1 : ℝ) / (24 * (2 : ℝ) ^ k)) * (N : ℝ) ≤
      ((bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card : ℝ) := by
  let d := twoAdicTypePeriod k
  have hdpos : 0 < d := twoAdicTypePeriod_pos k
  have hq : 1 ≤ N / d := by
    apply (Nat.le_div_iff_mul_le hdpos).mpr
    simpa only [one_mul] using hcutoff
  have hdle : d ≤ d * (N / d) := by
    calc
      d = d * 1 := by simp
      _ ≤ d * (N / d) := Nat.mul_le_mul_left d hq
  have hmodlt : N % d < d := Nat.mod_lt N hdpos
  have hmod : N % d + d * (N / d) = N := Nat.mod_add_div N d
  have hfloor : N ≤ 2 * (d * (N / d)) := by omega
  have hcard : N / d ≤
      (bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card :=
    twoAdicType_survivors_card_ge_floor k N
  have hbound : N ≤
      (24 * 2 ^ k) *
        (bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card := by
    calc
      N ≤ (2 * d) * (N / d) := by
        calc
          N ≤ 2 * (d * (N / d)) := hfloor
          _ = (2 * d) * (N / d) := by ring
      _ ≤ (2 * d) *
          (bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card :=
        Nat.mul_le_mul_left _ hcard
      _ = (24 * 2 ^ k) *
          (bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card := by
        dsimp [d, twoAdicTypePeriod]
        ring
  have hreal : (N : ℝ) ≤
      (24 : ℝ) * (2 : ℝ) ^ k *
        ((bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card : ℝ) := by
    exact_mod_cast hbound
  have hden : (0 : ℝ) < (24 : ℝ) * (2 : ℝ) ^ k := by positivity
  have hscaled :
      (N : ℝ) / ((24 : ℝ) * (2 : ℝ) ^ k) ≤
        ((bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card : ℝ) := by
    apply (div_le_iff₀ hden).mpr
    nlinarith [hreal]
  convert hscaled using 1 <;> ring

/-- Pointwise cutoff-independent buffered type mass: for every fixed
natural exponent k, any N ≥ 12*2^k, any nonnegative unit-mass initial
weights, and any positive Markov time, the exact type-k mass is at
least 1/(96*2^k). This lower bound depends on k, not N or time. -/
theorem twoAdicMultiplicityType_buffered_mass_ge_fixed_rate
    (k N : ℕ) (hN : 1 ≤ N)
    (hcutoff : twoAdicTypePeriod k ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_mass_one : (∑ n ∈ scope N, initial n) = 1)
    (depth : ℕ) :
    (1 : ℝ) / (96 * (2 : ℝ) ^ k) ≤
      (bufferedDiagonalKernel 3 N hN).typeMass
        initial twoAdicMultiplicityType (depth + 1) k := by
  have hcount :
      ((1 : ℝ) / (24 * (2 : ℝ) ^ k)) * (N : ℝ) ≤
        ((bufferedTypeSurvivors 3 N twoAdicMultiplicityType k).card : ℝ) :=
    twoAdicType_survivor_density k N hcutoff
  have hmass :=
    bufferedDiagonalKernel_typeMass_ge_of_survivor_density
      3 N hN initial initial_nonneg initial_mass_one
      twoAdicMultiplicityType k
      ((1 : ℝ) / (24 * (2 : ℝ) ^ k)) depth hcount
  calc
    (1 : ℝ) / (96 * (2 : ℝ) ^ k) =
        ((1 : ℝ) / (24 * (2 : ℝ) ^ k)) / 4 := by ring
    _ ≤ (bufferedDiagonalKernel 3 N hN).typeMass
          initial twoAdicMultiplicityType (depth + 1) k := hmass

/-- Explicit pointwise eventual positivity for the countably infinite
family of valuation types. The cutoff is allowed to depend on the
fixed type k, and the input may vary with N. This is NOT a common
finite cutoff supporting all types simultaneously. -/
theorem twoAdicMultiplicityType_buffered_eventually_pos
    (k : ℕ) :
    ∃ cutoff : ℕ, ∀ (N : ℕ) (hN : 1 ≤ N),
      cutoff ≤ N →
      ∀ (initial : ℕ → ℝ),
        (∀ n ∈ scope N, 0 ≤ initial n) →
        (∑ n ∈ scope N, initial n) = 1 →
        ∀ depth : ℕ,
          0 < (bufferedDiagonalKernel 3 N hN).typeMass
            initial twoAdicMultiplicityType (depth + 1) k := by
  refine ⟨twoAdicTypePeriod k, ?_⟩
  intro N hN hcutoff initial hnonneg hmass depth
  have hr : (0 : ℝ) < (1 : ℝ) / (96 * (2 : ℝ) ^ k) := by
    positivity
  exact hr.trans_le
    (twoAdicMultiplicityType_buffered_mass_ge_fixed_rate
      k N hN hcutoff initial hnonneg hmass depth)

/-- No finite positive integer scope can contain **every** natural
2-adic valuation type: if n∈[1,N], then n.factorization 2<n≤N. -/
theorem twoAdicMultiplicityType_lt_cutoff
    (N n : ℕ) (hn : n ∈ scope N) :
    twoAdicMultiplicityType n < N := by
  have hrange : 1 ≤ n ∧ n ≤ N := Finset.mem_Icc.mp hn
  have hn0 : n ≠ 0 := by omega
  have hval : twoAdicMultiplicityType n < n := by
    exact Nat.factorization_lt 2 hn0
  exact hval.trans_le hrange.2

/-- Negative control: at any fixed finite cutoff, the entire
unbounded type space ℕ is not certified complete, whatever finite
weights are supplied. This is compatible with eventual coverage
for each *fixed* type k as the cutoff increases. -/
theorem twoAdicMultiplicityType_no_finite_all_type_coverage
    (q N : ℕ) (hN : 1 ≤ N)
    (weights : ℕ → ℕ → ℝ) :
    ¬ (certifiedArithmeticInventory q N hN).sieveTypeCompleteAt
      1 twoAdicMultiplicityType weights 1 := by
  intro complete
  obtain ⟨n, hn, heq, _⟩ := complete N
  have hscope : n ∈ scope N := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors q N hN] at hn
    exact (Finset.mem_filter.mp hn).1
  have hlt := twoAdicMultiplicityType_lt_cutoff N n hscope
  omega

/-! ## Exact valuation types for arbitrary primes coprime to 3

The earlier fixed-prime-2 result is left unchanged. For an explicitly
supplied prime p with Nat.Coprime p 3, the progression
  p^k * (3*p*j + 1)
has exact p-adic exponent k, is coprime to 3 and has positive terms.
Its period 3*p^(k+1) gives a finite count without a prime-number
theorem, analytic character estimate or a claim about analytic K₀.

These are source-level proof candidates. -/

/-- The exact multiplicity of any chosen prime p, retaining
exponent information lost by the arithmetic radical. -/
def primeValuationType (p n : ℕ) : ℕ := n.factorization p

/-- A positive arithmetic period for each prime and exponent. -/
def primeValuationPeriod (p k : ℕ) : ℕ := 3 * p ^ (k + 1)

/-- A progression of integers with fixed prime-p exponent. -/
def primeValuationProgression (p k j : ℕ) : ℕ :=
  p ^ k * (3 * p * j + 1)

theorem primeValuationPeriod_pos
    (p k : ℕ) (hp : Nat.Prime p) :
    0 < primeValuationPeriod p k := by
  dsimp [primeValuationPeriod]
  positivity

theorem primeValuationProgression_pos
    (p k j : ℕ) (hp : Nat.Prime p) :
    0 < primeValuationProgression p k j := by
  dsimp [primeValuationProgression]
  positivity

/-- The tail 3*p*j+1 has no factor p, so the whole progression has
exact factorization exponent k at the chosen prime p. -/
theorem primeValuationProgression_factorization
    (p k j : ℕ) (hp : Nat.Prime p) :
    primeValuationType p (primeValuationProgression p k j) = k := by
  have hpow : (p ^ k).factorization p = k :=
    Nat.factorization_pow_self hp
  have hpow_ne : p ^ k ≠ 0 := by
    exact pow_ne_zero k hp.ne_zero
  have htail_ne : 3 * p * j + 1 ≠ 0 := by omega
  have hdivp : p ∣ 3 * p * j := by
    refine ⟨3 * j, ?_⟩
    ring
  have hnot : ¬ p ∣ (3 * p * j + 1) := by
    intro h
    have hone : p ∣ 1 := (Nat.dvd_add_iff_right hdivp).mp h
    have hle : p ≤ 1 := Nat.le_of_dvd (by decide : 0 < (1 : ℕ)) hone
    exact (not_le_of_gt hp.one_lt) hle
  have htail : (3 * p * j + 1).factorization p = 0 :=
    Nat.factorization_eq_zero_of_not_dvd hnot
  change (p ^ k * (3 * p * j + 1)).factorization p = k
  rw [Nat.factorization_mul hpow_ne htail_ne]
  simp [hpow, htail]

/-- This progression survives the fixed modulus-three sieve provided
the chosen prime p is coprime to 3. The condition excludes p=3. -/
theorem primeValuationProgression_coprime_three
    (p k j : ℕ) (hp : Nat.Prime p) (hcop : Nat.Coprime p 3) :
    Nat.Coprime (primeValuationProgression p k j) 3 := by
  have hdiv3 : (3 : ℕ) ∣ 3 * p * j := by
    refine ⟨p * j, ?_⟩
    ring
  have hnot : ¬ (3 : ℕ) ∣ (3 * p * j + 1) := by
    intro h
    have hone : (3 : ℕ) ∣ 1 := (Nat.dvd_add_iff_right hdiv3).mp h
    norm_num at hone
  have hprime3 : Nat.Prime 3 := by norm_num
  have htail : Nat.Coprime (3 * p * j + 1) 3 :=
    ((Nat.Prime.coprime_iff_not_dvd hprime3).mpr hnot).symm
  have hpow : Nat.Coprime (p ^ k) 3 := hcop.pow_left k
  change Nat.Coprime (p ^ k * (3 * p * j + 1)) 3
  exact Nat.coprime_mul_iff_left.mpr ⟨hpow, htail⟩

/-- The progression is injective in its index for prime p. -/
theorem primeValuationProgression_injective
    (p k : ℕ) (hp : Nat.Prime p) :
    Function.Injective (primeValuationProgression p k) := by
  intro i j heq
  have hpow : p ^ k ≠ 0 := pow_ne_zero k hp.ne_zero
  have hmul :
      p ^ k * (3 * p * i + 1) = p ^ k * (3 * p * j + 1) := by
    simpa only [primeValuationProgression] using heq
  have htail : 3 * p * i + 1 = 3 * p * j + 1 :=
    mul_left_cancel₀ hpow hmul
  have hprod : (3 * p) * i = (3 * p) * j :=
    Nat.add_right_cancel htail
  have hperiod : 3 * p ≠ 0 := by positivity
  exact mul_left_cancel₀ hperiod hprod

/-- Every progression term with j below N/period lies inside
the inclusive finite positive integer scope of the sieve. -/
theorem primeValuationProgression_mem_scope
    (p k N j : ℕ) (hp : Nat.Prime p)
    (hj : j < N / primeValuationPeriod p k) :
    primeValuationProgression p k j ∈ scope N := by
  have hjle : j + 1 ≤ N / primeValuationPeriod p k := by omega
  have hsmall : 1 ≤ 3 * p := by
    have hppos := hp.pos
    omega
  have hupper : primeValuationProgression p k j ≤ N := by
    calc
      primeValuationProgression p k j ≤
          p ^ k * (3 * p * (j + 1)) := by
        dsimp [primeValuationProgression]
        apply Nat.mul_le_mul_left
        calc
          3 * p * j + 1 ≤ 3 * p * j + 3 * p :=
            Nat.add_le_add_left hsmall _
          _ = 3 * p * (j + 1) := by ring
      _ = primeValuationPeriod p k * (j + 1) := by
        simp [primeValuationPeriod, pow_succ]
        ring
      _ ≤ primeValuationPeriod p k * (N / primeValuationPeriod p k) :=
        Nat.mul_le_mul_left _ hjle
      _ ≤ N := Nat.mul_div_le N (primeValuationPeriod p k)
  change primeValuationProgression p k j ∈ Finset.Icc 1 N
  exact Finset.mem_Icc.mpr
    ⟨Nat.succ_le_iff.mpr (primeValuationProgression_pos p k j hp), hupper⟩

/-- For any chosen prime p coprime to 3, the finite sieve has
at least floor(N/(3*p^(k+1))) distinct survivors with *exact*
prime-p valuation k. This is elementary finite counting. -/
theorem primeValuation_survivors_card_ge_floor
    (p k N : ℕ) (hp : Nat.Prime p) (hcop : Nat.Coprime p 3) :
    N / primeValuationPeriod p k ≤
      (bufferedTypeSurvivors 3 N (primeValuationType p) k).card := by
  classical
  have hsub :
      ((Finset.range (N / primeValuationPeriod p k)).image
        (primeValuationProgression p k)) ⊆
          bufferedTypeSurvivors 3 N (primeValuationType p) k := by
    intro target ht
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp ht
    have hscope :
        primeValuationProgression p k j ∈ scope N :=
      primeValuationProgression_mem_scope
        p k N j hp (Finset.mem_range.mp hj)
    change primeValuationProgression p k j ∈
      (scope N).filter
        (fun n => primeValuationType p n = k ∧ Nat.Coprime n 3)
    exact Finset.mem_filter.mpr
      ⟨hscope, primeValuationProgression_factorization p k j hp,
        primeValuationProgression_coprime_three p k j hp hcop⟩
  calc
    N / primeValuationPeriod p k =
        (Finset.range (N / primeValuationPeriod p k)).card := by simp
    _ = ((Finset.range (N / primeValuationPeriod p k)).image
          (primeValuationProgression p k)).card :=
      (Finset.card_image_of_injective _
        (primeValuationProgression_injective p k hp)).symm
    _ ≤ (bufferedTypeSurvivors 3 N (primeValuationType p) k).card :=
      Finset.card_le_card hsub

/-- For a fixed prime-p valuation k, once the cutoff exceeds the
progression period, the coprime type-k survivors occupy at least
N/(2*period) of the integer interval. The period depends on p,k. -/
theorem primeValuation_survivor_density
    (p k N : ℕ) (hp : Nat.Prime p) (hcop : Nat.Coprime p 3)
    (hcutoff : primeValuationPeriod p k ≤ N) :
    ((1 : ℝ) / (2 * (primeValuationPeriod p k : ℝ))) * (N : ℝ) ≤
      ((bufferedTypeSurvivors 3 N (primeValuationType p) k).card : ℝ) := by
  let d := primeValuationPeriod p k
  have hdpos : 0 < d := primeValuationPeriod_pos p k hp
  have hq : 1 ≤ N / d := by
    apply (Nat.le_div_iff_mul_le hdpos).mpr
    simpa only [one_mul] using hcutoff
  have hdle : d ≤ d * (N / d) := by
    calc
      d = d * 1 := by simp
      _ ≤ d * (N / d) := Nat.mul_le_mul_left d hq
  have hmodlt : N % d < d := Nat.mod_lt N hdpos
  have hmod : N % d + d * (N / d) = N := Nat.mod_add_div N d
  have hfloor : N ≤ 2 * (d * (N / d)) := by omega
  have hcard : N / d ≤
      (bufferedTypeSurvivors 3 N (primeValuationType p) k).card :=
    primeValuation_survivors_card_ge_floor p k N hp hcop
  have hbound : N ≤
      (2 * d) * (bufferedTypeSurvivors 3 N (primeValuationType p) k).card := by
    calc
      N ≤ 2 * (d * (N / d)) := hfloor
      _ = (2 * d) * (N / d) := by ring
      _ ≤ (2 * d) *
          (bufferedTypeSurvivors 3 N (primeValuationType p) k).card :=
        Nat.mul_le_mul_left _ hcard
  have hreal : (N : ℝ) ≤
      (2 : ℝ) * (d : ℝ) *
        ((bufferedTypeSurvivors 3 N (primeValuationType p) k).card : ℝ) := by
    exact_mod_cast hbound
  have hden : (0 : ℝ) < (2 : ℝ) * (d : ℝ) := by positivity
  have hscaled : (N : ℝ) / ((2 : ℝ) * (d : ℝ)) ≤
      ((bufferedTypeSurvivors 3 N (primeValuationType p) k).card : ℝ) := by
    apply (div_le_iff₀ hden).mpr
    nlinarith [hreal]
  convert hscaled using 1 <;> ring

/-- Every fixed prime-p exact valuation class has positive mass
in the *buffered* modulus-three sieve at all sufficiently large
cutoffs. This bound is independent of the cutoff and Markov time,
but depends on p and k through the arithmetic period. -/
theorem primeValuation_buffered_mass_ge_fixed_rate
    (p k N : ℕ) (hp : Nat.Prime p) (hcop : Nat.Coprime p 3)
    (hN : 1 ≤ N) (hcutoff : primeValuationPeriod p k ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_mass_one : (∑ n ∈ scope N, initial n) = 1)
    (depth : ℕ) :
    (1 : ℝ) / (8 * (primeValuationPeriod p k : ℝ)) ≤
      (bufferedDiagonalKernel 3 N hN).typeMass
        initial (primeValuationType p) (depth + 1) k := by
  have hcount :
      ((1 : ℝ) / (2 * (primeValuationPeriod p k : ℝ))) * (N : ℝ) ≤
        ((bufferedTypeSurvivors 3 N (primeValuationType p) k).card : ℝ) :=
    primeValuation_survivor_density p k N hp hcop hcutoff
  have hmass :=
    bufferedDiagonalKernel_typeMass_ge_of_survivor_density
      3 N hN initial initial_nonneg initial_mass_one
      (primeValuationType p) k
      ((1 : ℝ) / (2 * (primeValuationPeriod p k : ℝ))) depth hcount
  calc
    (1 : ℝ) / (8 * (primeValuationPeriod p k : ℝ)) =
        ((1 : ℝ) / (2 * (primeValuationPeriod p k : ℝ))) / 4 := by
      rw [div_div_eq_div_mul]
      congr 1
      ring
    _ ≤ (bufferedDiagonalKernel 3 N hN).typeMass
          initial (primeValuationType p) (depth + 1) k := hmass

/-- Pointwise eventual type positivity for any prime p coprime to 3.
The source cutoff and the positive mass floor depend on p and k.
Unit-mass input distributions may vary with N. -/
theorem primeValuation_buffered_eventually_pos
    (p k : ℕ) (hp : Nat.Prime p) (hcop : Nat.Coprime p 3) :
    ∃ cutoff : ℕ, ∀ (N : ℕ) (hN : 1 ≤ N),
      cutoff ≤ N →
      ∀ (initial : ℕ → ℝ),
        (∀ n ∈ scope N, 0 ≤ initial n) →
        (∑ n ∈ scope N, initial n) = 1 →
        ∀ depth : ℕ,
          0 < (bufferedDiagonalKernel 3 N hN).typeMass
            initial (primeValuationType p) (depth + 1) k := by
  refine ⟨primeValuationPeriod p k, ?_⟩
  intro N hN hcutoff initial hnonneg hmass depth
  have hdpos : (0 : ℝ) < (primeValuationPeriod p k : ℝ) := by
    exact_mod_cast (primeValuationPeriod_pos p k hp)
  have hr : (0 : ℝ) <
      (1 : ℝ) / (8 * (primeValuationPeriod p k : ℝ)) := by positivity
  exact hr.trans_le
    (primeValuation_buffered_mass_ge_fixed_rate
      p k N hp hcop hN hcutoff initial hnonneg hmass depth)

/-- For any finite positive sieve cutoff, no exact valuation type
at any prime can equal the cutoff N: factorization_p(n) < n ≤ N. -/
theorem primeValuationType_lt_cutoff
    (p N n : ℕ) (hn : n ∈ scope N) :
    primeValuationType p n < N := by
  have hrange : 1 ≤ n ∧ n ≤ N := Finset.mem_Icc.mp hn
  have hn0 : n ≠ 0 := by omega
  have hval : primeValuationType p n < n := Nat.factorization_lt p hn0
  exact hval.trans_le hrange.2

/-- No one finite certified arithmetic inventory can cover every
natural valuation type at any chosen prime p, regardless of how its
weights are steered. This does not contradict eventual coverage
of each separately fixed k under the increasing-cutoff program. -/
theorem primeValuationType_no_finite_all_type_coverage
    (p q N : ℕ) (hN : 1 ≤ N) (weights : ℕ → ℕ → ℝ) :
    ¬ (certifiedArithmeticInventory q N hN).sieveTypeCompleteAt
      1 (primeValuationType p) weights 1 := by
  intro complete
  obtain ⟨n, hn, heq, _⟩ := complete N
  have hscope : n ∈ scope N := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors q N hN] at hn
    exact (Finset.mem_filter.mp hn).1
  have hlt := primeValuationType_lt_cutoff p N n hscope
  omega

/-- A collision persists for every chosen prime p, independent of
the stable-object lift: p and p squared have equal radical-derived
K₀-shaped observations but different exact prime-p valuations. -/
theorem primeValuation_radical_pow_collision
    (lift : ℕ →* M) (p : ℕ) (hp : Nat.Prime p) :
    kZeroRadical lift (p ^ 2) = kZeroRadical lift p ∧
      primeValuationType p (p ^ 2) ≠ primeValuationType p p := by
  refine ⟨kZeroRadical_pow lift p 2 (by norm_num), ?_⟩
  have htwo : (p ^ 2).factorization p = 2 :=
    Nat.factorization_pow_self hp
  have hone : p.factorization p = 1 := hp.factorization_self
  intro heq
  have hfalse : (2 : ℕ) = 1 := by
    simpa only [primeValuationType, htwo, hone] using heq
  norm_num at hfalse

/-- The exact prime-p valuation type is a *certified arithmetic*
type hit from source 1 at graph depth 1, at every positive buffered
diffusion step, once the cutoff exceeds 3*p^(k+1).
This connects the source-dependent Markov weights to the already
certified arithmetic graph rather than claiming a new candidate edge
or a single finite cutoff for all natural types. -/
theorem primeValuation_buffered_eventually_certified_hit
    (p k : ℕ) (hp : Nat.Prime p) (hcop : Nat.Coprime p 3) :
    ∃ cutoff : ℕ, ∀ (N : ℕ) (hN : 1 ≤ N),
      cutoff ≤ N →
      ∀ (initial : ℕ → ℝ),
        (∀ n ∈ scope N, 0 ≤ initial n) →
        (∑ n ∈ scope N, initial n) = 1 →
        ∀ depth : ℕ,
          (certifiedArithmeticInventory 3 N hN).sieveTypeHit
            1 (primeValuationType p)
            (fun _ n => (bufferedDiagonalKernel 3 N hN).evolve
              initial (depth + 1) n) 1 k := by
  refine ⟨primeValuationPeriod p k, ?_⟩
  intro N hN hcutoff initial hnonneg hmass depth
  have hdpos : 0 < primeValuationPeriod p k :=
    primeValuationPeriod_pos p k hp
  have hquot : 1 ≤ N / primeValuationPeriod p k := by
    apply (Nat.le_div_iff_mul_le hdpos).mpr
    simpa only [one_mul] using hcutoff
  have hscope :
      primeValuationProgression p k 0 ∈ scope N :=
    primeValuationProgression_mem_scope p k N 0 hp (by omega)
  have hcoprime :
      Nat.Coprime (primeValuationProgression p k 0) 3 :=
    primeValuationProgression_coprime_three p k 0 hp hcop
  have hreach :
      primeValuationProgression p k 0 ∈
        (certifiedArithmeticInventory 3 N hN).certifiedSearch 1 1 := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors 3 N hN]
    exact Finset.mem_filter.mpr ⟨hscope, hcoprime⟩
  have hrate :
      (0 : ℝ) < ((4 : ℝ) * (N : ℝ))⁻¹ :=
    bufferedDiagonalKernel_rate_pos N hN
  have hpositive :
      0 < (bufferedDiagonalKernel 3 N hN).evolve initial
        (depth + 1) (primeValuationProgression p k 0) :=
    hrate.trans_le
      (bufferedDiagonalKernel_evolve_succ_ge_inv_four_cutoff
        3 N hN initial hnonneg hmass depth
        (primeValuationProgression p k 0) hscope hcoprime)
  exact ⟨primeValuationProgression p k 0, hreach,
    primeValuationProgression_factorization p k 0 hp, hpositive⟩

/-! ## The excluded prime 3: an explicitly distinct modulus-two sieve

The preceding prime-p result used modulus 3 and required
Nat.Coprime p 3. For p=3 that hypothesis is false. This section
uses a DIFFERENT normalized buffered Markov kernel at modulus 2.
For every k, the terms 3^k*(6*j+1) have exact 3-adic valuation k,
are coprime to 2, and occur in a progression of period 6*3^k.

This is pointwise fixed-type counting, not analytic prime distribution
or an identification of the two distinct arithmetic kernels.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/

/-- Cutoff period for exact 3-adic type k under the modulus-two sieve. -/
def threeAdicTypePeriod (k : ℕ) : ℕ := 6 * 3 ^ k

/-- Explicit odd integers with exact 3-adic valuation k. -/
def threeAdicTypeProgression (k j : ℕ) : ℕ :=
  3 ^ k * (6 * j + 1)

theorem threeAdicTypePeriod_pos (k : ℕ) :
    0 < threeAdicTypePeriod k := by
  dsimp [threeAdicTypePeriod]
  positivity

theorem threeAdicTypeProgression_pos (k j : ℕ) :
    0 < threeAdicTypeProgression k j := by
  dsimp [threeAdicTypeProgression]
  positivity

/-- The factorization exponent of 3 in every progression term is
exactly k. We use the actual factorization, not the radical signal. -/
theorem threeAdicTypeProgression_factorization_three (k j : ℕ) :
    primeValuationType 3 (threeAdicTypeProgression k j) = k := by
  have hp3 : Nat.Prime 3 := by norm_num
  have hpow : ((3 : ℕ) ^ k).factorization 3 = k :=
    Nat.factorization_pow_self hp3
  have hpow_ne : (3 : ℕ) ^ k ≠ 0 := by positivity
  have htail_ne : 6 * j + 1 ≠ 0 := by omega
  have hdiv3 : (3 : ℕ) ∣ 6 * j := by
    refine ⟨2 * j, ?_⟩
    ring
  have hnot : ¬ (3 : ℕ) ∣ (6 * j + 1) := by
    intro h
    have hone : (3 : ℕ) ∣ 1 := (Nat.dvd_add_iff_right hdiv3).mp h
    norm_num at hone
  have htail : (6 * j + 1).factorization 3 = 0 :=
    Nat.factorization_eq_zero_of_not_dvd hnot
  change ((3 : ℕ) ^ k * (6 * j + 1)).factorization 3 = k
  rw [Nat.factorization_mul hpow_ne htail_ne]
  simp [hpow, htail]

/-- The entire fixed-3-adic-type progression survives modulus 2. -/
theorem threeAdicTypeProgression_coprime_two (k j : ℕ) :
    Nat.Coprime (threeAdicTypeProgression k j) 2 := by
  have hthree : Nat.Coprime 3 2 := by decide
  have hpow : Nat.Coprime ((3 : ℕ) ^ k) 2 := hthree.pow_left k
  have hdiv2 : (2 : ℕ) ∣ 6 * j := by
    refine ⟨3 * j, ?_⟩
    ring
  have hnot : ¬ (2 : ℕ) ∣ (6 * j + 1) := by
    intro h
    have hone : (2 : ℕ) ∣ 1 := (Nat.dvd_add_iff_right hdiv2).mp h
    norm_num at hone
  have hp2 : Nat.Prime 2 := by norm_num
  have htail : Nat.Coprime (6 * j + 1) 2 :=
    ((Nat.Prime.coprime_iff_not_dvd hp2).mpr hnot).symm
  change Nat.Coprime ((3 : ℕ) ^ k * (6 * j + 1)) 2
  exact Nat.coprime_mul_iff_left.mpr ⟨hpow, htail⟩

/-- The progression retains its index: all terms are distinct. -/
theorem threeAdicTypeProgression_injective (k : ℕ) :
    Function.Injective (threeAdicTypeProgression k) := by
  intro i j heq
  have hpow_ne : (3 : ℕ) ^ k ≠ 0 := by positivity
  have hmul :
      (3 : ℕ) ^ k * (6 * i + 1) =
        (3 : ℕ) ^ k * (6 * j + 1) := by
    simpa only [threeAdicTypeProgression] using heq
  have htail : 6 * i + 1 = 6 * j + 1 :=
    mul_left_cancel₀ hpow_ne hmul
  omega

/-- If j is below the finite quotient by the arithmetic period,
then 3^k*(6*j+1) lies within the positive inclusive cutoff. -/
theorem threeAdicTypeProgression_mem_scope
    (k N j : ℕ) (hj : j < N / threeAdicTypePeriod k) :
    threeAdicTypeProgression k j ∈ scope N := by
  have hjle : j + 1 ≤ N / threeAdicTypePeriod k := by omega
  have hupper : threeAdicTypeProgression k j ≤ N := by
    calc
      threeAdicTypeProgression k j ≤
          threeAdicTypePeriod k * (j + 1) := by
        dsimp [threeAdicTypeProgression, threeAdicTypePeriod]
        calc
          (3 : ℕ) ^ k * (6 * j + 1) ≤
              (3 : ℕ) ^ k * (6 * (j + 1)) :=
            Nat.mul_le_mul_left _ (by omega)
          _ = (6 * 3 ^ k) * (j + 1) := by ring
      _ ≤ threeAdicTypePeriod k * (N / threeAdicTypePeriod k) :=
        Nat.mul_le_mul_left _ hjle
      _ ≤ N := Nat.mul_div_le N (threeAdicTypePeriod k)
  change threeAdicTypeProgression k j ∈ Finset.Icc 1 N
  exact Finset.mem_Icc.mpr
    ⟨Nat.succ_le_iff.mpr (threeAdicTypeProgression_pos k j), hupper⟩

/-- The modulus-two sieve has at least floor(N/(6*3^k))
distinct positive integers of exact three-adic type k, by a
finite injection of the arithmetic progression. -/
theorem threeAdicType_survivors_card_ge_floor (k N : ℕ) :
    N / threeAdicTypePeriod k ≤
      (bufferedTypeSurvivors 2 N (primeValuationType 3) k).card := by
  classical
  have hsub :
      ((Finset.range (N / threeAdicTypePeriod k)).image
        (threeAdicTypeProgression k)) ⊆
          bufferedTypeSurvivors 2 N (primeValuationType 3) k := by
    intro target ht
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.mp ht
    have hscope :
        threeAdicTypeProgression k j ∈ scope N :=
      threeAdicTypeProgression_mem_scope k N j
        (Finset.mem_range.mp hj)
    change threeAdicTypeProgression k j ∈
      (scope N).filter
        (fun n => primeValuationType 3 n = k ∧ Nat.Coprime n 2)
    exact Finset.mem_filter.mpr
      ⟨hscope, threeAdicTypeProgression_factorization_three k j,
        threeAdicTypeProgression_coprime_two k j⟩
  calc
    N / threeAdicTypePeriod k =
        (Finset.range (N / threeAdicTypePeriod k)).card := by simp
    _ = ((Finset.range (N / threeAdicTypePeriod k)).image
          (threeAdicTypeProgression k)).card :=
      (Finset.card_image_of_injective _
        (threeAdicTypeProgression_injective k)).symm
    _ ≤ (bufferedTypeSurvivors 2 N (primeValuationType 3) k).card :=
      Finset.card_le_card hsub

/-- For N≥6*3^k, the exact valuation-k survivors occupy at least
N/(12*3^k) of the full positive integer scope. This arithmetic
density is proved by a finite quotient/remainder count. -/
theorem threeAdicType_survivor_density
    (k N : ℕ) (hcutoff : threeAdicTypePeriod k ≤ N) :
    ((1 : ℝ) / (2 * (threeAdicTypePeriod k : ℝ))) * (N : ℝ) ≤
      ((bufferedTypeSurvivors 2 N (primeValuationType 3) k).card : ℝ) := by
  let d := threeAdicTypePeriod k
  have hdpos : 0 < d := threeAdicTypePeriod_pos k
  have hq : 1 ≤ N / d := by
    apply (Nat.le_div_iff_mul_le hdpos).mpr
    simpa only [one_mul] using hcutoff
  have hdle : d ≤ d * (N / d) := by
    calc
      d = d * 1 := by simp
      _ ≤ d * (N / d) := Nat.mul_le_mul_left d hq
  have hmodlt : N % d < d := Nat.mod_lt N hdpos
  have hmod : N % d + d * (N / d) = N := Nat.mod_add_div N d
  have hfloor : N ≤ 2 * (d * (N / d)) := by omega
  have hcard : N / d ≤
      (bufferedTypeSurvivors 2 N (primeValuationType 3) k).card :=
    threeAdicType_survivors_card_ge_floor k N
  have hbound : N ≤
      (2 * d) * (bufferedTypeSurvivors 2 N (primeValuationType 3) k).card := by
    calc
      N ≤ 2 * (d * (N / d)) := hfloor
      _ = (2 * d) * (N / d) := by ring
      _ ≤ (2 * d) *
          (bufferedTypeSurvivors 2 N (primeValuationType 3) k).card :=
        Nat.mul_le_mul_left _ hcard
  have hreal : (N : ℝ) ≤
      (2 : ℝ) * (d : ℝ) *
        ((bufferedTypeSurvivors 2 N (primeValuationType 3) k).card : ℝ) := by
    exact_mod_cast hbound
  have hden : (0 : ℝ) < (2 : ℝ) * (d : ℝ) := by positivity
  have hscaled :
      (N : ℝ) / ((2 : ℝ) * (d : ℝ)) ≤
        ((bufferedTypeSurvivors 2 N (primeValuationType 3) k).card : ℝ) := by
    apply (div_le_iff₀ hden).mpr
    nlinarith [hreal]
  convert hscaled using 1 <;> ring

/-- Under the separate modulus-two buffered kernel, each fixed
three-adic type k has mass at least 1/(8*6*3^k) for all cutoffs
N≥6*3^k and all positive iteration counts. The rate depends on k
but is cutoff- and time-independent. -/
theorem threeAdicType_buffered_mass_ge_fixed_rate
    (k N : ℕ) (hN : 1 ≤ N)
    (hcutoff : threeAdicTypePeriod k ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_mass_one : (∑ n ∈ scope N, initial n) = 1)
    (depth : ℕ) :
    (1 : ℝ) / (8 * (threeAdicTypePeriod k : ℝ)) ≤
      (bufferedDiagonalKernel 2 N hN).typeMass
        initial (primeValuationType 3) (depth + 1) k := by
  have hcount :
      ((1 : ℝ) / (2 * (threeAdicTypePeriod k : ℝ))) * (N : ℝ) ≤
        ((bufferedTypeSurvivors 2 N (primeValuationType 3) k).card : ℝ) :=
    threeAdicType_survivor_density k N hcutoff
  have hmass :=
    bufferedDiagonalKernel_typeMass_ge_of_survivor_density
      2 N hN initial initial_nonneg initial_mass_one
      (primeValuationType 3) k
      ((1 : ℝ) / (2 * (threeAdicTypePeriod k : ℝ))) depth hcount
  calc
    (1 : ℝ) / (8 * (threeAdicTypePeriod k : ℝ)) =
        ((1 : ℝ) / (2 * (threeAdicTypePeriod k : ℝ))) / 4 := by
      rw [div_div_eq_div_mul]
      congr 1
      ring
    _ ≤ (bufferedDiagonalKernel 2 N hN).typeMass
          initial (primeValuationType 3) (depth + 1) k := hmass

/-- Pointwise eventual positive exact 3-adic type mass under the
separate modulus-two buffered kernel. Inputs must be nonnegative
and normalized on the finite positive scope. -/
theorem threeAdicType_buffered_eventually_pos (k : ℕ) :
    ∃ cutoff : ℕ, ∀ (N : ℕ) (hN : 1 ≤ N),
      cutoff ≤ N →
      ∀ (initial : ℕ → ℝ),
        (∀ n ∈ scope N, 0 ≤ initial n) →
        (∑ n ∈ scope N, initial n) = 1 →
        ∀ depth : ℕ,
          0 < (bufferedDiagonalKernel 2 N hN).typeMass
            initial (primeValuationType 3) (depth + 1) k := by
  refine ⟨threeAdicTypePeriod k, ?_⟩
  intro N hN hcutoff initial hnonneg hmass depth
  have hdpos : (0 : ℝ) < (threeAdicTypePeriod k : ℝ) := by
    exact_mod_cast (threeAdicTypePeriod_pos k)
  have hr : (0 : ℝ) <
      (1 : ℝ) / (8 * (threeAdicTypePeriod k : ℝ)) := by positivity
  exact hr.trans_le
    (threeAdicType_buffered_mass_ge_fixed_rate
      k N hN hcutoff initial hnonneg hmass depth)

/-- Every fixed 3-adic valuation type eventually has a certified
graph hit in the modulus-TWO arithmetic inventory, at graph depth
one and after every positive Markov iteration. -/
theorem threeAdicType_buffered_eventually_certified_hit (k : ℕ) :
    ∃ cutoff : ℕ, ∀ (N : ℕ) (hN : 1 ≤ N),
      cutoff ≤ N →
      ∀ (initial : ℕ → ℝ),
        (∀ n ∈ scope N, 0 ≤ initial n) →
        (∑ n ∈ scope N, initial n) = 1 →
        ∀ depth : ℕ,
          (certifiedArithmeticInventory 2 N hN).sieveTypeHit
            1 (primeValuationType 3)
            (fun _ n => (bufferedDiagonalKernel 2 N hN).evolve
              initial (depth + 1) n) 1 k := by
  refine ⟨threeAdicTypePeriod k, ?_⟩
  intro N hN hcutoff initial hnonneg hmass depth
  have hdpos : 0 < threeAdicTypePeriod k :=
    threeAdicTypePeriod_pos k
  have hquot : 1 ≤ N / threeAdicTypePeriod k := by
    apply (Nat.le_div_iff_mul_le hdpos).mpr
    simpa only [one_mul] using hcutoff
  have hscope : threeAdicTypeProgression k 0 ∈ scope N :=
    threeAdicTypeProgression_mem_scope k N 0 (by omega)
  have hcoprime : Nat.Coprime (threeAdicTypeProgression k 0) 2 :=
    threeAdicTypeProgression_coprime_two k 0
  have hreach :
      threeAdicTypeProgression k 0 ∈
        (certifiedArithmeticInventory 2 N hN).certifiedSearch 1 1 := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors 2 N hN]
    exact Finset.mem_filter.mpr ⟨hscope, hcoprime⟩
  have hrate :
      (0 : ℝ) < ((4 : ℝ) * (N : ℝ))⁻¹ :=
    bufferedDiagonalKernel_rate_pos N hN
  have hpositive :
      0 < (bufferedDiagonalKernel 2 N hN).evolve initial
        (depth + 1) (threeAdicTypeProgression k 0) :=
    hrate.trans_le
      (bufferedDiagonalKernel_evolve_succ_ge_inv_four_cutoff
        2 N hN initial hnonneg hmass depth
        (threeAdicTypeProgression k 0) hscope hcoprime)
  exact ⟨threeAdicTypeProgression k 0, hreach,
    threeAdicTypeProgression_factorization_three k 0, hpositive⟩

/-- The modulus-three coprime sieve cannot contain integers of
strictly positive exact three-adic valuation, regardless of cutoff
or diffusion weights. This explains the need for a second modulus. -/
theorem positive_threeAdic_type_absent_from_modulus_three
    (k N : ℕ) (hk : 0 < k) :
    ¬ ∃ n ∈ scope N,
        primeValuationType 3 n = k ∧ Nat.Coprime n 3 := by
  rintro ⟨n, hn, heq, hc⟩
  have hp3 : Nat.Prime 3 := by norm_num
  have hnotdiv : ¬ (3 : ℕ) ∣ n :=
    (Nat.Prime.coprime_iff_not_dvd hp3).mp hc.symm
  have hzero : (n.factorization 3) = 0 :=
    Nat.factorization_eq_zero_of_not_dvd hnotdiv
  dsimp [primeValuationType] at heq
  omega

/-! ## A two-modulus selection interface for all prime valuation types

The sieve modulus is 2 only for prime p=3, and 3 for every other
prime. These are SEPARATE buffered Markov kernels and separate
certified arithmetic inventories, selected by a case split.
Nothing asserts their operators, stationary distributions, or
K-theoretic classes are equal or transported between moduli.
Each fixed prime p and exponent k obtains its own threshold/rate.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED. -/

/-- Choose an arithmetic modulus coprime to the valuation prime. -/
def primeValuationSieveModulus (p : ℕ) : ℕ :=
  if p = 3 then 2 else 3

/-- The cutoff period belongs to the selected modulus and prime. -/
def primeValuationSievePeriod (p k : ℕ) : ℕ :=
  if p = 3 then threeAdicTypePeriod k else primeValuationPeriod p k

theorem primeValuationSievePeriod_pos
    (p k : ℕ) (hp : Nat.Prime p) :
    0 < primeValuationSievePeriod p k := by
  by_cases h : p = 3
  · subst p
    simpa [primeValuationSievePeriod] using
      threeAdicTypePeriod_pos k
  · simpa [primeValuationSievePeriod, h] using
      primeValuationPeriod_pos p k hp

/-- Any prime except 3 is coprime to the modulus-three sieve. -/
theorem primeValuation_coprime_three_of_ne
    (p : ℕ) (hp : Nat.Prime p) (hne : p ≠ 3) :
    Nat.Coprime p 3 := by
  have hp3 : Nat.Prime 3 := by norm_num
  have hnotdiv : ¬ (3 : ℕ) ∣ p := by
    intro hdiv
    have heq : (3 : ℕ) = p :=
      (Nat.prime_dvd_prime_iff_eq hp3 hp).mp hdiv
    exact hne heq.symm
  exact ((Nat.Prime.coprime_iff_not_dvd hp3).mpr hnotdiv).symm

/-- Casewise pointwise quantitative bound across BOTH suitable
moduli. For every fixed prime p and valuation k, at cutoff
N ≥ selectedPeriod(p,k), every nonnegative unit-mass initial
distribution has positive buffered type-k mass after each positive
iteration. No comparison between the two different kernels is used. -/
theorem primeValuation_selectedSieve_mass_ge_fixed_rate
    (p k N : ℕ) (hp : Nat.Prime p)
    (hN : 1 ≤ N) (hcutoff : primeValuationSievePeriod p k ≤ N)
    (initial : ℕ → ℝ)
    (initial_nonneg : ∀ n ∈ scope N, 0 ≤ initial n)
    (initial_mass_one : (∑ n ∈ scope N, initial n) = 1)
    (depth : ℕ) :
    (1 : ℝ) / (8 * (primeValuationSievePeriod p k : ℝ)) ≤
      (bufferedDiagonalKernel (primeValuationSieveModulus p) N hN).typeMass
        initial (primeValuationType p) (depth + 1) k := by
  by_cases h : p = 3
  · subst p
    have hd : threeAdicTypePeriod k ≤ N := by
      simpa [primeValuationSievePeriod] using hcutoff
    simpa [primeValuationSievePeriod, primeValuationSieveModulus] using
      (threeAdicType_buffered_mass_ge_fixed_rate
        k N hN hd initial initial_nonneg initial_mass_one depth)
  · have hcop : Nat.Coprime p 3 :=
      primeValuation_coprime_three_of_ne p hp h
    have hd : primeValuationPeriod p k ≤ N := by
      simpa [primeValuationSievePeriod, h] using hcutoff
    simpa [primeValuationSievePeriod, primeValuationSieveModulus, h] using
      (primeValuation_buffered_mass_ge_fixed_rate
        p k N hp hcop hN hd initial initial_nonneg initial_mass_one depth)

/-- For every prime p and fixed valuation k, there exists a selected
modulus, cutoff and positive p/k-dependent mass floor after every
positive Markov time. This is *pointwise* type completeness across a
family of two different finite arithmetic sieve models. -/
theorem primeValuation_selectedSieve_eventually_pos
    (p k : ℕ) (hp : Nat.Prime p) :
    ∃ cutoff : ℕ, ∀ (N : ℕ) (hN : 1 ≤ N),
      cutoff ≤ N →
      ∀ (initial : ℕ → ℝ),
        (∀ n ∈ scope N, 0 ≤ initial n) →
        (∑ n ∈ scope N, initial n) = 1 →
        ∀ depth : ℕ,
          0 < (bufferedDiagonalKernel (primeValuationSieveModulus p) N hN).typeMass
            initial (primeValuationType p) (depth + 1) k := by
  refine ⟨primeValuationSievePeriod p k, ?_⟩
  intro N hN hcutoff initial hnonneg hmass depth
  have hdpos : (0 : ℝ) < (primeValuationSievePeriod p k : ℝ) := by
    exact_mod_cast (primeValuationSievePeriod_pos p k hp)
  have hr : (0 : ℝ) <
      (1 : ℝ) / (8 * (primeValuationSievePeriod p k : ℝ)) := by
    positivity
  exact hr.trans_le
    (primeValuation_selectedSieve_mass_ge_fixed_rate
      p k N hp hN hcutoff initial hnonneg hmass depth)

/-- For every prime p and fixed k, the selected modulus has a
certified arithmetic type hit from source 1, graph depth one, after
all positive buffered time steps once a p/k-dependent cutoff is
reached. The two underlying inventories are NOT equated. -/
theorem primeValuation_selectedSieve_eventually_certified_hit
    (p k : ℕ) (hp : Nat.Prime p) :
    ∃ cutoff : ℕ, ∀ (N : ℕ) (hN : 1 ≤ N),
      cutoff ≤ N →
      ∀ (initial : ℕ → ℝ),
        (∀ n ∈ scope N, 0 ≤ initial n) →
        (∑ n ∈ scope N, initial n) = 1 →
        ∀ depth : ℕ,
          (certifiedArithmeticInventory (primeValuationSieveModulus p) N hN).sieveTypeHit
            1 (primeValuationType p)
            (fun _ n => (bufferedDiagonalKernel
              (primeValuationSieveModulus p) N hN).evolve
              initial (depth + 1) n) 1 k := by
  by_cases h : p = 3
  · subst p
    simpa [primeValuationSieveModulus] using
      threeAdicType_buffered_eventually_certified_hit k
  · have hcop : Nat.Coprime p 3 :=
      primeValuation_coprime_three_of_ne p hp h
    simpa [primeValuationSieveModulus, h] using
      primeValuation_buffered_eventually_certified_hit p k hp hcop

/-- The two-modulus selection does not erase the original
K₀-shaped radical collision. For any prime p, once the cutoff
contains both p and p², they are certified survivors of the
selected modulus (2 for p=3, 3 otherwise); their radical-derived
group-completion features agree, but their exact valuation labels
are different. Therefore no feature-only exact decoder exists on
that entire certified arithmetic scope.

This negative control is separate from the positive *mass-coverage*
result for each fixed prime valuation. -/
theorem primeValuation_selectedSieve_no_exact_decoder
    (lift : ℕ →* M) (p N : ℕ) (hp : Nat.Prime p)
    (hN : 1 ≤ N) (hpowBound : p ^ 2 ≤ N) :
    ¬ ∃ decode : GrothendieckKZero M → ℕ,
        ∀ n ∈
          (certifiedArithmeticInventory
            (primeValuationSieveModulus p) N hN).certifiedSearch 1 1,
          primeValuationType p n = decode (kZeroRadical lift n) := by
  have hcop : Nat.Coprime p (primeValuationSieveModulus p) := by
    by_cases h : p = 3
    · subst p
      have h32 : Nat.Coprime 3 2 := by decide
      simpa [primeValuationSieveModulus] using h32
    · have hcop3 : Nat.Coprime p 3 :=
        primeValuation_coprime_three_of_ne p hp h
      simpa [primeValuationSieveModulus, h] using hcop3
  have hcopPow :
      Nat.Coprime (p ^ 2) (primeValuationSieveModulus p) :=
    (Nat.coprime_pow_left_iff (by norm_num : 0 < 2)
      p (primeValuationSieveModulus p)).mpr hcop
  have hpLower : 1 ≤ p := hp.one_lt.le
  have hple : p ≤ N := by
    calc
      p = p * 1 := by simp
      _ ≤ p * p := Nat.mul_le_mul_left p hpLower
      _ = p ^ 2 := by ring
      _ ≤ N := hpowBound
  have hpScope : p ∈ scope N := by
    change p ∈ Finset.Icc 1 N
    exact Finset.mem_Icc.mpr ⟨hpLower, hple⟩
  have hpPowScope : p ^ 2 ∈ scope N := by
    change p ^ 2 ∈ Finset.Icc 1 N
    have hpositive : 0 < p ^ 2 := pow_pos hp.pos 2
    exact Finset.mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr
      (Nat.ne_of_gt hpositive), hpowBound⟩
  have hpReach :
      p ∈ (certifiedArithmeticInventory
        (primeValuationSieveModulus p) N hN).certifiedSearch 1 1 := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors
      (primeValuationSieveModulus p) N hN]
    exact Finset.mem_filter.mpr ⟨hpScope, hcop⟩
  have hpowReach :
      p ^ 2 ∈ (certifiedArithmeticInventory
        (primeValuationSieveModulus p) N hN).certifiedSearch 1 1 := by
    rw [certifiedArithmeticInventory_search_one_eq_survivors
      (primeValuationSieveModulus p) N hN]
    exact Finset.mem_filter.mpr ⟨hpPowScope, hcopPow⟩
  have hK : kZeroRadical lift p = kZeroRadical lift (p ^ 2) :=
    (kZeroRadical_pow lift p 2 (by norm_num)).symm
  have hneq :
      primeValuationType p p ≠ primeValuationType p (p ^ 2) := by
    have hself : p.factorization p = 1 := hp.factorization_self
    have hpow : (p ^ 2).factorization p = 2 :=
      Nat.factorization_pow_self hp
    intro heq
    have hfalse : (1 : ℕ) = 2 := by
      simpa only [primeValuationType, hself, hpow] using heq
    norm_num at hfalse
  exact (certifiedArithmeticInventory
    (primeValuationSieveModulus p) N hN).no_exact_feature_type_of_collision
      1 (primeValuationType p) (kZeroRadical lift) 1
      hpReach hpowReach hK hneq

end GRWTSK.Algebra.KTheory.RadicalCollisionBoundary
