/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. Native Lean elaboration succeeded with Lean
4.34.1 and the project-pinned mathlib; scope is recorded in theorem-local
provenance. Fresh kernel replay, transitive axiom audit and independent
analytical review NOT_RUN. -/
import GRWTSK.ManifoldsAndCellComplexes.PrimeSphericalDisplacement
import Mathlib

/-!
# Prime torus knots as actual embedded lifts over the two-sphere

This increment distinguishes two different meanings of "over a sphere":

1. The rational stereographic prime-point embedding and its exact arithmetic
   displacement (the imported source \`PrimeSphericalDisplacement\`).
2. The standard Hopf projection h:S^3→S^2, under which the chosen
   standard representative of K_p=T(2,2p+1) has computable
   equatorial projection degree 2p-1.

The COMPLETE written three-dimensional argument is elementary. Write
S^3={(z,w)∈C²:|z|²+|w|²=1} and

  K_p(t) = (exp(2it)/sqrt(2), exp(i(2p+1)t)/sqrt(2))
           for t∈R/(2*pi Z).

The squared absolute values of the two coordinates add to one. If
K_p(t)=K_p(s), then exp(2i(t-s))=1 and
exp(i(2p+1)(t-s))=1. Because gcd(2,2p+1)=1, Bezout
gives exp(i(t-s))=1. Thus K_p is a continuous injective map from a
compact circle into Hausdorff S^3, hence a topological embedding. Its
image is the standard (2,2p+1)-torus knot on the Clifford torus.

Choose the Hopf projection

  h(z,w) = (2 Re(conj(z) w), 2 Im(conj(z) w), |z|²-|w|²).

The identity
  4|z|²|w|² + (|z|²-|w|²)² = (|z|²+|w|²)²
shows its image is S². On K_p,
  conj(z)w = exp(i(2p-1)t)/2
so
  h(K_p(t)) = (cos((2p-1)t), sin((2p-1)t), 0).

The equatorial projection is a degree-(2p-1) map. This degree is not
a knot invariant of arbitrary embeddings: it is tied to the chosen
Clifford-torus representative and chosen Hopf fibration. The knot
itself remains embedded in S³, not in S².

For the separate standard representatives of p and q, their projected
degree difference equals 2(q-p). This recovers TWICE the linking
number assigned to the project's separately constructed two-component
link L_(p,q). IT DOES NOT SAY that the two Clifford-torus curves are
simultaneously embedded as L_(p,q) with its required linking. Nor does
it say the Hopf projections of arbitrary isotopic knot representatives
have the same degree. A common link embedding requires additional
peripheral and isotopy data.

In the earlier sphere-bundle encoding, the relative Chern number
for offsets a_i<a_j is a_j-a_i. The difference of the chosen standard
Hopf projection degrees is exactly twice this number. The finite
integer relationships below are Lean source candidates; the
complex-exponential embedding theorem, Hopf projection and topological
degree interpretation are written analytical geometry only and
NOT Lean-checked in this source.

Sources: H. Seifert (classical torus knots); Hatcher, Algebraic
Topology and Vector Bundles & K-Theory (Hopf fibration/bundles);
the project's \`zhang_prime_link_weil_construction.md\` prime-link recipe.
No new prime distribution theorem, JSJ completeness, Weil positivity,
RH or GRH follows from this chosen representation.
-/

namespace GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
namespace PrimeHopfKnotProjection

/-- The equatorial winding of the STANDARD (2,2p+1) torus knot under
the displayed Hopf projection. It is not intrinsic to arbitrary
embeddings of the same knot type. -/
def projectedWinding (p : ℕ) : ℕ := 2 * p - 1

/-- The selected standard representative encodes p by its odd
projected winding, for positive p. -/
theorem recover_prime_from_winding (p : ℕ) (hp : 0 < p) :
    (projectedWinding p + 1) / 2 = p := by
  dsimp [projectedWinding]
  omega

/-- In the original ordered PrimePair the difference of the two
selected projected degrees is twice the link recipe's linking number. -/
theorem winding_difference (pair : PrimePair) :
    projectedWinding pair.q - projectedWinding pair.p =
      2 * gap pair := by
  have hp : 0 < pair.p := lt_of_lt_of_le (by omega : 0 < 2)
    pair.prime_p.two_le
  dsimp [projectedWinding, gap]
  omega

theorem half_winding_difference (pair : PrimePair) :
    (projectedWinding pair.q - projectedWinding pair.p) / 2 =
      gap pair := by
  rw [winding_difference]
  omega

/-- Return of the selected natural half-winding difference to the actual
real spherical points of the SAME PrimePair. This is chart displacement,
not round distance, and does not assert a simultaneous link embedding.
See grwtsk/math#1798 for exact-source compilation status. Separate kernel
replay, axiom audit and independent review NOT_RUN. -/
theorem half_winding_difference_realDisplacement (pair : PrimePair) :
    (((projectedWinding pair.q - projectedWinding pair.p) / 2 : ℕ) : ℝ) =
      SphericalPrimeDisplacement.realDisplacement
        (SphericalPrimeDisplacement.realMeridianPoint pair.p)
        (SphericalPrimeDisplacement.realMeridianPoint pair.q) := by
  rw [half_winding_difference,
    SphericalPrimeDisplacement.realDisplacement_source_gap]

/-- Simultaneous projections of chosen standard representatives for
a prime pattern. The base value is assumed positive: this excludes the
artificial zero-winding truncation at p=0. -/
def windingAt (m : ℕ) (pattern : PostZhang.OffsetPattern m)
    (p : ℕ) (i : Fin (m + 1)) : ℕ :=
  projectedWinding (PostZhang.component m pattern p i)

/-- When i<j, the change in projected degree is twice the gap,
independent of the common prime translation. -/
theorem winding_pattern_gap (m : ℕ)
    (pattern : PostZhang.OffsetPattern m)
    (p : ℕ) (hp : 0 < p)
    (i j : Fin (m + 1)) (hij : i < j) :
    windingAt m pattern p j - windingAt m pattern p i =
      2 * (pattern.offsets j - pattern.offsets i) := by
  have hm := pattern.strictlyIncreasing hij
  dsimp [windingAt, projectedWinding, PostZhang.component]
  omega

/-- Bridge between the explicitly computed Hopf winding difference and
the relative degree DATA of the spherical line-bundle construction.
No claim that a real-valued group holonomy has been made periodic. -/
theorem winding_pattern_vs_relativeDegree (m : ℕ)
    (pattern : PostZhang.OffsetPattern m)
    (p : ℕ) (hp : 0 < p)
    (i j : Fin (m + 1)) (hij : i < j) :
    ((windingAt m pattern p j - windingAt m pattern p i) / 2 : ℤ) =
      SphericalPrimeDisplacement.relativeDegree m pattern i j := by
  have hle : windingAt m pattern p i ≤ windingAt m pattern p j := by
    have hm := pattern.strictlyIncreasing hij
    dsimp [windingAt, projectedWinding, PostZhang.component]
    omega
  rw [← Nat.cast_sub (R := ℤ) hle, winding_pattern_gap m pattern p hp i j hij]
  have hgap := SphericalPrimeDisplacement.relativeDegree_ordered
    m pattern i j hij
  rw [hgap]
  omega

theorem example_prime_eleven_thirteen :
    projectedWinding 11 = 21 ∧ projectedWinding 13 = 25 ∧
      ((projectedWinding 13 - projectedWinding 11) / 2) = 2 := by
  norm_num [projectedWinding]

end PrimeHopfKnotProjection
end GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
