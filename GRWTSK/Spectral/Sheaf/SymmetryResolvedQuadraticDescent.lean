/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.GraphTheory.RelationSandwich
import GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors
import GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

set_option autoImplicit false

/-!
# Symmetry-resolved quadratic descent on a frequency-ordered graph

Each vertex carries a finite-dimensional rational local model: a center, a bounded
four-symbol encoder/decoder, an indefinite symmetric Hermite form with a certified
signature `(1,1)` plane, a separate positive-definite metric, two commuting involutions,
and a symmetry-resolved finite operator pencil.

Each graph edge carries a bounded restriction map. The restriction preserves the encoded
source and intertwines both involutions. A compatible local zero record therefore retains
its sector, source, value-and-jet symbols, and coverage certificate along descent.
Compatible records define the support of a global spectral divisor, and every point of that
support is an intrinsic determinant zero at every vertex.

This is support-level descent. Analytic multiplicities, continuation, completeness of a
zeta divisor, infinite-dimensional Fredholm theory, and quantum speedups are not inferred.
-/

namespace GRWTSK.Spectral.Sheaf.SymmetryResolvedQuadraticDescent

open GRWTSK.Combinatorics.GraphTheory.RelationSandwich
open GRWTSK.LinearAlgebra.LinearMap.CommutingInvolutionSectors
open GRWTSK.LinearAlgebra.LinearMap.ReedSolomonRefinement

noncomputable section

/-- Four value-and-jet symbols. -/
abbrev Symbols := Fin 4 → ℚ

/-- A symmetric rational bilinear form. -/
structure SymmetricForm (V : Type*) [AddCommGroup V] [Module ℚ V] where
  form : V →ₗ[ℚ] (V →ₗ[ℚ] ℚ)
  symmetric : ∀ x y, form x y = form y x

/-- The quadratic form centered at a declared local center. -/
def centeredQuadratic {V : Type*} [AddCommGroup V] [Module ℚ V]
    (form : SymmetricForm V) (center x : V) : ℚ :=
  form.form (x - center) (x - center)

@[simp]
theorem centeredQuadratic_center
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (form : SymmetricForm V) (center : V) :
    centeredQuadratic form center center = 0 := by
  simp [centeredQuadratic]

@[simp]
theorem centeredQuadratic_translate
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (form : SymmetricForm V) (center x : V) :
    centeredQuadratic form center (center + x) = form.form x x := by
  simp [centeredQuadratic]

/-- Positive definiteness of the separate error metric. -/
def SymmetricForm.PositiveDefinite
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (form : SymmetricForm V) : Prop :=
  ∀ x, x ≠ 0 → 0 < form.form x x

/-- A concrete signature `(1,1)` certificate on a declared two-dimensional subspace. -/
def SymmetricForm.HasSignatureOneOneOn
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (form : SymmetricForm V) (plane : Submodule ℚ V) : Prop :=
  ∃ basis : Fin 2 → V,
    LinearIndependent ℚ basis ∧
    Submodule.span ℚ (Set.range basis) = plane ∧
    0 < form.form (basis 0) (basis 0) ∧
    form.form (basis 1) (basis 1) < 0 ∧
    form.form (basis 0) (basis 1) = 0

/-- Finite coordinate matrices representing the Hermite and metric forms. -/
structure CoordinateRealization
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (hermite metric : SymmetricForm V) where
  dimension : ℕ
  coordinates : V ≃ₗ[ℚ] (Fin dimension → ℚ)
  hermiteMatrix : Matrix (Fin dimension) (Fin dimension) ℚ
  metricMatrix : Matrix (Fin dimension) (Fin dimension) ℚ
  hermite_symmetric : hermiteMatrix.transpose = hermiteMatrix
  metric_symmetric : metricMatrix.transpose = metricMatrix
  hermite_represents : ∀ x y,
    hermite.form x y =
      dotProduct (coordinates x) (hermiteMatrix.mulVec (coordinates y))
  metric_represents : ∀ x y,
    metric.form x y =
      dotProduct (coordinates x) (metricMatrix.mulVec (coordinates y))

/-- All finite local data at one vertex. -/
structure LocalModel (Z V : Type*)
    [NormedAddCommGroup V] [NormedSpace ℚ V] [FiniteDimensional ℚ V] where
  center : V
  code : Code ℚ V Symbols
  hermite : SymmetricForm V
  hyperbolicPlane : Submodule ℚ V
  signature_one_one : hermite.HasSignatureOneOneOn hyperbolicPlane
  metric : SymmetricForm V
  metric_positive : metric.PositiveDefinite
  coordinates : CoordinateRealization hermite metric
  involutions : CommutingInvolutions V
  sectors : SectorDecomposition involutions
  pencil : ResolvedPencil Z V involutions

/-- A finite frequency-ordered sheaf of local quadratic models. -/
structure ModelSheaf
    (Vertex Z : Type*) (Stalk : Vertex → Type*)
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)] where
  edge : EdgeRelation Vertex
  frequency : Vertex → ℚ
  ordered : OrderedBy frequency edge
  model : ∀ vertex, LocalModel Z (Stalk vertex)
  restrict : ∀ {source target}, edge source target →
    Stalk source →L[ℚ] Stalk target
  encoded_source : ∀ {source target} (arrow : edge source target),
    (model target).code.encode.comp (restrict arrow) = (model source).code.encode
  sigma_intertwines : ∀ {source target} (arrow : edge source target),
    (restrict arrow).toLinearMap.comp (model source).involutions.sigma =
      (model target).involutions.sigma.comp (restrict arrow).toLinearMap
  tau_intertwines : ∀ {source target} (arrow : edge source target),
    (restrict arrow).toLinearMap.comp (model source).involutions.tau =
      (model target).involutions.tau.comp (restrict arrow).toLinearMap

namespace ModelSheaf

variable {Vertex Z : Type*} {Stalk : Vertex → Type*}
  [Fintype Vertex] [DecidableEq Vertex]
  [∀ vertex, NormedAddCommGroup (Stalk vertex)]
  [∀ vertex, NormedSpace ℚ (Stalk vertex)]
  [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]

/-- An edge restriction regarded as an involution intertwiner. -/
def edgeIntertwiner (sheaf : ModelSheaf Vertex Z Stalk)
    {source target : Vertex} (arrow : sheaf.edge source target) :
    Intertwiner (sheaf.model source).involutions (sheaf.model target).involutions where
  map := (sheaf.restrict arrow).toLinearMap
  sigma_intertwines := sheaf.sigma_intertwines arrow
  tau_intertwines := sheaf.tau_intertwines arrow

/-- Restriction along an edge preserves every symmetry sector. -/
theorem restrict_preserves_sector (sheaf : ModelSheaf Vertex Z Stalk)
    {source target : Vertex} (arrow : sheaf.edge source target)
    (sector : Sector) {x : Stalk source}
    (hx : (sheaf.model source).involutions.InSector sector x) :
    (sheaf.model target).involutions.InSector sector (sheaf.restrict arrow x) :=
  (sheaf.edgeIntertwiner arrow).maps_sector sector hx

/-- Compose bounded restriction maps along a nonempty directed path. -/
def transport (sheaf : ModelSheaf Vertex Z Stalk) :
    ∀ {source target}, Path sheaf.edge source target →
      Stalk source →L[ℚ] Stalk target
  | _, _, Path.single arrow => sheaf.restrict arrow
  | _, _, Path.tail path arrow => (sheaf.restrict arrow).comp (transport sheaf path)

/-- Encoded source data are preserved along an entire descent path. -/
theorem encoded_source_transport (sheaf : ModelSheaf Vertex Z Stalk)
    {source target : Vertex} (path : Path sheaf.edge source target) :
    (sheaf.model target).code.encode.comp (sheaf.transport path) =
      (sheaf.model source).code.encode := by
  induction path with
  | single arrow =>
      simpa [transport] using sheaf.encoded_source arrow
  | tail path arrow inductionHypothesis =>
      simp only [transport]
      rw [← ContinuousLinearMap.comp_assoc, sheaf.encoded_source arrow,
        inductionHypothesis]

end ModelSheaf

/-- One local symmetry-resolved zero with source, jet, and coverage data. -/
structure LocalZeroDatum
    {Vertex Z : Type*} {Stalk : Vertex → Type*}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
    (sheaf : ModelSheaf Vertex Z Stalk)
    (Coverage : Vertex → Type*) (z : Z) (vertex : Vertex) where
  sector : Sector
  source : Stalk vertex
  source_sector : (sheaf.model vertex).involutions.InSector sector source
  symbols : Symbols
  encoded : (sheaf.model vertex).code.encode source = symbols
  sector_zero : ((sheaf.model vertex).pencil.sectorMatrix sector z).det = 0
  coverage : Coverage vertex

namespace LocalZeroDatum

variable {Vertex Z : Type*} {Stalk : Vertex → Type*}
  [Fintype Vertex] [DecidableEq Vertex]
  [∀ vertex, NormedAddCommGroup (Stalk vertex)]
  [∀ vertex, NormedSpace ℚ (Stalk vertex)]
  [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
  {sheaf : ModelSheaf Vertex Z Stalk}
  {Coverage : Vertex → Type*} {z : Z} {vertex : Vertex}

/-- A certified sector zero is an intrinsic zero of the full local pencil. -/
theorem full_zero (datum : LocalZeroDatum sheaf Coverage z vertex) :
    ((sheaf.model vertex).pencil.operator z).det = 0 :=
  (ResolvedPencil.determinant_eq_zero_iff_sector
    (sheaf.model vertex).pencil z).2 ⟨datum.sector, datum.sector_zero⟩

end LocalZeroDatum

-- Preserve the named edge witness in the coverage/sector interface.
set_option linter.unusedVariables false in
/-- Edgewise compatibility for a family of local zero records. -/
structure CompatibleZeroDatum
    {Vertex Z : Type*} {Stalk : Vertex → Type*}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
    (sheaf : ModelSheaf Vertex Z Stalk)
    (Coverage : Vertex → Type*)
    (coverageCompatible : ∀ {source target} (arrow : sheaf.edge source target),
      Coverage source → Coverage target → Prop)
    (z : Z) where
  data : ∀ vertex, LocalZeroDatum sheaf Coverage z vertex
  sector_compatible : ∀ {source target} (arrow : sheaf.edge source target),
    (data source).sector = (data target).sector
  source_compatible : ∀ {source target} (arrow : sheaf.edge source target),
    sheaf.restrict arrow (data source).source = (data target).source
  coverage_compatible : ∀ {source target} (arrow : sheaf.edge source target),
    coverageCompatible arrow (data source).coverage (data target).coverage

namespace CompatibleZeroDatum

-- The shared coverage predicate retains its named edge witness for consumers.
set_option linter.unusedVariables false in
variable {Vertex Z : Type*} {Stalk : Vertex → Type*}
  [Fintype Vertex] [DecidableEq Vertex]
  [∀ vertex, NormedAddCommGroup (Stalk vertex)]
  [∀ vertex, NormedSpace ℚ (Stalk vertex)]
  [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
  {sheaf : ModelSheaf Vertex Z Stalk}
  {Coverage : Vertex → Type*}
  {coverageCompatible : ∀ {source target} (arrow : sheaf.edge source target),
    Coverage source → Coverage target → Prop}
  {z : Z}

/-- Value-and-jet symbols agree along every compatible edge. -/
theorem symbols_compatible
    (datum : CompatibleZeroDatum sheaf Coverage coverageCompatible z)
    {source target : Vertex} (arrow : sheaf.edge source target) :
    (datum.data source).symbols = (datum.data target).symbols := by
  have hencode := congrArg
    (fun map : Stalk source →L[ℚ] Symbols => map (datum.data source).source)
    (sheaf.encoded_source arrow)
  simp only [ContinuousLinearMap.comp_apply] at hencode
  calc
    (datum.data source).symbols =
        (sheaf.model source).code.encode (datum.data source).source :=
      (datum.data source).encoded.symm
    _ = (sheaf.model target).code.encode
          (sheaf.restrict arrow (datum.data source).source) := hencode.symm
    _ = (sheaf.model target).code.encode (datum.data target).source := by
      rw [datum.source_compatible arrow]
    _ = (datum.data target).symbols := (datum.data target).encoded

/-- The transported source remains in the same sector before identifying it with the target
source. -/
theorem transported_source_sector
    (datum : CompatibleZeroDatum sheaf Coverage coverageCompatible z)
    {source target : Vertex} (arrow : sheaf.edge source target) :
    (sheaf.model target).involutions.InSector
      (datum.data source).sector
      (sheaf.restrict arrow (datum.data source).source) :=
  sheaf.restrict_preserves_sector arrow (datum.data source).sector
    (datum.data source).source_sector

end CompatibleZeroDatum

-- Preserve the named edge witness in the coverage/sector interface.
set_option linter.unusedVariables false in
/-- The support of the global spectral divisor: parameters admitting compatible local
zero, jet, source, and coverage data at every vertex. Multiplicities are not inferred. -/
def globalSpectralDivisorSupport
    {Vertex Z : Type*} {Stalk : Vertex → Type*}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
    (sheaf : ModelSheaf Vertex Z Stalk)
    (Coverage : Vertex → Type*)
    (coverageCompatible : ∀ {source target} (arrow : sheaf.edge source target),
      Coverage source → Coverage target → Prop) : Set Z :=
  {z | Nonempty (CompatibleZeroDatum sheaf Coverage coverageCompatible z)}

/-- Parameters that are intrinsic full-pencil zeros at every vertex. -/
def commonLocalZeroSet
    {Vertex Z : Type*} {Stalk : Vertex → Type*}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
    (sheaf : ModelSheaf Vertex Z Stalk) : Set Z :=
  {z | ∀ vertex, ((sheaf.model vertex).pencil.operator z).det = 0}

-- Preserve the named edge witness in the coverage/sector interface.
set_option linter.unusedVariables false in
/-- Compatible local data glue to the global divisor support. -/
def glue
    {Vertex Z : Type*} {Stalk : Vertex → Type*}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
    {sheaf : ModelSheaf Vertex Z Stalk}
    {Coverage : Vertex → Type*}
    {coverageCompatible : ∀ {source target} (arrow : sheaf.edge source target),
      Coverage source → Coverage target → Prop}
    {z : Z}
    (localData : ∀ vertex, LocalZeroDatum sheaf Coverage z vertex)
    (sector_compatible : ∀ {source target} (arrow : sheaf.edge source target),
      (localData source).sector = (localData target).sector)
    (source_compatible : ∀ {source target} (arrow : sheaf.edge source target),
      sheaf.restrict arrow (localData source).source = (localData target).source)
    (coverage_compatible : ∀ {source target} (arrow : sheaf.edge source target),
      coverageCompatible arrow (localData source).coverage (localData target).coverage) :
    CompatibleZeroDatum sheaf Coverage coverageCompatible z where
  data := localData
  sector_compatible := sector_compatible
  source_compatible := source_compatible
  coverage_compatible := coverage_compatible

-- Preserve the named edge witness in the coverage/sector interface.
set_option linter.unusedVariables false in
/-- The descent theorem: a compatible family belongs to the global divisor support and is
an intrinsic full-pencil zero at every vertex. -/
theorem descent
    {Vertex Z : Type*} {Stalk : Vertex → Type*}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
    {sheaf : ModelSheaf Vertex Z Stalk}
    {Coverage : Vertex → Type*}
    {coverageCompatible : ∀ {source target} (arrow : sheaf.edge source target),
      Coverage source → Coverage target → Prop}
    {z : Z}
    (datum : CompatibleZeroDatum sheaf Coverage coverageCompatible z) :
    z ∈ globalSpectralDivisorSupport sheaf Coverage coverageCompatible ∧
      z ∈ commonLocalZeroSet sheaf := by
  constructor
  · change Nonempty (CompatibleZeroDatum sheaf Coverage coverageCompatible z)
    exact ⟨datum⟩
  · change ∀ vertex, ((sheaf.model vertex).pencil.operator z).det = 0
    intro vertex
    exact (datum.data vertex).full_zero

-- Preserve the named edge witness in the coverage/sector interface.
set_option linter.unusedVariables false in
/-- Every globally descended parameter is a full-pencil zero at every vertex. -/
theorem globalSpectralDivisorSupport_subset_commonLocalZeroSet
    {Vertex Z : Type*} {Stalk : Vertex → Type*}
    [Fintype Vertex] [DecidableEq Vertex]
    [∀ vertex, NormedAddCommGroup (Stalk vertex)]
    [∀ vertex, NormedSpace ℚ (Stalk vertex)]
    [∀ vertex, FiniteDimensional ℚ (Stalk vertex)]
    (sheaf : ModelSheaf Vertex Z Stalk)
    (Coverage : Vertex → Type*)
    (coverageCompatible : ∀ {source target} (arrow : sheaf.edge source target),
      Coverage source → Coverage target → Prop) :
    globalSpectralDivisorSupport sheaf Coverage coverageCompatible ⊆
      commonLocalZeroSet sheaf := by
  intro z hz
  change Nonempty (CompatibleZeroDatum sheaf Coverage coverageCompatible z) at hz
  change ∀ vertex, ((sheaf.model vertex).pencil.operator z).det = 0
  rcases hz with ⟨datum⟩
  intro vertex
  exact (datum.data vertex).full_zero

/-- The affine part of an invertible center or metric change. The center is retained as
metadata; determinant invariance depends on the invertible linear part and similarity of
the pencil. -/
structure AffineMetricTransport (V : Type*)
    [AddCommGroup V] [Module ℚ V] where
  sourceCenter : V
  targetCenter : V
  linear : V ≃ₗ[ℚ] V

/-- Apply an affine recentering followed by the invertible linear transport. -/
def AffineMetricTransport.apply
    {V : Type*} [AddCommGroup V] [Module ℚ V]
    (transport : AffineMetricTransport V) (x : V) : V :=
  transport.targetCenter + transport.linear (x - transport.sourceCenter)

/-- Conjugating a local pencil by the invertible linear transport preserves each intrinsic
zero predicate. -/
theorem affineMetricTransport_preserves_zero
    {Z V : Type*}
    [NormedAddCommGroup V] [NormedSpace ℚ V] [FiniteDimensional ℚ V]
    (model : LocalModel Z V) (transport : AffineMetricTransport V) (z : Z) :
    (conjugateOperator transport.linear (model.pencil.operator z)).det = 0 ↔
      (model.pencil.operator z).det = 0 :=
  det_conjugateOperator_eq_zero_iff transport.linear (model.pencil.operator z)

end

end GRWTSK.Spectral.Sheaf.SymmetryResolvedQuadraticDescent
