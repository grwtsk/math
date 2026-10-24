# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrismaticProjection.Varianta517aa3a735af176ea8654e9b7692b267c5594e653dcea7f9f6b6e0ab94cdbc0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `641e877987f37acf1f15c6ca630b6e56c0f3ef36` · SHA-256 `77f4119a47ccc92e18fe1d3a1ffc951aa4f1736373cb345f7893288a19497a5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionErrorEnvelope.Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ProjectionErrorEnvelope.Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa","mathematical_subject":"Computation.DataStructures","original_sha256":"02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/PrismaticProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.ProjectionDepth

/-!
# Prismatic projection shadows

This module defines Lean-owned finite shadow-state records for a
certificate-gated toroidal/prismatic projection stream.

The records here are finite metadata only: hashes, public scale/depth numbers,
and error envelopes.  They do not internalize the full evolving geometry and
they do not compute prismatic cohomology or comparison theorems.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionErrorEnvelope.Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa

namespace Boolean
namespace Cube
namespace PrismaticProjection

/--
Finite error envelope attached to a shadow state.

The equality records that `total` is just the finite sum of the public error
channels.  No analytic convergence claim is made here.
-/
structure ProjectionErrorEnvelope where
  mesh : Nat
  dyadic : Nat
  spectral : Nat
  determinant : Nat
  prismatic : Nat
  trace : Nat
  zkp : Nat
  total : Nat
  total_eq :
    total = mesh + dyadic + spectral + determinant + prismatic + trace + zkp
deriving Repr, DecidableEq

/-- Hashes for the finite syntax/matrix lowering consumed by a shadow state. -/
structure MatrixTreeHashes where
  leftTreeHash : Nat
  rightTreeHash : Nat
  leftMatrixHash : Nat
  rightMatrixHash : Nat
deriving Repr, DecidableEq

/-- Hashes emitted by finite reducer and certificate-boundary layers. -/
structure BoundaryHashes where
  determinantBoundaryHash : Nat
  mobiusBoundaryReportHash : Nat
  spectralBoundaryHash : Nat
  prismaticBoundaryHash : Nat
deriving Repr, DecidableEq

/--
Finite toroidal/prismatic shadow state.

This is the Lean-owned public state for a projection stream.  It stores finite
indices, hashes, scale/depth data, and an error envelope; hidden geometry remains
behind external certificates in later layers.
-/
structure ToroidalShadowState where
  torusIndex : Nat
  valuationBoxHash : Nat
  squareFreeSupportHash : Nat
  matrixTreeHashes : MatrixTreeHashes
  kappa : Nat
  kappaPositive : kappa > 0
  pDepth : Nat
  boundaries : BoundaryHashes
  errorEnvelope : ProjectionErrorEnvelope
deriving Repr

/-- A finite stream of toroidal/prismatic shadow states. -/
structure ToroidalShadowStream where
  states : List ToroidalShadowState
  streamHash : Nat
deriving Repr

/--
External certificate for a local prismatic/toroidal shape update.

The finite stream consumes this certificate; it does not construct the
prismatic realization or comparison theorem itself.
-/
structure PrismaticCertificate where
  certificateHash : Nat
  boundaryHash : Nat
  comparisonSound : Prop
  precisionSound : Prop
  realizesFiniteBoundary : Prop

/--
Finite witness for one checked shadow-state update.

The witness relates two Lean-owned finite shadow states to an external
certificate.  Hash consistency is finite; geometry remains behind the
certificate fields.
-/
structure ShapeUpdateWitness where
  prior : ToroidalShadowState
  next : ToroidalShadowState
  certificate : PrismaticCertificate
  priorShadowHash : Nat
  nextShadowHash : Nat
  priorHashConsistent :
    priorShadowHash = prior.torusIndex
  nextHashConsistent :
    nextShadowHash = next.torusIndex
  boundaryHashConsistent :
    next.boundaries.prismaticBoundaryHash = certificate.boundaryHash

/--
Checked finite step predicate.

This is the local checker surface: it validates finite hash consistency and
requires comparison/precision evidence from the supplied certificate.
-/
def stepChecked (W : ShapeUpdateWitness) : Prop :=
  W.priorShadowHash = W.prior.torusIndex ∧
    W.nextShadowHash = W.next.torusIndex ∧
    W.next.boundaries.prismaticBoundaryHash = W.certificate.boundaryHash ∧
    W.certificate.comparisonSound ∧
    W.certificate.precisionSound

/-- A checked step exposes external comparison soundness. -/
theorem stepChecked_comparison_sound
    (W : ShapeUpdateWitness)
    (h : stepChecked W) :
    W.certificate.comparisonSound :=
  h.2.2.2.1

/-- A checked step exposes external precision soundness. -/
theorem stepChecked_precision_sound
    (W : ShapeUpdateWitness)
    (h : stepChecked W) :
    W.certificate.precisionSound :=
  h.2.2.2.2

/-- A checked step exposes prior shadow-hash consistency. -/
theorem stepChecked_prior_hash_consistency
    (W : ShapeUpdateWitness)
    (h : stepChecked W) :
    W.priorShadowHash = W.prior.torusIndex :=
  h.1

/-- A checked step exposes next shadow-hash consistency. -/
theorem stepChecked_next_hash_consistency
    (W : ShapeUpdateWitness)
    (h : stepChecked W) :
    W.nextShadowHash = W.next.torusIndex :=
  h.2.1

/-- The finite update witness does not own the full evolving geometry. -/
def ShapeUpdateWitnessOwnsFullGeometry
    (_W : ShapeUpdateWitness) : Prop :=
  False

theorem shape_update_witness_does_not_own_full_geometry
    (W : ShapeUpdateWitness) :
    ¬ ShapeUpdateWitnessOwnsFullGeometry W := by
  intro h
  exact h

/--
Tiny computed adapter for bounded toy examples.

This is intentionally just finite chart/transition/projection metadata.  It is
not a computation of a prismatic site or a comparison theorem.
-/
structure PrismaticComputed where
  localChartStateHash : Nat
  oneStepTransitionHash : Nat
  projectionHash : Nat
deriving Repr, DecidableEq

/--
Adapt bounded toy computation metadata into a checked shape-update witness.

The caller supplies the equalities that connect the toy hashes to the finite
shadow states and external certificate boundary.
-/
def PrismaticComputed.toShapeUpdateWitness
    (C : PrismaticComputed)
    (prior next : ToroidalShadowState)
    (certificate : PrismaticCertificate)
    (priorHashConsistent :
      C.localChartStateHash = prior.torusIndex)
    (nextHashConsistent :
      C.projectionHash = next.torusIndex)
    (boundaryHashConsistent :
      next.boundaries.prismaticBoundaryHash = certificate.boundaryHash) :
    ShapeUpdateWitness where
  prior := prior
  next := next
  certificate := certificate
  priorShadowHash := C.localChartStateHash
  nextShadowHash := C.projectionHash
  priorHashConsistent := priorHashConsistent
  nextHashConsistent := nextHashConsistent
  boundaryHashConsistent := boundaryHashConsistent

@[simp] theorem computed_toShapeUpdateWitness_prior_hash
    (C : PrismaticComputed)
    (prior next : ToroidalShadowState)
    (certificate : PrismaticCertificate)
    (hprior : C.localChartStateHash = prior.torusIndex)
    (hnext : C.projectionHash = next.torusIndex)
    (hboundary :
      next.boundaries.prismaticBoundaryHash = certificate.boundaryHash) :
    (C.toShapeUpdateWitness prior next certificate
      hprior hnext hboundary).priorShadowHash =
      C.localChartStateHash :=
  rfl

@[simp] theorem computed_toShapeUpdateWitness_next_hash
    (C : PrismaticComputed)
    (prior next : ToroidalShadowState)
    (certificate : PrismaticCertificate)
    (hprior : C.localChartStateHash = prior.torusIndex)
    (hnext : C.projectionHash = next.torusIndex)
    (hboundary :
      next.boundaries.prismaticBoundaryHash = certificate.boundaryHash) :
    (C.toShapeUpdateWitness prior next certificate
      hprior hnext hboundary).nextShadowHash =
      C.projectionHash :=
  rfl

/-- The shadow state exposes the finite valuation and square-free support hashes. -/
theorem shadow_state_exposes_support_hashes
    (S : ToroidalShadowState) :
    S.valuationBoxHash = S.valuationBoxHash ∧
      S.squareFreeSupportHash = S.squareFreeSupportHash :=
  ⟨rfl, rfl⟩

/-- The shadow state exposes finite tree and matrix hashes. -/
theorem shadow_state_exposes_matrix_tree_hashes
    (S : ToroidalShadowState) :
    S.matrixTreeHashes.leftTreeHash = S.matrixTreeHashes.leftTreeHash ∧
      S.matrixTreeHashes.rightTreeHash = S.matrixTreeHashes.rightTreeHash ∧
      S.matrixTreeHashes.leftMatrixHash = S.matrixTreeHashes.leftMatrixHash ∧
      S.matrixTreeHashes.rightMatrixHash = S.matrixTreeHashes.rightMatrixHash :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- The shadow state exposes finite reducer/certificate-boundary hashes. -/
theorem shadow_state_exposes_boundary_hashes
    (S : ToroidalShadowState) :
    S.boundaries.determinantBoundaryHash =
        S.boundaries.determinantBoundaryHash ∧
      S.boundaries.mobiusBoundaryReportHash =
        S.boundaries.mobiusBoundaryReportHash ∧
      S.boundaries.spectralBoundaryHash =
        S.boundaries.spectralBoundaryHash ∧
      S.boundaries.prismaticBoundaryHash =
        S.boundaries.prismaticBoundaryHash :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- The shadow state carries the public dyadic scale and prismatic depth. -/
theorem shadow_state_exposes_depths
    (S : ToroidalShadowState) :
    S.kappa > 0 ∧ S.pDepth = S.pDepth :=
  ⟨S.kappaPositive, rfl⟩

/-- The error envelope exposes its total-error equality. -/
theorem error_envelope_total_eq
    (E : ProjectionErrorEnvelope) :
    E.total =
      E.mesh + E.dyadic + E.spectral + E.determinant + E.prismatic +
        E.trace + E.zkp :=
  E.total_eq

/-! ## Small executable checked-update example -/

def exampleZeroErrorEnvelope : ProjectionErrorEnvelope where
  mesh := 0
  dyadic := 0
  spectral := 0
  determinant := 0
  prismatic := 0
  trace := 0
  zkp := 0
  total := 0
  total_eq := rfl

def exampleMatrixTreeHashes : MatrixTreeHashes where
  leftTreeHash := 101
  rightTreeHash := 102
  leftMatrixHash := 201
  rightMatrixHash := 202

def exampleBoundaryHashes : BoundaryHashes where
  determinantBoundaryHash := 301
  mobiusBoundaryReportHash := 302
  spectralBoundaryHash := 303
  prismaticBoundaryHash := 304

def examplePriorShadowState : ToroidalShadowState where
  torusIndex := 10
  valuationBoxHash := 401
  squareFreeSupportHash := 402
  matrixTreeHashes := exampleMatrixTreeHashes
  kappa := 4
  kappaPositive := by decide
  pDepth := 2
  boundaries := exampleBoundaryHashes
  errorEnvelope := exampleZeroErrorEnvelope

def exampleNextShadowState : ToroidalShadowState where
  torusIndex := 11
  valuationBoxHash := 501
  squareFreeSupportHash := 502
  matrixTreeHashes := exampleMatrixTreeHashes
  kappa := 4
  kappaPositive := by decide
  pDepth := 2
  boundaries := exampleBoundaryHashes
  errorEnvelope := exampleZeroErrorEnvelope

def examplePrismaticCertificate : PrismaticCertificate where
  certificateHash := 601
  boundaryHash := exampleBoundaryHashes.prismaticBoundaryHash
  comparisonSound := True
  precisionSound := True
  realizesFiniteBoundary := True

def examplePrismaticComputed : PrismaticComputed where
  localChartStateHash := examplePriorShadowState.torusIndex
  oneStepTransitionHash := 701
  projectionHash := exampleNextShadowState.torusIndex

def exampleShapeUpdateWitness : ShapeUpdateWitness :=
  examplePrismaticComputed.toShapeUpdateWitness
    examplePriorShadowState
    exampleNextShadowState
    examplePrismaticCertificate
    rfl
    rfl
    rfl

theorem example_stepChecked :
    stepChecked exampleShapeUpdateWitness := by
  exact ⟨rfl, rfl, rfl, trivial, trivial⟩

theorem example_stepChecked_exposes_precision :
    exampleShapeUpdateWitness.certificate.precisionSound :=
  stepChecked_precision_sound exampleShapeUpdateWitness example_stepChecked

end PrismaticProjection
end Cube
end Boolean
```
