# Complete source: GRWTSK.Topology.MetricTopology.StereographicBanach.Variant2e7c54a827aeb6136bfabfa2e875bd0b8dfa28ac84cb769cb2f34b2c09badcde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f38ac3fd07a23717ac5140ef2155b238e3eb9dbb` · SHA-256 `2e7c54a827aeb6136bfabfa2e875bd0b8dfa28ac84cb769cb2f34b2c09badcde`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public import Surface.Core.RiemannSphere
public import Mathlib.Analysis.Normed.Module.TransferInstance
public import Mathlib.Topology.MetricSpace.Isometry

/-!
# The finite stereographic chart as a Banach space

`OnePoint V` is the compact Alexandroff object.  Removing its added point gives
one finite chart.  This module deliberately wraps that chart in a new nominal
type before transporting the linear and metric structures of `V`; it installs
no algebraic instance on `OnePoint V` itself.

The distinction is semantic as well as technical.  Addition, scalar
multiplication, and norm on `FiniteOnePointChart V` are chart operations.  They
are obtained by moving to `V`, performing the operation there, and returning
to the finite branch.  They are not operations inherited from an ambient
sphere.  The chart equivalence is therefore a real linear isometry, and
completeness transfers from `V`.
-/

public section

namespace Surface.Core.StereographicBanach

noncomputable section

open scoped OnePoint

/-- A nominal wrapper for the finite branch of `OnePoint V`.

The proof field excludes the added point.  This is intentionally not an
abbreviation for a subtype: the wrapper prevents chart-dependent algebraic
instances from leaking onto either the full compactification or an unrelated
subtype used with its inherited topology. -/
structure FiniteOnePointChart (V : Type*) where
  point : OnePoint V
  ne_infinity : point ≠ ∞

namespace FiniteOnePointChart

variable {V : Type*}

/-- Embed a finite value into the finite chart. -/
@[expose] def ofValue (v : V) : FiniteOnePointChart V :=
  ⟨(v : OnePoint V), OnePoint.coe_ne_infty v⟩

/-- Recover the unique finite value represented by a chart point. -/
noncomputable def value (p : FiniteOnePointChart V) : V :=
  Classical.choose (OnePoint.ne_infty_iff_exists.mp p.ne_infinity)

@[simp]
theorem coe_value (p : FiniteOnePointChart V) :
    ((value p : V) : OnePoint V) = p.point :=
  Classical.choose_spec (OnePoint.ne_infty_iff_exists.mp p.ne_infinity)

@[simp]
theorem value_ofValue (v : V) : value (ofValue v) = v :=
  OnePoint.coe_injective <| by
    calc
      ((value (ofValue v) : V) : OnePoint V) = (ofValue v).point := coe_value _
      _ = (v : OnePoint V) := rfl

@[simp]
theorem point_ofValue (v : V) : (ofValue v).point = (v : OnePoint V) :=
  rfl

@[ext]
theorem ext {p q : FiniteOnePointChart V} (h : p.point = q.point) : p = q := by
  rcases p with ⟨p, hp⟩
  rcases q with ⟨q, hq⟩
  cases h
  rfl

@[simp]
theorem ofValue_value (p : FiniteOnePointChart V) : ofValue (value p) = p := by
  apply ext
  exact coe_value p

/-- The exact carrier equivalence between the punctured compactification and
its finite coordinate space. -/
@[expose] def chartEquiv : FiniteOnePointChart V ≃ V where
  toFun := value
  invFun := ofValue
  left_inv := ofValue_value
  right_inv := value_ofValue

@[simp]
theorem chartEquiv_apply (p : FiniteOnePointChart V) : chartEquiv p = value p :=
  rfl

@[simp]
theorem chartEquiv_symm_apply (v : V) : chartEquiv.symm v = ofValue v :=
  rfl

/- The following instances are transported only to the nominal finite-chart
wrapper.  Their definitional behavior makes `chartEquiv` linear and isometric. -/

instance [AddCommGroup V] : AddCommGroup (FiniteOnePointChart V) :=
  chartEquiv.addCommGroup

instance [AddCommGroup V] [Module ℝ V] : Module ℝ (FiniteOnePointChart V) :=
  chartEquiv.module ℝ

instance [NormedAddCommGroup V] : NormedAddCommGroup (FiniteOnePointChart V) :=
  chartEquiv.normedAddCommGroup

instance [NormedAddCommGroup V] [NormedSpace ℝ V] :
    NormedSpace ℝ (FiniteOnePointChart V) :=
  chartEquiv.normedSpace ℝ

/-- Stereographic coordinates, bundled as a real linear isometric
equivalence.  The norm on the source is definitionally `‖value p‖`. -/
@[expose] def chartLinearIsometryEquiv [NormedAddCommGroup V] [NormedSpace ℝ V] :
    FiniteOnePointChart V ≃ₗᵢ[ℝ] V where
  __ := chartEquiv.linearEquiv ℝ
  norm_map' _ := rfl

@[simp]
theorem chartLinearIsometryEquiv_apply [NormedAddCommGroup V] [NormedSpace ℝ V]
    (p : FiniteOnePointChart V) : chartLinearIsometryEquiv p = value p :=
  rfl

@[simp]
theorem chartLinearIsometryEquiv_symm_apply [NormedAddCommGroup V] [NormedSpace ℝ V]
    (v : V) : chartLinearIsometryEquiv.symm v = ofValue v :=
  rfl

/-- Completeness is transported through the chart isometry. -/
instance [NormedAddCommGroup V] [NormedSpace ℝ V] [CompleteSpace V] :
    CompleteSpace (FiniteOnePointChart V) :=
  chartLinearIsometryEquiv.toIsometryEquiv.completeSpace

/-- The finite chart is complete whenever its coordinate space is complete.
This theorem is a named audit surface for the transported typeclass. -/
theorem completeSpace [NormedAddCommGroup V] [NormedSpace ℝ V] [CompleteSpace V] :
    CompleteSpace (FiniteOnePointChart V) :=
  inferInstance

/-- Every chart-Cauchy net has its limit in the finite chart.  This names the
Banach conclusion as an ordinary theorem, in addition to the transported
`CompleteSpace` instance, so it is available to the Surface audit index. -/
@[surface_novel, surface_published]
theorem finiteOnePointChart_isComplete_univ
    [NormedAddCommGroup V] [NormedSpace ℝ V] [CompleteSpace V] :
    IsComplete (Set.univ : Set (FiniteOnePointChart V)) :=
  completeSpace_iff_isComplete_univ.mp inferInstance

@[simp]
theorem value_zero [NormedAddCommGroup V] [NormedSpace ℝ V] :
    value (0 : FiniteOnePointChart V) = 0 := by
  exact map_zero chartLinearIsometryEquiv

@[simp]
theorem zero_point [NormedAddCommGroup V] [NormedSpace ℝ V] :
    (0 : FiniteOnePointChart V).point = ((0 : V) : OnePoint V) := by
  have hzero : (0 : FiniteOnePointChart V) = ofValue (0 : V) := by
    apply chartEquiv.injective
    simp
  rw [hzero]
  rfl

@[simp]
theorem value_add [NormedAddCommGroup V] [NormedSpace ℝ V]
    (p q : FiniteOnePointChart V) : value (p + q) = value p + value q :=
  map_add chartLinearIsometryEquiv p q

@[simp]
theorem value_neg [NormedAddCommGroup V] [NormedSpace ℝ V]
    (p : FiniteOnePointChart V) : value (-p) = -value p :=
  map_neg chartLinearIsometryEquiv p

@[simp]
theorem value_sub [NormedAddCommGroup V] [NormedSpace ℝ V]
    (p q : FiniteOnePointChart V) : value (p - q) = value p - value q :=
  map_sub chartLinearIsometryEquiv p q

@[simp]
theorem value_smul [NormedAddCommGroup V] [NormedSpace ℝ V]
    (r : ℝ) (p : FiniteOnePointChart V) : value (r • p) = r • value p :=
  map_smul chartLinearIsometryEquiv r p

@[simp]
theorem norm_eq [NormedAddCommGroup V] [NormedSpace ℝ V]
    (p : FiniteOnePointChart V) : ‖p‖ = ‖value p‖ := by
  symm
  exact chartLinearIsometryEquiv.norm_map p

@[simp]
theorem dist_eq [NormedAddCommGroup V] [NormedSpace ℝ V]
    (p q : FiniteOnePointChart V) : dist p q = dist (value p) (value q) :=
  chartLinearIsometryEquiv.isometry.dist_eq p q

end FiniteOnePointChart

open FiniteOnePointChart
open Surface.Core.RiemannCompactification

/-- The finite chart of the Riemann sphere.  Its algebraic and normed
structures are transported from `ℂ`; the full `RiemannSphere` remains only the
compactification. -/
abbrev FiniteRiemannChart := FiniteOnePointChart ℂ

/-- The Riemann finite chart is real-linearly isometric to the complex plane. -/
def riemannChartLinearIsometryEquiv : FiniteRiemannChart ≃ₗᵢ[ℝ] ℂ :=
  chartLinearIsometryEquiv

/-- The finite Riemann chart is a complete real normed vector space. -/
@[surface_novel, surface_published]
theorem riemannFiniteChart_isComplete_univ :
    IsComplete (Set.univ : Set FiniteRiemannChart) :=
  finiteOnePointChart_isComplete_univ

@[simp]
theorem riemannChart_zero_point :
    (0 : FiniteRiemannChart).point = ((0 : ℂ) : RiemannSphere) :=
  zero_point

/-- Under the geometric compactification homeomorphism, the zero vector of
the transported Banach chart is the south pole. -/
@[surface_novel, surface_published, simp]
theorem riemannChart_zero_maps_to_south :
    riemannSphereHomeomorph (0 : FiniteRiemannChart).point =
      ⟨south, by simp [norm_south]⟩ := by
  rw [riemannChart_zero_point]
  exact riemannSphereHomeomorph_zero

end

end Surface.Core.StereographicBanach
```
