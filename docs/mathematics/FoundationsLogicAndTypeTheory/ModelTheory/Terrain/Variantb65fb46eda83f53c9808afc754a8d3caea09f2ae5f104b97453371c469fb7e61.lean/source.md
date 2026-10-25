# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Terrain.Variantb65fb46eda83f53c9808afc754a8d3caea09f2ae5f104b97453371c469fb7e61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b87a138fa7a3db3487b7d12b550b1f4ee7a53e0` · SHA-256 `b65fb46eda83f53c9808afc754a8d3caea09f2ae5f104b97453371c469fb7e61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Hilbert.PointCarrier
import DAF.Hilbert.PointedSpindle
import DAF.Language.TerrainLocator
import DAF.Rhetorical.Grounding
import DAF.Rhetorical.Hilbert.Point
import DAF.Universe.Manifest

/-!
# Terrain and theorem-cell adapters for rhetorical points

The kernel Hilbert space is an additional point carrier.  These records bind
one normalized rhetorical point to an already checked terrain locator or to
the optional rhetorical location of a theorem cell.  They do not alter cell,
node, theorem, or proof identity.
-/

noncomputable section

namespace DAF.Rhetorical

open DAF.Universe

/-- One kernel point located in an independently validated terrain route.
The exact terrain and rhetorical carriers remain separate components with
separate projections. -/
structure TerrainRhetoricalPoint
    (dimension : Nat)
    (kernel : PositiveKernel RhetoricalIndex)
    (context : Language.TerrainLocatorContext)
    (locator : Language.TerrainLocator) where
  terrainPoint : Hilbert.TerrainPoint dimension
  rhetoricalPoint : RhetoricalPoint kernel
  checkedLocator : Language.CheckedTerrainLocator context locator
  terrainCellLocated :
    ∃ face ∈ locator.cellFaces, face.cell = terrainPoint.cellId

namespace TerrainRhetoricalPoint

variable {dimension : Nat}
variable {kernel : PositiveKernel RhetoricalIndex}
variable {context : Language.TerrainLocatorContext}
variable {locator : Language.TerrainLocator}

/-- The finite hypercubic point carrier selected by the terrain coordinate. -/
def terrainVector
    (point : TerrainRhetoricalPoint dimension kernel context locator) :=
  point.terrainPoint.pointVector

/-- The normalized kernel feature selected by the concept-role coordinate. -/
def rhetoricalVector
    (point : TerrainRhetoricalPoint dimension kernel context locator) :=
  point.rhetoricalPoint.vector

/-- Both point carriers are unit vectors; no identification between their
different Hilbert spaces is asserted. -/
theorem vectors_norm_one
    (point : TerrainRhetoricalPoint dimension kernel context locator) :
    ‖point.terrainVector‖ = 1 ∧ ‖point.rhetoricalVector‖ = 1 :=
  ⟨point.terrainPoint.pointVector_norm,
    point.rhetoricalPoint.vector_norm_one⟩

/-- Terrain and rhetorical rank-one projections, retained as a typed pair so
neither carrier silently replaces the other. -/
def projections
    (point : TerrainRhetoricalPoint dimension kernel context locator) :=
  (point.terrainPoint.pointProjection,
    point.rhetoricalPoint.projection)

theorem projections_selfAdjoint
    (point : TerrainRhetoricalPoint dimension kernel context locator) :
    point.projections.1.adjoint = point.projections.1 ∧
      point.projections.2.adjoint = point.projections.2 :=
  ⟨point.terrainPoint.pointProjection_adjoint,
    point.rhetoricalPoint.projection_selfAdjoint⟩

theorem projections_idempotent
    (point : TerrainRhetoricalPoint dimension kernel context locator) :
    IsIdempotentElem point.projections.1 ∧
      IsIdempotentElem point.projections.2 :=
  ⟨point.terrainPoint.pointProjection_idempotent,
    point.rhetoricalPoint.projection_idempotent⟩

end TerrainRhetoricalPoint

/-- Optional product profile coupling an existing pointed Gamma-spindle state
to an independent rhetorical point.  It preserves both unit carriers and does
not treat rhetorical proximity as spectral or theorem evidence. -/
structure RhetoricalPointedSpindle
    (kernel : PositiveKernel RhetoricalIndex)
    (dimension : Nat)
    (Grid : Type)
    [Fintype Grid] [Nonempty Grid] where
  spindle : Hilbert.PointedSpindleState dimension Grid
  rhetoricalPoint : RhetoricalPoint kernel

namespace RhetoricalPointedSpindle

variable {kernel : PositiveKernel RhetoricalIndex}
variable {dimension : Nat} {Grid : Type}
variable [Fintype Grid] [Nonempty Grid]

/-- The two normalized factors are exposed separately because this adapter
does not assert a completed tensor-product identification. -/
def vectors (state : RhetoricalPointedSpindle kernel dimension Grid) :=
  (state.spindle.vector, state.rhetoricalPoint.vector)

theorem vectors_norm_one
    (state : RhetoricalPointedSpindle kernel dimension Grid) :
    ‖state.vectors.1‖ = 1 ∧ ‖state.vectors.2‖ = 1 :=
  ⟨state.spindle.vector_norm,
    state.rhetoricalPoint.vector_norm_one⟩

end RhetoricalPointedSpindle

/-- Checked realization of a theorem cell's optional rhetorical coordinate.
The equalities bind the transport metadata to the canonical kernel point.
The theorem-cell identity remains the projection already defined in
`DAF.Universe.TheoremCellDescriptor.identity`. -/
structure TheoremCellRhetoricalRealization
    (kernel : PositiveKernel RhetoricalIndex)
    (cell : TheoremCellDescriptor) where
  point : RhetoricalPoint kernel
  location : RhetoricalLocation
  locationPresent : cell.rhetoricalLocation = some location
  indexMatches : location.index = (point.concept, point.role)

namespace TheoremCellRhetoricalRealization

variable {kernel : PositiveKernel RhetoricalIndex}
variable {cell : TheoremCellDescriptor}

/-- Replacing a theorem cell's rhetorical realization cannot change theorem
identity because navigational coordinates are excluded from that projection. -/
theorem realization_does_not_change_theorem_identity
    (_realization : TheoremCellRhetoricalRealization kernel cell)
    (replacement : Option RhetoricalLocation) :
    ({ cell with rhetoricalLocation := replacement }).identity =
      cell.identity :=
  TheoremCellDescriptor.identity_update_rhetoricalLocation cell replacement

/-- The theorem-cell coordinate denotes the canonical normalized concept-role
vector selected by the bound point. -/
def vector
    (realization : TheoremCellRhetoricalRealization kernel cell) :=
  realization.point.vector

theorem vector_norm_one
    (realization : TheoremCellRhetoricalRealization kernel cell) :
    ‖realization.vector‖ = 1 :=
  realization.point.vector_norm_one

end TheoremCellRhetoricalRealization

/-- Registry-bound theorem-cell realization.  In addition to selecting the
canonical nonzero kernel point, this wrapper requires the location's kernel,
kernel digest, accepted trace, trace digest, PSD certificate, point report,
and symbolic factor-column identity to resolve through the registry. -/
structure CheckedTheoremCellRhetoricalRealization
    (kernel : PositiveKernel RhetoricalIndex)
    (cell : TheoremCellDescriptor)
    (registry : RhetoricalEvidenceRegistry)
    extends TheoremCellRhetoricalRealization kernel cell where
  locationCertified : toTheoremCellRhetoricalRealization.location.Certified registry

namespace CheckedTheoremCellRhetoricalRealization

variable {kernel : PositiveKernel RhetoricalIndex}
variable {cell : TheoremCellDescriptor}
variable {registry : RhetoricalEvidenceRegistry}

/-- Expanded registry evidence.  `PointReport.Matches` includes equality of
the report's vector digest with the exact symbolic factor column, while the
remaining conjuncts bind kernel, trace, point, and location identities. -/
theorem kernelTracePointFactorIdentity
    (realization :
      CheckedTheoremCellRhetoricalRealization kernel cell registry) :
    ∃ certificate,
      registry.gramTraceFor realization.location.activeGramTraceId =
          some certificate ∧
      realization.location.kernelId = certificate.kernelId ∧
      realization.location.kernelDigest = certificate.kernelDigest ∧
      realization.location.activeGramTraceId = certificate.traceId ∧
      realization.location.traceDigest = certificate.traceDigest ∧
      realization.location.psdCertificateId = certificate.psdCertificateId ∧
      ∃ report ∈ certificate.trace.points,
        Runtime.RHT1.PointReport.Matches certificate.trace report ∧
        report.source.resolve certificate.commitment.manifestWire =
          some realization.location.index.1.value.toUTF8.toList ∧
        report.roleTag = realization.location.index.2.tag ∧
        realization.location.pointVectorId =
          certificate.pointCertificateId report ∧
        realization.location.locationDigest = certificate.locationDigest
          realization.location.index.1 realization.location.index.2 report :=
  realization.locationCertified

/-- Registry checking is navigational: updating the checked realization still
cannot change the theorem cell's stable theorem identity. -/
theorem checked_realization_does_not_change_theorem_identity
    (_realization :
      CheckedTheoremCellRhetoricalRealization kernel cell registry)
    (replacement : Option RhetoricalLocation) :
    ({ cell with rhetoricalLocation := replacement }).identity =
      cell.identity :=
  TheoremCellDescriptor.identity_update_rhetoricalLocation cell replacement

end CheckedTheoremCellRhetoricalRealization

/-- Production specialization of the registry-bound theorem-cell adapter.
Unlike the generic checked adapter, its formal point carrier is definitionally
the Lean-owned `productionKernel`, and its location must carry the exact ID and
digest derived from `productionManifest`. -/
structure CheckedProductionTheoremCellRhetoricalRealization
    (cell : TheoremCellDescriptor)
    (registry : RhetoricalEvidenceRegistry)
    extends CheckedTheoremCellRhetoricalRealization
      KernelManifest.productionKernel cell registry where
  productionKernelIdMatches :
    toCheckedTheoremCellRhetoricalRealization.location.kernelId =
      ⟨KernelManifest.kernelId KernelManifest.productionManifest⟩
  productionKernelDigestMatches :
    toCheckedTheoremCellRhetoricalRealization.location.kernelDigest =
      rhetoricalDigest
        (KernelManifest.kernelDigest KernelManifest.productionManifest)

namespace CheckedProductionTheoremCellRhetoricalRealization

variable {cell : TheoremCellDescriptor}
variable {registry : RhetoricalEvidenceRegistry}

/-- The production wrapper simultaneously exposes its registry proof and the
Lean-derived production kernel identity. -/
theorem productionIdentityChecked
    (realization :
      CheckedProductionTheoremCellRhetoricalRealization cell registry) :
    realization.location.Certified registry ∧
      realization.location.kernelId =
        ⟨KernelManifest.kernelId KernelManifest.productionManifest⟩ ∧
      realization.location.kernelDigest = rhetoricalDigest
        (KernelManifest.kernelDigest KernelManifest.productionManifest) :=
  ⟨realization.locationCertified, realization.productionKernelIdMatches,
    realization.productionKernelDigestMatches⟩

end CheckedProductionTheoremCellRhetoricalRealization

end DAF.Rhetorical
```
