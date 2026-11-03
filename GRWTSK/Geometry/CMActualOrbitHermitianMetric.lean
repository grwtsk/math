/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.Geometry.CMActualUndoubledOrbitTotalSpace
import Mathlib.Tactic

/-!
# The actual Appell-Humbert orbit quotient has an exact positive fibre metric

Use the ORIGINAL positive Hermitian period form H_epsilon on the actual ring-
of-integers lattice O_E and the SOURCE undoubled factor J(a,z). The cover
Hermitian metric weight is h(z)=exp(-pi*Re H(z,z)), and its exact cocycle is

  h(z+p(a))*|J(a,z)|^2 = h(z).

Consequently h(z)*|w|^2 is *well-defined* on the algebraic orbit quotient
already constructed in CMActualUndoubledOrbitTotalSpace. This is stronger
than a candidate metric on V x C: it is a genuine quotient-valued function.
The quotient also admits an independent well-defined complex scaling action
on each fibre, with the correct quadratic norm law.

This source does NOT supply a topology or holomorphic local trivializations
on the orbit quotient, a genuine Chern connection, nor the comparison with
an independently specified original CM abelian variety. It is also not a
physical detector metric or an arithmetic cancellation estimate.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators _root_.NumberField

namespace GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualOrbitHermitianMetric

open OAI.AlgebraicGeometry.ComplexMultiplication.CM
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledAppellHumbert
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualUndoubledOrbitTotalSpace
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualIntegralBasisSemicharacter
open GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualPeriodTraceComparison

variable (E : Type*) [Field E] [NumberField E] [Algebra ℚ E]
  [IsCMField E] [IsGalois ℚ E]

/-- The positive Hermitian cover metric on the original CM period cover. -/
def coverMetricWeight (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z : PeriodSpace.CMPeriodSpace E) : ℝ :=
  Real.exp (-(Real.pi * (epsilon.periodHermitian z z).re))

theorem coverMetricWeight_pos
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z : PeriodSpace.CMPeriodSpace E) :
    0 < coverMetricWeight E epsilon z := Real.exp_pos _

/-- Source H forces the exact logarithmic translation identity.
This is a finite-algebra identity, not an unevaluated PDE. -/
theorem coverMetric_log_translation
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    -(Real.pi *
      (epsilon.periodHermitian (z + epsilon.periodEmbedding (a : E))
        (z + epsilon.periodEmbedding (a : E))).re) +
      2 * (halfExponent E epsilon a z).re =
        -(Real.pi * (epsilon.periodHermitian z z).re) := by
  let u := epsilon.periodEmbedding (a : E)
  have hself : epsilon.periodHermitian (z + u) (z + u) =
      epsilon.periodHermitian z z + epsilon.periodHermitian z u +
        epsilon.periodHermitian u z + epsilon.periodHermitian u u := by
    rw [epsilon.periodHermitian_add_left]
    simp only [map_add]
    ring
  have hsym : (epsilon.periodHermitian z u).re =
      (epsilon.periodHermitian u z).re := by
    rw [epsilon.periodHermitian_symm]
    rfl
  change -(Real.pi * (epsilon.periodHermitian (z + u) (z + u)).re) +
    2 * ((Real.pi : ℂ) *
      (epsilon.periodHermitian u z + epsilon.periodHermitian u u / 2)).re = _
  rw [hself]
  simp only [Complex.add_re, Complex.mul_re,
    Complex.ofReal_re, Complex.ofReal_im, zero_mul,
    sub_zero, Complex.div_ofReal_re]
  rw [hsym]
  ring

/-- The independent *sourced* unit-modulus semicharacter contributes no
positive norm inflation, even when its parity value is minus one. -/
theorem undoubledFactor_norm_square
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    ‖undoubledFactor E epsilon a z‖ ^ 2 =
      Real.exp (2 * (halfExponent E epsilon a z).re) := by
  unfold undoubledFactor
  rw [norm_mul, actualIntegralSemicharacter_norm_one]
  simp only [one_mul, Complex.norm_exp]
  rw [pow_two, ← Real.exp_add]
  congr 1
  ring

/-- **Isometric** period-cocycle equality, not merely a metric proposal. -/
theorem coverMetricWeight_covariant
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E) :
    coverMetricWeight E epsilon (z + epsilon.periodEmbedding (a : E)) *
      ‖undoubledFactor E epsilon a z‖ ^ 2 =
        coverMetricWeight E epsilon z := by
  rw [undoubledFactor_norm_square]
  unfold coverMetricWeight
  rw [← Real.exp_add]
  rw [coverMetric_log_translation]

/-- Full nonnegative Hermitian fibre norm, before quotienting. -/
def coverFiberNormSq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (p : CoverTotal E) : ℝ :=
  coverMetricWeight E epsilon p.1 * ‖p.2‖ ^ 2

theorem coverFiberNormSq_nonneg
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (p : CoverTotal E) : 0 ≤ coverFiberNormSq E epsilon p := by
  unfold coverFiberNormSq
  positivity

/-- The *whole* norm descends, including fibre coefficient and site shift. -/
theorem coverFiberNormSq_shift
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (p : CoverTotal E) :
    coverFiberNormSq E epsilon (undoubledFrameShift E epsilon a p) =
      coverFiberNormSq E epsilon p := by
  rcases p with ⟨z, w⟩
  change coverMetricWeight E epsilon (z + epsilon.periodEmbedding (a : E)) *
      ‖undoubledFactor E epsilon a z * w‖ ^ 2 =
      coverMetricWeight E epsilon z * ‖w‖ ^ 2
  rw [norm_mul, mul_pow]
  calc
    _ = (coverMetricWeight E epsilon (z + epsilon.periodEmbedding (a : E)) *
          ‖undoubledFactor E epsilon a z‖ ^ 2) * ‖w‖ ^ 2 := by ring
    _ = _ := by rw [coverMetricWeight_covariant]

/-- A globally well-defined real function on the ORIGINAL algebraic orbit
quotient, not just on its chosen cover representatives. -/
def actualOrbitMetricSq
    (epsilon : TypeHodgeStructure.CMEmbeddingType E) :
    ActualOrbitTotal E epsilon → ℝ := by
  refine Quotient.lift (coverFiberNormSq E epsilon) ?_
  intro p q hpq
  obtain ⟨a, rfl⟩ := hpq
  exact (coverFiberNormSq_shift E epsilon a p).symm

@[simp] theorem actualOrbitMetricSq_mk
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (p : CoverTotal E) :
    actualOrbitMetricSq E epsilon (Quotient.mk _ p) =
      coverFiberNormSq E epsilon p := rfl

theorem actualOrbitMetricSq_nonneg
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (p : ActualOrbitTotal E epsilon) :
    0 ≤ actualOrbitMetricSq E epsilon p := by
  refine Quotient.inductionOn p ?_
  intro q
  exact coverFiberNormSq_nonneg E epsilon q

/-- The original complex fibre-scalar action is well-defined on orbits,
because all genuine period frame shifts are complex LINEAR on fibres. -/
def actualOrbitScale
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c : ℂ) : ActualOrbitTotal E epsilon → ActualOrbitTotal E epsilon := by
  refine Quotient.lift
    (fun p : CoverTotal E => Quotient.mk _ (p.1, c * p.2)) ?_
  intro p q hpq
  obtain ⟨a, rfl⟩ := hpq
  apply Quotient.sound
  refine ⟨a, ?_⟩
  apply Prod.ext
  · rfl
  · change c * (undoubledFactor E epsilon a p.1 * p.2) =
        undoubledFactor E epsilon a p.1 * (c * p.2)
    ring

/-- Scaling does not change the original period-torus base point. -/
theorem actualOrbitScale_base
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c : ℂ) (p : ActualOrbitTotal E epsilon) :
    actualOrbitBaseProjection E epsilon (actualOrbitScale E epsilon c p) =
      actualOrbitBaseProjection E epsilon p := by
  refine Quotient.inductionOn p ?_
  intro q
  rfl

/-- Exact quadratic homogeneity of the true quotient fibre metric. -/
theorem actualOrbitMetricSq_scale
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (c : ℂ) (p : ActualOrbitTotal E epsilon) :
    actualOrbitMetricSq E epsilon (actualOrbitScale E epsilon c p) =
      ‖c‖ ^ 2 * actualOrbitMetricSq E epsilon p := by
  refine Quotient.inductionOn p ?_
  intro q
  change coverMetricWeight E epsilon q.1 * ‖c * q.2‖ ^ 2 =
      ‖c‖ ^ 2 * (coverMetricWeight E epsilon q.1 * ‖q.2‖ ^ 2)
  rw [norm_mul, mul_pow]
  ring


/-- The period action has no nontrivial stabilizer on the COVER base.
This uses the original field embedding's injectivity, not a residue quotient. -/
theorem coverBaseShift_free
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (a : 𝓞 E) (z : PeriodSpace.CMPeriodSpace E)
    (h : z + epsilon.periodEmbedding (a : E) = z) : a = 0 := by
  have hper : epsilon.periodEmbedding (a : E) = 0 := by
    have ht : z + epsilon.periodEmbedding (a : E) = z + 0 := by
      simpa only [add_zero] using h
    exact add_left_cancel ht
  apply Subtype.ext
  apply periodEmbedding_injective E epsilon
  simpa only [map_zero] using hper

/-- A fixed cover representative gives an injective copy of the FULL
complex line into its orbit fibre. The image need not be a global frame
until the quotient bundle has its local analytic trivializations. -/
def orbitFibreAt
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z : PeriodSpace.CMPeriodSpace E) (w : ℂ) :
    ActualOrbitTotal E epsilon := Quotient.mk _ (z, w)

theorem orbitFibreAt_base
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z : PeriodSpace.CMPeriodSpace E) (w : ℂ) :
    actualOrbitBaseProjection E epsilon (orbitFibreAt E epsilon z w) =
      (QuotientAddGroup.mk z : epsilon.periodTorus) := rfl

/-- No two complex fibre coordinates collide at one fixed cover site. -/
theorem orbitFibreAt_injective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (z : PeriodSpace.CMPeriodSpace E) :
    Function.Injective (orbitFibreAt E epsilon z) := by
  intro w v h
  have hh : (coverOrbitSetoid E epsilon).r (z, w) (z, v) :=
    Quotient.exact h
  obtain ⟨a, ha⟩ := hh
  have hbase : z + epsilon.periodEmbedding (a : E) = z := by
    have ht := congrArg Prod.fst ha
    exact ht.symm
  have ha0 := coverBaseShift_free E epsilon a z hbase
  subst a
  have hv := congrArg Prod.snd ha
  simpa [undoubledFrameShift] using hv.symm


/-- The fibre over one ACTUAL CM period-torus point. This is a subtype of
the already constructed algebraic quotient, not a hypothetical bundle. -/
def ActualAlgebraicFibre
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (q : epsilon.periodTorus) : Type :=
  {t : ActualOrbitTotal E epsilon // actualOrbitBaseProjection E epsilon t = q}

/-- Use the upstream covering map's selected source representative as one
algebraic frame. Its choice is explicit and no continuity is inferred. -/
def actualFibreFrame
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (q : epsilon.periodTorus) (w : ℂ) :
    ActualAlgebraicFibre E epsilon q :=
  ⟨orbitFibreAt E epsilon (epsilon.periodRepresentative q) w, by
    exact epsilon.periodRepresentative_mk q⟩

/-- Each chosen algebraic frame is faithful by the genuine period action's
freeness, not by a quotient of parity/residue labels. -/
theorem actualFibreFrame_injective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (q : epsilon.periodTorus) :
    Function.Injective (actualFibreFrame E epsilon q) := by
  intro w v h
  exact (orbitFibreAt_injective E epsilon (epsilon.periodRepresentative q))
    (congrArg Subtype.val h)

/-- Any point in the fibre has a unique complex coordinate once the base's
cover representative is fixed. This is an ALGEBRAIC fibre surjectivity
result, not a holomorphic or continuous local-trivialization theorem. -/
theorem actualFibreFrame_surjective
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (q : epsilon.periodTorus) :
    Function.Surjective (actualFibreFrame E epsilon q) := by
  intro t
  obtain ⟨p, hp⟩ := Quotient.exists_rep t.val
  let z := epsilon.periodRepresentative q
  have hbase : (QuotientAddGroup.mk p.1 : epsilon.periodTorus) = q := by
    have ht := t.property
    rw [← hp] at ht
    simpa only [actualOrbitBaseProjection_mk] using ht
  have hq : (QuotientAddGroup.mk p.1 : epsilon.periodTorus) =
      QuotientAddGroup.mk z := hbase.trans (epsilon.periodRepresentative_mk q).symm
  have hmem : p.1 - z ∈ epsilon.periodIntegerLattice :=
    QuotientAddGroup.eq_iff_sub_mem.mp hq
  obtain ⟨a, ha⟩ := (epsilon.mem_periodIntegerLattice _).mp hmem
  have hz : z + epsilon.periodEmbedding (a : E) = p.1 := by
    rw [ha]
    abel
  let w : ℂ := (undoubledFactor E epsilon a z)⁻¹ * p.2
  refine ⟨w, ?_⟩
  apply Subtype.ext
  change orbitFibreAt E epsilon z w = t.val
  rw [← hp]
  apply Quotient.sound
  refine ⟨a, ?_⟩
  apply Prod.ext
  · exact hz.symm
  · change p.2 = undoubledFactor E epsilon a z *
        ((undoubledFactor E epsilon a z)⁻¹ * p.2)
    rw [← mul_assoc, mul_inv_cancel₀ (undoubledFactor_nonzero E epsilon a z), one_mul]

/-- The true orbit fibre is an algebraic complex line at EVERY base point.
The chosen equivalence is not asserted to vary continuously or holomorphically
with q, and therefore is not yet a local trivialization of a line bundle. -/
noncomputable def actualAlgebraicFibreEquiv
    (epsilon : TypeHodgeStructure.CMEmbeddingType E)
    (q : epsilon.periodTorus) :
    ℂ ≃ ActualAlgebraicFibre E epsilon q :=
  Equiv.ofBijective (actualFibreFrame E epsilon q)
    ⟨actualFibreFrame_injective E epsilon q,
      actualFibreFrame_surjective E epsilon q⟩

end GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMActualOrbitHermitianMetric
