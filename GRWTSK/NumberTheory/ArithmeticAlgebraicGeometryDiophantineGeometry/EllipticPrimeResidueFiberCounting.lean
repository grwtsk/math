/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticPrimeResidueFiberPorts
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact multi-prime residue-fiber counting and signed comparison packets

For one actual integral elliptic model, a finite index set of observations
may contain repeated prime or residue occurrences. The source indices are
never replaced by a SET of keys, so Putnam-style ordered incidence counting
retains multiplicities.

Every ordered off-diagonal pair belongs to exactly one of three sectors:
(1) same prime and same residue key;
(2) same prime but different residue;
(3) different primes.
All kernels and all signs are retained. A typed port preserves this routing,
the genuine local point-count/Euler factors, and the complete signed
trace-kernel packet. For an arbitrary new kernel, every omitted term is
charged to an exact two-sided signed transport defect.

The RH Möbius pickup kernel is NOT the elliptic trace kernel. To use a bound
in the canonical RH endpoint return, a separate source-exact kernel comparison
and all-positive-rate signed bound must be proved. Mere prime labels and
positive Gram estimates do not provide that comparison.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberCounting

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberPort

variable {W V : WeierstrassCurve ℤ}
variable {ι : Type*}

/-- A residue key contains the prime and its residue, but not the complete
certificate, exponent, multiplicity or curve model. -/
theorem prime_eq_of_residueKey_eq (x y : CurveFiber W)
    (h : residueKey x = residueKey y) : prime x = prime y := by
  apply Subtype.ext
  simpa [residueKey, prime] using congrArg Prod.fst h

/-- The complete ordered off-diagonal signed packet for a supplied kernel.
The source is indexed by original occurrence positions, not by compressed
prime-residue keys. -/
def orderedPacket (F : BoundedSample W ι) (S : Finset ι)
    (K : CurveFiber W → CurveFiber W → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i = j then 0 else K (F.observation i) (F.observation j)

/-- Both orientations of each pair in the same prime-residue fiber. -/
def sameResiduePacket (F : BoundedSample W ι) (S : Finset ι)
    (K : CurveFiber W → CurveFiber W → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i ≠ j ∧
        residueKey (F.observation i) = residueKey (F.observation j)
    then K (F.observation i) (F.observation j) else 0

/-- Same prime but different residues: these cannot be compressed into one
single cyclic phase without paying their cross terms. -/
def samePrimeOtherResiduePacket (F : BoundedSample W ι) (S : Finset ι)
    (K : CurveFiber W → CurveFiber W → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i ≠ j ∧
        prime (F.observation i) = prime (F.observation j) ∧
        residueKey (F.observation i) ≠ residueKey (F.observation j)
    then K (F.observation i) (F.observation j) else 0

/-- All ordered cross-prime pairs: these remain distinct even when a
chosen numerical observation happens to be equal. -/
def differentPrimePacket (F : BoundedSample W ι) (S : Finset ι)
    (K : CurveFiber W → CurveFiber W → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i ≠ j ∧
        prime (F.observation i) ≠ prime (F.observation j)
    then K (F.observation i) (F.observation j) else 0

/-- The exact three-sector Putnam-style decomposition: every ordered
source pair is counted once, all signs and collisions remain in place.
No positivity, independence, cancellation or RH hypothesis is used. -/
theorem orderedPacket_eq_three_sectors
    (F : BoundedSample W ι) (S : Finset ι)
    (K : CurveFiber W → CurveFiber W → ℝ) :
    orderedPacket F S K =
      sameResiduePacket F S K +
      samePrimeOtherResiduePacket F S K +
      differentPrimePacket F S K := by
  classical
  unfold orderedPacket sameResiduePacket
    samePrimeOtherResiduePacket differentPrimePacket
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · by_cases hp : prime (F.observation i) = prime (F.observation j)
    · by_cases hk :
          residueKey (F.observation i) = residueKey (F.observation j)
      · simp [hij, hp, hk]
      · simp [hij, hp, hk]
    · have hk :
          residueKey (F.observation i) ≠ residueKey (F.observation j) := by
        intro hkey
        exact hp (prime_eq_of_residueKey_eq _ _ hkey)
      simp [hij, hp, hk]

/-- The *actual* finite set of same-fiber ordered source occurrences. This
is not a set of distinct prime-residue labels. -/
def sameResiduePairs [DecidableEq ι]
    (F : BoundedSample W ι) (S : Finset ι) : Finset (ι × ι) :=
  (S.product S).filter (fun ij =>
    ij.1 ≠ ij.2 ∧
      residueKey (F.observation ij.1) = residueKey (F.observation ij.2))

/-- Elementary finite incidence ceiling: source pair counting costs no
more than all original ordered pairs. This is a counting bound, NOT the
arithmetic cancellation required to control a dense RH sector. -/
theorem sameResiduePairs_card_le [DecidableEq ι]
    (F : BoundedSample W ι) (S : Finset ι) :
    (sameResiduePairs F S).card ≤ S.card * S.card := by
  classical
  calc
    (sameResiduePairs F S).card ≤ (S.product S).card := by
      exact Finset.card_le_card (Finset.filter_subset _ _)
    _ = S.card * S.card := by simp

/-- Routing preserves exactly the selected pair positions, including
multiplicities, because residue-key equality is preserved. -/
theorem sameResiduePairs_route
    [DecidableEq ι] {C : WeierstrassCurve ℤ → Prop}
    (F : BoundedSample W ι) (f : ChannelPort C W V)
    (S : Finset ι) :
    sameResiduePairs (F.route f) S = sameResiduePairs F S := by
  classical
  ext ij
  simp only [sameResiduePairs, Finset.mem_filter, Finset.mem_product]
  rw [F.route_residueKey f ij.1, F.route_residueKey f ij.2]

/-- A source-dependent signed trace kernel. It is NOT the RH pickup
response Gram unless a separate, proved correspondence identifies them. -/
def traceKernel (x y : CurveFiber W) : ℝ :=
  (trace x : ℝ) * (trace y : ℝ)

/-- Every genuine observation port preserves the signed trace product. -/
theorem traceKernel_port {C : WeierstrassCurve ℤ → Prop}
    (f : ChannelPort C W V) (x y : CurveFiber W) :
    traceKernel (f.toFiber x) (f.toFiber y) = traceKernel x y := by
  simp [traceKernel, f.trace_eq]

/-- A complete signed trace packet is preserved by a source-bound
observation port. This is an exact finite arithmetic comparison. -/
theorem tracePacket_route {C : WeierstrassCurve ℤ → Prop}
    (F : BoundedSample W ι) (f : ChannelPort C W V)
    (S : Finset ι) :
    orderedPacket (F.route f) S traceKernel =
      orderedPacket F S traceKernel := by
  classical
  unfold orderedPacket
  apply Finset.sum_congr rfl
  intro i hi
  apply Finset.sum_congr rfl
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · simp only [if_neg hij]
    change traceKernel (f.toFiber (F.observation i))
        (f.toFiber (F.observation j)) =
      traceKernel (F.observation i) (F.observation j)
    exact traceKernel_port f _ _

/-- The exact ordered signed source-to-target defect: no off-diagonal pair
is deleted, and its sign is not replaced by an absolute value. -/
def transportDefect {C : WeierstrassCurve ℤ → Prop}
    (F : BoundedSample W ι) (f : ChannelPort C W V)
    (S : Finset ι) (K : CurveFiber W → CurveFiber W → ℝ)
    (L : CurveFiber V → CurveFiber V → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ S,
    if i = j then 0 else
      K (F.observation i) (F.observation j) -
        L (f.toFiber (F.observation i)) (f.toFiber (F.observation j))

/-- The source signed total equals the routed signed total PLUS the exact
signed defect. A port preserves addresses and factors but cannot erase a
change of kernel. This is the fundamental RH comparison seam. -/
theorem orderedPacket_eq_route_add_defect {C : WeierstrassCurve ℤ → Prop}
    (F : BoundedSample W ι) (f : ChannelPort C W V)
    (S : Finset ι) (K : CurveFiber W → CurveFiber W → ℝ)
    (L : CurveFiber V → CurveFiber V → ℝ) :
    orderedPacket F S K =
      orderedPacket (F.route f) S L +
        transportDefect F f S K L := by
  classical
  unfold orderedPacket transportDefect
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i hi
  simp only [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro j hj
  by_cases hij : i = j
  · simp [hij]
  · simp [hij]
    ring

/-- A source-defined local Euler product at the count-point s=1,
using the actual certified point counts, including every repeated prime
occurrence in S. The prime bound is inherited from the sample. -/
theorem finite_good_euler_window
    (F : BoundedSample W ι) (S : Finset ι) :
    (∏ i ∈ S,
      localReciprocal (F.observation i)
        (((prime (F.observation i)).1 : ℚ)⁻¹)) =
      ∏ i ∈ S,
        (pointCount (F.observation i) : ℚ) /
          ((prime (F.observation i)).1 : ℚ) := by
  apply Finset.prod_congr rfl
  intro i hi
  exact goodReciprocal_at_inverse _
    _ (prime (F.observation i)).2.pos

/-- Genuine finite Euler windows are exactly invariant under the typed port:
the port cannot silently change a trace, residue prime or count. -/
theorem finite_good_euler_window_route
    {C : WeierstrassCurve ℤ → Prop}
    (F : BoundedSample W ι) (f : ChannelPort C W V)
    (S : Finset ι) (T : ℚ) :
    (∏ i ∈ S, localReciprocal ((F.route f).observation i) T) =
      ∏ i ∈ S, localReciprocal (F.observation i) T := by
  apply Finset.prod_congr rfl
  intro i hi
  exact f.localReciprocal_eq (F.observation i) T

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.PrimeResidueFiberCounting
