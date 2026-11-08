/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source proof candidate / independent mathematical review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticGenuineGeometricFrobenius
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticNativeAffineHassePort
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticHasseSpectrumFromCount
import Mathlib

/-!
# Actual geometric Frobenius fixed loci and the original all-extension count source

Read the math/source objects as a TWO-step implication with no coercion:

   q-power coordinate automorphism of AlgebraicClosure K
        -> actual geometric point fixed locus Fix(Phi_q^k)
        -> E(F_(q^k)) by the fixed-field/point comparison
        -> count equality with q^k + 1 - extensionTrace(q,N,k)
        -> original `ExtensionCountSource q N counts`
        -> existing genus-one finite-field RH return under authentic Hasse.

The first arrow is the concrete native `geometricPointFrobeniusPower` of
EllipticGenuineGeometricFrobenius; it is NOT a supplied arbitrary AddEquiv.
The second is the standard finite-field fixed-field theorem, with a
written proof in that module; its full Lean dependent-field/cardinality
and native point-equivalence realization is recorded as a source port
below, not silently supplied as evidence. The third requires the
elliptic isogeny degree/trace identity, which is INDEPENDENT of Hasse.

MATHEMATICAL proof of the all-k trace identity:
Write pi for q-power Frobenius on E over Fbar_q. A point is in
E(F_(q^k)) iff pi^k(P)=P, including infinity. The separable isogeny
1-pi^k has derivative 1 (since derivative of pi is zero), and hence
#Fix(pi^k)=deg(1-pi^k). In End(E), the dual of pi has pi*V=[q],
pi+V=[a_q], a_q=q+1-#E(F_q), and the quadratic relation
pi^2-[a_q]pi+[q]=0. The degree quadratic and its reduced trace
therefore imply
  deg(1-pi^k)=1+q^k-tr(pi^k).
With t_0=2,t_1=a_q and t_(k+2)=a_q*t_(k+1)-q*t_k, this trace is
EXACTLY the original source `FiniteEulerWindow.extensionTrace q N k`.
This yields `ExtensionCountSource` for counts from the actual extension
fields. The group-isogeny/degree statements are established classical
elliptic geometry (Silverman V.2.3--V.2.4), but the complete Lean replay
of the source-specific degree comparison is NOT implemented here.

The precise point-cardinality and degree leaves are stored in the type
of the consuming theorems below. No finite positive spin form and no
Markov mass law is substituted for them. Their formal status is an
unresolved provider bridge, even though the above mathematical
argument is standard and complete assuming standard elliptic isogeny
geometry. Upstream Hasse is an *independent* geometric theorem.

The all-k return uses the ACTUAL original
`FiniteFieldTorsionRH.ExtensionCountSource`, not a renaming. The local
numerator still uses the original `fieldParameter ((q:Real)^k) s`.
No RH for the Riemann zeta function, Dirichlet GRH or BSD is claimed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GeometricFixedPointReturn

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GenuineGeometricFrobenius
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.HasseSpectrumFromCount
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.NativeAffineHasse
open GRWTSK.NumberTheory.WeilCertificates

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]
variable (W : WeierstrassCurve K) [W.toAffine.IsElliptic]
variable [(W.baseChange (Closure K)).toAffine.IsElliptic]

/-- A source-native family of *actual q-power geometric fixed-point counts*.
    There is no arbitrary graph or Turing-machine data in this definition. -/
def geometricFixedCounts (k : ℕ) : ℕ :=
  Nat.card (GeometricFixedFiber W k)

/-- Explicit original source comparison: q^k-degree formula for the true
    fixed points, including the point at infinity and all multiplicities.
    It is NOT implied by the q-Frobenius field map alone. -/
def FrobeniusDegreeReturn (q N : ℕ) : Prop :=
  ∀ k : ℕ, 0 < k →
    (geometricFixedCounts W k : ℤ) =
      (q : ℤ) ^ k + 1 - extensionTrace q N k

/-- The complete source-level theorem: a degree theorem about the real
    geometric Frobenius fixed points supplies the original all-extension
    arithmetic count specification without any choice of fake eigenvalues. -/
theorem originalExtensionCountSource_of_degree (q N : ℕ)
    (hdegree : FrobeniusDegreeReturn W q N) :
    ExtensionCountSource q N (geometricFixedCounts W) := by
  intro k hk
  exact hdegree k hk

/-- On one actual finite extension, the source point carrier is
    Mathlib's genuine Weierstrass affine-or-infinity group.
    The equivalence must match the literal coordinate-induced field map;
    a bijection with the right cardinality is insufficient. -/
structure FixedPointComparison (M : Type*) [Field M] [Fintype M]
    [Algebra K M] (k : ℕ) where
  field : ExtensionFixedFieldSource (K := K) M k
  toFixed : (W.baseChange M).toAffine.Point ≃ GeometricFixedFiber W k
  source_map : ∀ P : (W.baseChange M).toAffine.Point,
    (toFixed P).1 =
      WeierstrassCurve.Affine.Point.map field.embedding P

/-- A genuine point equivalence gives the exact fixed-point inventory
    count; no distinct points or orders are collapsed. -/
theorem fixed_card_eq_native_extension
    (M : Type*) [Field M] [Fintype M] [Algebra K M]
    (k : ℕ) (S : FixedPointComparison W M k) :
    Nat.card (GeometricFixedFiber W k) =
      Nat.card ((W.baseChange M).toAffine.Point) :=
  (Nat.card_congr S.toFixed).symm

/-- A whole extension family may be supplied as actual finite fields and
    point comparisons. At each k the count is the full native point set
    (not the finite n-torsion class at any fixed n). -/
def ActualExtensionCountComparison (counts : ℕ → ℕ) : Prop :=
  ∀ k : ℕ, 0 < k → counts k = geometricFixedCounts W k

/-- EXACT original `ExtensionCountSource`: its first leaf is the true
    extension/Frobenius fixed-point comparison, its second the genuine
    isogeny degree identity. Neither can be replaced with a spin-energy
    or stochastic-mass positivity statement. -/
theorem extensionCountSource_of_geometric_comparisons
    (q N : ℕ) (counts : ℕ → ℕ)
    (hfixed : ActualExtensionCountComparison W counts)
    (hdegree : FrobeniusDegreeReturn W q N) :
    ExtensionCountSource q N counts := by
  intro k hk
  rw [hfixed k hk]
  exact hdegree k hk

/-- Combine actual elliptic fixed counts, the independent Hasse input,
    and the original all-extension genus-one RH consumer. -/
theorem allExtensionRH_of_geometric_comparisons
    (q N : ℕ) (hq : 1 < q)
    (hsize : q = Fintype.card K)
    (hnativeCount : N = Nat.card W.toAffine.Point)
    (hhasse : RawPointCountBound q N)
    (counts : ℕ → ℕ)
    (hfixed : ActualExtensionCountComparison W counts)
    (hdegree : FrobeniusDegreeReturn W q N)
    (k : ℕ) (hk : 0 < k) :
    |(counts k : ℝ) - ((q : ℝ) ^ k + 1)| ≤
      2 * Real.sqrt ((q : ℝ) ^ k) ∧
    (∀ s : ℂ,
      extensionNumerator q N k (fieldParameter ((q : ℝ) ^ k) s) = 0 →
      s.re = 1 / 2) := by
  -- The authentic q and N are retained as explicit source-identification
  -- premises; they are not consequences of the analytic RH consumer.
  have _ := hsize
  have _ := hnativeCount
  exact extension_bounds_and_RH_of_raw_hasse q N hq hhasse counts
    (extensionCountSource_of_geometric_comparisons W q N counts hfixed hdegree)
    k hk

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GeometricFixedPointReturn
