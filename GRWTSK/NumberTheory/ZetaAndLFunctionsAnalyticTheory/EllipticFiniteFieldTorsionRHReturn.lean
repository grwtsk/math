/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source drafting; independent review NOT_RUN.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticTorsionFrobeniusSpinControl
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticFiniteEulerWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.FiniteFieldVerticalCertificates
import Mathlib

/-!
# Elliptic finite-field RH: count-derived Frobenius factors and all torsion levels

The original finite-field vertical theorem is
`WeilCertificates.finite_factor_critical_line`. The original elliptic
arithmetic source is `FiniteEulerWindow.frobeniusTrace` and its *unchanged*
`extensionTrace` recurrence. The numerator is the exact degree-two
  1 - a_q T + q T^2,     a_q = q+1-#E(F_q),
not an arbitrary Gauss-sum product or a classical zeta/Dirichlet factor.

Hasse's theorem is established classical mathematics: the geometric degree
quadratic deg([m]-[n]Frob) is nonnegative, its discriminant is nonpositive,
|a_q| <= 2 sqrt(q), and both Frobenius eigenvalues have modulus sqrt(q).
The *native Lean geometry-to-Hasse proof is not in this file*. The actual
point count and Hasse inequality are inputs to `EllipticSpectrum`, and the
Frobenius eigenvalue sum/product are checked source data. A theorem that
merely accepts those inputs is NOT an unconditional new Lean proof of
Hasse's theorem.

Once the authentic count, trace, determinant and Hasse inequality are
supplied, this file proves the algebraic consequence WITHOUT assuming
spectral purity as a field: each root of X^2-aX+q has modulus sqrt(q).
It then reuses the repository's *original* finite-field critical-line
consumer and its all-height residual family. A recurrence comparison
returns extensionTrace(q,N,k)=alpha^k+beta^k for every k>=0 and
therefore each extension numerator to its own finite factor.

The separate TorsionFrobeniusSpin source treats EVERY n>0, including
levels divisible by characteristic, as geometric point n-kernels. Its
supplied additive-equivalence action must be proved to be the genuine
arithmetic Frobenius on the chosen geometric curve. This file records
the universal endomorphism characteristic identity as a separate port;
merely seeing a torsion orbit or a positive spin heat does not prove it.
For p-torsion, the nonreduced group-scheme information is not recovered by
geometric points alone. A prime-to-p etale Tate-module identification is
another separate step.

Sources: J. H. Silverman, The Arithmetic of Elliptic Curves, 2nd ed.,
Chapter V, Theorems 2.3 and 2.4 (finite-field Frobenius and curve zeta);
A. Weil, 1948 (RH for curves over finite fields). No part of this source
asserts classical zeta RH, Dirichlet GRH, BSD or an analytic Weil-form sign.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteEulerWindow
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionFrobeniusSpin
open GRWTSK.Analysis.GeometricProduct
open GRWTSK.NumberTheory.WeilCertificates

/-- The elementary degree-form deduction of Hasse's discriminant bound.
The *geometric* proof that deg([m]-[n]Frob) gives the stated real form
is not provided by arbitrary Markov/spin positivity. -/
theorem trace_bound_of_degree_form (trace q : ℝ)
    (hform : ∀ x : ℝ, 0 ≤ x ^ 2 - trace * x + q) :
    trace ^ 2 ≤ 4 * q := by
  have h := hform (trace / 2)
  nlinarith

/-- Algebraic heart of elliptic purity. No root distribution or zeta
hypothesis is assumed: the only spectral source is the Hasse inequality. -/
theorem quadratic_root_norm_of_hasse (q trace : ℝ) (hq : 0 ≤ q)
    (hhasse : trace ^ 2 ≤ 4 * q) (z : ℂ)
    (hz : z ^ 2 - (trace : ℂ) * z + (q : ℂ) = 0) :
    ‖z‖ = Real.sqrt q := by
  have hr : z.re ^ 2 - z.im ^ 2 - trace * z.re + q = 0 := by
    have h := congrArg Complex.re hz
    simp only [pow_two, Complex.add_re, Complex.sub_re,
      Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im] at h
    nlinarith
  have hi : (2 * z.re - trace) * z.im = 0 := by
    have h := congrArg Complex.im hz
    simp only [pow_two, Complex.add_im, Complex.sub_im,
      Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im] at h
    nlinarith
  have hnorm : z.re ^ 2 + z.im ^ 2 = q := by
    rcases mul_eq_zero.mp hi with hx | hy
    · nlinarith [hr, hx]
    · have hsq : (2 * z.re - trace) ^ 2 ≤ 0 := by
        nlinarith [hr, hy, hhasse]
      have hx : 2 * z.re = trace := by
        nlinarith [sq_nonneg (2 * z.re - trace), hsq]
      nlinarith [hr, hy, hx]
  calc
    ‖z‖ = Real.sqrt (Complex.normSq z) := Complex.norm_def z
    _ = Real.sqrt q := by
      congr 1
      rw [Complex.normSq_apply]
      nlinarith [hnorm]

/-- Source-exact coefficient packet. Hasse is a genuine *input theorem*
and not secretly constructed from nonnegative spin heat. -/
structure EllipticSpectrum (q pointCount : ℕ) where
  alpha : ℂ
  beta : ℂ
  trace_eq : alpha + beta = (frobeniusTrace q pointCount : ℂ)
  determinant_eq : alpha * beta = (q : ℂ)
  hasse : (frobeniusTrace q pointCount : ℝ) ^ 2 ≤ 4 * (q : ℝ)

/-- Each actual trace/determinant root is pure as a consequence of the
Hasse bound; root norms are not stored as unverified data fields. -/
theorem EllipticSpectrum.alpha_pure {q N : ℕ} (D : EllipticSpectrum q N) :
    ‖D.alpha‖ = Real.sqrt (q : ℝ) := by
  apply quadratic_root_norm_of_hasse (q : ℝ) (frobeniusTrace q N : ℝ)
    (by positivity) D.hasse
  change D.alpha ^ 2 - (frobeniusTrace q N : ℂ) * D.alpha +
    (q : ℂ) = 0
  rw [← D.trace_eq, ← D.determinant_eq]
  ring

theorem EllipticSpectrum.beta_pure {q N : ℕ} (D : EllipticSpectrum q N) :
    ‖D.beta‖ = Real.sqrt (q : ℝ) := by
  apply quadratic_root_norm_of_hasse (q : ℝ) (frobeniusTrace q N : ℝ)
    (by positivity) D.hasse
  change D.beta ^ 2 - (frobeniusTrace q N : ℂ) * D.beta +
    (q : ℂ) = 0
  rw [← D.trace_eq, ← D.determinant_eq]
  ring

/-- The original count-derived elliptic reciprocal polynomial with
complex variable. This is the complex lift of `goodReciprocal`. -/
def localNumerator (q pointCount : ℕ) (z : ℂ) : ℂ :=
  1 - (frobeniusTrace q pointCount : ℂ) * z + (q : ℂ) * z ^ 2

/-- Pure quadratic route directly from Hasse, without selecting any
complex roots or adding the purity assertion as a source input.
The zero variable is the SAME q^{-s} used by FiniteFieldVerticalCertificates. -/
theorem reciprocal_critical_line_of_hasse (q trace : ℝ) (hq : 1 < q)
    (hhasse : trace ^ 2 ≤ 4 * q) {s : ℂ}
    (hz : 1 - (trace : ℂ) * fieldParameter q s +
      (q : ℂ) * (fieldParameter q s) ^ 2 = 0) :
    s.re = 1 / 2 := by
  let z : ℂ := fieldParameter q s
  have hz' : 1 - (trace : ℂ) * z + (q : ℂ) * z ^ 2 = 0 := hz
  have hnz : z ≠ 0 := by
    intro h
    simp [h] at hz'
  have hroot : z⁻¹ ^ 2 - (trace : ℂ) * z⁻¹ + (q : ℂ) = 0 := by
    calc
      z⁻¹ ^ 2 - (trace : ℂ) * z⁻¹ + (q : ℂ) =
          (1 - (trace : ℂ) * z + (q : ℂ) * z ^ 2) * z⁻¹ ^ 2 := by
            field_simp [hnz]
            ring
      _ = 0 := by rw [hz']; ring
  have hnorm := quadratic_root_norm_of_hasse q trace (by linarith)
    hhasse z⁻¹ hroot
  have hproduct : ‖z‖ * ‖z⁻¹‖ = 1 := by
    rw [← norm_mul, mul_inv_cancel₀ hnz, norm_one]
  have hnormProduct : Real.sqrt q * ‖z‖ = 1 := by
    rw [hnorm] at hproduct
    nlinarith [hproduct]
  have hparam := parameter_weight_norm (show 0 < q by linarith) s
  have hexp : Real.exp (((1 / 2 : ℝ) - s.re) * Real.log q) = 1 := by
    rw [← hparam]
    exact hnormProduct
  have hmul := Real.exp_eq_one_iff.mp hexp
  rcases mul_eq_zero.mp hmul with hs | hlog
  · linarith
  · exact False.elim ((ne_of_gt (Real.log_pos hq)) hlog)

/-- Source-exact count-derived elliptic local numerator: Hasse alone
implies the finite-field critical line. No imaginary-height cutoff. -/
theorem local_critical_line_of_hasse (q pointCount : ℕ) (hq : 1 < q)
    (hhasse : (frobeniusTrace q pointCount : ℝ) ^ 2 ≤ 4 * (q : ℝ))
    {s : ℂ}
    (hz : localNumerator q pointCount (fieldParameter (q : ℝ) s) = 0) :
    s.re = 1 / 2 := by
  exact reciprocal_critical_line_of_hasse (q : ℝ)
    (frobeniusTrace q pointCount : ℝ) (by exact_mod_cast hq)
    hhasse (by simpa only [localNumerator] using hz)

/-- The original record-4239 curve supplies an *actual* p=7 count:
its exact trace is -5 and 25 <= 4*7. This gives an unconditional
finite numerator critical-line instance relative to the published
count calculation, rather than importing a Hasse field. -/
theorem recordSeven_local_critical_line {s : ℂ}
    (hz : localNumerator 7
      (GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.reducedPointCount 7)
      (fieldParameter (7 : ℝ) s) = 0) :
    s.re = 1 / 2 := by
  apply local_critical_line_of_hasse 7 _ (by norm_num) ?_ hz
  rw [record_trace_seven]
  norm_num

/-- The same original record curve at p=19 has trace -7, and
49 <= 4*19. Its reciprocal numerator is also on the exact circle. -/
theorem recordNineteen_local_critical_line {s : ℂ}
    (hz : localNumerator 19
      (GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.reducedPointCount 19)
      (fieldParameter (19 : ℝ) s) = 0) :
    s.re = 1 / 2 := by
  apply local_critical_line_of_hasse 19 _ (by norm_num) ?_ hz
  rw [record_trace_nineteen]
  norm_num

/-- Exact local polynomial is the source's two-root product, including
both copies when the discriminant is zero. -/
theorem EllipticSpectrum.localNumerator_eq_factor {q N : ℕ}
    (D : EllipticSpectrum q N) (z : ℂ) :
    localNumerator q N z = factorProduct [D.alpha, D.beta] z := by
  simp only [localNumerator, factorProduct]
  rw [← D.trace_eq, ← D.determinant_eq]
  ring

/-- For q>1, each zero of the native count-derived elliptic numerator
at q^{-s} has real part 1/2. This is FINITE-FIELD RH for a supplied
source-exact Hasse/Frobenius packet, not classical zeta RH. -/
theorem EllipticSpectrum.critical_line {q N : ℕ} (D : EllipticSpectrum q N)
    (hq : 1 < q) {s : ℂ}
    (hz : localNumerator q N (fieldParameter (q : ℝ) s) = 0) :
    s.re = 1 / 2 := by
  rw [D.localNumerator_eq_factor] at hz
  apply finite_factor_critical_line [D.alpha, D.beta]
    (by exact_mod_cast hq) ?_ hz
  intro a ha
  simp only [List.mem_cons, List.mem_singleton] at ha
  rcases ha with rfl | rfl
  · exact D.alpha_pure
  · exact D.beta_pure

/-- The original all-height finite-field approximation holds for this
elliptic numerator, with spectral purity supplied by Hasse, and with
no imaginary-height cutoff. -/
theorem EllipticSpectrum.all_height_residual {q N : ℕ} (D : EllipticSpectrum q N)
    (hq : 1 < q) {σ : ℝ} (hσ : (1 / 2 : ℝ) < σ) :
    ∃ n : ℕ, ∀ s : ℂ, σ ≤ s.re →
      ‖GRWTSK.Analysis.Division.residual
        (factorProduct [D.alpha, D.beta] (fieldParameter (q : ℝ) s))
        (familyApproximation [D.alpha, D.beta] n (fieldParameter (q : ℝ) s)) 1‖
          ≤ 1 / 4 := by
  apply all_height_residual_family [D.alpha, D.beta]
    (by exact_mod_cast hq) hσ
  intro a ha
  simp only [List.mem_cons, List.mem_singleton] at ha
  rcases ha with rfl | rfl
  · exact D.alpha_pure.le
  · exact D.beta_pure.le

/-- Integer source recurrence is exactly the power sum of the same two
Frobenius eigenvalues, for ALL extension exponents. The integer recurrence
is reused; no field-extension point count is assumed here. -/
theorem EllipticSpectrum.trace_power {q N : ℕ} (D : EllipticSpectrum q N)
    (k : ℕ) :
    (extensionTrace q N k : ℂ) = D.alpha ^ k + D.beta ^ k := by
  have hpair : ∀ j : ℕ,
      ((tracePair q N j).1 : ℂ) = D.alpha ^ j + D.beta ^ j ∧
      ((tracePair q N j).2 : ℂ) =
        D.alpha ^ (j + 1) + D.beta ^ (j + 1) := by
    intro j
    induction j with
    | zero =>
        constructor
        · simp [tracePair]
        · simpa [tracePair] using D.trace_eq.symm
    | succ j ih =>
        rcases ih with ⟨h0, h1⟩
        constructor
        · change ((tracePair q N j).2 : ℂ) =
            D.alpha ^ (j + 1) + D.beta ^ (j + 1)
          exact h1
        · have hrec : ((tracePair q N (j + 1)).2 : ℂ) =
              (frobeniusTrace q N : ℂ) * ((tracePair q N j).2 : ℂ) -
                (q : ℂ) * ((tracePair q N j).1 : ℂ) := by
              simp [tracePair]
          rw [hrec, h1, h0, ← D.trace_eq, ← D.determinant_eq]
          ring
  exact (hpair k).1

/-- The source recurrence, not a proxy list of zeros, defines the exact
extension numerator. The actual point count over F_(q^k) needs the
separate Frobenius fixed-point/source identification. -/
def extensionNumerator (q pointCount k : ℕ) (z : ℂ) : ℂ :=
  1 - (extensionTrace q pointCount k : ℂ) * z + (q : ℂ) ^ k * z ^ 2

/-- Every extension numerator retains its two Frobenius eigenvalues
raised to that extension exponent. -/
theorem EllipticSpectrum.extensionNumerator_eq_factor {q N : ℕ}
    (D : EllipticSpectrum q N) (k : ℕ) (z : ℂ) :
    extensionNumerator q N k z =
      factorProduct [D.alpha ^ k, D.beta ^ k] z := by
  simp only [extensionNumerator, factorProduct]
  rw [D.trace_power]
  have hp : D.alpha ^ k * D.beta ^ k = (q : ℂ) ^ k := by
    rw [← mul_pow, D.determinant_eq]
  rw [← hp]
  ring

/-- The harmless but essential exact identity sqrt(q^k)=(sqrt q)^k
for q>=0; the extension spectrum is not falsely normalized by sqrt q. -/
private theorem sqrt_pow_nat (q : ℝ) (hq : 0 ≤ q) (k : ℕ) :
    Real.sqrt (q ^ k) = Real.sqrt q ^ k := by
  have hnonneg : 0 ≤ Real.sqrt q ^ k := pow_nonneg (Real.sqrt_nonneg _) _
  have hsq : (Real.sqrt q ^ k) ^ 2 = q ^ k := by
    calc
      (Real.sqrt q ^ k) ^ 2 = (Real.sqrt q ^ 2) ^ k := by
        rw [← pow_mul, ← pow_mul, Nat.mul_comm]
      _ = q ^ k := by rw [Real.sq_sqrt hq]
  calc
    Real.sqrt (q ^ k) = Real.sqrt ((Real.sqrt q ^ k) ^ 2) := by rw [hsq]
    _ = |Real.sqrt q ^ k| := Real.sqrt_sq_eq_abs _
    _ = Real.sqrt q ^ k := abs_of_nonneg hnonneg

/-- Extension RH at every positive extension degree, without rerunning
any finite trace calculation. The hq^k source is the field-size q^k,
not q; the t-variable is (q^k)^(-s). -/
theorem EllipticSpectrum.extension_critical_line {q N : ℕ}
    (D : EllipticSpectrum q N) (hq : 1 < q) (k : ℕ) (hk : 0 < k)
    {s : ℂ}
    (hz : extensionNumerator q N k
      (fieldParameter ((q : ℝ) ^ k) s) = 0) :
    s.re = 1 / 2 := by
  rw [D.extensionNumerator_eq_factor] at hz
  have hqreal : (1 : ℝ) < q := by exact_mod_cast hq
  have hqk : (1 : ℝ) < (q : ℝ) ^ k := one_lt_pow₀ hqreal (by omega)
  apply finite_factor_critical_line [D.alpha ^ k, D.beta ^ k] hqk ?_ hz
  intro a ha
  simp only [List.mem_cons, List.mem_singleton] at ha
  rcases ha with rfl | rfl
  · rw [norm_pow, D.alpha_pure, sqrt_pow_nat (q : ℝ) (by positivity) k]
  · rw [norm_pow, D.beta_pure, sqrt_pow_nat (q : ℝ) (by positivity) k]

/-- The exact point-count comparison required for a real geometric source,
which cannot be inferred from the torsion heat alone. -/
def ExtensionCountSource (q N : ℕ) (counts : ℕ → ℕ) : Prop :=
  ∀ k : ℕ, 0 < k →
    (counts k : ℤ) = (q : ℤ) ^ k + 1 - extensionTrace q N k

/-- The arithmetic extension trace is forced by the original recurrence;
converting it into an actual count requires `ExtensionCountSource`. -/
theorem EllipticSpectrum.extensionCount_identity {q N : ℕ}
    (D : EllipticSpectrum q N) (counts : ℕ → ℕ)
    (hcount : ExtensionCountSource q N counts) (k : ℕ) (hk : 0 < k) :
    (counts k : ℂ) = (q : ℂ) ^ k + 1 -
      (D.alpha ^ k + D.beta ^ k) := by
  have h : (counts k : ℂ) = (q : ℂ) ^ k + 1 -
      (extensionTrace q N k : ℂ) := by
    exact_mod_cast (hcount k hk)
  simpa only [D.trace_power k] using h

/-- A geometric Frobenius adapter is an *explicit* additional object:
its characteristic identity binds the SAME q, pointCount, and actual
point-group transport as the finite spectral numerator. This does not
construct the lift from the finite base field into an algebraic closure. -/
structure FrobeniusTorsionSource
    {F : Type*} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
    (q N : ℕ) where
  action : W.Point ≃+ W.Point
  spectrum : EllipticSpectrum q N
  characteristic : ∀ P : W.Point,
    action (action P) - (frobeniusTrace q N : ℤ) • action P +
      (q : ℤ) • P = 0

/-- Frobenius's group-level characteristic equation restricts to every
n-torsion point. Restriction itself is exact; existence of the source
adapter is the missing geometric comparison. -/
theorem FrobeniusTorsionSource.characteristic_on_level
    {F : Type*} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
    {q N : ℕ} (S : FrobeniusTorsionSource W q N)
    (n : ℕ) (P : TorsionLevel W n) :
    S.action (S.action P.1) -
      (frobeniusTrace q N : ℤ) • S.action P.1 +
      (q : ℤ) • P.1 = 0 :=
  S.characteristic P.1

/-- Joint consumer. An actual n-torsion class stays n-torsion under the
supplied source-identified action, and every zero of the matching
extension numerator lies on the finite-field critical line. Neither
component implies the other without the source's joint premises. -/
theorem FrobeniusTorsionSource.all_levels_and_finite_RH
    {F : Type*} [Field F] (W : WeierstrassCurve F) [W.IsElliptic]
    {q N : ℕ} (S : FrobeniusTorsionSource W q N)
    (hq : 1 < q) (n k : ℕ) (hk : 0 < k) (P : TorsionLevel W n)
    {s : ℂ}
    (hz : extensionNumerator q N k
      (fieldParameter ((q : ℝ) ^ k) s) = 0) :
    n • (torsionTransport W S.action n P).1 = 0 ∧ s.re = 1 / 2 := by
  exact ⟨(torsionTransport W S.action n P).2,
    S.spectrum.extension_critical_line hq k hk hz⟩

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.FiniteFieldTorsionRH
