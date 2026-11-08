/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source candidate / independent review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticExactTorsionFrobeniusClasses
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticFiniteFieldTorsionRHReturn
import Mathlib

/-!
# Exact elliptic torsion classes, all extension-field Hasse bounds and RH

The existing sources are preserved without shadow targets:
* `TorsionFrobeniusSpin.TorsionLevel W n` contains all original n-kernel
  points on the native Mathlib Weierstrass group.
* `FiniteEulerWindow.frobeniusTrace q N` and `extensionTrace q N k`
  are the original finite count-derived trace and power recurrence.
* `FiniteFieldTorsionRH.EllipticSpectrum q N` supplies actual complex
  roots with trace, determinant and *Hasse* discriminant certificate.
* `FiniteFieldTorsionRH.ExtensionCountSource q N counts` is the separate
  required identification of all extension point counts with that trace.
* `FiniteFieldVerticalCertificates.fieldParameter` is the unchanged
  finite-field q^{-s} coordinate, not the classical Riemann zeta variable.

This increment proves a useful NEW consuming inequality at ALL k:

  |#E(F_(q^k))-(q^k+1)| <= 2*(sqrt(q))^k

provided `ExtensionCountSource` identifies `counts` with the original
Frobenius power-sum recurrence. The proof is elementary: absolute value
of a trace is bounded by the sum of the norms of the two roots, each
of norm sqrt(q) by Hasse. This returns to the original genus-one
Hasse-Weil bound at every extension degree. There is no claim to have
proved geometric Hasse or the extension-count source identification.

For *every exact order* n and every k>0, the same supplied Frobenius
AddEquiv preserves the exact class, its source characteristic equation,
the signed magnetic energy is positive on finite classes, and every
zero of the matching extension numerator lies on the finite-field
critical line. These are distinct conjuncts consuming distinct fields;
positive spin heat is NOT used as a substitute for Hasse or purity.

This mathematical statement is the classical RH for genus-one curves
when the actual geometric Frobenius, Hasse and point-count comparison
are supplied. It neither implies Riemann zeta RH nor Dirichlet GRH.
Characteristic-p nonreduced group schemes are not represented by a
geometric-point exact-order subtype. Source group-structure classification
and the count-to-zeta generating-series proof are additional obligations.

Mathematical source: Silverman, *The Arithmetic of Elliptic Curves*,
second edition, Chapter V §2 (Frobenius and Hasse); Weil's theorem for
curves. Existing local source read at grwtsk/math@859cb74d7b56cd6c744aab5e449ec09b906f862e,
with `EllipticFiniteFieldTorsionRHReturn.lean` blob
8566095de2626564ef367f23949604672088fbe4. All Lean checking
and independent analytic review NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionRHReturn

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionFrobenius
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH
open GRWTSK.NumberTheory.WeilCertificates

/-- The original integer Frobenius trace over extension degree k is
bounded by the norms of the two actual certified complex eigenvalues. -/
theorem extensionTrace_abs_le_of_spectrum {q N : ℕ}
    (D : EllipticSpectrum q N) (k : ℕ) :
    |(extensionTrace q N k : ℝ)| ≤
      2 * (Real.sqrt (q : ℝ)) ^ k := by
  have hnorm : ‖(extensionTrace q N k : ℂ)‖ ≤
      2 * (Real.sqrt (q : ℝ)) ^ k := by
    calc
      ‖(extensionTrace q N k : ℂ)‖ = ‖D.alpha ^ k + D.beta ^ k‖ :=
        congrArg norm (D.trace_power k)
      _ ≤ ‖D.alpha ^ k‖ + ‖D.beta ^ k‖ := norm_add_le _ _
      _ = 2 * (Real.sqrt (q : ℝ)) ^ k := by
        rw [norm_pow, norm_pow, D.alpha_pure, D.beta_pure]
        ring
  simpa only [Complex.norm_intCast] using hnorm

/-- Same real positive root normalization as the extension numerator;
this elementary fact is proved here because the earlier helper was private. -/
private theorem sqrt_pow_nonneg (q : ℝ) (hq : 0 ≤ q) (k : ℕ) :
    Real.sqrt (q ^ k) = Real.sqrt q ^ k := by
  have hp : 0 ≤ Real.sqrt q ^ k := pow_nonneg (Real.sqrt_nonneg _) _
  have hs : (Real.sqrt q ^ k) ^ 2 = q ^ k := by
    calc
      (Real.sqrt q ^ k) ^ 2 = (Real.sqrt q ^ 2) ^ k := by
        rw [← pow_mul, ← pow_mul, Nat.mul_comm]
      _ = q ^ k := by rw [Real.sq_sqrt hq]
  calc
    Real.sqrt (q ^ k) = Real.sqrt ((Real.sqrt q ^ k) ^ 2) := by rw [hs]
    _ = |Real.sqrt q ^ k| := Real.sqrt_sq_eq_abs _
    _ = Real.sqrt q ^ k := abs_of_nonneg hp

/-- Extend the source Hasse inequality from F_q to EVERY F_(q^k),
provided the point counts are the actual Frobenius fixed-point counts.
`ExtensionCountSource` is a nontrivial geometric source requirement. -/
theorem extensionCount_hasse_of_source {q N : ℕ}
    (D : EllipticSpectrum q N)
    (counts : ℕ → ℕ) (hcounts : ExtensionCountSource q N counts)
    (k : ℕ) (hk : 0 < k) :
    |(counts k : ℝ) - ((q : ℝ) ^ k + 1)| ≤
      2 * Real.sqrt ((q : ℝ) ^ k) := by
  have hc : (counts k : ℝ) = (q : ℝ) ^ k + 1 -
      (extensionTrace q N k : ℝ) := by
    exact_mod_cast (hcounts k hk)
  have hd : (counts k : ℝ) - ((q : ℝ) ^ k + 1) =
      -(extensionTrace q N k : ℝ) := by
    rw [hc]
    ring
  calc
    |(counts k : ℝ) - ((q : ℝ) ^ k + 1)| =
        |(extensionTrace q N k : ℝ)| := by rw [hd, abs_neg]
    _ ≤ 2 * (Real.sqrt (q : ℝ)) ^ k :=
      extensionTrace_abs_le_of_spectrum D k
    _ = 2 * Real.sqrt ((q : ℝ) ^ k) := by
      rw [sqrt_pow_nonneg (q : ℝ) (by positivity) k]

/-- Both the exact positive order and the original group-characteristic
identity survive the source-identified Frobenius map on the actual point.
This does not prove that a supplied AddEquiv equals geometric Frobenius. -/
theorem characteristic_on_exact_class
    {F : Type*} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
    {q N : ℕ} (S : FrobeniusTorsionSource W q N)
    (n : ℕ) (P : ExactClass W n) :
    ExactOrder W n (S.action P.1) ∧
      (S.action (S.action P.1) -
        (frobeniusTrace q N : ℤ) • S.action P.1 +
        (q : ℤ) • P.1 = 0) := by
  exact ⟨(exactOrder_map_iff W S.action n P.1).mpr P.2,
    S.characteristic P.1⟩

/-- The joint *source-preserving* return. The two independently required
sources are (i) Hasse/Frobenius purity and (ii) extension fixed-point
counts. The conclusion is at every exact torsion order n and every k>0.
Neither spin positivity nor a torsion permutation supplies those inputs. -/
theorem all_exact_classes_and_extension_RH
    {F : Type*} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
    {q N : ℕ} (S : FrobeniusTorsionSource W q N)
    (hq : 1 < q) (counts : ℕ → ℕ)
    (hcounts : ExtensionCountSource q N counts)
    (n k : ℕ) (hk : 0 < k) (P : ExactClass W n) :
    ExactOrder W n (S.action P.1) ∧
    |(counts k : ℝ) - ((q : ℝ) ^ k + 1)| ≤
      2 * Real.sqrt ((q : ℝ) ^ k) ∧
    (∀ s : ℂ,
      extensionNumerator q N k (fieldParameter ((q : ℝ) ^ k) s) = 0 →
      s.re = 1 / 2) := by
  refine ⟨(exactOrder_map_iff W S.action n P.1).mpr P.2,
    extensionCount_hasse_of_source S.spectrum counts hcounts k hk, ?_⟩
  intro s hz
  exact S.spectrum.extension_critical_line hq k hk hz

/-- On a finite exact order fiber the source's positive spin form is a
separate conjunct of the SAME complete return. The source RH conclusion
still consumes Hasse and all geometric trace comparisons. -/
theorem all_exact_classes_spin_and_extension_RH
    {F : Type*} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
    {q N n : ℕ} [Fintype (ExactClass W n)]
    (S : FrobeniusTorsionSource W q N) (hq : 1 < q)
    (counts : ℕ → ℕ) (hcounts : ExtensionCountSource q N counts)
    (k : ℕ) (hk : 0 < k) (P : ExactClass W n)
    (phase f : ExactClass W n → ℂ) :
    0 ≤ exactMagneticForm W (n := n) S.action phase f ∧
    ExactOrder W n (S.action P.1) ∧
    |(counts k : ℝ) - ((q : ℝ) ^ k + 1)| ≤
      2 * Real.sqrt ((q : ℝ) ^ k) ∧
    (∀ s : ℂ,
      extensionNumerator q N k (fieldParameter ((q : ℝ) ^ k) s) = 0 →
      s.re = 1 / 2) := by
  refine ⟨exactMagneticForm_nonneg W (n := n) S.action phase f, ?_⟩
  exact all_exact_classes_and_extension_RH W S hq counts hcounts n k hk P

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionRHReturn
