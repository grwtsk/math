/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib results retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CanonicalSquareTentFiniteUniformTail

set_option autoImplicit false

/-!
# Prime-indexed dependent fibers and canonical square-tent finite-test transport

Each prime indexes its OWN type `Fiber p`. This is not the single subtype
`{p : ℕ // Nat.Prime p}` treated as the space of arithmetic states.
The total state space is a dependent sum, and an explicitly supplied map
selects the existing canonical square-tent test for each state.

The finite-family theorem consumes the existing exact source-bound finite
zero-head comparison. It does not construct a complete prime typing, an
identification with the prime-power von Mangoldt source, a new cancellation
estimate, a full Weil test space, or an RH implication.

A second result makes the loss of information under a proposed compressed
feature precise. It is a conditional obstruction, not an assertion that
particular prime states collide.

SOURCE_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN / AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberFiniteTestTransport

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentZetaApproximation
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentFiniteUniformTail
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSpectralPort

/-- Prime *indices*, not a substitute for the type assigned to each prime. -/
abbrev PrimeIndex := {p : ℕ // Nat.Prime p}

/-- A family of genuinely prime-dependent types. -/
abbrev PrimeFiberState (Fiber : PrimeIndex → Type*) := Sigma Fiber

/-- Finite states in possibly different prime fibers have one shared
nontrivial-zero height cutoff, provided an exact test-selection map is given.
The cutoff works at every larger height. No injectivity of the map is needed:
collisions here merely select the same already-defined test. -/
theorem finite_prime_fiber_tail_uniform
    {Fiber : PrimeIndex → Type*}
    (testOf : PrimeFiberState Fiber → CanonicalSquareTentTest)
    (F : Finset (PrimeFiberState Fiber))
    (epsilon : ℝ) (hepsilon : 0 < epsilon) :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      ∀ a ∈ F, lowerDefect k (testOf a) ≤ epsilon := by
  classical
  obtain ⟨K, hK⟩ :=
    finite_test_tail_uniform (F.image testOf) epsilon hepsilon
  refine ⟨K, ?_⟩
  intro k hk a ha
  exact hK k hk (testOf a) (Finset.mem_image.mpr ⟨a, ha, rfl⟩)

/-- The same shared cutoff controls the actual complex spectral residual,
real diagonal approximation, and finite-stage lower bound, retaining the
original square-tent test for every prime-fiber state. -/
theorem finite_prime_fiber_signed_comparison
    {Fiber : PrimeIndex → Type*}
    (testOf : PrimeFiberState Fiber → CanonicalSquareTentTest)
    (F : Finset (PrimeFiberState Fiber))
    (epsilon : ℝ) (hepsilon : 0 < epsilon) :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      ∀ a ∈ F,
        ‖finiteSpectralValue k (testOf a) -
          (canonicalCorrection (testOf a).index : ℂ)‖ ≤ epsilon ∧
        |zetaTarget (testOf a) (testOf a) -
          finiteApproximant k (testOf a) (testOf a)| ≤ epsilon ∧
        -epsilon ≤ finiteApproximant k (testOf a) (testOf a) := by
  classical
  obtain ⟨K, hK⟩ :=
    finite_test_signed_and_real_comparison (F.image testOf) epsilon hepsilon
  refine ⟨K, ?_⟩
  intro k hk a ha
  exact hK k hk (testOf a) (Finset.mem_image.mpr ⟨a, ha, rfl⟩)

/-- Exact decoding through a feature is impossible if that feature identifies
two states with different intended type labels. This is a generic collision
criterion; it does not assume that a particular prime-indexed fiber is
complete or that its source-specific arithmetic feature is known. -/
theorem no_exact_decoder_of_feature_collision
    {Fiber : PrimeIndex → Type*} {Feature Label : Type*}
    (feature : PrimeFiberState Fiber → Feature)
    (label : PrimeFiberState Fiber → Label)
    (a b : PrimeFiberState Fiber)
    (hfeature : feature a = feature b)
    (hlabel : label a ≠ label b) :
    ¬ ∃ decode : Feature → Label,
      ∀ x : PrimeFiberState Fiber, decode (feature x) = label x := by
  rintro ⟨decode, hdecode⟩
  apply hlabel
  calc
    label a = decode (feature a) := (hdecode a).symm
    _ = decode (feature b) := congrArg decode hfeature
    _ = label b := hdecode b

/-- If a typed finite sample has certified square-tent comparison at a common
cutoff, its entire image under the test selector inherits that certificate.
This is an explicit consumer-facing converse to the image construction in the
finite-family transport: no injectivity or type-identification is inferred. -/
theorem finite_prime_fiber_image_signed_comparison
    {Fiber : PrimeIndex → Type*}
    (testOf : PrimeFiberState Fiber → CanonicalSquareTentTest)
    (F : Finset (PrimeFiberState Fiber))
    (epsilon : ℝ) (hepsilon : 0 < epsilon) :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      ∀ f ∈ F.image testOf,
        ‖finiteSpectralValue k f - (canonicalCorrection f.index : ℂ)‖ ≤ epsilon ∧
        |zetaTarget f f - finiteApproximant k f f| ≤ epsilon ∧
        -epsilon ≤ finiteApproximant k f f := by
  classical
  obtain ⟨K, hK⟩ := finite_prime_fiber_signed_comparison testOf F epsilon hepsilon
  refine ⟨K, ?_⟩
  intro k hk f hf
  obtain ⟨a, ha, rfl⟩ := Finset.mem_image.mp hf
  exact hK k hk a ha

/-- Any chosen sequence of finite prime-typed families admits a sequence of
stage-dependent common cutoffs. This is not a uniform cutoff independent of
the stage, nor a source-specific growth estimate. -/
theorem finite_prime_fiber_stagewise_signed_comparison
    {Fiber : PrimeIndex → Type*}
    (testOf : PrimeFiberState Fiber → CanonicalSquareTentTest)
    (families : ℕ → Finset (PrimeFiberState Fiber))
    (epsilon : ℝ) (hepsilon : 0 < epsilon) :
    ∀ stage : ℕ, ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      ∀ a ∈ families stage,
        ‖finiteSpectralValue k (testOf a) -
          (canonicalCorrection (testOf a).index : ℂ)‖ ≤ epsilon ∧
        |zetaTarget (testOf a) (testOf a) -
          finiteApproximant k (testOf a) (testOf a)| ≤ epsilon ∧
        -epsilon ≤ finiteApproximant k (testOf a) (testOf a) := by
  intro stage
  exact finite_prime_fiber_signed_comparison testOf (families stage) epsilon hepsilon

end GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberFiniteTestTransport
