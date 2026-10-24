import GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.MeasureTheory.Function.LpSpace.Complete

/-!
# Orthogonal projection onto the actual holomorphic area subspace

The operator is the historical L2 embedding composed with its actual Hilbert adjoint.
Its range, fixed points, orthogonality and minimization laws are derived, not fields.
The old kernel gives an integrable formula for the projected holomorphic function of
EVERY ordinary L2 input. This formula evaluates the output, not an arbitrary input
representative. Area, metric, completion, embedding and kernel remain unchanged.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection

open Filter Topology MeasureTheory Set
open scoped ENNReal
open scoped GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineSectionInnerProduct
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicEvaluationTopology (constantSection)
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicLineCocycle
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaComplete
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaReproducing
open GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2
open GRWTSK.Analysis.Operator.HolomorphicMultiplierArea (areaMeasure)

universe u
noncomputable section
variable {ι : Type u} {D : IndexedDomainCover ι}

/-- An abbreviation of ordinary L2 on the same unnormalized area measure. -/
abbrev AmbientL2 (X : Domain) := Lp ℂ 2 (areaMeasure X)

/-- The exact existing embedding, now viewed as a bounded linear map. -/
def l2Inclusion (hOpen : D.IsOpenCover) : AreaCompletion hOpen →L[ℂ] AmbientL2 D.X :=
  (l2Embedding hOpen).toContinuousLinearMap

@[simp] theorem l2Inclusion_apply (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    l2Inclusion hOpen v = l2Embedding hOpen v := rfl

theorem l2Inclusion_inner (hOpen : D.IsOpenCover) (v w : AreaCompletion hOpen) :
    inner ℂ (l2Inclusion hOpen v) (l2Inclusion hOpen w) = inner ℂ v w :=
  toL2_inner hOpen v w

theorem l2Inclusion_norm_le (hOpen : D.IsOpenCover) : ‖l2Inclusion hOpen‖ ≤ 1 := by
  apply (l2Inclusion hOpen).opNorm_le_bound zero_le_one
  intro v
  simpa only [l2Inclusion_apply, (l2Embedding hOpen).norm_map, one_mul] using
    (le_refl ‖v‖)

/-- The actual Hilbert adjoint, not a chosen inverse on arbitrary L2 inputs. -/
def bergmanLift (hOpen : D.IsOpenCover) : AmbientL2 D.X →L[ℂ] AreaCompletion hOpen :=
  ContinuousLinearMap.adjoint (l2Inclusion hOpen)

theorem bergmanLift_inner (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen)
    (g : AmbientL2 D.X) :
    inner ℂ v (bergmanLift hOpen g) = inner ℂ (l2Inclusion hOpen v) g :=
  ContinuousLinearMap.adjoint_inner_right (l2Inclusion hOpen) v g

/-- Isometry supplies the left inverse; no ambient surjectivity is assumed. -/
@[simp] theorem bergmanLift_embedding (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    bergmanLift hOpen (l2Embedding hOpen v) = v := by
  apply ext_inner_right ℂ
  intro w
  change inner ℂ (ContinuousLinearMap.adjoint (l2Inclusion hOpen)
    (l2Inclusion hOpen v)) w = inner ℂ v w
  rw [ContinuousLinearMap.adjoint_inner_left]
  exact l2Inclusion_inner hOpen v w

/-- The concrete ambient endomorphism is inclusion after its adjoint. -/
def bergmanProjection (hOpen : D.IsOpenCover) : AmbientL2 D.X →L[ℂ] AmbientL2 D.X :=
  (l2Inclusion hOpen).comp (bergmanLift hOpen)

@[simp] theorem bergmanProjection_apply (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) :
    bergmanProjection hOpen g = l2Embedding hOpen (bergmanLift hOpen g) := rfl

@[simp] theorem bergmanProjection_embedding (hOpen : D.IsOpenCover)
    (v : AreaCompletion hOpen) :
    bergmanProjection hOpen (l2Embedding hOpen v) = l2Embedding hOpen v := by
  rw [bergmanProjection_apply, bergmanLift_embedding]

theorem bergmanProjection_mem (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) :
    bergmanProjection hOpen g ∈ holomorphicSubspace hOpen :=
  ⟨bergmanLift hOpen g, rfl⟩

/-- Fixed points are exactly the previously characterized holomorphic L2 classes. -/
theorem bergmanProjection_eq_self_iff (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) :
    bergmanProjection hOpen g = g ↔ g ∈ holomorphicSubspace hOpen := by
  constructor
  · intro h
    rw [← h]
    exact bergmanProjection_mem hOpen g
  · rintro ⟨v, rfl⟩
    exact bergmanProjection_embedding hOpen v

theorem bergmanProjection_range (hOpen : D.IsOpenCover) :
    Set.range (bergmanProjection hOpen) = (holomorphicSubspace hOpen : Set (AmbientL2 D.X)) := by
  ext g
  constructor
  · rintro ⟨f, rfl⟩
    exact bergmanProjection_mem hOpen f
  · intro hg
    exact ⟨g, (bergmanProjection_eq_self_iff hOpen g).mpr hg⟩

theorem bergmanProjection_idempotent (hOpen : D.IsOpenCover) :
    (bergmanProjection hOpen).comp (bergmanProjection hOpen) = bergmanProjection hOpen := by
  ext g
  change bergmanProjection hOpen (l2Embedding hOpen (bergmanLift hOpen g)) = _
  exact bergmanProjection_embedding hOpen (bergmanLift hOpen g)

/-- The adjoint is taken in ordinary L2 with its original complex inner product. -/
theorem bergmanProjection_adjoint (hOpen : D.IsOpenCover) :
    ContinuousLinearMap.adjoint (bergmanProjection hOpen) = bergmanProjection hOpen := by
  unfold bergmanProjection bergmanLift
  rw [ContinuousLinearMap.adjoint_comp, ContinuousLinearMap.adjoint_adjoint]

theorem bergmanLift_norm_le (hOpen : D.IsOpenCover) : ‖bergmanLift hOpen‖ ≤ 1 := by
  unfold bergmanLift
  rw [LinearIsometryEquiv.norm_map]
  exact l2Inclusion_norm_le hOpen

/-- Contractive, including degenerate zero spaces; equality with one is not asserted. -/
theorem bergmanProjection_norm_le (hOpen : D.IsOpenCover) : ‖bergmanProjection hOpen‖ ≤ 1 := by
  calc
    ‖bergmanProjection hOpen‖ ≤ ‖l2Inclusion hOpen‖ * ‖bergmanLift hOpen‖ :=
      ContinuousLinearMap.opNorm_comp_le _ _
    _ ≤ 1 * 1 := mul_le_mul (l2Inclusion_norm_le hOpen) (bergmanLift_norm_le hOpen)
      (norm_nonneg _) zero_le_one
    _ = 1 := one_mul 1

/-- The entire residual is orthogonal to every vector in the exact holomorphic image. -/
theorem projection_residual_inner (hOpen : D.IsOpenCover) (g : AmbientL2 D.X)
    (v : AreaCompletion hOpen) :
    inner ℂ (l2Embedding hOpen v) (g - bergmanProjection hOpen g) = 0 := by
  rw [inner_sub_right, bergmanProjection_apply]
  change inner ℂ (l2Inclusion hOpen v) g -
    inner ℂ (l2Inclusion hOpen v) (l2Inclusion hOpen (bergmanLift hOpen g)) = 0
  rw [l2Inclusion_inner, bergmanLift_inner, sub_self]

@[simp] theorem bergmanLift_residual (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) :
    bergmanLift hOpen (g - bergmanProjection hOpen g) = 0 := by
  rw [map_sub, bergmanProjection_apply, bergmanLift_embedding, sub_self]

/-- Zero output is exactly orthogonality, not a claim that the input class is zero. -/
theorem bergmanProjection_eq_zero_iff (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) :
    bergmanProjection hOpen g = 0 ↔
      ∀ v : AreaCompletion hOpen, inner ℂ (l2Embedding hOpen v) g = 0 := by
  constructor
  · intro hg v
    simpa only [hg, sub_zero] using projection_residual_inner hOpen g v
  · intro hg
    have hLift : bergmanLift hOpen g = 0 := by
      apply ext_inner_left ℂ
      intro v
      rw [inner_zero_right, bergmanLift_inner]
      exact hg v
    rw [bergmanProjection_apply, hLift, map_zero]

/-- Genuine least-square approximation in the old L2 norm. -/
theorem bergmanProjection_bestApprox (hOpen : D.IsOpenCover) (g : AmbientL2 D.X)
    (p : AmbientL2 D.X) (hp : p ∈ holomorphicSubspace hOpen) :
    ‖g - bergmanProjection hOpen g‖ ≤ ‖g - p‖ := by
  obtain ⟨v, rfl⟩ := hp
  exact ((ContinuousLinearMap.forall_norm_sub_apply_le_iff_adjoint_apply_sub_eq_zero
    (l2Inclusion hOpen) g (bergmanLift hOpen g)).mpr (bergmanLift_residual hOpen g)) v

/-- A holomorphic class with the same minimization property must be this projection. -/
theorem bergmanProjection_unique (hOpen : D.IsOpenCover) (g p : AmbientL2 D.X)
    (hp : p ∈ holomorphicSubspace hOpen)
    (hmin : ∀ w : AmbientL2 D.X, w ∈ holomorphicSubspace hOpen → ‖g - p‖ ≤ ‖g - w‖) :
    p = bergmanProjection hOpen g := by
  obtain ⟨v, rfl⟩ := hp
  have he : bergmanLift hOpen (g - l2Embedding hOpen v) = 0 :=
    (ContinuousLinearMap.forall_norm_sub_apply_le_iff_adjoint_apply_sub_eq_zero
      (l2Inclusion hOpen) g v).mp (fun w => hmin (l2Embedding hOpen w) ⟨w, rfl⟩)
  rw [map_sub, bergmanLift_embedding, sub_eq_zero] at he
  rw [bergmanProjection_apply, he]

/-- Existence and uniqueness concern the SAME ambient class and SAME norm. -/
theorem existsUnique_bestApprox (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) :
    ∃! p : AmbientL2 D.X, p ∈ holomorphicSubspace hOpen ∧
      ∀ w : AmbientL2 D.X, w ∈ holomorphicSubspace hOpen → ‖g - p‖ ≤ ‖g - w‖ :=
  ⟨bergmanProjection hOpen g,
    ⟨bergmanProjection_mem hOpen g, bergmanProjection_bestApprox hOpen g⟩,
    fun p hp => bergmanProjection_unique hOpen g p hp.1 hp.2⟩

/-- The holomorphic OUTPUT is realized; no input representative is selected pointwise. -/
def projectedFunction (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) : HolomorphicSection D.X :=
  completedRealization hOpen (bergmanLift hOpen g)

theorem projectedFunction_finite (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) :
    scalarEnergy hOpen (projectedFunction hOpen g) < ∞ :=
  completedRealization_finite hOpen (bergmanLift hOpen g)

/-- The ordinary L2 output has the projected holomorphic function as an a.e. representative. -/
theorem bergmanProjection_ae (hOpen : D.IsOpenCover) (g : AmbientL2 D.X) :
    (bergmanProjection hOpen g : Section D.X) =ᵐ[areaMeasure D.X]
      (projectedFunction hOpen g : Section D.X) :=
  toL2_ae hOpen (bergmanLift hOpen g)

@[simp] theorem projectedFunction_embedding (hOpen : D.IsOpenCover) (v : AreaCompletion hOpen) :
    projectedFunction hOpen (l2Embedding hOpen v) = completedRealization hOpen v := by
  rw [projectedFunction, bergmanLift_embedding]

/-- The old Hermitian kernel fixes the argument order of the ambient cross-integrand. -/
theorem kernel_cross_ae (hOpen : D.IsOpenCover) (x : D.X.carrier) (g : AmbientL2 D.X) :
    (fun z => inner ℂ (l2Embedding hOpen (kernelVector hOpen x) z) (g z)) =ᵐ[areaMeasure D.X]
      fun z => kernel hOpen x z * g z := by
  filter_upwards [toL2_ae hOpen (kernelVector hOpen x)] with z hz
  rw [hz, RCLike.inner_apply']
  change star (kernel hOpen z x) * g z = kernel hOpen x z * g z
  rw [kernel_conj_symm]

/-- Ordinary L2 cross-integrability precedes the kernel formula for arbitrary input. -/
theorem projection_kernel_integrable (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (g : AmbientL2 D.X) :
    Integrable (fun z => kernel hOpen x z * g z) (areaMeasure D.X) :=
  (L2.integrable_inner (𝕜 := ℂ) (l2Embedding hOpen (kernelVector hOpen x)) g).congr
    (kernel_cross_ae hOpen x g)

/-- This is a projection formula on ALL L2 inputs, not only reproduction on holomorphic inputs. -/
theorem integral_projection (hOpen : D.IsOpenCover) (x : D.X.carrier) (g : AmbientL2 D.X) :
    (∫ z, kernel hOpen x z * g z ∂areaMeasure D.X) =
      (projectedFunction hOpen g : Section D.X) x := by
  calc
    (∫ z, kernel hOpen x z * g z ∂areaMeasure D.X) =
        ∫ z, inner ℂ (l2Embedding hOpen (kernelVector hOpen x) z) (g z) ∂areaMeasure D.X :=
      integral_congr_ae (kernel_cross_ae hOpen x g).symm
    _ = inner ℂ (l2Inclusion hOpen (kernelVector hOpen x)) g := (L2.inner_def _ _).symm
    _ = inner ℂ (kernelVector hOpen x) (bergmanLift hOpen g) :=
      (bergmanLift_inner hOpen (kernelVector hOpen x) g).symm
    _ = _ := kernelVector_reproduces hOpen x (bergmanLift hOpen g)

/-- Any supplied L2 representative gives the same projected value, not its own input value. -/
theorem integral_projection_toLp (hOpen : D.IsOpenCover) (x : D.X.carrier)
    (f : Section D.X) (hf : MemLp f 2 (areaMeasure D.X)) :
    Integrable (fun z => kernel hOpen x z * f z) (areaMeasure D.X) ∧
      (∫ z, kernel hOpen x z * f z ∂areaMeasure D.X) =
        (projectedFunction hOpen (hf.toLp f) : Section D.X) x := by
  have he : (fun z => kernel hOpen x z * (hf.toLp f) z) =ᵐ[areaMeasure D.X]
      fun z => kernel hOpen x z * f z := by
    filter_upwards [hf.coeFn_toLp] with z hz
    rw [hz]
  exact ⟨(projection_kernel_integrable hOpen x (hf.toLp f)).congr he,
    (integral_congr_ae he).symm.trans (integral_projection hOpen x (hf.toLp f))⟩

namespace Fixtures

/-- The zero input is handled even when the holomorphic space is itself trivial. -/
theorem projectedFunction_zero (hOpen : D.IsOpenCover) :
    projectedFunction hOpen 0 = constantSection D.X 0 := by
  apply Subtype.ext
  funext x
  change realizedValue hOpen (bergmanLift hOpen 0) x = 0
  rw [map_zero]
  exact (evaluationAt_eq_value hOpen x 0).symm.trans ((evaluationAt hOpen x).map_zero)

/-- The operator cannot be replaced by zero where the historical detector gives a nonzero kernel. -/
theorem projection_not_zero (hOpen : D.IsOpenCover)
    (hArea : (volume : Measure ℂ) D.X.carrier < ∞) (x : D.X.carrier) :
    bergmanProjection hOpen ≠ 0 := by
  intro h
  have he := congrArg (fun T : AmbientL2 D.X →L[ℂ] AmbientL2 D.X =>
    T (l2Embedding hOpen (kernelVector hOpen x))) h
  rw [bergmanProjection_embedding, ContinuousLinearMap.zero_apply] at he
  apply kernelVector_ne_zero hOpen hArea x
  exact (l2Embedding hOpen).injective (by simpa only [map_zero] using he)

/-- A concrete disk instance supplies the finite-area hypothesis and a real point. -/
theorem disk_projection_not_zero :
    bergmanProjection
      GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen ≠ 0 :=
  projection_not_zero _
    GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.disk_finite_area
    GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center

/-- The null-point spike is projected to zero, not recovered at its exceptional point. -/
theorem spike_not_recovered :
    let h := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.diskCover_isOpen
    let x := GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.center
    (projectedFunction h GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2.Fixtures.spikeClass :
      Section GRWTSK.Analysis.Operator.HolomorphicLineSectionMultiplier.Fixtures.disk) x ≠
        GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike x := by
  dsimp only
  rw [GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaL2.Fixtures.spikeClass_zero,
    projectedFunction_zero, GRWTSK.Analysis.Operator.HolomorphicMultiplierArea.Fixtures.spike_center]
  exact zero_ne_one

end Fixtures
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicAreaProjection
