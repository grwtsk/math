/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Imported Mathlib and GRWTSK definitions retain their original licenses.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Do not import this module from GRWTSK.lean before exact Lean/Lake, fresh kernel,
and complete transitive axiom/unsafe receipts are available.
-/
import GRWTSK.Geometry.Hodge.FiniteMatrixHodge
import Mathlib

/-!
# Finite-time Hodge heat is exactly reversible, but not uniformly compressive

For a diagonalized nonnegative finite Hodge Laplacian with eigenvalues
lambda(i), continuous spectral heat is

  heat(t,f)(i) = exp(-t*lambda(i))*f(i).

At every finite real time it has a pointwise inverse given by multiplication
by exp(t*lambda(i)). This is injectivity with full real precision, NOT an
injective finite-bit encoding or an error-stable inverse for an unbounded
spectral/time tower.

The actual Hodge graph bridge requires an explicit finite orthogonal spectral
chart that diagonalizes the specific graph Laplacian deltaStar * delta.
Such a chart is an input to the Hodge transport below; no unsourced
diagonalization or zeta spectrum is manufactured.

A discrete implicit-Euler scalar channel x/(1+n), with unit time and
eigenvalue n, exhibits a separate sharp obstruction: exact recovery at every
finite stage, while no uniform Lipschitz bound holds for the inverse across
stages. This rational scalar example is not itself the exponential semigroup.

Dropping even one coordinate after any finite-time heat step loses
information. Nothing here proves a Huffman coding theorem, a spectral limit,
a zeta-zero height statement, RH/GRH, or the nonlinear 7/8 -> 3/4 step.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Geometry.Hodge.FiniteHeatRecovery

open GRWTSK.Geometry.Hodge.FiniteGraphCellular
open GRWTSK.Geometry.Hodge.FiniteMatrixHodge
open scoped BigOperators

/-- Exact exponential heat on a supplied diagonal coordinate system. -/
def diagonalHeat {ι : Type*} (eigenvalue : ι → ℝ) (t : ℝ)
    (signal : ι → ℝ) : ι → ℝ :=
  fun i => Real.exp (-(t * eigenvalue i)) * signal i

/-- Exact full-precision inverse, with explicitly amplified eigenmodes. -/
def inverseDiagonalHeat {ι : Type*} (eigenvalue : ι → ℝ) (t : ℝ)
    (signal : ι → ℝ) : ι → ℝ :=
  fun i => Real.exp (t * eigenvalue i) * signal i

/-- No information is destroyed at any finite time in exact coordinates. -/
theorem inverse_after_heat {ι : Type*} (eigenvalue : ι → ℝ) (t : ℝ)
    (signal : ι → ℝ) :
    inverseDiagonalHeat eigenvalue t (diagonalHeat eigenvalue t signal) =
      signal := by
  funext i
  change Real.exp (t * eigenvalue i) *
    (Real.exp (-(t * eigenvalue i)) * signal i) = signal i
  calc
    Real.exp (t * eigenvalue i) *
        (Real.exp (-(t * eigenvalue i)) * signal i) =
      (Real.exp (t * eigenvalue i) *
        Real.exp (-(t * eigenvalue i))) * signal i := by ring
    _ = Real.exp (t * eigenvalue i + -(t * eigenvalue i)) *
        signal i := by rw [Real.exp_add]
    _ = signal i := by simp

/-- Recovery works in the other direction as well. -/
theorem heat_after_inverse {ι : Type*} (eigenvalue : ι → ℝ) (t : ℝ)
    (signal : ι → ℝ) :
    diagonalHeat eigenvalue t (inverseDiagonalHeat eigenvalue t signal) =
      signal := by
  funext i
  change Real.exp (-(t * eigenvalue i)) *
    (Real.exp (t * eigenvalue i) * signal i) = signal i
  calc
    Real.exp (-(t * eigenvalue i)) *
        (Real.exp (t * eigenvalue i) * signal i) =
      (Real.exp (-(t * eigenvalue i)) *
        Real.exp (t * eigenvalue i)) * signal i := by ring
    _ = Real.exp (-(t * eigenvalue i) + t * eigenvalue i) *
        signal i := by rw [Real.exp_add]
    _ = signal i := by simp

/-- Finite-time exact heat cannot identify distinct input signals. -/
theorem diagonalHeat_injective {ι : Type*} (eigenvalue : ι → ℝ) (t : ℝ) :
    Function.Injective (diagonalHeat eigenvalue t) := by
  intro x y hxy
  calc
    x = inverseDiagonalHeat eigenvalue t (diagonalHeat eigenvalue t x) :=
      (inverse_after_heat eigenvalue t x).symm
    _ = inverseDiagonalHeat eigenvalue t (diagonalHeat eigenvalue t y) := by
      rw [hxy]
    _ = y := inverse_after_heat eigenvalue t y

/-- The canonical exact diagonal heat obeys the finite-time semigroup law. -/
theorem diagonalHeat_add_time {ι : Type*} (eigenvalue : ι → ℝ)
    (s t : ℝ) (signal : ι → ℝ) :
    diagonalHeat eigenvalue (s + t) signal =
      diagonalHeat eigenvalue s (diagonalHeat eigenvalue t signal) := by
  funext i
  change Real.exp (-((s + t) * eigenvalue i)) * signal i =
    Real.exp (-(s * eigenvalue i)) *
      (Real.exp (-(t * eigenvalue i)) * signal i)
  have hx :
      -((s + t) * eigenvalue i) =
        -(s * eigenvalue i) + -(t * eigenvalue i) := by ring
  rw [hx, Real.exp_add]
  ring

/-- Nonnegative spectral channels attenuate coordinate absolute values. -/
theorem diagonalHeat_abs_le {ι : Type*} (eigenvalue : ι → ℝ)
    (nonnegative : ∀ i, 0 ≤ eigenvalue i) {t : ℝ}
    (ht : 0 ≤ t) (signal : ι → ℝ) (i : ι) :
    |diagonalHeat eigenvalue t signal i| ≤ |signal i| := by
  have htnonneg : 0 ≤ t * eigenvalue i :=
    mul_nonneg ht (nonnegative i)
  have hle : Real.exp (-(t * eigenvalue i)) ≤ 1 := by
    have h : Real.exp (-(t * eigenvalue i)) ≤ Real.exp 0 :=
      Real.exp_le_exp.mpr (neg_nonpos.mpr htnonneg)
    simpa only [Real.exp_zero] using h
  change |Real.exp (-(t * eigenvalue i)) * signal i| ≤ |signal i|
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    Real.exp (-(t * eigenvalue i)) * |signal i| ≤
        1 * |signal i| :=
      mul_le_mul_of_nonneg_right hle (abs_nonneg _)
    _ = |signal i| := one_mul _

/-- Energy decreases while exact full-precision recoverability remains true. -/
theorem diagonalHeat_squareEnergy_le {ι : Type*} [Fintype ι]
    (eigenvalue : ι → ℝ) (nonnegative : ∀ i, 0 ≤ eigenvalue i)
    {t : ℝ} (ht : 0 ≤ t) (signal : ι → ℝ) :
    (∑ i, (diagonalHeat eigenvalue t signal i)^2) ≤
      ∑ i, (signal i)^2 := by
  apply Finset.sum_le_sum
  intro i _
  have h :=
    (sq_le_sq₀ (abs_nonneg _) (abs_nonneg _)).mpr
      (diagonalHeat_abs_le eigenvalue nonnegative ht signal i)
  simpa only [sq_abs] using h

/-- Harmonic zero-eigenvalue coordinates are not damped at all. -/
theorem diagonalHeat_zero_mode {ι : Type*} (eigenvalue : ι → ℝ)
    (t : ℝ) (signal : ι → ℝ) (i : ι)
    (hzero : eigenvalue i = 0) :
    diagonalHeat eigenvalue t signal i = signal i := by
  simp [diagonalHeat, hzero]

/-- Pointwise recovery bound from a separately supplied inverse gain. -/
theorem inverse_gain_readout {ι : Type*} (eigenvalue : ι → ℝ)
    (t : ℝ) (signal : ι → ℝ) (C : ℝ)
    (hgain : ∀ i, Real.exp (t * eigenvalue i) ≤ C) (i : ι) :
    |signal i| ≤ C * |diagonalHeat eigenvalue t signal i| := by
  have h := congrFun (inverse_after_heat eigenvalue t signal) i
  have hrew :
      signal i = Real.exp (t * eigenvalue i) *
          diagonalHeat eigenvalue t signal i := h.symm
  rw [hrew, abs_mul, abs_of_pos (Real.exp_pos _)]
  exact mul_le_mul_of_nonneg_right (hgain i) (abs_nonneg _)

/-- Exact uniform coordinate-inverse requirement for the full spectral
heat operator, with ONE real constant shared across all inputs and modes. -/
def UniformInverseBound {ι : Type*} (eigenvalue : ι → ℝ)
    (t C : ℝ) : Prop :=
  ∀ signal : ι → ℝ, ∀ i : ι,
    |inverseDiagonalHeat eigenvalue t signal i| ≤ C * |signal i|

/-- This is the precise stability gate: a uniform inverse is bounded
if and only if every spectral amplification exp(t*lambda(i)) is bounded
by that same constant. Mere stagewise invertibility proves neither side. -/
theorem uniformInverseBound_iff_gain {ι : Type*}
    (eigenvalue : ι → ℝ) (t C : ℝ) :
    UniformInverseBound eigenvalue t C ↔
      ∀ i : ι, Real.exp (t * eigenvalue i) ≤ C := by
  constructor
  · intro h i
    have hsingle := h (fun _ => (1 : ℝ)) i
    change |Real.exp (t * eigenvalue i) * (1 : ℝ)| ≤
      C * |(1 : ℝ)| at hsingle
    simpa [abs_of_pos (Real.exp_pos _)] using hsingle
  · intro h signal i
    change |Real.exp (t * eigenvalue i) * signal i| ≤
      C * |signal i|
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    exact mul_le_mul_of_nonneg_right (h i) (abs_nonneg _)

/-- A supplied, source-faithful finite Hodge spectral chart for an ACTUAL
finite incidence Laplacian. Existence is not constructed in this module. -/
structure HodgeSpectralChart
    {Vertex : Type*} {Edge : Type*}
    [Fintype Vertex] [Fintype Edge] [DecidableEq Vertex]
    (G : OrientedIncidence Vertex Edge) where
  size : ℕ
  coordinates : (Vertex → ℝ) ≃ₗ[ℝ] (Fin size → ℝ)
  eigenvalue : Fin size → ℝ
  nonnegative : ∀ i, 0 ≤ eigenvalue i
  /-- A metric-compatible chart, not an arbitrary algebraic equivalence.
  This is a separately required Hodge spectral input. -/
  square_norm_coordinates :
    ∀ signal : Vertex → ℝ,
      (∑ v, (signal v)^2) =
        ∑ i, (coordinates signal i)^2
  laplacian_diagonal :
    ∀ signal i,
      coordinates (laplacian G signal) i =
        eigenvalue i * coordinates signal i

/-- Heat on an actual finite Hodge graph, conditional on the genuine chart. -/
def HodgeSpectralChart.heat
    {Vertex Edge : Type*}
    [Fintype Vertex] [Fintype Edge] [DecidableEq Vertex]
    {G : OrientedIncidence Vertex Edge}
    (C : HodgeSpectralChart G) (t : ℝ)
    (signal : Vertex → ℝ) : Vertex → ℝ :=
  C.coordinates.symm (diagonalHeat C.eigenvalue t (C.coordinates signal))

def HodgeSpectralChart.recover
    {Vertex Edge : Type*}
    [Fintype Vertex] [Fintype Edge] [DecidableEq Vertex]
    {G : OrientedIncidence Vertex Edge}
    (C : HodgeSpectralChart G) (t : ℝ)
    (signal : Vertex → ℝ) : Vertex → ℝ :=
  C.coordinates.symm
    (inverseDiagonalHeat C.eigenvalue t (C.coordinates signal))

/-- Conditional transport to the actual graph: finite heat remains bijective. -/
theorem HodgeSpectralChart.recover_heat
    {Vertex Edge : Type*}
    [Fintype Vertex] [Fintype Edge] [DecidableEq Vertex]
    {G : OrientedIncidence Vertex Edge}
    (C : HodgeSpectralChart G) (t : ℝ)
    (signal : Vertex → ℝ) :
    C.recover t (C.heat t signal) = signal := by
  simp [HodgeSpectralChart.recover, HodgeSpectralChart.heat,
    inverse_after_heat]

/-- A genuinely metric-compatible Hodge chart transports the same finite
energy contraction back to the ACTUAL graph-signal carrier. Without the
square-norm compatibility field this statement would not follow from an
arbitrary linear equivalence. -/
theorem HodgeSpectralChart.heat_squareEnergy_le
    {Vertex Edge : Type*}
    [Fintype Vertex] [Fintype Edge] [DecidableEq Vertex]
    {G : OrientedIncidence Vertex Edge}
    (C : HodgeSpectralChart G) {t : ℝ} (ht : 0 ≤ t)
    (signal : Vertex → ℝ) :
    (∑ v, (C.heat t signal v)^2) ≤
      ∑ v, (signal v)^2 := by
  calc
    (∑ v, (C.heat t signal v)^2) =
        ∑ i, (C.coordinates (C.heat t signal) i)^2 :=
      C.square_norm_coordinates (C.heat t signal)
    _ = ∑ i, (diagonalHeat C.eigenvalue t (C.coordinates signal) i)^2 := by
      simp [HodgeSpectralChart.heat]
    _ ≤ ∑ i, (C.coordinates signal i)^2 :=
      diagonalHeat_squareEnergy_le C.eigenvalue C.nonnegative ht
        (C.coordinates signal)
    _ = ∑ v, (signal v)^2 :=
      (C.square_norm_coordinates signal).symm

/-- A finite-bit-style coordinate omission is not lossless, even though
the full exact heat map is bijective. The discarded second component
cannot be recovered from the first component of the heated signal. -/
theorem discarded_coordinate_is_not_injective :
    ¬ Function.Injective
        (fun signal : Fin 2 → ℝ =>
          diagonalHeat (fun _ => (1 : ℝ)) 1 signal 0) := by
  intro hinj
  let first : Fin 2 → ℝ := fun _ => 0
  let second : Fin 2 → ℝ := fun i => if i = 1 then 1 else 0
  have hobs :
      diagonalHeat (fun _ => (1 : ℝ)) 1 first 0 =
        diagonalHeat (fun _ => (1 : ℝ)) 1 second 0 := by
    simp [first, second, diagonalHeat]
  have hsignals := hinj hobs
  have hdiff := congrFun hsignals (1 : Fin 2)
  norm_num [first, second] at hdiff

/-- One backwards-Euler heat step with unit time and eigenvalue n.
This is a rational surrogate, NOT the exact exponential semigroup. -/
def implicitEulerEncode (n : ℕ) (signal : ℝ) : ℝ :=
  signal / ((n : ℝ) + 1)

def implicitEulerRecover (n : ℕ) (signal : ℝ) : ℝ :=
  ((n : ℝ) + 1) * signal

/-- Every individual stage is exactly reversible. -/
theorem implicitEuler_exact (n : ℕ) (signal : ℝ) :
    implicitEulerRecover n (implicitEulerEncode n signal) = signal := by
  unfold implicitEulerRecover implicitEulerEncode
  have hn : ((n : ℝ) + 1) ≠ 0 := by positivity
  field_simp [hn] <;> ring

/-- Across growing spectral scales the inverse has no uniform finite
Lipschitz constant. Stagewise exact recovery therefore does not imply
stable lossless recovery at fixed numerical precision over a tower. -/
theorem implicitEuler_no_uniform_inverse_bound :
    ¬ ∃ C : ℝ, ∀ n : ℕ, ∀ signal : ℝ,
      |implicitEulerRecover n signal| ≤ C * |signal| := by
  rintro ⟨C, hC⟩
  obtain ⟨n, hn⟩ := exists_nat_gt C
  have hnpos : (0 : ℝ) < (n : ℝ) + 1 := by positivity
  have hb : (n : ℝ) + 1 ≤ C := by
    simpa [implicitEulerRecover, abs_of_pos hnpos] using hC n 1
  linarith

end GRWTSK.Geometry.Hodge.FiniteHeatRecovery
