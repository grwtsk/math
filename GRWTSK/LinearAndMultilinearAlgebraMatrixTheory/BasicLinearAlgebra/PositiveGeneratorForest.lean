/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.RationalEnclosureCertificates

/-!
# Forests of nonnegative linear-form squares

A finite rooted binary tree records sums of weighted complex square magnitudes.
Its matrix interpretation retains the conjugate-first pairing used by the
finite-kernel enclosure API. A forest is a finite list of such trees.

The matrix identity and positivity below are proved from the syntax. They do
not identify any forest with a Weil matrix. The signed residual bound in the
transfer theorem is an explicit hypothesis about the original matrix.
No default coefficient-matrix norm is described as a Euclidean operator norm.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.LinearAlgebra.PositiveGeneratorForest

open RationalEnclosureCertificates

variable {ι : Type*} [Fintype ι]

/-- A nonnegative weight and an actual linear-form coefficient row. -/
structure Generator (ι : Type*) where
  weight : ℝ
  weight_nonneg : 0 ≤ weight
  row : ι → ℂ

namespace Generator

/-- Rational data give a special case of the complex generator. -/
def ofRational (weight : ℚ) (hweight : 0 ≤ weight) (row : ι → ℚ) : Generator ι where
  weight := weight
  weight_nonneg := by exact_mod_cast hweight
  row := fun i => (row i : ℂ)

/-- Rational weights and real rational coefficient rows require no real oracle.
This restriction is useful for certificates of real symmetric kernels. -/
def IsRational (g : Generator ι) : Prop :=
  ∃ weight : ℚ, ∃ row : ι → ℚ,
    g.weight = (weight : ℝ) ∧ g.row = fun i => (row i : ℂ)

omit [Fintype ι] in
theorem ofRational_isRational (weight : ℚ) (hweight : 0 ≤ weight) (row : ι → ℚ) :
    (ofRational weight hweight row).IsRational :=
  ⟨weight, row, rfl, rfl⟩

/-- The coefficient row acts linearly; no arbitrary feature is substituted. -/
def linear (g : Generator ι) (c : ι → ℂ) : ℂ :=
  ∑ i, g.row i * c i

def energy (g : Generator ι) (c : ι → ℂ) : ℝ :=
  g.weight * ‖g.linear c‖ ^ 2

/-- The conjugate orientation makes the quadratic equal the intended square. -/
def matrix (g : Generator ι) : Matrix ι ι ℂ :=
  fun i j => (g.weight : ℂ) * conj (g.row i) * g.row j

omit [Fintype ι] in
theorem matrix_isHermitian (g : Generator ι) : g.matrix.IsHermitian := by
  apply Matrix.IsHermitian.ext
  intro i j
  change conj ((g.weight : ℂ) * conj (g.row j) * g.row i) =
    (g.weight : ℂ) * conj (g.row i) * g.row j
  simp only [map_mul, starRingEnd_apply, star_star]
  have hweight : star (g.weight : ℂ) = (g.weight : ℂ) := Complex.conj_ofReal _
  rw [hweight]
  ring

theorem energy_nonneg (g : Generator ι) (c : ι → ℂ) : 0 ≤ g.energy c :=
  mul_nonneg g.weight_nonneg (sq_nonneg _)

theorem complexQuadratic_matrix (g : Generator ι) (c : ι → ℂ) :
    complexQuadratic g.matrix c = g.energy c := by
  have hsum : (∑ i, ∑ j, conj (c i) * g.matrix i j * c j) =
      (g.weight : ℂ) * conj (g.linear c) * g.linear c := by
    simp only [matrix, linear, map_sum, map_mul, Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    ring
  unfold complexQuadratic
  rw [hsum]
  unfold energy
  rw [← Complex.normSq_eq_norm_sq]
  simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.conj_re, Complex.conj_im, Complex.normSq_apply]
  ring

end Generator

/-- A rooted decomposition tree. Branches add their energies. -/
inductive Tree (ι : Type*) where
  | leaf : Generator ι → Tree ι
  | join : Tree ι → Tree ι → Tree ι

namespace Tree

def IsRational : Tree ι → Prop
  | .leaf g => g.IsRational
  | .join left right => left.IsRational ∧ right.IsRational

def energy : Tree ι → (ι → ℂ) → ℝ
  | .leaf g, c => g.energy c
  | .join left right, c => left.energy c + right.energy c

def matrix : Tree ι → Matrix ι ι ℂ
  | .leaf g => g.matrix
  | .join left right => left.matrix + right.matrix

theorem energy_nonneg (tree : Tree ι) (c : ι → ℂ) : 0 ≤ tree.energy c := by
  induction tree with
  | leaf g => exact g.energy_nonneg c
  | join left right hleft hright => exact add_nonneg hleft hright

omit [Fintype ι] in
theorem matrix_isHermitian (tree : Tree ι) : tree.matrix.IsHermitian := by
  induction tree with
  | leaf g => exact g.matrix_isHermitian
  | join left right hleft hright => exact hleft.add hright

end Tree

theorem complexQuadratic_add (H P : Matrix ι ι ℂ) (c : ι → ℂ) :
    complexQuadratic (H + P) c = complexQuadratic H c + complexQuadratic P c := by
  simp only [complexQuadratic, Matrix.add_apply, mul_add, add_mul,
    Finset.sum_add_distrib, Complex.add_re]

@[simp] theorem complexQuadratic_zero (c : ι → ℂ) :
    complexQuadratic (0 : Matrix ι ι ℂ) c = 0 := by
  simp [complexQuadratic]

theorem Tree.complexQuadratic_matrix (tree : Tree ι) (c : ι → ℂ) :
    complexQuadratic tree.matrix c = tree.energy c := by
  induction tree with
  | leaf g => exact g.complexQuadratic_matrix c
  | join left right hleft hright =>
    simp only [Tree.matrix, Tree.energy, complexQuadratic_add, hleft, hright]

/-- Several roots form a finite forest; no infinite sum is implicit. -/
abbrev Forest (ι : Type*) := List (Tree ι)

def IsRational (forest : Forest ι) : Prop :=
  ∀ tree ∈ forest, tree.IsRational

def energy : Forest ι → (ι → ℂ) → ℝ
  | [], _ => 0
  | tree :: rest, c => tree.energy c + energy rest c

def matrix : Forest ι → Matrix ι ι ℂ
  | [] => 0
  | tree :: rest => tree.matrix + matrix rest

omit [Fintype ι] in
theorem matrix_isHermitian (forest : Forest ι) : (matrix forest).IsHermitian := by
  induction forest with
  | nil => exact Matrix.isHermitian_zero
  | cons tree rest ih => exact tree.matrix_isHermitian.add ih

theorem energy_nonneg (forest : Forest ι) (c : ι → ℂ) : 0 ≤ energy forest c := by
  induction forest with
  | nil => exact le_refl 0
  | cons tree rest ih => exact add_nonneg (tree.energy_nonneg c) ih

theorem complexQuadratic_matrix (forest : Forest ι) (c : ι → ℂ) :
    complexQuadratic (matrix forest) c = energy forest c := by
  induction forest with
  | nil => exact complexQuadratic_zero c
  | cons tree rest ih =>
    simp only [matrix, energy, complexQuadratic_add, tree.complexQuadratic_matrix, ih]

theorem energy_append (left right : Forest ι) (c : ι → ℂ) :
    energy (left ++ right) c = energy left c + energy right c := by
  induction left with
  | nil => simp [energy]
  | cons tree rest ih => simp [energy, ih, add_assoc]

omit [Fintype ι] in
theorem matrix_append (left right : Forest ι) :
    matrix (left ++ right) = matrix left + matrix right := by
  induction left with
  | nil => simp [matrix]
  | cons tree rest ih => simp [matrix, ih, add_assoc]

omit [Fintype ι] in
/-- Splitting an addition node into two roots preserves its entire matrix. -/
theorem split_join_matrix (left right : Tree ι) (rest : Forest ι) :
    matrix (.join left right :: rest) = matrix (left :: right :: rest) := by
  simp only [matrix, Tree.matrix, add_assoc]

/-- Splitting preserves every quadratic value, including complex directions. -/
theorem split_join_energy (left right : Tree ι) (rest : Forest ι) (c : ι → ℂ) :
    energy (.join left right :: rest) c = energy (left :: right :: rest) c := by
  simp only [energy, Tree.energy, add_assoc]

/-- Euclidean squared energy, defined independently of any matrix norm. -/
def vectorEnergy (c : ι → ℂ) : ℝ := ∑ i, ‖c i‖ ^ 2

theorem vectorEnergy_nonneg (c : ι → ℂ) : 0 ≤ vectorEnergy c := by
  exact Finset.sum_nonneg fun _ _ => sq_nonneg _

/-- A source-preserving residual certificate; all complex directions are tested. -/
def QuadraticResidual (H : Matrix ι ι ℂ) (forest : Forest ι) (r : ℝ) : Prop :=
  ∀ c : ι → ℂ, |complexQuadratic H c - energy forest c| ≤ r * vectorEnergy c

/-- Every negative contribution remains charged to the supplied residual. -/
theorem quadratic_lower_of_residual (H : Matrix ι ι ℂ) (forest : Forest ι)
    (r : ℝ) (hresidual : QuadraticResidual H forest r) (c : ι → ℂ) :
    -r * vectorEnergy c ≤ complexQuadratic H c := by
  have herr := (abs_le.mp (hresidual c)).1
  have hpositive := energy_nonneg forest c
  linarith

/-- An exact forest certificate is the zero-residual case. -/
theorem residual_of_matrix_eq (H : Matrix ι ι ℂ) (forest : Forest ι)
    (heq : H = matrix forest) : QuadraticResidual H forest 0 := by
  intro c
  simp [heq, complexQuadratic_matrix]

/-- A genuine negative direction rules out an exact positive forest representation. -/
theorem no_exact_forest_of_negative (H : Matrix ι ι ℂ) (c : ι → ℂ)
    (hnegative : complexQuadratic H c < 0) :
    ¬ ∃ forest : Forest ι, H = matrix forest := by
  rintro ⟨forest, heq⟩
  have hpositive := energy_nonneg forest c
  rw [← complexQuadratic_matrix, ← heq] at hpositive
  linarith

/-- A two-coordinate perturbation can retain positive diagonal entries while
acquiring a negative difference direction. This is a generic matrix control,
not a counterexample for any arithmetic Weil source. -/
theorem perturbation_difference_energy (d : ℝ) :
    complexQuadratic !![(1 : ℂ), 1 + (d : ℂ); 1 + (d : ℂ), 1]
      ![1, -1] = -2 * d := by
  simp [complexQuadratic, Fin.sum_univ_two]
  ring

theorem perturbation_difference_negative {d : ℝ} (hd : 0 < d) :
    complexQuadratic !![(1 : ℂ), 1 + (d : ℂ); 1 + (d : ℂ), 1]
      ![1, -1] < 0 := by
  rw [perturbation_difference_energy]
  linarith

end GRWTSK.LinearAlgebra.PositiveGeneratorForest
