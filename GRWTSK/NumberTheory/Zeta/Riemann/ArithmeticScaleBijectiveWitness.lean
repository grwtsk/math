/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.OpenAISevenEighthsPort
import Mathlib.Algebra.FreeAbelianGroup.Finsupp
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Arithmetic scale bijection and zero-free-half-plane witnesses

The common arithmetic carrier of logarithmic and `p`-adic scaling is the free
abelian group of prime labels.  Its canonical coordinate realization is the
finitely supported family of integer prime exponents.  The Archimedean
realization sends the `p`-coordinate `n` to `n * log p`; its local realization
reads the `p`-coordinate in `ℤ`.

The complete family of local coordinates is additively equivalent to the
arithmetic logarithmic scale.  A single local coordinate is only a split
projection, not a bijection.

The second half of the module pairs this exact scale equivalence with the
already isolated zeta half-plane consumers.  The scale equivalence and the
analytic theorem fields remain logically independent.  In particular, neither
this bijection nor an accepted theorem at `7/8` moves the threshold to `1/2`.
A separately proved tightening supplier is required.

This construction uses finite support and exact additive algebra.  It uses no
prime-counting asymptotic and no prime number theorem.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / EXTERNAL_PORT_BLOCKED /
WEIL_TIGHTENING_NOT_CONSTRUCTED.
-/

namespace GRWTSK.ArithmeticScale

/-- Prime labels for the arithmetic scale basis. -/
abbrev PrimeIndex := {p : ℕ // Nat.Prime p}

/-- The finitely supported family of integer prime exponents. -/
abbrev PrimeExponentLattice := PrimeIndex →₀ ℤ

/-- Formal arithmetic logarithmic scales as the free abelian group on primes. -/
abbrev ArithmeticLogScale := FreeAbelianGroup PrimeIndex

/-- The complete finitely supported family of local `p`-adic scale exponents. -/
abbrev PAdicScaleFamily := PrimeExponentLattice

/-- The canonical all-prime additive equivalence.  This is the bijective
witness; one selected coordinate is only a projection. -/
def logarithmicToPAdicFamily : ArithmeticLogScale ≃+ PAdicScaleFamily :=
  FreeAbelianGroup.equivFinsupp PrimeIndex

/-- The all-prime scale map is bijective. -/
theorem logarithmicToPAdicFamily_bijective :
    Function.Bijective
      (logarithmicToPAdicFamily : ArithmeticLogScale → PAdicScaleFamily) :=
  logarithmicToPAdicFamily.bijective

/-- The local `p`-adic scale exponent is the coefficient at the prime basis
label. -/
def pAdicExponent (p : PrimeIndex) : ArithmeticLogScale →+ ℤ :=
  FreeAbelianGroup.coeff p

/-- Insert an integer scale exponent into the `p`-primary coordinate. -/
def pPrimaryEmbedding (p : PrimeIndex) : ℤ →+ ArithmeticLogScale :=
  Finsupp.toFreeAbelianGroup.comp (Finsupp.singleAddHom p)

/-- The all-prime equivalence sends a primary insertion to the corresponding
single-coordinate family. -/
@[simp]
theorem logarithmicToPAdicFamily_pPrimaryEmbedding
    (p : PrimeIndex) (n : ℤ) :
    logarithmicToPAdicFamily (pPrimaryEmbedding p n) = Finsupp.single p n := by
  change
    FreeAbelianGroup.toFinsupp
        (Finsupp.toFreeAbelianGroup (Finsupp.single p n)) =
      Finsupp.single p n
  simp

/-- The local coordinate is a left inverse of its `p`-primary embedding. -/
@[simp]
theorem pAdicExponent_pPrimaryEmbedding (p : PrimeIndex) (n : ℤ) :
    pAdicExponent p (pPrimaryEmbedding p n) = n := by
  change
    (FreeAbelianGroup.toFinsupp
      (Finsupp.toFreeAbelianGroup (Finsupp.single p n))) p = n
  simp

/-- Bundled split identity for the local coordinate and primary embedding. -/
theorem pAdicExponent_comp_pPrimaryEmbedding (p : PrimeIndex) :
    (pAdicExponent p).comp (pPrimaryEmbedding p) = AddMonoidHom.id ℤ := by
  ext n
  exact pAdicExponent_pPrimaryEmbedding p n

/-- The `p`-primary embedding is injective because its local coordinate is a
left inverse. -/
theorem pPrimaryEmbedding_injective (p : PrimeIndex) :
    Function.Injective (pPrimaryEmbedding p) := by
  intro m n hmn
  have h := congrArg (fun x => pAdicExponent p x) hmn
  simpa using h

/-- A different prime basis vector has zero `p`-coordinate. -/
@[simp]
theorem pAdicExponent_pPrimaryEmbedding_of_ne
    {p q : PrimeIndex} (hpq : p ≠ q) (n : ℤ) :
    pAdicExponent p (pPrimaryEmbedding q n) = 0 := by
  have hqp : q ≠ p := Ne.symm hpq
  change
    (FreeAbelianGroup.toFinsupp
      (Finsupp.toFreeAbelianGroup (Finsupp.single q n))) p = 0
  simp [hpq, hqp]

/-- Every local coordinate of the all-prime equivalence is the corresponding
`p`-adic exponent homomorphism. -/
theorem logarithmicToPAdicFamily_apply
    (x : ArithmeticLogScale) (p : PrimeIndex) :
    logarithmicToPAdicFamily x p = pAdicExponent p x := by
  change FreeAbelianGroup.toFinsupp x p = FreeAbelianGroup.toFinsupp x p
  rfl

/-- Equality of every local exponent recovers the arithmetic logarithmic scale. -/
theorem ext_of_pAdicExponent_eq
    {x y : ArithmeticLogScale}
    (h : ∀ p, pAdicExponent p x = pAdicExponent p y) : x = y := by
  apply logarithmicToPAdicFamily.injective
  ext p
  change pAdicExponent p x = pAdicExponent p y
  exact h p

/-- Additive contribution of one prime basis coordinate to the real
Archimedean logarithmic realization. -/
def archimedeanBasisHom (p : PrimeIndex) : ℤ →+ ℝ where
  toFun n := (n : ℝ) * Real.log (p.1 : ℝ)
  map_zero' := by simp
  map_add' m n := by
    simp [add_mul]

/-- Finite Archimedean realization `Σ_p n_p log p` of the common exponent
lattice.  Injectivity of this real-valued map is deliberately not used by the
zero-free witnesses below. -/
def archimedeanLogRealization : ArithmeticLogScale →+ ℝ :=
  (Finsupp.liftAddHom fun p => archimedeanBasisHom p).comp
    logarithmicToPAdicFamily.toAddMonoidHom

/-- The bundled realization is the expected finite logarithmic sum. -/
theorem archimedeanLogRealization_apply (x : ArithmeticLogScale) :
    archimedeanLogRealization x =
      (logarithmicToPAdicFamily x).sum
        fun p n => (n : ℝ) * Real.log (p.1 : ℝ) :=
  rfl

/-- The real realization sends a `p`-primary scale to `n log p`. -/
@[simp]
theorem archimedeanLogRealization_pPrimaryEmbedding
    (p : PrimeIndex) (n : ℤ) :
    archimedeanLogRealization (pPrimaryEmbedding p n) =
      (n : ℝ) * Real.log (p.1 : ℝ) := by
  change
    (Finsupp.liftAddHom fun q : PrimeIndex => archimedeanBasisHom q)
        (logarithmicToPAdicFamily (pPrimaryEmbedding p n)) =
      (n : ℝ) * Real.log (p.1 : ℝ)
  rw [logarithmicToPAdicFamily_pPrimaryEmbedding,
    Finsupp.liftAddHom_apply_single]
  rfl

end GRWTSK.ArithmeticScale

namespace GRWTSK.RiemannHypothesis

open GRWTSK.ArithmeticScale

/-- A typed pair of independent equivalences:

* the all-prime arithmetic scale equivalence; and
* an exact equivalence between a raw zero-free half-plane consumer and its
  stated conclusion.

The first field cannot construct the second. -/
structure ScaleIndexedIffWitness (σ : ℝ) (Conclusion : Prop) where
  scaleEquiv : ArithmeticLogScale ≃+ PAdicScaleFamily
  consumerIff : RiemannZetaZeroFreeRightHalfPlane σ ↔ Conclusion

/-- At the critical threshold, the existing raw nonvanishing consumer is
exactly canonical RH, paired with the independent arithmetic scale bijection. -/
def rawHalfPlaneRHBijectiveWitness :
    ScaleIndexedIffWitness (1 / 2 : ℝ) _root_.RiemannHypothesis where
  scaleEquiv := logarithmicToPAdicFamily
  consumerIff :=
    riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis

/-- Projection of the critical witness to its arithmetic bijection. -/
theorem rawHalfPlaneRHBijectiveWitness_scale_bijective :
    Function.Bijective
      (rawHalfPlaneRHBijectiveWitness.scaleEquiv :
        ArithmeticLogScale → PAdicScaleFamily) :=
  rawHalfPlaneRHBijectiveWitness.scaleEquiv.bijective

/-- Projection of the critical witness to its analytic equivalence. -/
theorem rawHalfPlaneRHBijectiveWitness_consumer :
    RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ) ↔
      _root_.RiemannHypothesis :=
  rawHalfPlaneRHBijectiveWitness.consumerIff

/-- A regional theorem paired with the same arithmetic scale equivalence and an
explicit proof that its threshold lies strictly right of the critical line. -/
structure ScaleIndexedRegionalWitness (σ : ℝ) where
  scaleEquiv : ArithmeticLogScale ≃+ PAdicScaleFamily
  zeroFree : RiemannZetaZeroFreeRightHalfPlane σ
  strictRightOfCritical : (1 / 2 : ℝ) < σ

namespace AcceptedExternalRawHalfPlanePort

/-- A future fully admitted seven-eighths port produces only a regional
scale-indexed witness.  The current pinned review does not produce such a port. -/
def toSevenEighthsScaleIndexedRegionalWitness
    (port : AcceptedExternalRawHalfPlanePort ((7 : ℝ) / 8)) :
    ScaleIndexedRegionalWitness ((7 : ℝ) / 8) where
  scaleEquiv := logarithmicToPAdicFamily
  zeroFree := port.theorem
  strictRightOfCritical := half_lt_sevenEighths

end AcceptedExternalRawHalfPlanePort

/-- The exact additional supplier required to tighten a regional zero-free
statement to the RH-equivalent critical consumer.

This structure does not assert its positivity proposition and does not build
the implication.  Those are the substantive obligations of a future Weil
positive-screw construction and its source/trust audit. -/
structure WeilPositiveScrewTightening (σ : ℝ) where
  positiveScrewStatement : Prop
  regionalToCritical :
    positiveScrewStatement →
      RiemannZetaZeroFreeRightHalfPlane σ →
        RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ)

/-- A regional witness reaches the raw critical consumer only after both an
actual tightening supplier and its positivity premise are supplied. -/
theorem ScaleIndexedRegionalWitness.toCriticalRaw
    {σ : ℝ} (regional : ScaleIndexedRegionalWitness σ)
    (tightening : WeilPositiveScrewTightening σ)
    (hpositive : tightening.positiveScrewStatement) :
    RiemannZetaZeroFreeRightHalfPlane (1 / 2 : ℝ) :=
  tightening.regionalToCritical hpositive regional.zeroFree

/-- Conditional terminal composition: regional theorem plus a proved Weil
positive-screw tightening implication yields canonical RH through the already
isolated critical consumer. -/
theorem ScaleIndexedRegionalWitness.toRiemannHypothesis
    {σ : ℝ} (regional : ScaleIndexedRegionalWitness σ)
    (tightening : WeilPositiveScrewTightening σ)
    (hpositive : tightening.positiveScrewStatement) :
    _root_.RiemannHypothesis :=
  riemannZetaZeroFreeRightHalfPlane_half_iff_riemannHypothesis.mp
    (regional.toCriticalRaw tightening hpositive)

end GRWTSK.RiemannHypothesis
