/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source drafting. Independent mathematical review NOT_RUN.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticExactTorsionFrobeniusClasses
import Mathlib

/-!
# The precise limit of one finite torsion diffuser for extension-field counts

Given a finite permutation `phi : X ≃ X`, its kth fixed-point inventory
contains at most |X| states. If phi^m=1, the inventory is periodic in k
with period m. These are exact finite statements, not estimates of zeros.

Specialize to the original `ExactTorsionFrobenius.exactTransport` for one
fixed order n, on the ORIGINAL native Weierstrass point class. The same
finite-count and periodic statements hold for the actual class subset;
they do not count all F_(q^k)-rational points. A finite torsion fiber is
not the entire geometric torsion union as k grows.

For a genuine elliptic curve over F_q, the classical Hasse bound and its
extension-count source imply
  #E(F_(q^k)) >= q^k + 1 - 2*q^(k/2) = (q^(k/2)-1)^2.
For fixed q>1 the right side tends to infinity. Thus no single finite
`E[n]`, nor a single finite exact-order class, can have its fixed-point
counts equal ALL extension counts. The finite counting contradiction is
formalized below under an explicit `UnboundedCounts` premise; the analytic
Hasse-to-unboundedness argument is WRITTEN MATHEMATICS, not claimed to be
Lean-elaborated. Its use depends on the genuine extension-count source.

This is a hostile check against a false conversion:
  positive spin/Markov diffusion on one finite torsion class
    != complete arithmetic point-count Euler inventory.
The correct next adapter must range over varying torsion levels and carry
source-preserving Frobenius fixed-point comparisons. Conversely, a finite
permutation zeta may capture its own cyclic orbits but is not the global
elliptic Hasse--Weil zeta merely by matching a few trace coefficients.
No p-primary finite-flat scheme, unconditional Hasse bound, classical RH,
Dirichlet GRH or source-independent spectral sign is inferred.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteTorsionOrbitLimit

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionFrobenius

universe u
variable {X : Type u} [Fintype X] [DecidableEq X]

/-- Every typed finite point remains distinguished in this actual
kth-fixed-point inventory. -/
def fixedInventory (phi : Equiv.Perm X) (k : ℕ) : Finset X :=
  Finset.univ.filter (fun P => (phi ^ k) P = P)

/-- A finite permutation never manufactures more fixed points than its
original finite carrier contains. -/
theorem fixedInventory_card_le (phi : Equiv.Perm X) (k : ℕ) :
    (fixedInventory phi k).card ≤ Fintype.card X := by
  classical
  simpa using (Finset.card_le_card
    (Finset.subset_univ (fixedInventory phi k)))

/-- Source-bound periodicity: a supplied permutation return phi^m=id
makes the fixed-point inventory periodic. An arbitrary positive m is not
silently asserted to be a return period. -/
theorem fixedInventory_periodic (phi : Equiv.Perm X) (k m : ℕ)
    (hreturn : phi ^ m = 1) :
    fixedInventory phi (k + m) = fixedInventory phi k := by
  classical
  unfold fixedInventory
  rw [pow_add, hreturn, mul_one]

/-- Real obstruction: for an unbounded family of field-extension counts,
no ONE finite permutation carrier can supply every extension count. -/
def UnboundedCounts (counts : ℕ → ℕ) : Prop :=
  ∀ M : ℕ, ∃ k : ℕ, M < counts k

theorem no_single_finite_inventory (phi : Equiv.Perm X)
    (counts : ℕ → ℕ) (hcounts : UnboundedCounts counts) :
    ¬ (∀ k : ℕ, counts k = (fixedInventory phi k).card) := by
  intro hall
  obtain ⟨k, hk⟩ := hcounts (Fintype.card X)
  have hle : counts k ≤ Fintype.card X := by
    rw [hall k]
    exact fixedInventory_card_le phi k
  omega

/-! ## Exact native elliptic torsion-class instance -/

variable {F : Type u} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]

/-- Exact source transport is the old `exactTransport`: this does not
assume that an arbitrary additive equivalence is geometric Frobenius. -/
noncomputable def fixedExactClass (n : ℕ)
    [Fintype (ExactClass W n)] (phi : W.Point ≃+ W.Point) (k : ℕ) :
    Finset (ExactClass W n) := by
  classical
  exact fixedInventory (exactTransport W phi n) k

/-- A true return of the native exact-order transport, when supplied,
gives a periodic fixed-point signature for the SAME finite torsion class. -/
theorem fixedExactClass_periodic (n : ℕ) [Fintype (ExactClass W n)]
    (phi : W.Point ≃+ W.Point) (k m : ℕ)
    (hreturn : (exactTransport W phi n) ^ m = 1) :
    fixedExactClass W n phi (k + m) = fixedExactClass W n phi k := by
  classical
  exact fixedInventory_periodic (exactTransport W phi n) k m hreturn

/-- Every fixed exact-order fiber is bounded in cardinality by that
fiber's own total size, uniformly in the iteration number. -/
theorem fixedExactClass_card_le (n : ℕ) [Fintype (ExactClass W n)]
    (phi : W.Point ≃+ W.Point) (k : ℕ) :
    (fixedExactClass W n phi k).card ≤ Fintype.card (ExactClass W n) := by
  classical
  exact fixedInventory_card_le (exactTransport W phi n) k

/-- Even when the geometric Frobenius adapter is eventually built,
no fixed finite order n can supply all unbounded extension-field point
counts by itself. This does not exclude a varying-level/direct-limit port. -/
theorem no_single_exact_class_counts (n : ℕ)
    [Fintype (ExactClass W n)] (phi : W.Point ≃+ W.Point)
    (counts : ℕ → ℕ) (hunbounded : UnboundedCounts counts) :
    ¬ (∀ k : ℕ, counts k = (fixedExactClass W n phi k).card) := by
  classical
  exact no_single_finite_inventory (exactTransport W phi n) counts hunbounded

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteTorsionOrbitLimit
