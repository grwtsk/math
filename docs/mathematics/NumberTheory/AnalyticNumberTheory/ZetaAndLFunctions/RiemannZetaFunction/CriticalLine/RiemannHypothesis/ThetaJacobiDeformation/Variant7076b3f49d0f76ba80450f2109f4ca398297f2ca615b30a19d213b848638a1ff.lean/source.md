# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaJacobiDeformation.Variant7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60f8ec0bf5fa9c98123ec6d899949079efe86484` · SHA-256 `7076b3f49d0f76ba80450f2109f4ca398297f2ca615b30a19d213b848638a1ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaJacobiAdapter
import FormalResearch.PositiveAtlas.Spectral.JacobiTransfer
import Mathlib.LinearAlgebra.Matrix.Notation

/-!
# Exact finite Jacobi deformation and hostile free-model fixtures

For a finite half-line truncation, `finiteJacobi` has diagonal `b` and symmetric
nearest-neighbor coefficients `a`.  Its deformation from the free coefficients
is explicitly diagonal `b` and off-diagonal `a - 1`; this is an algebraic
identity, not a bound or an asymptotic approximation.  A diagonal potential
alone cannot account for nonfree hopping coefficients.

The first cyclic moment is exactly `b 0`.  Thus a positive first magnitude
moment forces a nonzero diagonal deformation, and excludes a pointed
identification with the free Jacobi model.  A fixture also matches moments of
orders zero, one, and two but fails at order three: finite moment matching does
not prove pointed equivalence.

These are finite coefficient theorems.  They assert neither a theta Jacobi
existence theorem nor an infinite-dimensional operator construction.  In
particular, the PR #151 theta modules are not silently imported as accepted
source, and no estimate in RH #16 is inferred from this finite geometry.
-/

namespace FormalResearch.RiemannHypothesis.ThetaJacobi

open Matrix
open FormalResearch.PositiveAtlas.Spectral

/-- Explicit weighted-transfer deformation from the free coefficients.
The divided entries express the recurrence only when `a ≠ 0`; this definition
does not assert that analytic hypothesis or any smallness estimate. -/
def weightedTransferDeformation {K : Type*} [Field K] (E b a : K) :
    Matrix (Fin 2) (Fin 2) K :=
  !![(E - b) / a - E, 1 - 1 / a; a - 1, 0]

/-- Exact transfer-level coefficient decomposition in the weighted state.
The correction includes hopping as well as diagonal potential. -/
theorem weightedJacobiTransfer_eq_free_add_deformation {K : Type*} [Field K]
    (E b a : K) :
    weightedJacobiTransfer E b a =
      schrodingerTransfer E 0 + weightedTransferDeformation E b a := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [weightedJacobiTransfer, schrodingerTransfer, weightedTransferDeformation]
  all_goals ring

/-- Equality with the literal free transfer already forces free hopping and
zero potential.  Sharing determinant-one syntax is weaker than this equality. -/
theorem weightedJacobiTransfer_eq_free_iff {K : Type*} [Field K] (E b a : K) :
    weightedJacobiTransfer E b a = schrodingerTransfer E 0 ↔ a = 1 ∧ b = 0 := by
  constructor
  · intro h
    have ha := congrArg (fun M : Matrix (Fin 2) (Fin 2) K => M 1 0) h
    change a = 1 at ha
    refine ⟨ha, ?_⟩
    have hb := congrArg (fun M : Matrix (Fin 2) (Fin 2) K => M 0 0) h
    change (E - b) / a = E - 0 at hb
    rw [ha, div_one, sub_zero] at hb
    exact sub_eq_self.mp hb
  · rintro ⟨rfl, rfl⟩
    simp [weightedJacobiTransfer, schrodingerTransfer]

/-- The Jacobi truncation on sites `0,...,N`, with edge coefficient `a i`
between sites `i` and `i+1`. -/
def finiteJacobi (N : ℕ) (a b : ℕ → ℝ) : Matrix (Fin (N + 1)) (Fin (N + 1)) ℝ :=
  fun i j =>
    if i = j then b i.val
    else if i.val + 1 = j.val then a i.val
    else if j.val + 1 = i.val then a j.val
    else 0

/-- The free finite truncation, explicitly distinguished from the infinite
half-line operator. -/
def finiteFreeJacobi (N : ℕ) : Matrix (Fin (N + 1)) (Fin (N + 1)) ℝ :=
  finiteJacobi N (fun _ => 1) (fun _ => 0)

/-- Explicit tridiagonal deformation: diagonal `b` and both adjacent edge
entries `a-1`.  Variable hopping is part of the deformation. -/
def finiteJacobiDeformation (N : ℕ) (a b : ℕ → ℝ) :
    Matrix (Fin (N + 1)) (Fin (N + 1)) ℝ :=
  fun i j =>
    if i = j then b i.val
    else if i.val + 1 = j.val then a i.val - 1
    else if j.val + 1 = i.val then a j.val - 1
    else 0

/-- Exact coefficient decomposition, with no claim that the deformation is
small or that the coefficients come from theta orthogonalization. -/
theorem finiteJacobi_eq_free_add_deformation (N : ℕ) (a b : ℕ → ℝ) :
    finiteJacobi N a b = finiteFreeJacobi N + finiteJacobiDeformation N a b := by
  ext i j
  simp only [Matrix.add_apply, finiteFreeJacobi, finiteJacobiDeformation, finiteJacobi]
  split_ifs <;> ring

/-- The diagonal entries of this exact deformation are the scalar recurrence
coefficients `b`. -/
@[simp] theorem finiteJacobi_diagonal (N : ℕ) (a b : ℕ → ℝ) (i : Fin (N + 1)) :
    finiteJacobi N a b i i = b i.val := by
  simp [finiteJacobi]

/-- A finite cyclic matrix coefficient at the initial site. -/
noncomputable def finiteCyclicMoment (N : ℕ) (J : Matrix (Fin (N + 1)) (Fin (N + 1)) ℝ)
    (n : ℕ) : ℝ :=
  (J ^ n) 0 0

/-- Exact first-moment indexing: the first Jacobi moment is its initial
diagonal recurrence coefficient. -/
@[simp] theorem finiteJacobi_first_moment (N : ℕ) (a b : ℕ → ℝ) :
    finiteCyclicMoment N (finiteJacobi N a b) 1 = b 0 := by
  simp [finiteCyclicMoment]

/-- The finite free model also has zero first moment. -/
@[simp] theorem finiteFreeJacobi_first_moment (N : ℕ) :
    finiteCyclicMoment N (finiteFreeJacobi N) 1 = 0 := by
  simp [finiteFreeJacobi]

/-- A nonzero initial diagonal rules out an exact pointed free-moment
identification, already at order one. -/
theorem finiteJacobi_moments_not_free_of_initial_diagonal (N : ℕ) (a b : ℕ → ℝ)
    (hb : b 0 ≠ 0) :
    finiteCyclicMoment N (finiteJacobi N a b) ≠
      finiteCyclicMoment N (finiteFreeJacobi N) := by
  apply first_moment_obstructs_transport
  · simpa using hb
  · simp

/-- Any proposed positive-magnitude moment adapter forces a positive initial
diagonal.  The moment representation remains an explicit hypothesis. -/
theorem positive_magnitude_forces_initial_deformation {ι : Type*} [Fintype ι]
    (N : ℕ) (a b : ℕ → ℝ) (w x : ι → ℝ)
    (hw : ∀ i, 0 ≤ w i) (hx : ∀ i, 0 < x i) (hnonzero : ∃ i, 0 < w i)
    (hfirst : finiteCyclicMoment N (finiteJacobi N a b) 1 =
      atomicMagnitudeMoment w x 1) :
    0 < b 0 := by
  rw [finiteJacobi_first_moment] at hfirst
  rw [hfirst]
  exact positive_atomic_first_moment w x hw hx hnonzero

/-- The first edge of any truncation containing sites zero and one. -/
@[simp] theorem finiteJacobi_first_edge (N : ℕ) (a b : ℕ → ℝ) :
    finiteJacobi (N + 1) a b 0 1 = a 0 := by
  simp [finiteJacobi]

/-- A diagonal-only perturbation forces the first hopping coefficient to be
exactly one.  This rules out a frequently overstrong free-plus-potential claim. -/
theorem diagonal_perturbation_forces_first_edge (N : ℕ) (a b : ℕ → ℝ)
    (v : Fin (N + 1 + 1) → ℝ)
    (h : finiteJacobi (N + 1) a b = finiteFreeJacobi (N + 1) + diagonal v) :
    a 0 = 1 := by
  have hh := congrArg (fun M : Matrix (Fin (N + 1 + 1)) (Fin (N + 1 + 1)) ℝ => M 0 1) h
  simpa [finiteFreeJacobi, Matrix.add_apply] using hh

/-- Hostile hopping fixture: edge two cannot be removed by any diagonal
potential, at any finite truncation containing the first edge. -/
theorem nonfree_hopping_not_diagonal_potential (N : ℕ) :
    ∀ v : Fin (N + 1 + 1) → ℝ,
      finiteJacobi (N + 1) (fun _ => 2) (fun _ => 0) ≠
        finiteFreeJacobi (N + 1) + diagonal v := by
  intro v h
  have hh := diagonal_perturbation_forces_first_edge N _ _ v h
  norm_num at hh

/-- A two-site free finite fixture. -/
def twoSiteFree : Matrix (Fin 2) (Fin 2) ℝ := !![0, 1; 1, 0]

/-- A two-site deformation at the second diagonal site. -/
def twoSiteSecondPotential : Matrix (Fin 2) (Fin 2) ℝ := !![0, 1; 1, 1]

/-- Matching these initial three moments is not enough for pointed
equivalence: the next moment differs. -/
theorem three_moments_match_but_fourth_differs :
    (∀ n < 3, (twoSiteFree ^ n) 0 0 = (twoSiteSecondPotential ^ n) 0 0) ∧
      (twoSiteFree ^ 3) 0 0 ≠ (twoSiteSecondPotential ^ 3) 0 0 := by
  constructor
  · intro n hn
    interval_cases n <;> norm_num [twoSiteFree, twoSiteSecondPotential,
      pow_succ, Matrix.mul_apply, Fin.sum_univ_two]
  · norm_num [twoSiteFree, twoSiteSecondPotential,
      pow_succ, Matrix.mul_apply, Fin.sum_univ_two]

/-- A zero first cyclic coefficient does not say that the cyclic vector is
a zero eigenvector: the same free fixture sends `e₀` to `e₁`. -/
theorem cyclic_zero_not_zero_eigenvector :
    twoSiteFree 0 0 = 0 ∧
      twoSiteFree.mulVec (Pi.single 0 (1 : ℝ)) ≠ 0 := by
  constructor
  · rfl
  · intro h
    have hh := congrArg (fun x : Fin 2 → ℝ => x 1) h
    norm_num [twoSiteFree, Matrix.mulVec, dotProduct, Fin.sum_univ_two,
      Pi.single_apply] at hh

end FormalResearch.RiemannHypothesis.ThetaJacobi
```
