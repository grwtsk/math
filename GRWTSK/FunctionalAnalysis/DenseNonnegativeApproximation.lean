/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Topology.Closure
import Mathlib.Topology.Order.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum

/-!
# Nonnegativity from approximate bounds on a dense dictionary

Mathematical consumer: the positive and negative certificate reductions of
OCERT-1, sections 5 and 6, research revision
`e19563adbaf29d08c6b2e17761f78b96adb9e247`:
https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/e19563adbaf29d08c6b2e17761f78b96adb9e247/research/06-weil-spectral/certified-search/oc10-backchain-v1.md

The proofs use order separation and the closedness of the nonnegative locus.
They apply to one specified topological test space at a time; a growing support
window or uniform conductor estimate is not inferred. No arithmetic form,
smooth bump dictionary, or positivity-producing certificate family is built here.
The two counterexamples delimit the role of vanishing error and full coverage.

This is an authored Lean source candidate. Elaboration, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN. Coordination: math#1807.
-/

set_option autoImplicit false

open Set Filter
open scoped Topology

namespace GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

/-- Lower bounds with errors arbitrarily close to zero force nonnegativity.
No monotonicity of the error sequence is required. -/
theorem nonneg_of_small_error_lower_bounds {a : ℝ} (error : ℕ → ℝ)
    (small : ∀ δ : ℝ, 0 < δ → ∃ k : ℕ, error k < δ)
    (lower : ∀ k : ℕ, -error k ≤ a) : 0 ≤ a := by
  by_contra ha
  have ha' : a < 0 := lt_of_not_ge ha
  obtain ⟨k, hk⟩ := small (-a) (by linarith)
  have hl := lower k
  linarith

/-- The positive dyadic tolerances used by OCERT-1 are arbitrarily small. -/
theorem dyadic_errors_arbitrarily_small :
    ∀ δ : ℝ, 0 < δ → ∃ k : ℕ, (1 / 2 : ℝ) ^ k < δ := by
  intro δ hδ
  exact exists_pow_lt_of_lt_one hδ (by norm_num : (1 / 2 : ℝ) < 1)

/-- Dyadic lower bounds are sufficient even when the exact value is zero. -/
theorem nonneg_of_dyadic_lower_bounds {a : ℝ}
    (lower : ∀ k : ℕ, -((1 / 2 : ℝ) ^ k) ≤ a) : 0 ≤ a :=
  nonneg_of_small_error_lower_bounds (fun k => (1 / 2 : ℝ) ^ k)
    dyadic_errors_arbitrarily_small lower

/-- A continuous real functional nonnegative on a dense range is nonnegative
on the whole specified test space. The encoding need not be injective. -/
theorem nonneg_of_dense_range {X Code : Type*} [TopologicalSpace X]
    (q : X → ℝ) (encode : Code → X) (dense : DenseRange encode)
    (continuous : Continuous q) (nonneg : ∀ d : Code, 0 ≤ q (encode d)) :
    ∀ x : X, 0 ≤ q x := by
  have hclosed : IsClosed {x : X | 0 ≤ q x} :=
    isClosed_le continuous_const continuous
  have hsubset : range encode ⊆ {x : X | 0 ≤ q x} := by
    rintro x ⟨d, rfl⟩
    exact nonneg d
  have hclosure := closure_minimal hsubset hclosed
  have hdense : Dense (range encode) := dense
  exact fun x => hclosure (hdense x)

/-- Positivity is equivalent to positivity on the entire dense dictionary,
not to positivity on finitely many tests or only on basis vectors. -/
theorem nonneg_iff_on_dense_range {X Code : Type*} [TopologicalSpace X]
    (q : X → ℝ) (encode : Code → X) (dense : DenseRange encode)
    (continuous : Continuous q) :
    (∀ x : X, 0 ≤ q x) ↔ ∀ d : Code, 0 ≤ q (encode d) := by
  constructor
  · intro h d
    exact h (encode d)
  · exact nonneg_of_dense_range q encode dense continuous

/-- A negative value of a continuous functional is detected by some member
of any dense dictionary. This does not construct an effective search. -/
theorem exists_negative_on_dense_range {X Code : Type*} [TopologicalSpace X]
    (q : X → ℝ) (encode : Code → X) (dense : DenseRange encode)
    (continuous : Continuous q) {x : X} (negative : q x < 0) :
    ∃ d : Code, q (encode d) < 0 := by
  by_contra h
  have hnonneg : ∀ d : Code, 0 ≤ q (encode d) := by
    intro d
    exact le_of_not_gt (fun hd => h ⟨d, hd⟩)
  exact (not_le_of_gt negative)
    (nonneg_of_dense_range q encode dense continuous hnonneg x)

/-- Sound shrinking enclosures of a negative number have a negative upper
endpoint at some accuracy. Both enclosure inequalities are retained. -/
theorem exists_negative_upper_endpoint {a : ℝ} (lower upper : ℕ → ℝ)
    (encloses : ∀ k : ℕ, lower k ≤ a ∧ a ≤ upper k)
    (smallWidth : ∀ δ : ℝ, 0 < δ → ∃ k : ℕ, upper k - lower k < δ)
    (negative : a < 0) : ∃ k : ℕ, upper k < 0 := by
  obtain ⟨k, hk⟩ := smallWidth (-a) (by linarith)
  have hl := (encloses k).1
  exact ⟨k, by linarith⟩

/-- Convergence of enclosure widths gives eventual, not merely subsequential,
negative upper endpoints. No termination or runtime assertion is implied. -/
theorem eventually_negative_upper_endpoint {a : ℝ} (lower upper : ℕ → ℝ)
    (encloses : ∀ k : ℕ, lower k ≤ a ∧ a ≤ upper k)
    (widthTendsToZero : Tendsto (fun k => upper k - lower k) atTop (𝓝 0))
    (negative : a < 0) : ∀ᶠ k : ℕ in atTop, upper k < 0 := by
  have hwidth : ∀ᶠ k : ℕ in atTop, upper k - lower k < -a :=
    widthTendsToZero.eventually (gt_mem_nhds (neg_pos.mpr negative))
  exact hwidth.mono fun k hk => by
    have hl := (encloses k).1
    linarith

/-- A surjective schedule of test/accuracy pairs reaches a negative enclosure
when one exists in the continuous source. Total enclosure functions and
surjectivity model an ideal unbounded search, not a finite resource guarantee.
A learned priority policy is not assumed to be surjective. -/
theorem exists_negative_at_surjective_schedule {X Code : Type*} [TopologicalSpace X]
    (q : X → ℝ) (encode : Code → X) (dense : DenseRange encode)
    (continuous : Continuous q) (lower upper : Code → ℕ → ℝ)
    (encloses : ∀ (d : Code) (k : ℕ),
      lower d k ≤ q (encode d) ∧ q (encode d) ≤ upper d k)
    (smallWidth : ∀ (d : Code) (δ : ℝ), 0 < δ →
      ∃ k : ℕ, upper d k - lower d k < δ)
    (schedule : ℕ → Code × ℕ) (fair : Function.Surjective schedule)
    (negative : ∃ x : X, q x < 0) :
    ∃ n : ℕ, upper (schedule n).1 (schedule n).2 < 0 := by
  obtain ⟨x, hx⟩ := negative
  obtain ⟨d, hd⟩ := exists_negative_on_dense_range q encode dense continuous hx
  obtain ⟨k, hk⟩ := exists_negative_upper_endpoint (lower d) (upper d)
    (encloses d) (smallWidth d) hd
  obtain ⟨n, hn⟩ := fair (d, k)
  refine ⟨n, ?_⟩
  rw [hn]
  exact hk

/-- A finite positive prefix leaves an untested negative case. This is a
scalar countermodel, not an arithmetic zero or a refutation of GRH. -/
theorem finite_prefix_counterexample (N : ℕ) :
    ∃ f : ℕ → ℝ, (∀ n : ℕ, n < N → 0 ≤ f n) ∧ f N < 0 := by
  refine ⟨fun n => if n < N then 1 else -1, ?_, ?_⟩
  · intro n hn
    simp [hn]
  · simp

/-- Repeating a fixed error bound cannot establish exact nonnegativity. -/
theorem constant_error_counterexample :
    (∀ k : ℕ, -(1 : ℝ) ≤ -1) ∧ ¬ (0 : ℝ) ≤ -1 := by
  constructor
  · intro k
    norm_num
  · norm_num

end GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation
