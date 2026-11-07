/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE.
Lean elaboration: NOT_RUN. Fresh kernel verification: NOT_RUN.
Transitive axiom audit: NOT_RUN. Independent analytical review: NOT_RUN.
-/
import Mathlib

/-!
# Prime-orbit mapping tori and finite abelian holonomy

Primary source: Alain Connes and Caterina Consani,
"Knots, primes and class field theory", arXiv:2501.06560v1,
Proposition 3.4, Theorems 3.9, 3.12 and 4.2 (2025).
Project comparison: the prime-coded state/height tori in
`spectral-geometry-of-a-prime-coded-reflective-kernel.md` (2026-11-06).

## Exactly what is formalized

Fix an additive abelian group `G`, an element `a : G`, and a real period `ell`.
The integer deck action on `G × ℝ` is

  (g,t) ↦ (g + n • a, t - n*ell).

Its quotient is an algebraic mapping torus; its base is `ℝ / ell ℤ`.
The quotient seam identifies `(g,t+ell)` with `(g+a,t)`, fixing the
positive orientation of holonomy. Integer winding acts by `n • a`.
Homomorphisms of fibers intertwine this winding, and induce maps of
the corresponding mapping-torus quotients.

## Scope of the arithmetic source return

For a prime `p`, `ell = Real.log p`. In the Connes--Consani construction
the finite group is `Gal(L/ℚ)`, for finite abelian `L/ℚ`, and `a` is
ARITHMETIC Frobenius at `p` when `p` is unramified in `L`.
The identification of this abstract quotient with the actual adelic
cover is the published theorem, NOT reproved here in Lean.
No definition of a Galois group, class-field reciprocity morphism,
étale fundamental group or continuous quotient-homeomorphism is
fabricated from the abstract interface.

The other project's prime-coded state torus and the full pole-inclusive
Weil form are DIFFERENT carriers. Holonomy does not establish an
intertwiner with either, nor an RH/Dirichlet-GRH spectral sign.

Mathematical argument: the deck laws are the additivity of integer
scalar multiplication and real translation; symmetry uses `-n`,
transitivity uses `m+n`. The seam is the `n=1` deck relation.
As a hostile boundary, replacing `a` by `0` trivializes monodromy
without changing the base period. The period alone cannot recover
Frobenius.
-/

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeOrbitHolonomy

variable {G H : Type*} [AddCommGroup G]

/-- Fiber displacement under `n` positively oriented circuits. -/
def winding (a : G) (n : ℤ) (g : G) : G :=
  g + n • a

@[simp] theorem winding_zero (a g : G) : winding a 0 g = g := by
  simp [winding]

theorem winding_add (a g : G) (m n : ℤ) :
    winding a (m + n) g = winding a m (winding a n g) := by
  dsimp [winding]
  rw [add_zsmul]
  abel

/-- The integer deck action on the fiber and real universal-cover coordinate. -/
def deck (a : G) (ell : ℝ) (n : ℤ) (x : G × ℝ) : G × ℝ :=
  (x.1 + n • a, x.2 - (n : ℝ) * ell)

@[simp] theorem deck_zero (a : G) (ell : ℝ) (x : G × ℝ) :
    deck a ell 0 x = x := by
  simp [deck]

theorem deck_add (a : G) (ell : ℝ) (m n : ℤ) (x : G × ℝ) :
    deck a ell (m + n) x = deck a ell m (deck a ell n x) := by
  apply Prod.ext
  · change x.1 + (m + n) • a = (x.1 + n • a) + m • a
    rw [add_zsmul]
    abel
  · change x.2 - ((m + n : ℤ) : ℝ) * ell =
        (x.2 - (n : ℝ) * ell) - (m : ℝ) * ell
    simp only [Int.cast_add]
    ring

theorem deck_neg (a : G) (ell : ℝ) (n : ℤ) (x : G × ℝ) :
    deck a ell (-n) (deck a ell n x) = x := by
  calc
    deck a ell (-n) (deck a ell n x) =
        deck a ell ((-n) + n) x := (deck_add a ell (-n) n x).symm
    _ = x := by simp

/-- Quotient relation with explicitly accounted deck winding. -/
def mappingTorusSetoid (a : G) (ell : ℝ) : Setoid (G × ℝ) where
  r x y := ∃ n : ℤ, y = deck a ell n x
  iseqv := by
    refine ⟨?_, ?_, ?_⟩
    · intro x
      exact ⟨0, by simp⟩
    · intro x y h
      rcases h with ⟨n, rfl⟩
      exact ⟨-n, (deck_neg a ell n x).symm⟩
    · intro x y z hxy hyz
      rcases hxy with ⟨m, rfl⟩
      rcases hyz with ⟨n, rfl⟩
      exact ⟨n + m, (deck_add a ell n m x).symm⟩

/-- Algebraic mapping-torus carrier, before any topology is imposed. -/
def MappingTorus (a : G) (ell : ℝ) : Type _ :=
  Quotient (mappingTorusSetoid a ell)

/-- Equivalence relation on the real universal cover of a period-`ell` circle. -/
def circleSetoid (ell : ℝ) : Setoid ℝ where
  r t u := ∃ n : ℤ, u = t - (n : ℝ) * ell
  iseqv := by
    refine ⟨?_, ?_, ?_⟩
    · intro t
      exact ⟨0, by simp⟩
    · intro t u h
      rcases h with ⟨n, rfl⟩
      refine ⟨-n, ?_⟩
      simp only [Int.cast_neg, neg_mul]
      ring
    · intro t u v htu huv
      rcases htu with ⟨m, rfl⟩
      rcases huv with ⟨n, rfl⟩
      refine ⟨m + n, ?_⟩
      simp only [Int.cast_add, add_mul]
      ring

/-- Algebraic base circle `ℝ / ell ℤ`. -/
def BaseCircle (ell : ℝ) : Type :=
  Quotient (circleSetoid ell)

/-- The fiber coordinate is forgotten only after the winding quotient. -/
def baseProjection (a : G) (ell : ℝ) :
    MappingTorus a ell → BaseCircle ell :=
  Quotient.lift
    (fun x : G × ℝ => Quotient.mk (circleSetoid ell) x.2)
    (by
      intro x y h
      rcases h with ⟨n, rfl⟩
      apply Quotient.sound
      exact ⟨n, rfl⟩)

/-- The seam transports the fiber by `a` on one positive base circuit. -/
theorem seam (a g : G) (ell t : ℝ) :
    (Quotient.mk (mappingTorusSetoid a ell) (g, t + ell) :
        MappingTorus a ell) =
      Quotient.mk (mappingTorusSetoid a ell) (g + a, t) := by
  apply Quotient.sound
  refine ⟨1, ?_⟩
  simp [deck]

/-- Holonomy is the actual fiber translation selected by the seam. -/
def holonomy (a : G) : G ≃ G where
  toFun g := g + a
  invFun g := g - a
  left_inv := by intro g; simp
  right_inv := by intro g; simp

@[simp] theorem holonomy_apply (a g : G) :
    holonomy a g = g + a := rfl

theorem holonomy_injective (a : G) : Function.Injective (holonomy a) := by
  intro g h hgh
  exact add_right_cancel hgh

@[simp] theorem winding_one (a g : G) :
    winding a 1 g = holonomy a g := by
  simp [winding, holonomy]

theorem winding_functorial [AddCommGroup H] (f : G →+ H)
    (a g : G) (n : ℤ) :
    f (winding a n g) = winding (f a) n (f g) := by
  simp [winding]

/-- A homomorphism of finite abelian covering fibers induces an exact
map of the abstract mapping-torus quotients, with Frobenius transported. -/
def mapCover [AddCommGroup H] (f : G →+ H) (a : G) (ell : ℝ) :
    MappingTorus a ell → MappingTorus (f a) ell :=
  Quotient.lift
    (fun x : G × ℝ =>
      Quotient.mk (mappingTorusSetoid (f a) ell) (f x.1, x.2))
    (by
      intro x y h
      rcases h with ⟨n, rfl⟩
      apply Quotient.sound
      refine ⟨n, ?_⟩
      apply Prod.ext
      · change f (x.1 + n • a) = f x.1 + n • f a
        simp
      · rfl)

/-- The logarithmic period is strictly positive for every rational prime. -/
def primePeriod (p : ℕ) : ℝ := Real.log (p : ℝ)

theorem primePeriod_pos {p : ℕ} (hp : Nat.Prime p) :
    0 < primePeriod p := by
  unfold primePeriod
  apply Real.log_pos
  exact_mod_cast hp.one_lt

/-- A concrete arithmetic instantiation must supply the unramified
Frobenius value. This structure is DATA, not a construction of Gal(L/ℚ). -/
structure UnramifiedPrimePort (G : Type*) [AddCommGroup G] where
  prime : ℕ
  isPrime : Nat.Prime prime
  conductor : ℕ
  coprimeConductor : Nat.Coprime prime conductor
  frobenius : G

/-- The source-defined abstract orbit at the prime's real period. -/
def UnramifiedPrimePort.orbit (d : UnramifiedPrimePort G) : Type _ :=
  MappingTorus d.frobenius (primePeriod d.prime)

theorem UnramifiedPrimePort.period_pos (d : UnramifiedPrimePort G) :
    0 < primePeriod d.prime :=
  primePeriod_pos d.isPrime

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeOrbitHolonomy
