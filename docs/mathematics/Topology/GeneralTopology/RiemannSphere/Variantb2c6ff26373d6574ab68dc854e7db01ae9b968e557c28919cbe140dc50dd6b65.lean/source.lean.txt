module

public meta import Surface.Core.Classification
public import Mathlib.Topology.Compactification.OnePoint.Sphere
public import Mathlib.Topology.Maps.Proper.CompactlyGenerated
public import Mathlib.Analysis.Complex.Basic
public import Mathlib.Analysis.InnerProductSpace.ProdL2
import Mathlib.Tactic

/-!
# The Riemann sphere as an Alexandroff compactification

This module fixes an explicit three-real-coordinate model for the one-point
compactification of the complex plane. The ambient real inner-product space is
`ℂ × ℝ`: the complex coordinate supplies the equatorial coordinates, and the
real coordinate supplies the polar coordinate.

## Topological construction

At the carrier level, Mathlib declares `def OnePoint X := Option X`:
`Option.none` is written `∞`, and `Option.some x` is exposed by the canonical
coercion `(x : OnePoint X)`. The named `OnePoint` wrapper matters because it
receives a dedicated topology instead of `Option`'s ordinary disjoint-sum
topology, where `none` is isolated.

The compactification topology is not postulated. Its open sets and
neighborhoods of infinity are defined by complements of closed compact
subsets of `ℂ`. The finite-point coercion `ℂ → RiemannSphere` is an open dense
embedding. `OnePoint.map f`, implemented by `Option.map f`, always fixes
infinity at the carrier level; for a complex self-map, that extension is
continuous exactly when `f` is proper.

Mathlib supplies `CompactSpace (OnePoint X)` without hypotheses. It inherits
`T0Space` and `T1Space` from `X`; normality uses
`WeaklyLocallyCompactSpace X` and `R1Space X` (and therefore gives the expected
Hausdorff compactification for `ℂ`). If `X` is preconnected and noncompact,
`OnePoint X` is connected. These imported consequences are distinct from the
carrier computation rules below.

## Geometric identification

`riemannSphereHomeomorph` identifies the compactification with the unit sphere
by inverse stereographic projection. Infinity maps to the north pole, while
the coerced complex plane maps onto its complement. The coordinate order used
below is `(complex.re, real, complex.im)`.

The same chart has an affine tangent-plane model. The point `south = -north`
is the image of the complex origin, and
`tangentPlanePoint z = planePoint z - north` has coordinates
`(2 * z.re, -1, 2 * z.im)`. Inverse stereographic projection is the exact
intersection of the unit sphere with the ray from `north` through this affine
point.

The public adapters in this module deliberately use the abstract point at
infinity and the canonical finite-point coercion. They do not expose the
implementation constructors of `OnePoint`, and they make no claim about a
finite sampling, mesh, canvas, shader, or rasterization of the chart.
-/

public section

namespace Surface.Core.RiemannCompactification

noncomputable section

open Function Metric Set Submodule Topology
open scoped OnePoint RealInnerProductSpace ENNReal

/-- The Euclidean (`L²`) real three-space built from `ℂ × ℝ`.
The displayed `(X,Y,Z)` order is `(re, second, im)`. -/
abbrev Ambient := WithLp 2 (ℂ × ℝ)

/-- The geometric unit two-sphere in the chosen three-space. -/
abbrev AxisSphere := sphere (0 : Ambient) 1

/-- The Riemann sphere, definitionally the Alexandroff compactification of `ℂ`. -/
abbrev RiemannSphere := OnePoint ℂ

/-- The point added at infinity. -/
def infinity : RiemannSphere := ∞

/-- The defining Alexandroff open-set predicate specialized to the complex
plane. A set is open precisely when its finite preimage is open and, whenever
it contains infinity, the complement of that preimage is compact in `ℂ`.

This is a direct adapter for `OnePoint.isOpen_def`; in particular, it is a
statement about the topology itself rather than a derived coordinate model. -/
@[surface_adapter, surface_published]
theorem isOpen_iff_alexandroff {s : Set RiemannSphere} :
    IsOpen s ↔
      (infinity ∈ s →
        IsCompact (((↑) : ℂ → RiemannSphere) ⁻¹' s)ᶜ) ∧
      IsOpen (((↑) : ℂ → RiemannSphere) ⁻¹' s) := by
  simpa [infinity] using (OnePoint.isOpen_def (X := ℂ) (s := s))

/-- A neighborhood basis at the added point consists of complements of closed
compact subsets of the complex plane, together with the point itself.  The
filter identity exposes the defining Alexandroff topology for audit. -/
@[surface_adapter, surface_published]
theorem nhds_infinity_eq :
    nhds infinity =
      Filter.map ((↑) : ℂ → RiemannSphere) (Filter.coclosedCompact ℂ) ⊔
        pure infinity := by
  exact OnePoint.nhds_infty_eq

/-- The closed-compact-complement basis at infinity, in a form suitable for
point-set arguments. For every closed compact `K ⊆ ℂ`, the corresponding basic
neighborhood is the image of `Kᶜ` together with `infinity`, and these sets form
a basis of `nhds infinity`. -/
@[surface_adapter, surface_published]
theorem hasBasis_nhds_infinity :
    (nhds infinity).HasBasis
      (fun K : Set ℂ => IsClosed K ∧ IsCompact K)
      (fun K => ((↑) '' Kᶜ : Set RiemannSphere) ∪ {infinity}) := by
  simpa [infinity] using (OnePoint.hasBasis_nhds_infty (X := ℂ))

/-- The canonical inclusion of finite complex points is an open embedding. -/
@[surface_adapter, surface_published]
theorem finiteChart_isOpenEmbedding :
    IsOpenEmbedding ((↑) : ℂ → RiemannSphere) := by
  exact OnePoint.isOpenEmbedding_coe

/-- The finite complex chart is dense because `ℂ` is noncompact. Thus infinity
is the unique added point, not an additional open component. -/
@[surface_adapter, surface_published]
theorem finiteChart_denseRange :
    DenseRange ((↑) : ℂ → RiemannSphere) := by
  exact OnePoint.denseRange_coe

/-- The canonical inclusion is simultaneously an embedding and dense. -/
@[surface_adapter, surface_published]
theorem finiteChart_isDenseEmbedding :
    IsDenseEmbedding ((↑) : ℂ → RiemannSphere) := by
  exact OnePoint.isDenseEmbedding_coe

/-- A complex self-map extends continuously across infinity exactly when it is
proper. This is the concrete `ℂ → ℂ` specialization of two Mathlib results:

* `OnePoint.continuous_map_iff`, which characterizes continuity of
  `OnePoint.map f` using the `coclosedCompact` filters; and
* `isProperMap_iff_tendsto_cocompact`, whose Hausdorff compactly coherent target
  hypotheses are supplied by `ℂ`.

The `R1Space` instance on `ℂ` identifies `coclosedCompact` with `cocompact`.
No unrestricted proper-map equivalence for arbitrary topological spaces is
asserted here. -/
@[surface_adapter, surface_published]
theorem continuous_onePointMap_iff_isProperMap (f : ℂ → ℂ) :
    Continuous (OnePoint.map f : RiemannSphere → RiemannSphere) ↔
      IsProperMap f := by
  rw [OnePoint.continuous_map_iff,
    Filter.coclosedCompact_eq_cocompact,
    isProperMap_iff_tendsto_cocompact]

/-- The north pole used by the stereographic chart. -/
def north : Ambient := WithLp.toLp 2 (0, 1)

@[simp]
theorem norm_north : ‖north‖ = 1 := by
  simp [north]

/-- The south pole opposite the stereographic chart point at infinity. -/
def south : Ambient := -north

@[simp]
theorem norm_south : ‖south‖ = 1 := by
  simp [south, norm_north]

/-- The equatorial plane orthogonal to the north pole. -/
abbrev EquatorPlane := (ℝ ∙ north)ᗮ

/-- Put a complex number in the equatorial plane, with the scale used by the
standard stereographic formula. -/
def planePoint (z : ℂ) : EquatorPlane :=
  ⟨WithLp.toLp 2 ((2 : ℝ) • z, 0), by
    rw [Submodule.mem_orthogonal_singleton_iff_inner_right]
    simp [north]⟩

/-- The affine tangent-plane representative of `z`, obtained by translating
the scaled equatorial point to the plane tangent to the unit sphere at
`south`. -/
def tangentPlanePoint (z : ℂ) : Ambient :=
  (planePoint z : Ambient) - north

/-- The complex origin is the south-pole anchor of the affine tangent chart. -/
@[surface_novel, surface_published, simp]
theorem tangentPlanePoint_zero : tangentPlanePoint 0 = south := by
  apply WithLp.ofLp_injective 2
  simp [tangentPlanePoint, planePoint, south, north]

/-- Exact coordinates of the affine tangent-plane chart:
`T(u + iv) = (2u, -1, 2v)` in `(complex.re, real, complex.im)` order. -/
@[surface_novel, surface_published]
theorem tangentPlanePoint_components (u v : ℝ) :
    let p := (tangentPlanePoint (⟨u, v⟩ : ℂ)).ofLp
    (p.1.re, p.2, p.1.im) = (2 * u, -1, 2 * v) := by
  ext <;> simp [tangentPlanePoint, planePoint, north]

/-- Every affine chart point lies in the plane perpendicular to `north` at
signed height `-1`, equivalently the plane tangent to the unit sphere at
`south`. -/
@[surface_novel, surface_published]
theorem tangentPlanePoint_inner_north (z : ℂ) :
    ⟪tangentPlanePoint z, north⟫ = -1 := by
  have hz : ⟪north, (planePoint z : Ambient)⟫ = 0 :=
    Submodule.mem_orthogonal_singleton_iff_inner_right.mp (planePoint z).2
  rw [real_inner_comm, tangentPlanePoint, inner_sub_right, hz]
  simp [norm_north]

private theorem equator_second_eq_zero (w : EquatorPlane) : w.1.ofLp.2 = 0 := by
  have hw := Submodule.mem_orthogonal_singleton_iff_inner_right.mp w.2
  simpa [north] using hw

/-- Explicit linear coordinates `ℂ ≃` the equatorial plane. -/
def complexEquatorLinearEquiv : ℂ ≃ₗ[ℝ] EquatorPlane where
  toFun := planePoint
  invFun w := (1 / 2 : ℝ) • w.1.ofLp.1
  left_inv z := by
    simp [planePoint]
  right_inv w := by
    apply Subtype.ext
    apply WithLp.ofLp_injective 2
    apply Prod.ext
    · change (2 : ℝ) • ((1 / 2 : ℝ) • w.1.ofLp.1) = w.1.ofLp.1
      module
    · change 0 = w.1.ofLp.2
      exact (equator_second_eq_zero w).symm
  map_add' z w := by
    apply Subtype.ext
    apply WithLp.ofLp_injective 2
    change ((2 : ℝ) • (z + w), 0) =
      ((2 : ℝ) • z + (2 : ℝ) • w, 0 + 0)
    simp only [smul_add, add_zero]
  map_smul' r z := by
    apply Subtype.ext
    apply WithLp.ofLp_injective 2
    change ((2 : ℝ) • (r • z), 0) = (r • ((2 : ℝ) • z), r • 0)
    apply Prod.ext
    · simp only [smul_smul]
      congr 1
      ring
    · simp

/-- The coordinate equivalence is a homeomorphism. -/
def complexEquatorHomeomorph : ℂ ≃ₜ EquatorPlane :=
  complexEquatorLinearEquiv.toContinuousLinearEquiv.toHomeomorph

/-- The explicit compactification homeomorphism.  Finite points are sent by
inverse stereographic projection, and infinity is sent to the north pole. -/
def riemannSphereHomeomorph : RiemannSphere ≃ₜ AxisSphere :=
  complexEquatorHomeomorph.onePointCongr.trans
    (onePointHyperplaneHomeoUnitSphere norm_north)

@[surface_novel, surface_published, simp]
theorem riemannSphereHomeomorph_infinity :
    riemannSphereHomeomorph infinity = ⟨north, by simp [norm_north]⟩ := by
  rfl

@[surface_novel, surface_published]
theorem riemannSphereHomeomorph_bijective :
    Function.Bijective riemannSphereHomeomorph :=
  riemannSphereHomeomorph.bijective

/-- The finite branch of the compactification map, stated directly through
Mathlib's inverse stereographic projection. -/
@[surface_novel, surface_published, simp]
theorem riemannSphereHomeomorph_coe (z : ℂ) :
    riemannSphereHomeomorph (z : RiemannSphere) =
      (stereographic norm_north).symm (planePoint z) := by
  rfl

/-- The positive denominator in the inverse stereographic formula. -/
def stereographicDenominator (z : ℂ) : ℝ :=
  Complex.normSq z + 1

@[simp]
theorem stereographicDenominator_pos (z : ℂ) :
    0 < stereographicDenominator z := by
  unfold stereographicDenominator
  nlinarith [Complex.normSq_nonneg z]

private theorem planePoint_norm_sq (z : ℂ) :
    ‖(planePoint z : Ambient)‖ ^ 2 = 4 * Complex.normSq z := by
  rw [WithLp.prod_norm_sq_eq_of_L2]
  simp only [planePoint, WithLp.toLp_fst, WithLp.toLp_snd, norm_smul,
    Real.norm_ofNat, norm_zero, zero_pow (by norm_num : (2 : ℕ) ≠ 0), add_zero,
    mul_pow, Complex.sq_norm]
  ring

/-- The finite branch has an exact positive-`Y`-up coordinate formula. In
`Ambient = L²(ℂ × ℝ)`, the `(X,Y,Z)` coordinates are
`(complex.re, real, complex.im)`. This is an identity of the continuous chart,
not a statement about its rasterization. -/
@[surface_novel, surface_published]
theorem riemannSphereHomeomorph_coe_value (z : ℂ) :
    (riemannSphereHomeomorph (z : RiemannSphere) : Ambient) =
      WithLp.toLp 2
        (((2 / stereographicDenominator z : ℝ) • z),
          (Complex.normSq z - 1) / stereographicDenominator z) := by
  rw [riemannSphereHomeomorph_coe]
  change stereoInvFunAux north (planePoint z : Ambient) = _
  unfold stereoInvFunAux
  rw [planePoint_norm_sq]
  apply WithLp.ofLp_injective 2
  have hd : stereographicDenominator z ≠ 0 :=
    (stereographicDenominator_pos z).ne'
  have hfactor : 4 * Complex.normSq z + 4 = 4 * stereographicDenominator z := by
    simp only [stereographicDenominator]
    ring
  apply Prod.ext
  · simp only [WithLp.ofLp_fst, WithLp.smul_fst, WithLp.add_fst,
      WithLp.toLp_fst, planePoint, north, smul_zero, add_zero, smul_smul]
    apply congrArg (fun r : ℝ ↦ r • z)
    rw [hfactor]
    field_simp [hd]
  · simp only [WithLp.ofLp_snd, WithLp.smul_snd, WithLp.add_snd,
      WithLp.toLp_snd, planePoint, north, smul_eq_mul, mul_one]
    rw [hfactor]
    field_simp [hd]
    ring

/-- The complex origin maps exactly to the south pole. -/
@[surface_novel, surface_published, simp]
theorem riemannSphereHomeomorph_zero :
    riemannSphereHomeomorph ((0 : ℂ) : RiemannSphere) =
      ⟨south, by simp [norm_south]⟩ := by
  apply Subtype.ext
  rw [riemannSphereHomeomorph_coe_value]
  apply WithLp.ofLp_injective 2
  simp [stereographicDenominator, south, north]

/-- Exact north-to-tangent ray identity for inverse stereographic projection.
Writing `T(z) = tangentPlanePoint z` and
`d(z) = stereographicDenominator z`, the sphere point is
`north + d(z)⁻¹ • (T(z) - north)`. -/
@[surface_novel, surface_published]
theorem riemannSphereHomeomorph_coe_ray (z : ℂ) :
    (riemannSphereHomeomorph (z : RiemannSphere) : Ambient) =
      north + (stereographicDenominator z)⁻¹ •
        (tangentPlanePoint z - north) := by
  rw [riemannSphereHomeomorph_coe_value]
  apply WithLp.ofLp_injective 2
  apply Prod.ext
  · simp only [WithLp.ofLp_fst, WithLp.add_fst, WithLp.smul_fst,
      WithLp.sub_fst, WithLp.toLp_fst, tangentPlanePoint, planePoint, north,
      zero_add, sub_zero, smul_smul]
    congr 1
    rw [div_eq_mul_inv]
    ring
  · simp only [WithLp.ofLp_snd, WithLp.add_snd, WithLp.smul_snd,
      WithLp.sub_snd, WithLp.toLp_snd, tangentPlanePoint, planePoint, north,
      smul_eq_mul]
    have hd : stereographicDenominator z ≠ 0 :=
      (stereographicDenominator_pos z).ne'
    field_simp [hd]
    simp [stereographicDenominator]
    ring

/-- Component form of inverse stereographic projection:
`(2u/d, (u²+v²-1)/d, 2v/d)` with `d=u²+v²+1`. -/
@[surface_novel, surface_published]
theorem riemannSphereHomeomorph_components (u v : ℝ) :
    let p := (riemannSphereHomeomorph ((⟨u, v⟩ : ℂ) : RiemannSphere) : Ambient).ofLp
    (p.1.re, p.2, p.1.im) =
      (2 * u / (u ^ 2 + v ^ 2 + 1),
        (u ^ 2 + v ^ 2 - 1) / (u ^ 2 + v ^ 2 + 1),
        2 * v / (u ^ 2 + v ^ 2 + 1)) := by
  rw [riemannSphereHomeomorph_coe_value]
  ext <;>
    simp only [stereographicDenominator, Complex.normSq_mk,
      Complex.smul_re, Complex.smul_im] <;>
    ring

/-- Finite complex values cover exactly the sphere with its north pole
removed. The single missing chart value is supplied by `infinity`. This is a
range theorem for the continuous homeomorphism, not for a finite sampling or
rendered mesh. -/
@[surface_novel, surface_published]
theorem range_finite_stereographic :
    Set.range (fun z : ℂ ↦
      riemannSphereHomeomorph (z : RiemannSphere)) =
      ({riemannSphereHomeomorph infinity}ᶜ : Set AxisSphere) := by
  ext p
  constructor
  · rintro ⟨z, rfl⟩
    simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
    intro h
    have h' := riemannSphereHomeomorph.injective h
    exact OnePoint.coe_ne_infty z h'
  · intro hp
    simp only [Set.mem_compl_iff, Set.mem_singleton_iff] at hp
    obtain ⟨q, rfl⟩ := riemannSphereHomeomorph.surjective p
    have hq : q ≠ infinity := by
      intro h
      exact hp (congrArg riemannSphereHomeomorph h)
    obtain ⟨z, hz⟩ := OnePoint.ne_infty_iff_exists.mp hq
    exact ⟨z, congrArg riemannSphereHomeomorph hz⟩

end

end Surface.Core.RiemannCompactification
