/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source candidate. See grwtsk/math#1798 for exact-source
compilation status. Fresh kernel replay, transitive axiom audit, and
independent review NOT_RUN. -/
import GRWTSK.ManifoldsAndCellComplexes.PrimeGapHolonomyPatterns
import Mathlib

/-!
# Stereographic prime displacement on the sphere and relative bundle degrees

Exact consumer: the existing \`PrimePair\`, \`PostZhang.PrimeOccurrence\`,
\`PostZhang.OffsetPattern\` and \`PostZhang.signedGap\`. No replacement prime
predicate, source loop history, voltage cover or Weil form is introduced.

## Elementary construction (formal source candidate)

For t > 0, define the rationally parametrized meridian of the standard
unit 2-sphere in R^3:

  Phi(t) = (2t/(1+t^2), 0, (1-t^2)/(1+t^2)).

Its coordinates satisfy x^2+y^2+z^2=1, and the stereographic chart
x/(1+z) recovers t. The chart is singular only at the south pole.
The map from positive real t (and hence every natural or prime) into this
open meridian is a smooth embedding: continuity, immersion, and continuity
of the inverse follow from these displayed rational formulas. The Lean
proofs below verify sphere membership, chart inversion, injectivity,
arithmetic displacements, the gap cocycle, and exact source recovery for
prime pairs and finite prime patterns, using the rational coordinates.
The real subtype and continuous-inverse
construction below additionally supplies a topological embedding candidate;
smoothness and the successor graph remain written arguments only.

The smooth curve of points Phi(t) has derivative

  Phi'(t) = (2(1-t^2)/(1+t^2)^2, 0, -4t/(1+t^2)^2),

which is tangent to the sphere and has norm 2/(1+t^2) > 0. For consecutive
primes, the intervals on this same monotone meridian give a topological
embedding of their ordered successor graph. The displacement is the
difference of STEREOGRAPHIC coordinates, not round geodesic distance.

## Spherical circle-bundle completion (written theorem, NOT Lean checked)

Fix an oriented unit sphere S^2 and a complex Hopf line bundle H with
first Chern number +1 (choose clutching orientation accordingly). Given
integer offsets 0=a_0<...<a_m, define L_i=H^(tensor a_i). The relative
line L_j tensor dual(L_i) has equatorial transition

  g_ij(theta) = exp(i (a_j-a_i) theta),

and first Chern number a_j-a_i. This is exactly the assigned PAIRWISE
linking-number DATA in the project link recipe when i<j.

One direct proof uses local real gauge 1-forms, with polar coordinate
vartheta and equatorial azimuth theta,

  A_N = (d/2)(1-cos(vartheta)) d theta,
  A_S = -(d/2)(1+cos(vartheta)) d theta,

where d=a_j-a_i. They differ by d d theta on the overlap. The common
curvature is (d/2) sin(vartheta) d vartheta wedge d theta and has flux
(1/(2*pi)) integral_{S^2} F = d. This matches the clutching degree.

For p tending to infinity through occurrences of the same fixed
prime-offset pattern, the project's meridian character obeys

  R_ij^(p)(theta)
    = exp(i theta p [log(1+a_j/p)-log(1+a_i/p)]).

For |theta|<=R, using 0<=x-log(1+x)<=x^2/2 gives

  |R_ij^(p)(theta) - g_ij(theta)|
      <= R (a_i^2+a_j^2)/(2p).

Thus the LIMITING prime relative-holonomy function is the exact
clutching function of the relative line bundle. Finite-p phases need
not be 2*pi-periodic. The limit matches a transition function, not
parallel-transport holonomy of the monopole connection around a latitude.

The entire labelled cluster is encoded by the spherical point Phi(p)
and the indexed line-bundle degrees a_i; both p and all a_i can be
recovered. This is a faithful arithmetic/bundle DATA embedding,
NOT an embedding of the original knotted components into S^2.
The Lean declarations below only encode the numerical degree layer:
they do NOT construct Hopf bundles, Chern classes, connections,
the limiting analytic maps or an isomorphism of link complements.

## Absolute obstruction to an actual link embedding in S^2

Every embedded simple closed curve on S^2 bounds a disk in S^2 and
therefore represents the unknot in S^3. Two disjoint circles in S^2
have linking number zero (choose the disk avoiding the other circle).
The project's K_p=T(2,2p+1) has genus p>0 and its L_(p,q) has
linking number q-p>0. Therefore the actual knotted/linking objects
CANNOT be embedded as disjoint curves in S^2 preserving these data.
They live in S^3. A sphere diagram or the above line bundles
does not circumvent this topological obstruction.

There is also no isometry from the unbounded prime metric
|p-q| into a round S^2 of geodesic diameter pi. The inverse
stereographic chart is deliberately unbounded near the south pole.

Literature: A. Hatcher, Vector Bundles and K-Theory, sec. 1.2
(clutching of bundles over S^2); standard Hopf/Dirac monopole
connection and Chern-Weil flux; Jordan-Schoenflies theorem for
curves on S^2. These continuum inputs are explicitly NOT imported
or silently declared as Lean axioms. No intrinsic prime-distribution
theorem, geometrization, Weil positivity, RH or GRH is obtained.
-/

namespace GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
namespace SphericalPrimeDisplacement

/-! ### Exact rational sphere-coordinate return -/

/-- A coordinate triple over the rationals. The next theorem establishes
that its real embedding lies on the actual standard unit sphere. -/
abbrev SphereCoordinates := ℚ × ℚ × ℚ

def spherePoint (t : ℚ) : SphereCoordinates :=
  (2 * t / (1 + t ^ 2), 0, (1 - t ^ 2) / (1 + t ^ 2))

private theorem denominator_ne_zero (t : ℚ) :
    (1 + t ^ 2 : ℚ) ≠ 0 := by
  positivity

theorem spherePoint_on_sphere (t : ℚ) :
    (spherePoint t).1 ^ 2 +
      (spherePoint t).2.1 ^ 2 +
      (spherePoint t).2.2 ^ 2 = 1 := by
  change (2 * t / (1 + t ^ 2)) ^ 2 + (0 : ℚ) ^ 2 +
    ((1 - t ^ 2) / (1 + t ^ 2)) ^ 2 = 1
  field_simp [denominator_ne_zero t]
  ring

/-- The excluded south pole is exactly where the displayed stereographic
coordinate has zero denominator. No denominator is suppressed. -/
theorem spherePoint_away_from_south (t : ℚ) :
    1 + (spherePoint t).2.2 ≠ 0 := by
  change 1 + (1 - t ^ 2) / (1 + t ^ 2) ≠ 0
  have h : 1 + (1 - t ^ 2) / (1 + t ^ 2) =
      2 / (1 + t ^ 2) := by
    field_simp [denominator_ne_zero t]
    ring
  rw [h]
  exact div_ne_zero (by norm_num) (denominator_ne_zero t)

/-- Exact recovery of the unbounded arithmetic coordinate from the sphere. -/
def chart (P : SphereCoordinates) : ℚ := P.1 / (1 + P.2.2)

@[simp] theorem chart_spherePoint (t : ℚ) :
    chart (spherePoint t) = t := by
  unfold chart
  apply (div_eq_iff (spherePoint_away_from_south t)).2
  change 2 * t / (1 + t ^ 2) =
    t * (1 + (1 - t ^ 2) / (1 + t ^ 2))
  field_simp [denominator_ne_zero t]
  ring

theorem spherePoint_injective : Function.Injective spherePoint := by
  intro a b hab
  have h := congrArg chart hab
  simpa only [chart_spherePoint] using h

/-- A prime label is an actual rational point of the real unit sphere,
not a fabricated replacement prime encoding. -/
def primePoint (p : ℕ) : SphereCoordinates :=
  spherePoint (p : ℚ)

theorem primePoint_on_sphere (p : ℕ) :
    (primePoint p).1 ^ 2 +
      (primePoint p).2.1 ^ 2 +
      (primePoint p).2.2 ^ 2 = 1 :=
  spherePoint_on_sphere (p : ℚ)

@[simp] theorem chart_primePoint (p : ℕ) :
    chart (primePoint p) = (p : ℚ) :=
  chart_spherePoint (p : ℚ)

theorem primePoint_injective : Function.Injective primePoint := by
  intro p q h
  have hc := congrArg chart h
  have hq : (p : ℚ) = (q : ℚ) := by
    simpa only [chart_primePoint] using hc
  exact_mod_cast hq

/-- This is the stereographic displacement scalar, not spherical distance. -/
def displacement (P Q : SphereCoordinates) : ℚ :=
  chart Q - chart P

theorem displacement_cocycle (P Q R : SphereCoordinates) :
    displacement P R = displacement P Q + displacement Q R := by
  unfold displacement
  ring

theorem displacement_antisymm (P Q : SphereCoordinates) :
    displacement P Q = -(displacement Q P) := by
  unfold displacement
  ring

theorem displacement_prime (p q : ℕ) :
    displacement (primePoint p) (primePoint q) =
      (q : ℚ) - (p : ℚ) := by
  simp [displacement]

/-- Return to the original exact PrimePair gap, rather than a new
endpoint-only replacement of that source object. -/
theorem displacement_source_gap (x : PrimePair) :
    displacement (primePoint x.p) (primePoint x.q) =
      (gap x : ℚ) := by
  calc
    displacement (primePoint x.p) (primePoint x.q) =
        (x.q : ℚ) - (x.p : ℚ) := displacement_prime x.p x.q
    _ = ((x.q - x.p : ℕ) : ℚ) :=
      (Nat.cast_sub (le_of_lt x.ordered)).symm
    _ = (gap x : ℚ) := rfl

/-! ### The real sphere and its punctured meridian

This is the ordinary unit sphere in real Cartesian coordinates with the
subspace topology. The product topology is the Euclidean topology; no claim
about its product metric being the round geodesic metric is made. The scalar
chart below is the restriction of stereographic projection to y = 0, not a
chart of the entire two-dimensional sphere.

Analytical argument: 1+t² is positive, and clearing its square proves the
sphere equation. On the image, 1+z=2/(1+t²), so x/(1+z)=t. The rational
formulas are continuous wherever their displayed denominators are nonzero.
Thus the continuous left inverse on the punctured sphere gives a topological
embedding, including at t=0 and for negative t. This does not yet formalize
smoothness, immersion, or a prime-successor graph. See grwtsk/math#1798 for exact-source compilation
status. Separate kernel replay, axiom audit, and independent review NOT_RUN.
-/

abbrev RealSphereCoordinates := ℝ × ℝ × ℝ

/-- The actual real unit two-sphere, in Cartesian coordinates. -/
abbrev RealSphere := {P : RealSphereCoordinates //
  P.1 ^ 2 + P.2.1 ^ 2 + P.2.2 ^ 2 = 1}

/-- Domain on which the stereographic denominator is nonzero. -/
abbrev SouthChart := {P : RealSphere // 1 + P.val.2.2 ≠ 0}

noncomputable def realSphereCoordinates (t : ℝ) : RealSphereCoordinates :=
  (2 * t / (1 + t ^ 2), 0, (1 - t ^ 2) / (1 + t ^ 2))

private theorem real_denominator_ne_zero (t : ℝ) : 1 + t ^ 2 ≠ 0 := by
  positivity

theorem realSphereCoordinates_on_sphere (t : ℝ) :
    (realSphereCoordinates t).1 ^ 2 +
      (realSphereCoordinates t).2.1 ^ 2 +
      (realSphereCoordinates t).2.2 ^ 2 = 1 := by
  change (2 * t / (1 + t ^ 2)) ^ 2 + (0 : ℝ) ^ 2 +
    ((1 - t ^ 2) / (1 + t ^ 2)) ^ 2 = 1
  field_simp [real_denominator_ne_zero t]
  ring

noncomputable def realSpherePoint (t : ℝ) : RealSphere :=
  ⟨realSphereCoordinates t, realSphereCoordinates_on_sphere t⟩

theorem realSpherePoint_away_from_south (t : ℝ) :
    1 + (realSpherePoint t).val.2.2 ≠ 0 := by
  change 1 + (1 - t ^ 2) / (1 + t ^ 2) ≠ 0
  have h : 1 + (1 - t ^ 2) / (1 + t ^ 2) = 2 / (1 + t ^ 2) := by
    field_simp [real_denominator_ne_zero t]
    ring
  rw [h]
  exact div_ne_zero (by norm_num) (real_denominator_ne_zero t)

noncomputable def realMeridianPoint (t : ℝ) : SouthChart :=
  ⟨realSpherePoint t, realSpherePoint_away_from_south t⟩

/-- A scalar meridian coordinate, with its domain restriction explicit. -/
noncomputable def realChart (P : SouthChart) : ℝ :=
  P.val.val.1 / (1 + P.val.val.2.2)

@[simp] theorem realChart_realMeridianPoint (t : ℝ) :
    realChart (realMeridianPoint t) = t := by
  apply (div_eq_iff (realSpherePoint_away_from_south t)).2
  change 2 * t / (1 + t ^ 2) =
    t * (1 + (1 - t ^ 2) / (1 + t ^ 2))
  field_simp [real_denominator_ne_zero t]
  ring

/-- The other inverse law is restricted to the meridian y=0.
The scalar coordinate cannot recover points on the rest of S². -/
theorem realMeridianPoint_realChart (P : SouthChart)
    (hy : P.val.val.2.1 = 0) : realMeridianPoint (realChart P) = P := by
  have hs : P.val.val.1 ^ 2 + P.val.val.2.2 ^ 2 = 1 := by
    simpa [hy] using P.val.property
  have hd := P.property
  have hden : 1 + (P.val.val.1 / (1 + P.val.val.2.2)) ^ 2 =
      2 / (1 + P.val.val.2.2) := by
    field_simp [hd]
    nlinarith [hs]
  apply Subtype.ext
  apply Subtype.ext
  apply Prod.ext
  · change 2 * (P.val.val.1 / (1 + P.val.val.2.2)) /
      (1 + (P.val.val.1 / (1 + P.val.val.2.2)) ^ 2) = P.val.val.1
    rw [hden]
    field_simp [hd]
  · apply Prod.ext
    · exact hy.symm
    · change (1 - (P.val.val.1 / (1 + P.val.val.2.2)) ^ 2) /
        (1 + (P.val.val.1 / (1 + P.val.val.2.2)) ^ 2) = P.val.val.2.2
      rw [hden]
      field_simp [hd]
      nlinarith [hs]

/-- The rational source is embedded coordinatewise, with no relabelling. -/
theorem realSphereCoordinates_rat (t : ℚ) :
    realSphereCoordinates (t : ℝ) =
      (((spherePoint t).1 : ℝ), ((spherePoint t).2.1 : ℝ),
        ((spherePoint t).2.2 : ℝ)) := by
  simp [realSphereCoordinates, spherePoint]

theorem continuous_realSpherePoint : Continuous realSpherePoint := by
  change Continuous (fun t : ℝ =>
    (⟨realSphereCoordinates t, realSphereCoordinates_on_sphere t⟩ : RealSphere))
  apply Continuous.subtype_mk
  unfold realSphereCoordinates
  exact ((continuous_const.mul continuous_id).div
    (continuous_const.add (continuous_id.pow 2)) real_denominator_ne_zero).prodMk
      (continuous_const.prodMk
        ((continuous_const.sub (continuous_id.pow 2)).div
          (continuous_const.add (continuous_id.pow 2)) real_denominator_ne_zero))

theorem continuous_realMeridianPoint : Continuous realMeridianPoint :=
  continuous_realSpherePoint.subtype_mk _

theorem continuous_realChart : Continuous realChart := by
  have hc : Continuous (fun P : SouthChart => P.val.val) :=
    continuous_subtype_val.comp continuous_subtype_val
  exact hc.fst.div (continuous_const.add hc.snd.snd) (fun P => P.property)

theorem realMeridianPoint_isEmbedding :
    _root_.Topology.IsEmbedding realMeridianPoint :=
  Function.LeftInverse.isEmbedding realChart_realMeridianPoint
    continuous_realChart continuous_realMeridianPoint

/-- Topological embedding into S² itself, not merely into a coordinate type. -/
theorem realSpherePoint_isEmbedding :
    _root_.Topology.IsEmbedding realSpherePoint :=
  (_root_.Topology.IsEmbedding.subtypeVal.comp realMeridianPoint_isEmbedding)

/-- Signed chart displacement; this is not round geodesic distance. -/
noncomputable def realDisplacement (P Q : SouthChart) : ℝ := realChart Q - realChart P

@[simp] theorem realDisplacement_meridian (s t : ℝ) :
    realDisplacement (realMeridianPoint s) (realMeridianPoint t) = t - s := by
  simp [realDisplacement]

/-- Exact return to the same ordered PrimePair used by the Hopf consumer. -/
theorem realDisplacement_source_gap (pair : PrimePair) :
    realDisplacement (realMeridianPoint pair.p) (realMeridianPoint pair.q) =
      (gap pair : ℝ) := by
  rw [realDisplacement_meridian]
  exact (Nat.cast_sub (R := ℝ) (le_of_lt pair.ordered)).symm

theorem realDisplacement_eq_rational (p q : ℕ) :
    realDisplacement (realMeridianPoint p) (realMeridianPoint q) =
      (displacement (primePoint p) (primePoint q) : ℝ) := by
  rw [realDisplacement_meridian, displacement_prime]
  push_cast
  rfl

/-! ### A faithfully labelled offset/degree packet -/

/-- Exactly the prime-pattern source's common spherical anchor and
its indexed offset inventory; the integers are prospective Chern DEGREES,
not yet formalized complex line bundles. -/
def patternSphereSignature {m : ℕ}
    (c : PostZhang.PrimeOccurrence m) :
    SphereCoordinates × (Fin (m + 1) → ℕ) :=
  (primePoint c.start, c.pattern.offsets)

/-- No prime anchor or offset is lost in the spherical signature. -/
theorem patternSphereSignature_source_return {m : ℕ}
    (a b : PostZhang.PrimeOccurrence m)
    (h : patternSphereSignature a = patternSphereSignature b) :
    a.start = b.start ∧
      (∀ i : Fin (m + 1), a.pattern.offsets i = b.pattern.offsets i) := by
  constructor
  · apply primePoint_injective
    exact congrArg Prod.fst h
  · intro i
    have hf := congrArg Prod.snd h
    exact congrArg (fun f : Fin (m + 1) → ℕ => f i) hf

/-- Pairwise Chern-number prediction, conditional on using the standard
positive Hopf generator in the actual sphere bundle construction. -/
def relativeDegree (m : ℕ) (a : PostZhang.OffsetPattern m)
    (i j : Fin (m + 1)) : ℤ :=
  (a.offsets j : ℤ) - (a.offsets i : ℤ)

theorem relativeDegree_additive (m : ℕ)
    (a : PostZhang.OffsetPattern m)
    (i j k : Fin (m + 1)) :
    relativeDegree m a i k =
      relativeDegree m a i j + relativeDegree m a j k := by
  unfold relativeDegree
  ring

theorem relativeDegree_eq_sourceSignedGap (m : ℕ)
    (a : PostZhang.OffsetPattern m)
    (i j : Fin (m + 1)) :
    relativeDegree m a i j = PostZhang.signedGap m a i j := rfl

/-- Ordered pairwise degree is precisely the (nonnegative) arithmetic
gap assigned as linking-number data by the constructed link recipe. -/
theorem relativeDegree_ordered (m : ℕ)
    (a : PostZhang.OffsetPattern m)
    (i j : Fin (m + 1)) (hij : i < j) :
    relativeDegree m a i j =
      ((a.offsets j - a.offsets i : ℕ) : ℤ) := by
  have hle : a.offsets i ≤ a.offsets j :=
    le_of_lt (a.strictlyIncreasing hij)
  unfold relativeDegree
  exact (Nat.cast_sub hle).symm

/-- Concrete test of the spherical displacement for the known prime pair. -/
theorem example_eleven_thirteen :
    displacement (primePoint 11) (primePoint 13) = 2 := by
  norm_num [displacement, primePoint, chart, spherePoint]

end SphericalPrimeDisplacement
end GRWTSK.Topology.GeometricTopology.PrimeLinkGeometrization
