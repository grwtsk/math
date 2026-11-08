/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops
import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality
import Mathlib.LinearAlgebra.Matrix.Trace
import Mathlib.Tactic

/-!
# Push-forward: complete finite Fourier eigenbasis and arithmetic trace boundary

Exact source: TotientFrobeniusInvariantLoops.lean at
grwtsk/math@970e909ff8f25b6abb85a73d05c0e1b951777a6a
(blob fffa5a7ebe036287ea2baf418bad80fc8bdb220c).
Upstream finite Fourier theorem is AddChar.complexBasis from
Mathlib/Analysis/Fourier/FiniteAbelian/PontryaginDuality.lean, pinned
Mathlib@d13f23b723b8a846827a245b89c10fc7d3f11612.
Original arithmetic covering geometry: Alain Connes and Caterina Consani,
"Knots, primes and class field theory" (2025), arXiv:2501.06560.

## Actual consumer and complete mathematical argument

For finite abelian G and a in G, the source finite magnetic
Laplacian is 2I - T_a - T_a^(-1), where (T_a f)(x)=f(a*x).
The source invariantSubmodule is exactly the zero-energy space, with
dim_C = |G| / orderOf(a), proved previously through the genuine
quotient G/(zpowers a).

The Mathlib Pontryagin character basis of Additive G transports along
the DEFINITIONAL equivalence Additive G <-> G, not along an invented
arithmetic type. Every transported basis character is an eigenfunction
with eigenvalue 2 - psi(a) - psi(a^(-1)). Hence the entire finite complex
function space has a character-eigenbasis. For an element with order f,
psi(a)^f=1, so these eigenvalues are 2-2*cos(2*pi*k/f),
k in 0,...,f-1. The equal-indexed multiplicity |G|/f
follows analytically from G as a disjoint union of |G|/f cycles of
length f and finite cyclic DFT. THIS explicit trig multiplicity
enumeration remains a written mathematical argument, not a new
machine-checked Lean declaration here.

A second exact boundary is the ORDINARY PERMUTATION TRACE:
Tr(T_a^m) = |G| if orderOf(a) divides m, and 0 otherwise.
The proof detects fixed points: a^m*x=x implies a^m=1 because x is
invertible. In particular a nontrivial one-lap Frobenius has zero
unweighted trace. The prime-power Weil source retains chi(a)^m for
EVERY m in its character sector. It cannot be replaced by the
unweighted trace; doing so erases most prime-power terms.

A third source-comparison obstruction: if a fiber-embedding e intertwines
one return of T_a with IDENTITY target holonomy, then injectivity forces
a=1. This formally blocks a faithful one-lap identification of nontrivial
Frobenius monodromy with the two-edge unit-holonomy Weil matching graph.
A nonfaithful projection or a larger graph is still possible, but needs
a separate typed source-preserving construction.

Boundary checks: n=1 has a single state and f=1; m=0 has trace |G|;
a=1 has all fixed points and no nonzero magnetic eigenvalues;
a != 1 has zero first-return trace. A graph zero-energy mode is not
a Lorentzian null geodesic. The finite group trace is NOT the
pole-inclusive Weil quadratic or the analytic Euler-product trace.

Consumer: TotientFrobeniusWeilReturn.lean preserves native
DirichletCharacter χ and χ(p)^m including complex conjugation. The
desired source-to-geometric Weil intertwiner, conductor, parity,
gamma/pole factors, domain, negative remainder and all-sector sign
are still unresolved. No RH or Dirichlet GRH result is claimed.

Status: source proof candidate. This source was not checked by Lean,
kernel replay, transitive axiom audit, or independent mathematical review.
Mathematics is standard finite abelian Fourier theory and orbit-count
linear algebra, not a claim of theorem-level novelty.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusFourierTrace

open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops

variable {G : Type*} [CommGroup G] [Fintype G]

/-- The precise change of indexing from a multiplicative group G to
its additive type tag. Both sides retain every original fiber point. -/
noncomputable def functionAdditiveEquiv :
    (G → ℂ) ≃ₗ[ℂ] (Additive G → ℂ) where
  toFun f := fun x => f (Additive.toMul x)
  invFun f := fun x => f (Additive.ofMul x)
  left_inv := by intro f; rfl
  right_inv := by intro f; rfl
  map_add' := by intro f g; rfl
  map_smul' := by intro c f; rfl

/-- Every original group element is an evaluation site for the native
Mathlib AddChar character; no free frequency labels are invented. -/
def characterWave (ψ : AddChar (Additive G) ℂ) (x : G) : ℂ :=
  ψ (Additive.ofMul x)

/-- Transport the established COMPLETE finite abelian Fourier basis
to the exact original unit-fiber type G. -/
noncomputable def characterBasis :
    Basis (AddChar (Additive G) ℂ) ℂ (G → ℂ) :=
  (AddChar.complexBasis (Additive G)).map functionAdditiveEquiv.symm

@[simp] theorem characterBasis_apply
    (ψ : AddChar (Additive G) ℂ) :
    (characterBasis (G := G)) ψ = characterWave ψ := by
  funext x
  simp [characterBasis, characterWave, functionAdditiveEquiv]

/-- Completeness of the character-eigenbasis: EVERY finite source
function has the full Fourier expansion, including its zero sector. -/
theorem characterBasis_sum_repr (f : G → ℂ) :
    (∑ ψ : AddChar (Additive G) ℂ,
      ((characterBasis (G := G)).repr f ψ) • characterWave ψ) = f := by
  simpa only [characterBasis_apply] using
    (characterBasis (G := G)).sum_repr f

/-- Each actual Fourier character is an eigenvector of the source
magnetic Laplacian; the reverse-return character stays explicit. -/
theorem characterWave_eigen (a : G) (ψ : AddChar (Additive G) ℂ) :
    cycleLaplacian a (characterWave ψ) =
      fun x : G =>
        ((2 : ℂ) - characterWave ψ a - characterWave ψ a⁻¹) *
          characterWave ψ x := by
  funext x
  have hforward :
      Additive.ofMul (a * x) =
        (Additive.ofMul a + Additive.ofMul x) := rfl
  have hreverse :
      Additive.ofMul (a⁻¹ * x) =
        (Additive.ofMul a⁻¹ + Additive.ofMul x) := rfl
  change (2 : ℂ) * ψ (Additive.ofMul x) -
      ψ (Additive.ofMul (a * x)) -
        ψ (Additive.ofMul (a⁻¹ * x)) =
      ((2 : ℂ) - ψ (Additive.ofMul a) -
        ψ (Additive.ofMul a⁻¹)) * ψ (Additive.ofMul x)
  rw [hforward, hreverse, AddChar.map_add_eq_mul,
    AddChar.map_add_eq_mul]
  ring

/-- The full native Mathlib character basis consists of eigenvectors,
not just a selected eigenfunction or an unproved spanning family. -/
theorem all_basis_vectors_eigen (a : G)
    (ψ : AddChar (Additive G) ℂ) :
    cycleLaplacian a ((characterBasis (G := G)) ψ) =
      fun x : G =>
        ((2 : ℂ) - characterWave ψ a - characterWave ψ a⁻¹) *
          ((characterBasis (G := G)) ψ) x := by
  simpa only [characterBasis_apply] using characterWave_eigen a ψ

/-- Entire dimension of the finite complex space equals the actual
finite arithmetic fiber count; no modes are dropped by Fourier change. -/
theorem all_character_modes_card :
    Fintype.card (AddChar (Additive G) ℂ) = Fintype.card G := by
  simpa using (AddChar.card_eq (Additive G))

/-- A genuine finite permutation matrix for m-fold Frobenius return:
the diagonal is 1 precisely on fixed source fibers. -/
def windingMatrix (a : G) (m : ℕ) : Matrix G G ℂ :=
  fun x y => if a ^ m * x = y then 1 else 0

/-- The exact fixed-fiber count, before forgetting arithmetic labels. -/
noncomputable def fixedFiberCount (a : G) (m : ℕ) : ℕ :=
  (Finset.univ.filter (fun x : G => a ^ m * x = x)).card

/-- Every vertex is fixed iff the winding exponent is divisible by
the order, and NO vertex is fixed otherwise. -/
theorem fixedFiberCount_eq (a : G) (m : ℕ) :
    fixedFiberCount a m =
      if orderOf a ∣ m then Fintype.card G else 0 := by
  classical
  by_cases hm : orderOf a ∣ m
  · have ha : a ^ m = 1 := (orderOf_dvd_iff_pow_eq_one).mp hm
    have hx (x : G) : a ^ m * x = x := by simp [ha]
    simp [fixedFiberCount, hm, hx]
  · have ha : a ^ m ≠ 1 := fun h => hm
      ((orderOf_dvd_iff_pow_eq_one).mpr h)
    have hx (x : G) : a ^ m * x ≠ x := by
      intro h
      apply ha
      exact mul_right_cancel (h.trans (one_mul x).symm)
    simp [fixedFiberCount, hm, hx]

/-- Exact unweighted trace: all fibers return simultaneously or none do.
This is NOT the character-weighted arithmetic Weil prime response. -/
theorem windingMatrix_trace (a : G) (m : ℕ) :
    (windingMatrix a m).trace =
      if orderOf a ∣ m then (Fintype.card G : ℂ) else 0 := by
  classical
  by_cases hm : orderOf a ∣ m
  · have ha : a ^ m = 1 := (orderOf_dvd_iff_pow_eq_one).mp hm
    have hx (x : G) : a ^ m * x = x := by simp [ha]
    simp [Matrix.trace, Matrix.diag, windingMatrix, hm, hx]
  · have ha : a ^ m ≠ 1 := fun h => hm
      ((orderOf_dvd_iff_pow_eq_one).mpr h)
    have hx (x : G) : a ^ m * x ≠ x := by
      intro h
      apply ha
      exact mul_right_cancel (h.trans (one_mul x).symm)
    simp [Matrix.trace, Matrix.diag, windingMatrix, hm, hx]

/-- A nontrivial one-lap holonomy has zero unweighted trace. Its
character phases need not vanish; this is the key Weil comparison veto. -/
theorem first_lap_trace_zero (a : G) (ha : a ≠ 1) :
    (windingMatrix a 1).trace = 0 := by
  have hnot : ¬ orderOf a ∣ 1 := by
    intro h
    have hp : a ^ 1 = 1 := (orderOf_dvd_iff_pow_eq_one).mp h
    exact ha (by simpa using hp)
  simpa [hnot] using (windingMatrix_trace a 1)

/-- A faithful map cannot send a NONTRIVIAL Frobenius one-lap return
to an IDENTITY-holonomy target. The target is an arbitrary carrier:
no chosen geometry, metric or Weil object is assumed. -/
theorem no_faithful_port_to_trivial_loop
    (a : G) (ha : a ≠ 1) {Fiber : Type*}
    (embed : G → Fiber) (hembed : Function.Injective embed)
    (htrivial : ∀ x : G, embed (a * x) = embed x) : False := by
  have hfixed : a * (1 : G) = 1 := hembed (htrivial 1)
  exact ha (by simpa using hfixed)

/-- Genuine cyclotomic arithmetic specialization, retaining the original
p-primeness and p-coprimality hypotheses; no ramified inverse invented. -/
section Cyclotomic
variable (n : ℕ) [NeZero n]

def cyclotomicTrace (p : ℕ) (hp : Nat.Prime p)
    (hcoprime : Nat.Coprime p n) (m : ℕ) : ℂ :=
  (windingMatrix (frobeniusUnit n p hp hcoprime) m).trace

theorem cyclotomicTrace_eq (p : ℕ) (hp : Nat.Prime p)
    (hcoprime : Nat.Coprime p n) (m : ℕ) :
    cyclotomicTrace n p hp hcoprime m =
      if orderOf (frobeniusUnit n p hp hcoprime) ∣ m
      then (Nat.totient n : ℂ) else 0 := by
  simp only [cyclotomicTrace, windingMatrix_trace,
    unitFiber_card_eq_totient]

/-- Nontrivial Frobenius cannot be injected into a representation whose
ENTIRE closed-lap monodromy is identity, including the earlier matched
pair/spin geometry. A nonfaithful observation is not excluded. -/
theorem cyclotomic_no_faithful_identity_loop
    (p : ℕ) (hp : Nat.Prime p) (hcoprime : Nat.Coprime p n)
    (hnontrivial : frobeniusUnit n p hp hcoprime ≠ 1)
    {Fiber : Type*} (embed : UnitFiber n → Fiber)
    (hembed : Function.Injective embed)
    (htrivial : ∀ x : UnitFiber n,
      embed (frobeniusUnit n p hp hcoprime * x) = embed x) :
    False :=
  no_faithful_port_to_trivial_loop
    (frobeniusUnit n p hp hcoprime) hnontrivial
    embed hembed htrivial

end Cyclotomic

end GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusFourierTrace
