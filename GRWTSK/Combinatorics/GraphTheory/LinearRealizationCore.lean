/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

set_option autoImplicit false

/-!
# Ağırseven–Ollis linear-realization source interface

Exact input semantics for the conjecture in O. Ağırseven and M. A. Ollis,
*Construction Techniques for Linear Realizations of Multisets with Small Support*,
arXiv:2502.00164 (2025), Conjecture 1.11.

The definitions below retain the spellings and endpoint conventions in the
uploaded `answer (2).lean` proof candidate.  `AgirsevenOllisClaim` is a
**proposition**, not a theorem asserting that the conjecture has been proved.
No complete proof or arithmetic/RH transfer is imported here.

Issue: https://github.com/grwtsk/math/issues/1830
Verification at source authoring: compilation NOT_RUN, kernel NOT_RUN,
transitive axiom audit NOT_RUN, independent mathematical review NOT_RUN.
-/

namespace LinearRealization

/-- Adjacent absolute differences, with multiplicities, of a finite vertex list. -/
def edgeLengths (p : List ℕ) : Multiset ℕ :=
  (List.zipWith (fun a b => Int.natAbs ((b : ℤ) - (a : ℤ))) p p.tail : List ℕ)

/-- The candidate path visits every vertex of `Fin v` exactly once, using natural labels. -/
def IsVertexPerm (v : ℕ) (p : List ℕ) : Prop :=
  p.Perm (List.range v)

/-- A linear realization has the prescribed adjacent-difference multiset. -/
def IsLinearRealization (v : ℕ) (L : Multiset ℕ) (p : List ℕ) : Prop :=
  IsVertexPerm v p ∧ edgeLengths p = L

/-- A standard realization starts at vertex zero. -/
def IsStandardLinearRealization (v : ℕ) (L : Multiset ℕ) (p : List ℕ) : Prop :=
  IsLinearRealization v L p ∧ p.head? = some 0

/-- A perfect realization starts at zero and ends at `v - 1`. -/
def IsPerfectLinearRealization (v : ℕ) (L : Multiset ℕ) (p : List ℕ) : Prop :=
  IsStandardLinearRealization v L p ∧ p.getLast? = some (v - 1)

/-- Ordinary realization: endpoints are unrestricted in the conclusion. -/
def HasLinearRealization (v : ℕ) (L : Multiset ℕ) : Prop :=
  ∃ p : List ℕ, IsLinearRealization v L p

/-- The target multiset `{1^a, (y-k)^b, y^c}`. -/
def prescribedLengths (y k a b c : ℕ) : Multiset ℕ :=
  Multiset.replicate a 1 + Multiset.replicate b (y - k) + Multiset.replicate c y

/-- Admissibility is `1 ≤ k`, `2*k < y`, `y ≤ a`; `b,c` can be zero. -/
def IsAdmissibleTuple (y k a _b _c : ℕ) : Prop :=
  1 ≤ k ∧ 2 * k < y ∧ y ≤ a

/-- Exact conjecture-level goal, with every parameter quantified.
This definition does not supply a proof of the proposition. -/
def AgirsevenOllisClaim : Prop :=
  ∀ (y k a b c : ℕ), IsAdmissibleTuple y k a b c →
    HasLinearRealization (a + b + c + 1) (prescribedLengths y k a b c)

/-- The requested multiset has exactly `a+b+c` entries, counting repetitions. -/
@[simp] theorem prescribedLengths_card (y k a b c : ℕ) :
    (prescribedLengths y k a b c).card = a + b + c := by
  simp [prescribedLengths, add_assoc]

/-- An actual realizing list has exactly the declared number of vertices. -/
theorem IsLinearRealization.length {v : ℕ} {L : Multiset ℕ} {p : List ℕ}
    (h : IsLinearRealization v L p) : p.length = v := by
  exact (h.1 : p.Perm (List.range v)).length_eq.trans (List.length_range v)

/-- The bundled goal is equivalent to the final theorem's pointwise hypothesis form.
This is only a reformulation of the target, not a proof of its existence premise. -/
theorem agirsevenOllisClaim_iff :
    AgirsevenOllisClaim ↔
      ∀ (y k a b c : ℕ), 1 ≤ k → 2 * k < y → y ≤ a →
        HasLinearRealization (a + b + c + 1) (prescribedLengths y k a b c) := by
  constructor
  · intro h y k a b c hk hyk ha
    exact h y k a b c ⟨hk, hyk, ha⟩
  · intro h y k a b c htuple
    exact h y k a b c htuple.1 htuple.2.1 htuple.2.2

end LinearRealization
