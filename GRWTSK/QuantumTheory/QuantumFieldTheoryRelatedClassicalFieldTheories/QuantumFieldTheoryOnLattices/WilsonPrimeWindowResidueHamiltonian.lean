/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PadicMobiusPrimeWindowSeam
import GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonFullRegulatedHamiltonian

/-!
# Prime-window real residue labels on the regulated Wilson Hamiltonian

Local mathematical attribution: grwtsk contributors.

For a prime `p`, the literal one-point PNT window `(p - 1, p]` is exactly
`log p`. A supplier assigns distinct primes to abstract residue classes and
carries the independently established transcendence of those logarithms. The
current imported Lindemann development does not expose that terminal theorem,
so transcendence is an explicit proof field rather than an invented local axiom.
The window identity, positivity, injectivity and all Hamiltonian transport
statements below are proved from the imported sources.

The supplier acts only by real scalar multiplication on the ACTUAL maximal
logarithmic domain of the whole regulated gauge-invariant Hilbert space. Thus
`H (s_r x) = s_r H x`, and the Hamiltonian quadratic form scales by `s_r^2`.
Any domain vector with strictly positive Hamiltonian form recovers the residue
class exactly from that scaled form. The existing full excitation lower bound
is transported with the same exact square factor.

The vacuum is also recorded: every supplier-scaled vacuum has zero Hamiltonian
image, so residue recovery is correctly restricted to a positive-energy base
vector. No identification between four-dimensional plaquette residue energies
and spatial-slice Hilbert vectors is asserted.

SOURCE_PROOF_CANDIDATE; LEAN_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOMS_NOT_RUN; EXPECTED_TYPES_NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowResidueHamiltonian

open GRWTSK.NumberTheory.PadicMobiusPrimeWindowSeam
open GRWTSK.Geometry.GaugeTheory.WilsonSliceGaugeHilbert
open GRWTSK.Geometry.GaugeTheory.WilsonSliceSpectralApproximation
open GRWTSK.Geometry.GaugeTheory.WilsonSlicePositivePrincipal
open GRWTSK.Geometry.GaugeTheory.WilsonFullRegulatedHamiltonian

variable {Residue : Type*}
variable (L : ℕ) [NeZero L]

/-- The literal singleton PNT window ending at `p`. -/
def singletonPrimeWindow (p : ℕ) : ℝ :=
  pntWindow (p - 1) 1

/-- At a prime, the singleton window contains exactly its von Mangoldt atom. -/
theorem singletonPrimeWindow_eq_log {p : ℕ} (hp : p.Prime) :
    singletonPrimeWindow p = Real.log (p : ℝ) := by
  have hp1 : 1 ≤ p := hp.one_le
  have hset : Finset.Ioc (p - 1) p = {p} := by
    ext n
    simp only [Finset.mem_Ioc, Finset.mem_singleton]
    omega
  unfold singletonPrimeWindow pntWindow
  rw [Nat.sub_add_cancel hp1, hset]
  simp [ArithmeticFunction.vonMangoldt_apply_prime hp]

/-- Every prime-window label is strictly positive. -/
theorem singletonPrimeWindow_pos {p : ℕ} (hp : p.Prime) :
    0 < singletonPrimeWindow p := by
  rw [singletonPrimeWindow_eq_log hp]
  exact Real.log_pos (by exact_mod_cast hp.one_lt)

/-- Source data assigning a distinct prime window to each residue class.
The final field records the standard nonalgebraicity input without pretending
that the terminal Lindemann theorem is already available in the imported API. -/
structure PrimeWindowSupplier (Residue : Type*) where
  prime : Residue → ℕ
  isPrime : ∀ r, (prime r).Prime
  prime_injective : Function.Injective prime
  log_transcendental : ∀ r, Transcendental ℚ (Real.log (prime r : ℝ))

namespace PrimeWindowSupplier

/-- The actual real value supplied to the Hamiltonian. -/
def value (S : PrimeWindowSupplier Residue) (r : Residue) : ℝ :=
  singletonPrimeWindow (S.prime r)

/-- The supplier value is exactly the logarithm of its assigned prime. -/
theorem value_eq_log (S : PrimeWindowSupplier Residue) (r : Residue) :
    S.value r = Real.log (S.prime r : ℝ) :=
  singletonPrimeWindow_eq_log (S.isPrime r)

/-- The same value is the original Möbius-log window, not a substituted model. -/
theorem value_eq_mobiusLogWindow (S : PrimeWindowSupplier Residue) (r : Residue) :
    S.value r = mobiusLogWindow (S.prime r - 1) 1 := by
  simpa only [value, singletonPrimeWindow] using
    pntWindow_eq_mobiusLogWindow (S.prime r - 1) 1

/-- Each supplied real scalar is positive. -/
theorem value_pos (S : PrimeWindowSupplier Residue) (r : Residue) :
    0 < S.value r :=
  singletonPrimeWindow_pos (S.isPrime r)

/-- Each supplied real scalar is nonalgebraic over the rationals. -/
theorem value_transcendental (S : PrimeWindowSupplier Residue) (r : Residue) :
    Transcendental ℚ (S.value r) := by
  rw [value_eq_log S r]
  exact S.log_transcendental r

/-- Distinct residue classes have distinct real prime-window values. -/
theorem value_injective (S : PrimeWindowSupplier Residue) :
    Function.Injective S.value := by
  intro r s hrs
  apply S.prime_injective
  rw [value_eq_log S r, value_eq_log S s] at hrs
  have hrpos : (0 : ℝ) < S.prime r := by
    exact_mod_cast (S.isPrime r).pos
  have hspos : (0 : ℝ) < S.prime s := by
    exact_mod_cast (S.isPrime s).pos
  have hcast := congrArg Real.exp hrs
  rw [Real.exp_log hrpos, Real.exp_log hspos] at hcast
  exact_mod_cast hcast

/-- Equality of supplied reals recovers precisely equality of residue classes. -/
theorem value_eq_iff (S : PrimeWindowSupplier Residue) (r s : Residue) :
    S.value r = S.value s ↔ r = s := by
  constructor
  · exact S.value_injective
  · intro h
    simpa [h]

end PrimeWindowSupplier

/-- The actual quadratic form of the maximal-domain regulated Hamiltonian. -/
def hamiltonianForm (β : ℝ) (hβ : 0 ≤ β) (a : ℝ)
    (x : HamiltonianDomain L β hβ a) : ℝ :=
  inner ℝ (x : RegulatedHilbert L) (Hamiltonian L β hβ a x)

/-- Apply a nonalgebraic prime-window residue label to a genuine domain vector. -/
def suppliedState (S : PrimeWindowSupplier Residue) (r : Residue)
    {β : ℝ} {hβ : 0 ≤ β} {a : ℝ}
    (x : HamiltonianDomain L β hβ a) : HamiltonianDomain L β hβ a :=
  S.value r • x

/-- Exact linear passage of the prime-window scalar through the Hamiltonian. -/
theorem Hamiltonian_suppliedState (S : PrimeWindowSupplier Residue) (r : Residue)
    {β : ℝ} {hβ : 0 ≤ β} {a : ℝ}
    (x : HamiltonianDomain L β hβ a) :
    Hamiltonian L β hβ a (suppliedState L S r x) =
      S.value r • Hamiltonian L β hβ a x := by
  simpa only [suppliedState] using
    (Hamiltonian L β hβ a).map_smul (S.value r) x

/-- The Hamiltonian form carries the exact square of the supplied real label. -/
theorem hamiltonianForm_suppliedState
    (S : PrimeWindowSupplier Residue) (r : Residue)
    {β : ℝ} {hβ : 0 ≤ β} {a : ℝ}
    (x : HamiltonianDomain L β hβ a) :
    hamiltonianForm L β hβ a (suppliedState L S r x) =
      (S.value r) ^ 2 * hamiltonianForm L β hβ a x := by
  unfold hamiltonianForm
  rw [Hamiltonian_suppliedState L S r x]
  change inner ℝ (S.value r • (x : RegulatedHilbert L))
      (S.value r • Hamiltonian L β hβ a x) =
    (S.value r) ^ 2 *
      inner ℝ (x : RegulatedHilbert L) (Hamiltonian L β hβ a x)
  rw [real_inner_smul_left, real_inner_smul_right]
  ring

/-- A positive-energy base vector lets the Hamiltonian form recover the
residue class exactly. No finite precision or order comparison is used. -/
theorem hamiltonianForm_supplied_injective_of_pos
    (S : PrimeWindowSupplier Residue)
    {β : ℝ} {hβ : 0 ≤ β} {a : ℝ}
    (x : HamiltonianDomain L β hβ a)
    (hform : 0 < hamiltonianForm L β hβ a x) :
    Function.Injective
      (fun r : Residue =>
        hamiltonianForm L β hβ a (suppliedState L S r x)) := by
  intro r s hrs
  rw [hamiltonianForm_suppliedState L S r x,
    hamiltonianForm_suppliedState L S s x] at hrs
  have hsquares : (S.value r) ^ 2 = (S.value s) ^ 2 := by
    exact mul_right_cancel₀ (ne_of_gt hform) hrs
  have hvalues : S.value r = S.value s :=
    (sq_eq_sq₀ (S.value_pos r).le (S.value_pos s).le).mp hsquares
  exact S.value_injective hvalues

/-- The existing complete excitation estimate is preserved with the exact
square of the nonalgebraic supplier value. -/
theorem supplied_excitation_lower_bound
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 < β) {a : ℝ} (ha : 0 < a)
    (x : HamiltonianDomain L β hβ.le a)
    (hperp : spectralCoordinates L β hβ.le (x : RegulatedHilbert L)
      (lambda0 L β hβ.le) = 0) :
    (S.value r) ^ 2 *
        ((-Real.log (1 - Real.exp (-24 * β * (L : ℝ)^3)) / a) *
          ‖(x : RegulatedHilbert L)‖ ^ 2) ≤
      hamiltonianForm L β hβ.le a (suppliedState L S r x) := by
  rw [hamiltonianForm_suppliedState L S r x]
  exact mul_le_mul_of_nonneg_left
    (full_excitation_lower_bound L β hβ ha x hperp)
    (sq_nonneg (S.value r))

/-- Scaling the actual normalized vacuum cannot encode a residue in its
Hamiltonian image: every such state remains in the zero-energy eigenspace. -/
theorem Hamiltonian_suppliedVacuum_zero
    (S : PrimeWindowSupplier Residue) (r : Residue)
    (β : ℝ) (hβ : 0 < β) (a : ℝ) :
    Hamiltonian L β hβ.le a
        (S.value r •
          (⟨vacuum L β hβ, vacuum_mem_domain L β hβ a⟩ :
            HamiltonianDomain L β hβ.le a)) = 0 := by
  calc
    Hamiltonian L β hβ.le a
        (S.value r •
          (⟨vacuum L β hβ, vacuum_mem_domain L β hβ a⟩ :
            HamiltonianDomain L β hβ.le a)) =
      S.value r • Hamiltonian L β hβ.le a
        ⟨vacuum L β hβ, vacuum_mem_domain L β hβ a⟩ :=
      (Hamiltonian L β hβ.le a).map_smul _ _
    _ = S.value r • 0 := by rw [Hamiltonian_vacuum_zero]
    _ = 0 := smul_zero _

end GRWTSK.Geometry.GaugeTheory.WilsonPrimeWindowResidueHamiltonian
