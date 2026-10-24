# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleResidueAccounting

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba22b0eb9b79e107675cf0940bd1fcb87f6a80f1` · SHA-256 `56d18bcbd5ea7e80f0ccc7545d77fddc06d57758e496f8e3d7f8823e9913b50d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCauchyGoursat
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalLogarithmicResidues
import GRWTSK.NumberTheory.Zeta.Riemann.TrivialZeroResidues
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Source-correct residue accounting for the admissible zeta rectangle

The admissible rectangle contains three disjoint classes of singularities of the
actual zeta logarithmic derivative:

* canonical nontrivial zeros, with their actual analytic multiplicities;
* the first `N` negative-even zeros, each proved simple;
* the pole at one, with logarithmic-derivative coefficient `-1`.

This file records the local scaled limits, forms the complete finite principal
part, and proves that the sum of its coefficients is exactly

  heightCount(contourHeight N) + N - 1.

It also splits the remaining global argument-principle task into two explicit
interfaces:

1. a regularization certificate, whose regular function agrees with
   `logDeriv zeta - principalPart` at every nonsingular rectangle point and
   carries the resulting four-edge decomposition;
2. a purely geometric winding certificate for the fixed finite principal part.

Cauchy-Goursat then removes the regular remainder and yields the exact rectangle
index. Neither interface is constructed here; no contour theorem, numerical
enclosure, exact count, RH result, or prime theorem is claimed.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleResidueAccounting

open Filter Set
open scoped Topology BigOperators
open CanonicalZeroDivisor
open AdmissibleRectangles
open CanonicalLogarithmicResidues
open TrivialZeroResidues
open CanonicalRectangleCountIsolation
open CanonicalRectangleCauchyGoursat

noncomputable section

/-- The actual logarithmic derivative has canonical analytic multiplicity as its
scaled coefficient at every nontrivial zero. -/
theorem nontrivial_logDeriv_scaled_limit (z : ZeroPoint) :
    Tendsto (fun s => (s - z.1) * logDeriv riemannZeta s)
      (𝓝[≠] z.1) (𝓝 (multiplicity z : ℂ)) := by
  simpa only [mul_neg, neg_neg] using
    (canonical_zero_scaled_limit z).neg

/-- Every enclosed negative-even point has logarithmic-derivative coefficient one. -/
theorem trivial_logDeriv_scaled_limit (k : ℕ) :
    Tendsto (fun s => (s - trivialPoint k) * logDeriv riemannZeta s)
      (𝓝[≠] (trivialPoint k)) (𝓝 1) := by
  simpa only [mul_neg, neg_neg] using
    (trivialPoint_scaled_limit k).neg

/-- The pole at one contributes coefficient minus one to `zeta'/zeta`. -/
theorem pole_logDeriv_scaled_limit :
    Tendsto (fun s => (s - 1) * logDeriv riemannZeta s)
      (𝓝[≠] (1 : ℂ)) (𝓝 (-1)) := by
  simpa only [mul_neg, neg_neg] using zeta_pole_scaled_limit.neg

/-- Sum of the nontrivial-zero principal parts in the maintained complete head. -/
def nontrivialPrincipalPart (N : ℕ) (s : ℂ) : ℂ :=
  ∑ z ∈ heightHead (contourHeight N),
    (multiplicity z : ℂ) / (s - z.1)

/-- Sum of the simple negative-even principal parts enclosed by the left edge. -/
def trivialPrincipalPart (N : ℕ) (s : ℂ) : ℂ :=
  ∑ k ∈ Finset.range N, (s - trivialPoint k)⁻¹

/-- Principal part of the simple pole at one. -/
def polePrincipalPart (s : ℂ) : ℂ :=
  -(s - 1)⁻¹

/-- Complete finite principal part for every interior singularity. -/
def rectanglePrincipalPart (N : ℕ) (s : ℂ) : ℂ :=
  nontrivialPrincipalPart N s + trivialPrincipalPart N s + polePrincipalPart s

/-- Sum of the canonical nontrivial logarithmic residues. -/
def nontrivialResidueMass (N : ℕ) : ℂ :=
  ∑ z ∈ heightHead (contourHeight N), (multiplicity z : ℂ)

/-- Sum of the enclosed simple trivial-zero residues. -/
def trivialResidueMass (N : ℕ) : ℂ :=
  ∑ _k ∈ Finset.range N, (1 : ℂ)

/-- Complete finite residue mass, including the pole with coefficient `-1`. -/
def rectangleResidueMass (N : ℕ) : ℂ :=
  nontrivialResidueMass N + trivialResidueMass N - 1

@[simp] theorem nontrivialResidueMass_eq_heightCount (N : ℕ) :
    nontrivialResidueMass N =
      (heightCount (contourHeight N) : ℂ) := by
  simp [nontrivialResidueMass, heightCount]

@[simp] theorem trivialResidueMass_eq_nat (N : ℕ) :
    trivialResidueMass N = (N : ℂ) := by
  simp [trivialResidueMass]

/-- The local coefficients reproduce the exact pole/trivial/nontrivial target
used by the rectangle count adapter. -/
theorem rectangleResidueMass_eq_expected (N : ℕ) :
    rectangleResidueMass N = (expectedRectangleIndex N : ℂ) := by
  rw [rectangleResidueMass, nontrivialResidueMass_eq_heightCount,
    trivialResidueMass_eq_nat]
  unfold expectedRectangleIndex
  push_cast
  ring

/-- Global analytic regularization obligation.

The punctured agreement prevents an arbitrary analytic function or an asserted
count equality from being used as the remainder. `boundary_decomposition` is the
remaining finite interval-integral algebra needed to pass that pointwise source
identity to the committed four-edge functional. -/
structure RectangleRegularizationCertificate (N : ℕ) where
  regular : ℂ → ℂ
  continuous : ContinuousOn regular (closedRectangle N)
  differentiable : DifferentiableOn ℂ regular (openRectangle N)
  punctured_agreement : ∀ s ∈ closedRectangle N, s ∉ singularHead N →
    logDeriv riemannZeta s = regular s + rectanglePrincipalPart N s
  boundary_decomposition :
    rectangleLogDerivativeIntegral N =
      rectangleBoundaryIntegral N regular +
        rectangleBoundaryIntegral N (rectanglePrincipalPart N)

/-- Pure winding obligation for the already source-determined finite principal
part. Its coefficients cannot be altered by the certificate. -/
structure RectanglePrincipalPartWindingCertificate (N : ℕ) where
  principal_part_integral :
    rectangleBoundaryIntegral N (rectanglePrincipalPart N) =
      (2 * (Real.pi : ℂ) * Complex.I) * rectangleResidueMass N

namespace RectangleRegularizationCertificate

/-- Cauchy-Goursat removes the analytic regular remainder. -/
theorem regular_boundary_integral_eq_zero {N : ℕ}
    (certificate : RectangleRegularizationCertificate N) :
    rectangleBoundaryIntegral N certificate.regular = 0 :=
  rectangleBoundaryIntegral_eq_zero N certificate.regular
    certificate.continuous certificate.differentiable

/-- Regularization plus pure winding gives the unnormalized argument-principle
identity without inserting an external count. -/
theorem rectangle_integral_eq_residue_mass {N : ℕ}
    (certificate : RectangleRegularizationCertificate N)
    (winding : RectanglePrincipalPartWindingCertificate N) :
    rectangleLogDerivativeIntegral N =
      (2 * (Real.pi : ℂ) * Complex.I) * rectangleResidueMass N := by
  rw [certificate.boundary_decomposition,
    certificate.regular_boundary_integral_eq_zero, zero_add,
    winding.principal_part_integral]

/-- Exact normalized rectangle index, with all local coefficients already fixed
by the actual zeta source. -/
theorem normalizedRectangleIndex_eq_expected {N : ℕ}
    (certificate : RectangleRegularizationCertificate N)
    (winding : RectanglePrincipalPartWindingCertificate N) :
    normalizedRectangleIndex N = (expectedRectangleIndex N : ℂ) := by
  have hraw := certificate.rectangle_integral_eq_residue_mass winding
  unfold normalizedRectangleIndex
  rw [hraw, rectangleResidueMass_eq_expected]
  have hnonzero : 2 * (Real.pi : ℂ) * Complex.I ≠ 0 := by
    simp [Real.pi_ne_zero, Complex.I_ne_zero]
  calc
    (2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        ((2 * (Real.pi : ℂ) * Complex.I) *
          (expectedRectangleIndex N : ℂ)) =
      ((2 * (Real.pi : ℂ) * Complex.I)⁻¹ *
        (2 * (Real.pi : ℂ) * Complex.I)) *
          (expectedRectangleIndex N : ℂ) := by ring
    _ = (expectedRectangleIndex N : ℂ) := by
      rw [inv_mul_cancel₀ hnonzero, one_mul]

/-- Construct the previous rectangle-index report from the narrower analytic
regularization and winding obligations plus a rational enclosure of the exact
source target. -/
noncomputable def toCanonicalRectangleIndexEnclosure {N : ℕ}
    (certificate : RectangleRegularizationCertificate N)
    (winding : RectanglePrincipalPartWindingCertificate N)
    (interval : RationalPositiveHeightCountIsolation.RationalCountInterval)
    (containsExpected : interval.Contains (expectedRectangleIndex N)) :
    CanonicalRectangleIndexEnclosure N where
  interval := interval
  argument_principle := certificate.normalizedRectangleIndex_eq_expected winding
  contains_index := by
    rw [certificate.normalizedRectangleIndex_eq_expected winding]
    simpa using containsExpected

end RectangleRegularizationCertificate

/-- Omitting one simple trivial zero changes the residue mass by exactly one. -/
theorem omitted_trivial_residue_fixture (m : ℂ) (N : ℕ) :
    m + (N : ℂ) - 1 - (m + ((N + 1 : ℕ) : ℂ) - 1) = -1 := by
  push_cast
  ring

/-- Omitting the pole changes the residue mass by exactly one, not by a
half-unit; the half-unit appears only after the later two-sign division. -/
theorem omitted_pole_residue_fixture (m : ℂ) (N : ℕ) :
    (m + (N : ℂ)) - (m + (N : ℂ) - 1) = 1 := by
  ring

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleResidueAccounting
```
