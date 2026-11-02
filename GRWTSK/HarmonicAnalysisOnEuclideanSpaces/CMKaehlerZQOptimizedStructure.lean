/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQGaugedResidueAnchor
import GRWTSK.HarmonicAnalysisOnEuclideanSpaces.CMKaehlerZQResidueLinks
import Mathlib.Algebra.Module.LinearMap.Rat
import Mathlib.Tactic

/-!
# Optimized Kähler ℤ→ℚ structure and original-integer-label gauge covariance

For a commutative ℚ-algebra A the natural map Ω[A/ℤ] → Ω[A/ℚ] is
an A-linear equivalence, not merely a surjection. The proof derives its
inverse from the universal derivation using the rational-linearity of
every additive map of ℚ-vector spaces. This fact does NOT produce an
integral Betti lattice or a CM polarization.

The chosen integral symplectic model is kept independently, with its
strictly positive quadratic return. The gauge acts on EVERY original
integer-labelled source coefficient before aggregating into parity and
ZMod(d*d) classes. Aggregation is gauge-equivariant, not generally
injective. Its original complete integer labels remain separately present.

The existing arbitrary unit-norm link data are augmented by an explicit
normalization predicate U_ii=1 and U_ij*U_ji=1. The source links are
not claimed to originate in a CM Chern connection or measured field.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQOptimizedStructure

open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQGaugedResidueAnchor
open GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQResidueLinks
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform

universe u
variable (A : Type u) [CommRing A] [Algebra ℚ A]

/-- Reinterpret the integral-base universal derivation as a rational one.
All ℤ-linear additive maps between the relevant ℚ-modules are ℚ-linear. -/
def integralDerivationOverQ : Derivation ℚ A (DifferentialZ A) where
  toLinearMap :=
    ((KaehlerDifferential.D ℤ A).toLinearMap.toAddMonoidHom).toRatLinearMap
  map_one_eq_zero' := by
    change (KaehlerDifferential.D ℤ A) 1 = 0
    exact (KaehlerDifferential.D ℤ A).map_one_eq_zero
  leibniz' a b := by
    change (KaehlerDifferential.D ℤ A) (a * b) =
      a • (KaehlerDifferential.D ℤ A) b +
        b • (KaehlerDifferential.D ℤ A) a
    exact (KaehlerDifferential.D ℤ A).leibniz a b

@[simp] theorem integralDerivationOverQ_apply (a : A) :
    integralDerivationOverQ A a = KaehlerDifferential.D ℤ A a := rfl

/-- Natural explicit inverse of the old ℤ→ℚ map, by universal derivations. -/
def differentialQtoZ : DifferentialQ A →ₗ[A] DifferentialZ A :=
  (integralDerivationOverQ A).liftKaehlerDifferential

@[simp] theorem differentialQtoZ_D (a : A) :
    differentialQtoZ A (KaehlerDifferential.D ℚ A a) =
      KaehlerDifferential.D ℤ A a :=
  Derivation.liftKaehlerDifferential_comp_D (integralDerivationOverQ A) a

/-- Strengthens the earlier one-sided surjectivity theorem. -/
theorem differentialZQ_leftInverse :
    (differentialQtoZ A).comp (differentialZtoQ A) =
      LinearMap.id := by
  apply Derivation.liftKaehlerDifferential_unique
  ext a
  change differentialQtoZ A
    (differentialZtoQ A (KaehlerDifferential.D ℤ A a)) =
      KaehlerDifferential.D ℤ A a
  rw [differentialZtoQ_D, differentialQtoZ_D]

theorem differentialZQ_rightInverse :
    (differentialZtoQ A).comp (differentialQtoZ A) =
      LinearMap.id := by
  apply Derivation.liftKaehlerDifferential_unique
  ext a
  change differentialZtoQ A
    (differentialQtoZ A (KaehlerDifferential.D ℚ A a)) =
      KaehlerDifferential.D ℚ A a
  rw [differentialQtoZ_D, differentialZtoQ_D]

theorem differentialZtoQ_injective :
    Function.Injective (differentialZtoQ A) := by
  intro x y h
  have hh := congrArg (differentialQtoZ A) h
  have hi := congrArg
    (fun f : DifferentialZ A →ₗ[A] DifferentialZ A => f x)
    (differentialZQ_leftInverse A)
  have hj := congrArg
    (fun f : DifferentialZ A →ₗ[A] DifferentialZ A => f y)
    (differentialZQ_leftInverse A)
  simpa only [LinearMap.comp_apply, LinearMap.id_apply] using
    (hi.symm.trans (hh.trans hj))

/-- Actual equivalence of universal differential modules for ℚ-algebras.
It is NOT a newly derived geometric Kähler polarization. -/
def differentialZQLinearEquiv : DifferentialZ A ≃ₗ[A] DifferentialQ A :=
  LinearEquiv.ofBijective (differentialZtoQ A)
    ⟨differentialZtoQ_injective A, differentialZtoQ_surjective A⟩

/-- The existing differential graph is provenance, not two independent
differential sectors. -/
theorem differentialGraph_eq_equivalence (ω : DifferentialZ A) :
    differentialGraph A ω = (ω, differentialZQLinearEquiv A ω) := rfl

section PositiveChosenLattice

/-- Rationalized version of the chosen integral symplectic coordinate form. -/
def rationalOmega {g : ℕ} (v w : Fin g → ℚ × ℚ) : ℚ :=
  ∑ i : Fin g, (v i).1 * (w i).2 - (v i).2 * (w i).1

def rationalJ {g : ℕ} (v : Fin g → ℚ × ℚ) : Fin g → ℚ × ℚ :=
  fun i => (-(v i).2, (v i).1)

def rationalQuadratic {g : ℕ} (v : Fin g → ℚ × ℚ) : ℚ :=
  ∑ i : Fin g, (v i).1 ^ 2 + (v i).2 ^ 2

/-- Strict positivity on the chosen finite rational coordinate lattice. -/
theorem rationalQuadratic_eq_zero_iff {g : ℕ}
    (v : Fin g → ℚ × ℚ) : rationalQuadratic v = 0 ↔ v = 0 := by
  constructor
  · intro h
    funext i
    have hi : (v i).1 ^ 2 + (v i).2 ^ 2 = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun i _ => add_nonneg (sq_nonneg _) (sq_nonneg _))).mp h
        i (Finset.mem_univ i)
    have hx : (v i).1 = 0 := by
      nlinarith [sq_nonneg (v i).1, sq_nonneg (v i).2]
    have hy : (v i).2 = 0 := by
      nlinarith [sq_nonneg (v i).1, sq_nonneg (v i).2]
    exact Prod.ext hx hy
  · rintro rfl
    simp [rationalQuadratic]

theorem integralQuadratic_eq_zero_iff {g : ℕ}
    (v : IntegralPolarizedLattice g) :
    integralQuadratic v = 0 ↔ v = 0 := by
  constructor
  · intro h
    funext i
    have hi : (v i).1 ^ 2 + (v i).2 ^ 2 = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun i _ => add_nonneg (sq_nonneg _) (sq_nonneg _))).mp h
        i (Finset.mem_univ i)
    have hx : (v i).1 = 0 := by
      nlinarith [sq_nonneg (v i).1, sq_nonneg (v i).2]
    have hy : (v i).2 = 0 := by
      nlinarith [sq_nonneg (v i).1, sq_nonneg (v i).2]
    exact Prod.ext hx hy
  · rintro rfl
    simp [integralQuadratic]

theorem rationalOmega_J {g : ℕ} (v : Fin g → ℚ × ℚ) :
    rationalOmega v (rationalJ v) = rationalQuadratic v := by
  unfold rationalOmega rationalJ rationalQuadratic
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem rationalQuadratic_integral {g : ℕ}
    (v : IntegralPolarizedLattice g) :
    rationalQuadratic (rationalizeLattice v) = (integralQuadratic v : ℚ) := by
  unfold rationalQuadratic integralQuadratic rationalizeLattice
  push_cast
  rfl

theorem rationalizeLattice_injective {g : ℕ} :
    Function.Injective (@rationalizeLattice g) := by
  intro v w h
  funext i
  have hi := congrFun h i
  have hr : ((v i).1 : ℚ) = ((w i).1 : ℚ) := congrArg Prod.fst hi
  have hs : ((v i).2 : ℚ) = ((w i).2 : ℚ) := congrArg Prod.snd hi
  exact Prod.ext (by exact_mod_cast hr) (by exact_mod_cast hs)

end PositiveChosenLattice

section FullIntegerGauge

variable (d j : ℕ) [NeZero d]

/-- Every original n retains its full integer index before residue projection. -/
def sectorOfIntegerLabel (n : IntegerLabel j) : Sector d :=
  (⟨n.val % 2, Nat.mod_lt _ (by norm_num)⟩, classCoordinate d n.val)

/-- Gauge EVERY original integer coefficient, not just its summed bucket. -/
def fullLabelGauge (g : Gauge d) (x : FullIntegerPacket j) : FullIntegerPacket j :=
  WithLp.toLp 2 (fun n : IntegerLabel j =>
    g.phase (sectorOfIntegerLabel d j n) * x n)

theorem fullLabelGauge_norm_sq (g : Gauge d) (x : FullIntegerPacket j) :
    ‖fullLabelGauge d j g x‖ ^ 2 = ‖x‖ ^ 2 := by
  rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq]
  apply Finset.sum_congr rfl
  intro n _
  simp [fullLabelGauge, norm_mul, g.phase_unit]

/-- Many-to-one observation only. The full source vector is not destroyed. -/
def aggregateFull (x : FullIntegerPacket j) : SectorPacket d :=
  WithLp.toLp 2 (fun s : Sector d =>
    ∑ n : IntegerLabel j,
      if sectorOfIntegerLabel d j n = s then x n else 0)

/-- Exact commuting square between full-label gauge and observation gauge. -/
theorem aggregateFull_gauge (g : Gauge d) (x : FullIntegerPacket j) :
    aggregateFull d j (fullLabelGauge d j g x) =
      gaugePacket d g (aggregateFull d j x) := by
  classical
  apply PiLp.ext
  intro s
  change (∑ n : IntegerLabel j,
      if sectorOfIntegerLabel d j n = s then
        g.phase (sectorOfIntegerLabel d j n) * x n else 0) =
      g.phase s * (∑ n : IntegerLabel j,
        if sectorOfIntegerLabel d j n = s then x n else 0)
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hn : sectorOfIntegerLabel d j n = s
  · simp [hn]
  · simp [hn]

/-- Coherent aggregation has the same TOTAL signed source sum. -/
theorem aggregateFull_rawDetector (x : FullIntegerPacket j) :
    rawDetector d (aggregateFull d j x) = ∑ n : IntegerLabel j, x n := by
  classical
  change (∑ r : Fin 2, ∑ a : ZMod (d * d),
    ∑ n : IntegerLabel j,
      if sectorOfIntegerLabel d j n = (r,a) then x n else 0) = _
  calc
    _ = ∑ s : Sector d, ∑ n : IntegerLabel j,
          if sectorOfIntegerLabel d j n = s then x n else 0 := by
            rw [Fintype.sum_prod_type]
    _ = ∑ n : IntegerLabel j, ∑ s : Sector d,
          if sectorOfIntegerLabel d j n = s then x n else 0 := by
            rw [Finset.sum_comm]
    _ = ∑ n : IntegerLabel j, x n := by simp

/-- Contragredient detector on the full non-aliased packet. -/
def fullLabelDetector (g : Gauge d) (x : FullIntegerPacket j) : ℂ :=
  ∑ n : IntegerLabel j,
    (g.phase (sectorOfIntegerLabel d j n))⁻¹ * x n

theorem fullLabelDetector_gauge (g : Gauge d) (x : FullIntegerPacket j) :
    fullLabelDetector d j g (fullLabelGauge d j g x) =
      ∑ n : IntegerLabel j, x n := by
  classical
  unfold fullLabelDetector
  apply Finset.sum_congr rfl
  intro n _
  have hn := Gauge.nonzero d g (sectorOfIntegerLabel d j n)
  simp [fullLabelGauge, hn]

/-- The original compensated detector factors through the gauge on all labels. -/
theorem aggregateFull_gauge_detector (g : Gauge d) (x : FullIntegerPacket j) :
    detector d g (aggregateFull d j (fullLabelGauge d j g x)) =
      ∑ n : IntegerLabel j, x n := by
  rw [aggregateFull_gauge, detector_gauge]
  exact aggregateFull_rawDetector d j x

/-- An injective provenance ledger, even when residue aggregation aliases. -/
def fullGaugeLedger (g : Gauge d) (x : FullIntegerPacket j) :
    FullIntegerPacket j × SectorPacket d :=
  (x, aggregateFull d j (fullLabelGauge d j g x))

theorem fullGaugeLedger_injective (g : Gauge d) :
    Function.Injective (fullGaugeLedger d j g) := by
  intro x y h
  exact congrArg Prod.fst h

end FullIntegerGauge

section NormalizedLinkConnection

variable (d : ℕ)

/-- Unit modulus alone is NOT sufficient for a normalized two-way connection. -/
def NormalizedLinks (U : Links d) : Prop :=
  (∀ i : Sector d, U.transport i i = 1) ∧
  (∀ i j : Sector d, U.transport i j * U.transport j i = 1)

theorem flatLinks_normalized : NormalizedLinks d (flatLinks d) := by
  constructor
  · intro i; rfl
  · intro i j; rfl

theorem gaugeLinks_identity (g : Gauge d) (U : Links d)
    (h : ∀ i : Sector d, U.transport i i = 1) (i : Sector d) :
    (gaugeLinks d g U).transport i i = 1 := by
  have hi := Gauge.nonzero d g i
  simp [gaugeLinks, h i, hi]

theorem gaugeLinks_reverse (g : Gauge d) (U : Links d)
    (h : ∀ i j : Sector d, U.transport i j * U.transport j i = 1)
    (i j : Sector d) :
    (gaugeLinks d g U).transport i j *
      (gaugeLinks d g U).transport j i = 1 := by
  have hi := Gauge.nonzero d g i
  have hj := Gauge.nonzero d g j
  calc
    (gaugeLinks d g U).transport i j *
        (gaugeLinks d g U).transport j i =
      (U.transport i j * U.transport j i) *
        (g.phase i * (g.phase i)⁻¹) *
        (g.phase j * (g.phase j)⁻¹) := by
        dsimp [gaugeLinks]
        ring
    _ = 1 := by simp [h i j, hi, hj]

theorem gaugeLinks_normalized (g : Gauge d) (U : Links d)
    (h : NormalizedLinks d U) :
    NormalizedLinks d (gaugeLinks d g U) := by
  constructor
  · exact gaugeLinks_identity d g U h.1
  · exact gaugeLinks_reverse d g U h.2

/-- Concrete hostile link field: norm one, but even U(i,i)=-1. -/
def minusOneLinks : Links d where
  transport _ _ := -1
  norm_one _ _ := by simp

theorem minusOneLinks_not_normalized :
    ¬ NormalizedLinks d (minusOneLinks d) := by
  intro h
  have hi := h.1 ((0 : Fin 2), (0 : ZMod (d * d)))
  norm_num [minusOneLinks] at hi

/-- Gauge-invariant loop observables alone cannot supply link normalization. -/
theorem normalized_triangle_gauge (g : Gauge d) (U : Links d)
    (_h : NormalizedLinks d U) (i j k : Sector d) :
    triangleHolonomy d (gaugeLinks d g U) i j k =
      triangleHolonomy d U i j k :=
  triangleHolonomy_gauge d g U i j k

end NormalizedLinkConnection

end GRWTSK.Analysis.HarmonicAnalysis.ResidueCircleWaveHilbert.CMKaehlerZQOptimizedStructure
