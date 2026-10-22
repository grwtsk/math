/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Mathlib and imported GRWTSK sources retain their original authorship/licenses.

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Issue: #512. Direct stacked parent: draft PR #510 at
`092a9b9923fdcf28d28ad2847ff3806a22ef6697`.
-/
import GRWTSK.NumberTheory.Moebius.SignedAbelEndpointFibreQuadraticEnergy

/-!
# Four-Möbius expansion and collision strata of one endpoint fibre

For one common endpoint `b` and prefix length `1 <= n < b`, put
`h = b-n > 0`.  The endpoint-fibre summand is

`mertensTwoPointPrefix h n ^ 2`.

Expanding the square gives a finite double sum over `a,c<n` of

`mu(a+1) mu(a+1+h) mu(c+1) mu(c+1+h)`.

Because `h>0`, all possible repeated arguments are accounted for by exactly
three collision patterns:

* `a=c`;
* `c=a+h`;
* `a=c+h`.

The remaining stratum has four distinct Möbius arguments.  This module records
that partition exactly and lifts it to the endpoint-fibre energy.

No correlation estimate is introduced.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

/-- One four-Möbius term in the square of the two-point prefix belonging to
endpoint `b`, prefix length `n`, and base indices `a,c<n`. -/
def mertensEndpointFourMobiusTerm
    (b n a c : ℕ) : ℝ :=
  let h := b - n
  moebiusReal (a + 1) *
    moebiusReal (a + 1 + h) *
    moebiusReal (c + 1) *
    moebiusReal (c + 1 + h)

/-- Exact four-Möbius expansion of one squared two-point prefix. -/
theorem mertensTwoPointPrefix_sq_eq_fourMobiusSum
    (b n : ℕ) :
    mertensTwoPointPrefix (b - n) n ^ 2 =
      ∑ a ∈ Finset.range n,
        ∑ c ∈ Finset.range n,
          mertensEndpointFourMobiusTerm b n a c := by
  unfold mertensTwoPointPrefix mertensEndpointFourMobiusTerm
  rw [pow_two, Finset.sum_mul_sum]
  apply Finset.sum_congr rfl
  intro a _ha
  apply Finset.sum_congr rfl
  intro c _hc
  ring

/-- Exhaustive collision classification for the four arguments.  The order of
the constructors is part of the partition: diagonal first, then the two
oriented cross-collisions, then the fully distinct remainder. -/
inductive MertensEndpointFourMobiusStratum
  | diagonal
  | forwardCross
  | backwardCross
  | fourDistinct
  deriving DecidableEq

/-- Classification of one pair `(a,c)` at endpoint/prefix coordinates
`(b,n)`. -/
def mertensEndpointFourMobiusStratum
    (b n a c : ℕ) : MertensEndpointFourMobiusStratum :=
  let h := b - n
  if a = c then
    .diagonal
  else if c = a + h then
    .forwardCross
  else if a = c + h then
    .backwardCross
  else
    .fourDistinct

/-- Complete pair domain of the squared prefix. -/
def mertensEndpointPairSet (n : ℕ) : Finset (ℕ × ℕ) :=
  (Finset.range n).product (Finset.range n)

/-- One disjoint stratum of the complete pair domain. -/
def mertensEndpointStratumPairSet
    (b n : ℕ) (s : MertensEndpointFourMobiusStratum) :
    Finset (ℕ × ℕ) :=
  (mertensEndpointPairSet n).filter
    (fun p => mertensEndpointFourMobiusStratum b n p.1 p.2 = s)

/-- The four filtered strata exhaust the complete pair sum exactly. -/
theorem sum_mertensEndpointPairSet_eq_strata
    (b n : ℕ) (F : ℕ → ℕ → ℝ) :
    (∑ p ∈ mertensEndpointPairSet n, F p.1 p.2) =
      (∑ p ∈ mertensEndpointStratumPairSet b n .diagonal,
        F p.1 p.2) +
      (∑ p ∈ mertensEndpointStratumPairSet b n .forwardCross,
        F p.1 p.2) +
      (∑ p ∈ mertensEndpointStratumPairSet b n .backwardCross,
        F p.1 p.2) +
      (∑ p ∈ mertensEndpointStratumPairSet b n .fourDistinct,
        F p.1 p.2) := by
  classical
  unfold mertensEndpointStratumPairSet
  simp only [Finset.sum_filter]
  calc
    (∑ p ∈ mertensEndpointPairSet n, F p.1 p.2) =
      ∑ p ∈ mertensEndpointPairSet n,
        ((if mertensEndpointFourMobiusStratum b n p.1 p.2 =
              .diagonal then F p.1 p.2 else 0) +
         (if mertensEndpointFourMobiusStratum b n p.1 p.2 =
              .forwardCross then F p.1 p.2 else 0) +
         (if mertensEndpointFourMobiusStratum b n p.1 p.2 =
              .backwardCross then F p.1 p.2 else 0) +
         (if mertensEndpointFourMobiusStratum b n p.1 p.2 =
              .fourDistinct then F p.1 p.2 else 0)) := by
        apply Finset.sum_congr rfl
        intro p _hp
        cases h :
            mertensEndpointFourMobiusStratum b n p.1 p.2 <;>
          simp [h]
    _ = _ := by
      simp only [Finset.sum_add_distrib]
      ring

/-- Characterization of the diagonal stratum. -/
theorem mertensEndpointFourMobiusStratum_eq_diagonal_iff
    (b n a c : ℕ) :
    mertensEndpointFourMobiusStratum b n a c = .diagonal ↔
      a = c := by
  simp [mertensEndpointFourMobiusStratum]

/-- Under the endpoint condition `n<b`, the forward cross stratum is exactly
`a != c` and `c=a+h`. -/
theorem mertensEndpointFourMobiusStratum_eq_forwardCross_iff
    {b n a c : ℕ} (hnb : n < b) :
    mertensEndpointFourMobiusStratum b n a c = .forwardCross ↔
      a ≠ c ∧ c = a + (b - n) := by
  have hh : 0 < b - n := Nat.sub_pos_of_lt hnb
  simp [mertensEndpointFourMobiusStratum]
  constructor
  · intro h
    by_cases hac : a = c
    · simp [hac] at h
    · simp [hac] at h
      by_cases hf : c = a + (b - n)
      · exact ⟨hac, hf⟩
      · simp [hf] at h
  · rintro ⟨hac, hf⟩
    simp [mertensEndpointFourMobiusStratum, hac, hf]

/-- Under `n<b`, the backward cross stratum is exactly the remaining
orientation `a=c+h`. -/
theorem mertensEndpointFourMobiusStratum_eq_backwardCross_iff
    {b n a c : ℕ} (hnb : n < b) :
    mertensEndpointFourMobiusStratum b n a c = .backwardCross ↔
      a ≠ c ∧ c ≠ a + (b - n) ∧ a = c + (b - n) := by
  have hh : 0 < b - n := Nat.sub_pos_of_lt hnb
  simp [mertensEndpointFourMobiusStratum]
  by_cases hac : a = c
  · simp [hac]
  · by_cases hf : c = a + (b - n)
    · simp [hac, hf]
    · simp [hac, hf]

/-- The final stratum is exactly the absence of all three possible collision
patterns. -/
theorem mertensEndpointFourMobiusStratum_eq_fourDistinct_iff
    {b n a c : ℕ} :
    mertensEndpointFourMobiusStratum b n a c = .fourDistinct ↔
      a ≠ c ∧ c ≠ a + (b - n) ∧ a ≠ c + (b - n) := by
  simp [mertensEndpointFourMobiusStratum]
  by_cases hac : a = c
  · simp [hac]
  · by_cases hf : c = a + (b - n)
    · simp [hac, hf]
    · by_cases hb : a = c + (b - n)
      · simp [hac, hf, hb]
      · simp [hac, hf, hb]

/-- A four-distinct classified pair really gives four pairwise-distinct
arguments when the shift is positive. -/
theorem mertensEndpointFourMobius_fourDistinct_arguments
    {b n a c : ℕ} (hnb : n < b)
    (hstr :
      mertensEndpointFourMobiusStratum b n a c = .fourDistinct) :
    let h := b - n
    a + 1 ≠ a + 1 + h ∧
    c + 1 ≠ c + 1 + h ∧
    a + 1 ≠ c + 1 ∧
    a + 1 + h ≠ c + 1 + h ∧
    a + 1 + h ≠ c + 1 ∧
    a + 1 ≠ c + 1 + h := by
  have hh : 0 < b - n := Nat.sub_pos_of_lt hnb
  have hs :=
    (mertensEndpointFourMobiusStratum_eq_fourDistinct_iff).mp hstr
  dsimp
  rcases hs with ⟨hac, hforward, hbackward⟩
  constructor
  · omega
  constructor
  · omega
  constructor
  · omega
  constructor
  · omega
  constructor
  · intro heq
    apply hforward
    omega
  · intro heq
    apply hbackward
    omega

/-- On the diagonal, the four-Möbius term is the product of two squares and is
therefore nonnegative. -/
theorem mertensEndpointFourMobiusTerm_diagonal
    (b n a : ℕ) :
    mertensEndpointFourMobiusTerm b n a a =
      moebiusReal (a + 1) ^ 2 *
        moebiusReal (a + 1 + (b - n)) ^ 2 := by
  unfold mertensEndpointFourMobiusTerm
  ring

theorem mertensEndpointFourMobiusTerm_diagonal_nonneg
    (b n a : ℕ) :
    0 ≤ mertensEndpointFourMobiusTerm b n a a := by
  rw [mertensEndpointFourMobiusTerm_diagonal]
  positivity

/-- Sum of all square-diagonal contributions in the endpoint fibre. -/
def mertensEndpointFibreDiagonalEnergy
    (b : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 1 b,
    ∑ p ∈ mertensEndpointStratumPairSet b n .diagonal,
      mertensEndpointFourMobiusTerm b n p.1 p.2

/-- Signed sum of both oriented cross-collision strata. -/
def mertensEndpointFibreCrossCollisionEnergy
    (b : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 1 b,
    ((∑ p ∈ mertensEndpointStratumPairSet b n .forwardCross,
        mertensEndpointFourMobiusTerm b n p.1 p.2) +
      (∑ p ∈ mertensEndpointStratumPairSet b n .backwardCross,
        mertensEndpointFourMobiusTerm b n p.1 p.2))

/-- Signed genuinely four-distinct remainder. -/
def mertensEndpointFibreFourDistinctCorrelation
    (b : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 1 b,
    ∑ p ∈ mertensEndpointStratumPairSet b n .fourDistinct,
      mertensEndpointFourMobiusTerm b n p.1 p.2

/-- The diagonal energy is nonnegative. -/
theorem mertensEndpointFibreDiagonalEnergy_nonneg
    (b : ℕ) :
    0 ≤ mertensEndpointFibreDiagonalEnergy b := by
  unfold mertensEndpointFibreDiagonalEnergy
  apply Finset.sum_nonneg
  intro n _hn
  apply Finset.sum_nonneg
  rintro ⟨a, c⟩ hp
  have hdiag :
      mertensEndpointFourMobiusStratum b n a c = .diagonal :=
    (Finset.mem_filter.mp hp).2
  have heq :
      a = c :=
    (mertensEndpointFourMobiusStratum_eq_diagonal_iff
      b n a c).mp hdiag
  subst c
  exact mertensEndpointFourMobiusTerm_diagonal_nonneg b n a

/-- Exact decomposition of one endpoint fibre into the unavoidable diagonal,
the two lower-order cross-collisions, and the genuinely four-distinct
correlation remainder. -/
theorem mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition
    (b : ℕ) :
    mertensTwoPointEndpointFibreQuadraticEnergy b =
      mertensEndpointFibreDiagonalEnergy b +
        mertensEndpointFibreCrossCollisionEnergy b +
        mertensEndpointFibreFourDistinctCorrelation b := by
  unfold mertensTwoPointEndpointFibreQuadraticEnergy
    mertensEndpointFibreDiagonalEnergy
    mertensEndpointFibreCrossCollisionEnergy
    mertensEndpointFibreFourDistinctCorrelation
  calc
    (∑ n ∈ Finset.Ico 1 b,
      mertensTwoPointPrefix (b - n) n ^ 2) =
      ∑ n ∈ Finset.Ico 1 b,
        ∑ p ∈ mertensEndpointPairSet n,
          mertensEndpointFourMobiusTerm b n p.1 p.2 := by
        apply Finset.sum_congr rfl
        intro n _hn
        rw [mertensTwoPointPrefix_sq_eq_fourMobiusSum]
        unfold mertensEndpointPairSet
        rw [Finset.sum_product]
    _ = _ := by
      apply Finset.sum_congr rfl
      intro n _hn
      rw [sum_mertensEndpointPairSet_eq_strata]
      ring

/-- Reciprocal endpoint-weighted diagonal contribution. -/
def weightedMertensEndpointDiagonalEnergy
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointFibreDiagonalEnergy b

/-- Reciprocal endpoint-weighted cross-collision contribution. -/
def weightedMertensEndpointCrossCollisionEnergy
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointFibreCrossCollisionEnergy b

/-- Reciprocal endpoint-weighted four-distinct contribution. -/
def weightedMertensEndpointFourDistinctCorrelation
    (j : ℕ) : ℝ :=
  4 * ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
      mertensEndpointFibreFourDistinctCorrelation b

/-- The complete endpoint-weighted energy decomposes exactly into the three
mathematically distinct strata. -/
theorem weightedMertensSignedAbelEndpointFibreQuadraticEnergy_eq_strata
    (j : ℕ) :
    weightedMertensSignedAbelEndpointFibreQuadraticEnergy j =
      weightedMertensEndpointDiagonalEnergy j +
        weightedMertensEndpointCrossCollisionEnergy j +
        weightedMertensEndpointFourDistinctCorrelation j := by
  unfold weightedMertensSignedAbelEndpointFibreQuadraticEnergy
    weightedMertensEndpointDiagonalEnergy
    weightedMertensEndpointCrossCollisionEnergy
    weightedMertensEndpointFourDistinctCorrelation
  apply congrArg (fun x : ℝ => 4 * x)
  calc
    (∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
      ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
        mertensTwoPointEndpointFibreQuadraticEnergy b) =
      ∑ b ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
        ((b : ℝ)⁻¹ - (((b + 1 : ℕ) : ℝ))⁻¹) *
          (mertensEndpointFibreDiagonalEnergy b +
            mertensEndpointFibreCrossCollisionEnergy b +
            mertensEndpointFibreFourDistinctCorrelation b) := by
        apply Finset.sum_congr rfl
        intro b _hb
        rw [mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition]
    _ = _ := by
      simp_rw [mul_add, Finset.sum_add_distrib]
      ring

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointPrefix_sq_eq_fourMobiusSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensEndpointFourMobius_fourDistinct_arguments
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.mertensTwoPointEndpointFibreQuadraticEnergy_eq_collisionDecomposition
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensSignedAbelEndpointFibreQuadraticEnergy_eq_strata
