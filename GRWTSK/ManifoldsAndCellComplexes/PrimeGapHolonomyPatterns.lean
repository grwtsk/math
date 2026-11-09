/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Native Lean elaboration, fresh kernel replay,
transitive axiom audit, and independent review NOT_RUN. -/
import GRWTSK.ManifoldsAndCellComplexes.PrimeLinkGeometrization
import Mathlib

/-!
# Post-Zhang prime patterns, linking data, and a holonomy tangent limit

This module consumes the ACTUAL source PrimeLinkGeometrization.PrimePair,
gap, and its ordered component records. It adds arithmetic data for a finite
ordered cluster of genuine primes, including the distinction between an
ordinary ordered prime cluster and a CONSECUTIVE cluster (no intermediate
prime at every adjacent edge). It proves that common translation preserves
all pairwise differences and provides an exact two-component source return.
The formal declarations do NOT prove that the special clusters exist.

External number theory inputs, not claimed to be Lean-checked here:
* D. H. J. Polymath, "Variants of the Selberg sieve, and bounded intervals
  containing many primes", Res. Math. Sci. 1 (2014), Art. 12: H_1 <= 246.
* J. Maynard, "Small gaps between primes", Ann. Math. 181 (2015):
  H_m << m^3 exp(4m).
* J. Stadlmann, "On primes in arithmetic progressions and bounded gaps
  between many primes", Adv. Math. 468 (2025), 110190:
  H_m = O(exp(3.8075m)).
* J. Pintz, "Patterns of primes in arithmetic progressions", in Number
  Theory: Diophantine Problems, Uniform Distribution and Applications
  (Springer, 2017), pp. 369-379: for each m, a fixed pattern of m
  consecutive primes recurs in arbitrarily long finite arithmetic
  progressions of the translation variable.
* J. Thorner, "Bounded gaps between primes in Chebotarev sets",
  Math. Sci. 1 (2014), Article 4: prescribed Chebotarev classes supply
  bounded gaps, with separate class-dependent constants.

The following independent analytic argument explains the holonomy consumer.
Fix offsets 0=a_0<...<a_m<=B and an unbounded sequence of base primes p
for which every p+a_i is prime. On the original meridian representation
rho_xi(mu_(p+a_i)) = exp(i xi log(p+a_i)), the relative phase between
components i,j at frequency xi=p t is

  exp(i t p [log(1+a_j/p)-log(1+a_i/p)]).

For x>=0, integrating x-log(1+x) = integral_0^x s/(1+s) ds proves

  0 <= x-log(1+x) <= x^2/2.

Thus |p log(1+a/p)-a| <= a^2/(2p). Using |e^(iu)-e^(iv)|<=|u-v|
for real u,v gives, uniformly for |t|<=R,

  |relativePhase_p(i,j;t)-exp(i t(a_j-a_i))|
      <= R (a_i^2+a_j^2)/(2p) <= R B^2/p.

Consequently the limiting integer winding is a_j-a_i, exactly the
pairwise linking number CHOSEN for the multi-component link construction.
This quantitative continuum limit is a complete written proof, but is NOT
encoded as a Lean limit theorem in this source candidate.

Every symmetric integral off-diagonal linking matrix can be realized by
pairwise clasps in an m-component link; local knot insertion realizes the
chosen torus-knot components. This is a constructed LINK, not an assertion
that its exterior is a graph manifold, or that its JSJ pieces coincide
with the older two-component graph-link recipe. An additive gap cocycle
has zero oriented triangle sum; it is not a nonabelian flat connection
with new curvature. Neither Maynard's sieve nor this exact geometry
controls the source-specific full pole-inclusive Weil form or proves RH.

The 2026 reported H_1<=186 bound has a conditional Lean development with
external analytic/numerical obligations; it is NOT substituted for the
established published H_1<=246 input without a separate verification.
-/

namespace GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
namespace PostZhang

/-- A finite ordered pattern of m+1 offsets, starting at zero. The
separate starting value will translate all offsets together. -/
structure OffsetPattern (m : ℕ) where
  offsets : Fin (m + 1) → ℕ
  initial_zero : offsets 0 = 0
  strictlyIncreasing : StrictMono offsets

/-- An actual integer occupying component i at translation p. -/
def component (m : ℕ) (pattern : OffsetPattern m) (p : ℕ)
    (i : Fin (m + 1)) : ℕ := p + pattern.offsets i

@[simp] theorem first_component (m : ℕ) (pattern : OffsetPattern m)
    (p : ℕ) : component m pattern p 0 = p := by
  simp [component, pattern.initial_zero]

/-- All positive pairwise gaps are unaffected by the common translation.
No prime-distribution input is needed for this identity. -/
theorem translated_gap (m : ℕ) (pattern : OffsetPattern m)
    (p : ℕ) (i j : Fin (m + 1)) :
    component m pattern p j - component m pattern p i =
      pattern.offsets j - pattern.offsets i := by
  dsimp [component]
  omega

/-- The signed gap is an integral 1-coboundary on the complete
component-index graph: its triangle circulation vanishes. -/
def signedGap (m : ℕ) (pattern : OffsetPattern m)
    (i j : Fin (m + 1)) : ℤ :=
  (pattern.offsets j : ℤ) - (pattern.offsets i : ℤ)

theorem signedGap_antisymmetric (m : ℕ) (pattern : OffsetPattern m)
    (i j : Fin (m + 1)) :
    signedGap m pattern i j = -signedGap m pattern j i := by
  unfold signedGap
  ring

theorem signedGap_cocycle (m : ℕ) (pattern : OffsetPattern m)
    (i j k : Fin (m + 1)) :
    signedGap m pattern i k =
      signedGap m pattern i j + signedGap m pattern j k := by
  unfold signedGap
  ring

/-- Prescribed pairwise linking NUMBER for the multi-component recipe.
This is data, not yet a Lean construction of a smooth link exterior. -/
def prescribedLinking (m : ℕ) (pattern : OffsetPattern m)
    (i j : Fin (m + 1)) : ℕ :=
  Nat.dist (pattern.offsets i) (pattern.offsets j)

theorem prescribedLinking_symmetric (m : ℕ)
    (pattern : OffsetPattern m) (i j : Fin (m + 1)) :
    prescribedLinking m pattern i j =
      prescribedLinking m pattern j i := by
  simp [prescribedLinking, Nat.dist_comm]

/-- The genus of the chosen T(2,2p+1) component is stored as p. -/
def genusAt (m : ℕ) (pattern : OffsetPattern m)
    (p : ℕ) (i : Fin (m + 1)) : ℕ := component m pattern p i

/-- The component torus-knot determinant is 2p+1 in this recipe. -/
def determinantAt (m : ℕ) (pattern : OffsetPattern m)
    (p : ℕ) (i : Fin (m + 1)) : ℕ :=
  2 * genusAt m pattern p i + 1

/-- Arithmetic progressions of the common translation produce equal
steps in every component genus. This is an exact integer theorem. -/
theorem genus_progression_step (m : ℕ) (pattern : OffsetPattern m)
    (start step n : ℕ) (i : Fin (m + 1)) :
    genusAt m pattern (start + (n + 1) * step) i =
      genusAt m pattern (start + n * step) i + step := by
  dsimp [genusAt, component]
  rw [Nat.add_mul, one_mul]
  omega

theorem determinant_progression_step (m : ℕ)
    (pattern : OffsetPattern m) (start step n : ℕ)
    (i : Fin (m + 1)) :
    determinantAt m pattern (start + (n + 1) * step) i =
      determinantAt m pattern (start + n * step) i + 2 * step := by
  unfold determinantAt
  rw [genus_progression_step]
  omega

/-- One occurrence of the complete prime-pattern is SOURCE data. -/
structure PrimeOccurrence (m : ℕ) where
  pattern : OffsetPattern m
  start : ℕ
  prime_components : ∀ i : Fin (m + 1), Nat.Prime (component m pattern start i)

/-- Consecutiveness requires ruling out EVERY prime between adjacent
components; merely listing m+1 primes does not assert it. -/
def IsConsecutiveOccurrence (m : ℕ) (c : PrimeOccurrence m) : Prop :=
  ∀ i : Fin m, ∀ z : ℕ,
    component m c.pattern c.start (Fin.castSucc i) < z →
    z < component m c.pattern c.start (Fin.succ i) → ¬ Nat.Prime z

/-- A finite progression of genuine consecutive prime-pattern occurrences.
This record is an explicit CONSUMER of a Pintz/Green--Tao theorem, not
an instantiation or proof of that analytical existence theorem. -/
structure ConsecutivePrimeProgression (m length : ℕ) where
  pattern : OffsetPattern m
  start : ℕ
  step : ℕ
  step_pos : 0 < step
  prime_components : ∀ j : Fin length, ∀ i : Fin (m + 1),
    Nat.Prime (component m pattern (start + j.val * step) i)
  no_prime_between : ∀ j : Fin length, ∀ i : Fin m, ∀ z : ℕ,
    component m pattern (start + j.val * step) (Fin.castSucc i) < z →
    z < component m pattern (start + j.val * step) (Fin.succ i) →
    ¬ Nat.Prime z

/-- The exact arithmetic lower-order gap is independent of the member
of the progression (and of the individual prime magnitudes). -/
theorem progression_gap_fixed (m length : ℕ)
    (c : ConsecutivePrimeProgression m length) (j : Fin length)
    (i k : Fin (m + 1)) :
    component m c.pattern (c.start + j.val * c.step) k -
      component m c.pattern (c.start + j.val * c.step) i =
        c.pattern.offsets k - c.pattern.offsets i := by
  exact translated_gap m c.pattern (c.start + j.val * c.step) i k

/-- The two-component case returns to the old EXACT PrimePair type,
not an invented parallel definition of a prime pair. -/
def twoComponentPair {length : ℕ}
    (c : ConsecutivePrimeProgression 1 length) (j : Fin length) : PrimePair where
  p := component 1 c.pattern (c.start + j.val * c.step) 0
  q := component 1 c.pattern (c.start + j.val * c.step) 1
  prime_p := c.prime_components j 0
  prime_q := c.prime_components j 1
  ordered := by
    have h := c.pattern.strictlyIncreasing
      (show (0 : Fin 2) < (1 : Fin 2) by decide)
    dsimp [component]
    omega

/-- Recover the original two-component topological linking datum exactly. -/
theorem twoComponentPair_gap {length : ℕ}
    (c : ConsecutivePrimeProgression 1 length) (j : Fin length) :
    gap (twoComponentPair c j) = c.pattern.offsets (1 : Fin 2) := by
  have h0 := c.pattern.initial_zero
  dsimp [gap, twoComponentPair, component]
  omega

/-- In a labelled multi-link family, each selected component prime is
recoverable from its genus coordinate. No arbitrary-knot classification
by genus is asserted here. -/
theorem genus_recovers_prime (m : ℕ) (pattern : OffsetPattern m)
    (p : ℕ) (i : Fin (m + 1)) :
    genusAt m pattern p i = component m pattern p i := rfl

end PostZhang
end GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
