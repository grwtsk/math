/-
Copyright (c) 2025 Bhavik Mehta, Arend Mellendijk.
Copyright (c) 2026 R.A. Jacob Martone.
SPDX-License-Identifier: Apache-2.0

Mathematical source: Christian Bernert, Tim Browning, Jared Duker Lichtman,
and Joni Teräväinen, "Bounds on the exceptional set in the abc conjecture",
arXiv:2410.12234v2 (2026), Proposition 2.1.

The finite-box architecture is adapted from Bhavik Mehta and Arend
Mellendijk's `B_finset` development in `b-mehta/ABC-Exceptions`, as
maintained in `LeanPool/lean-pool`. The source paper credits Bhavik Mehta
for Lean assistance on an earlier version.

The paper writes `x ∼ X` for `X < x ≤ 2X`. For a total finite partition of
all positive integers, including `x = 1` and powers of two at a boundary,
this module uses the endpoint-inclusive closure `X ≤ x ≤ 2X`. The strict
paper convention is retained as `PaperDyadic`; the difference is isolated
at this interface and has no effect on the later upper bounds.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.Pi
import Mathlib.Order.Interval.Finset.Nat
import Mathlib.Tactic

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators

namespace AnatomicBoxes

/-- The strict dyadic convention used in the source paper: `A < x ≤ 2A`. -/
def PaperDyadic (x A : ℕ) : Prop := A < x ∧ x ≤ 2 * A

/-- Endpoint-inclusive dyadic membership used to obtain a literal finite cover
of every positive natural number. -/
def ClosedDyadic (x A : ℕ) : Prop := A ≤ x ∧ x ≤ 2 * A

/-- The finite family of coordinate vectors in endpoint-inclusive dyadic
intervals. -/
def dyadicTuples {d : ℕ} (A : Fin d → ℕ) : Finset (Fin d → ℕ) :=
  Fintype.piFinset fun i ↦ Finset.Icc (A i) (2 * A i)

@[simp]
theorem mem_dyadicTuples {d : ℕ} {A x : Fin d → ℕ} :
    x ∈ dyadicTuples A ↔ ∀ i, ClosedDyadic (x i) (A i) := by
  simp [dyadicTuples, ClosedDyadic]

/-- The weighted monomial `∏ᵢ xᵢ^(i+1)`. -/
def monomial {d : ℕ} (x : Fin d → ℕ) : ℕ :=
  ∏ i, x i ^ (i.val + 1)

/-- The unweighted support product `∏ᵢ xᵢ`. -/
def supportProduct {d : ℕ} (x : Fin d → ℕ) : ℕ :=
  ∏ i, x i

/-- Parameters of a finite anatomic box. `residual 0`, `residual 1`, and
`residual 2` are the source paper's `a₀`, `b₀`, and `c₀`. -/
@[ext]
structure Parameters (d : ℕ) where
  residual : Fin 3 → ℕ
  A : Fin d → ℕ
  B : Fin d → ℕ
  C : Fin d → ℕ
  deriving DecidableEq

/-- A point in the ambient `3d`-dimensional coordinate space. -/
abbrev Point (d : ℕ) :=
  (Fin d → ℕ) × (Fin d → ℕ) × (Fin d → ℕ)

namespace Parameters

variable {d : ℕ} (p : Parameters d)

/-- The reconstructed first coordinate. -/
def totalA (x : Fin d → ℕ) : ℕ := p.residual 0 * monomial x

/-- The reconstructed second coordinate. -/
def totalB (x : Fin d → ℕ) : ℕ := p.residual 1 * monomial x

/-- The reconstructed third coordinate. -/
def totalC (x : Fin d → ℕ) : ℕ := p.residual 2 * monomial x

/-- The first squarefree-support carrier used in the source primitive
condition. -/
def carrierA (x : Fin d → ℕ) : ℕ := p.residual 0 * supportProduct x

/-- The second squarefree-support carrier used in the source primitive
condition. -/
def carrierB (x : Fin d → ℕ) : ℕ := p.residual 1 * supportProduct x

/-- The third squarefree-support carrier used in the source primitive
condition. -/
def carrierC (x : Fin d → ℕ) : ℕ := p.residual 2 * supportProduct x

end Parameters

/-- Pairwise primitivity of the three unweighted support carriers. Under the
monomial equation this is equivalent to the paper's three-variable gcd being
one. The pairwise form directly matches the repository's primitive-triple API. -/
def SupportPrimitive {d : ℕ} (p : Parameters d) (q : Point d) : Prop :=
  Nat.Coprime (p.carrierA q.1) (p.carrierB q.2.1) ∧
  Nat.Coprime (p.carrierA q.1) (p.carrierC q.2.2) ∧
  Nat.Coprime (p.carrierB q.2.1) (p.carrierC q.2.2)

/-- The finite set counted by `B_d(a₀,b₀,c₀,A,B,C)`. Positivity is retained
inside the filter so the projection to `PrimitiveAdditiveTriple` is total. -/
noncomputable def boxFinset {d : ℕ} (p : Parameters d) : Finset (Point d) := by
  classical
  exact ((dyadicTuples p.A) ×ˢ (dyadicTuples p.B) ×ˢ (dyadicTuples p.C)).filter
    fun q ↦
      0 < p.totalA q.1 ∧
      0 < p.totalB q.2.1 ∧
      0 < p.totalC q.2.2 ∧
      p.totalA q.1 + p.totalB q.2.1 = p.totalC q.2.2 ∧
      SupportPrimitive p q

@[simp]
theorem mem_boxFinset {d : ℕ} {p : Parameters d} {q : Point d} :
    q ∈ boxFinset p ↔
      (∀ i, ClosedDyadic (q.1 i) (p.A i)) ∧
      (∀ i, ClosedDyadic (q.2.1 i) (p.B i)) ∧
      (∀ i, ClosedDyadic (q.2.2 i) (p.C i)) ∧
      0 < p.totalA q.1 ∧
      0 < p.totalB q.2.1 ∧
      0 < p.totalC q.2.2 ∧
      p.totalA q.1 + p.totalB q.2.1 = p.totalC q.2.2 ∧
      SupportPrimitive p q := by
  simp [boxFinset, and_assoc]

/-- The finite box count `B_d`. -/
noncomputable def boxCard {d : ℕ} (p : Parameters d) : ℕ :=
  (boxFinset p).card

private theorem coprime_monomial_totals_of_support
    {d : ℕ} {r s : ℕ} {x y : Fin d → ℕ}
    (h : Nat.Coprime (r * supportProduct x) (s * supportProduct y)) :
    Nat.Coprime (r * monomial x) (s * monomial y) := by
  simpa only [Parameters.carrierA, Parameters.carrierB,
    supportProduct, monomial, Nat.coprime_mul_iff_left,
    Nat.coprime_mul_iff_right, Nat.coprime_prod_left_iff,
    Nat.coprime_prod_right_iff, Nat.succ_pos,
    Nat.coprime_pow_left_iff, Nat.coprime_pow_right_iff] using h

/-- Project a certified box point to the repository's primitive additive
triple type. -/
noncomputable def boxToTriple {d : ℕ} (p : Parameters d)
    (q : {q : Point d // q ∈ boxFinset p}) : PrimitiveAdditiveTriple := by
  classical
  have hq := mem_boxFinset.mp q.property
  exact
    { a := p.totalA q.1.1
      b := p.totalB q.1.2.1
      c := p.totalC q.1.2.2
      a_pos := hq.2.2.2.1
      b_pos := hq.2.2.2.2.1
      sum_eq := hq.2.2.2.2.2.2.1
      coprime_ab := coprime_monomial_totals_of_support hq.2.2.2.2.2.2.2.1 }

/-- The primitive triples covered by a finite family of anatomic boxes. -/
noncomputable def coveredTriples {d : ℕ} (s : Finset (Parameters d)) :
    Finset PrimitiveAdditiveTriple :=
  s.biUnion fun p ↦ (boxFinset p).attach.image (boxToTriple p)

theorem card_coveredTriples_le_sum_boxCard {d : ℕ}
    (s : Finset (Parameters d)) :
    (coveredTriples s).card ≤ ∑ p ∈ s, boxCard p := by
  classical
  calc
    (coveredTriples s).card ≤
        ∑ p ∈ s, ((boxFinset p).attach.image (boxToTriple p)).card := by
      exact Finset.card_biUnion_le
    _ ≤ ∑ p ∈ s, boxCard p := by
      apply Finset.sum_le_sum
      intro p hp
      exact (Finset.card_image_le.trans_eq Finset.card_attach).trans_eq rfl

private theorem sum_le_card_mul_sup {ι : Type*} [DecidableEq ι]
    (f : ι → ℕ) (s : Finset ι) :
    ∑ i ∈ s, f i ≤ s.card * s.sup f := by
  calc
    ∑ i ∈ s, f i ≤ ∑ i ∈ s, s.sup f := by
      apply Finset.sum_le_sum
      intro i hi
      exact Finset.le_sup hi
    _ = s.card * s.sup f := by simp

/-- Pigeonhole-ready cardinality form: a covered family is controlled by the
number of parameter boxes times the largest box. -/
theorem card_coveredTriples_le_card_mul_sup {d : ℕ}
    (s : Finset (Parameters d)) :
    (coveredTriples s).card ≤ s.card * s.sup boxCard := by
  exact (card_coveredTriples_le_sum_boxCard s).trans
    (sum_le_card_mul_sup boxCard s)

end AnatomicBoxes

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
