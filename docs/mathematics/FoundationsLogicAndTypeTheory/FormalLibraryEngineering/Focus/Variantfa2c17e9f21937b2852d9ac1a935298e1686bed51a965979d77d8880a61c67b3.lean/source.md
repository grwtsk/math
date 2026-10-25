# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Focus.Variantfa2c17e9f21937b2852d9ac1a935298e1686bed51a965979d77d8880a61c67b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `258405a0541880e87a8ab0d836d249d496ced7c1` · SHA-256 `f077aeaa3653aba983f7e38a4d834fd82e82a2b9a8dc340cdccab3bc126fa163`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnifiedSEAPayload.Variant4f933548659050de1c1a9386c6ce1371a6238267af2f677873811789213cb7bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f933548659050de1c1a9386c6ce1371a6238267af2f677873811789213cb7bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.UnifiedSEAPayload.Variant4f933548659050de1c1a9386c6ce1371a6238267af2f677873811789213cb7bf","mathematical_subject":"Foundations.Unclassified","original_sha256":"4f933548659050de1c1a9386c6ce1371a6238267af2f677873811789213cb7bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Focus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Cost
import Mathematics.AbelReynolds.Geometry
import Mathematics.AbelReynolds.ExtensionField
import Mathematics.AbelReynolds.Orbit
import Mathematics.AbelReynolds.SEA
import Mathematics.AbelReynolds.Stabilization
import Mathematics.AbelReynolds.Symmetry
import Mathematics.AbelReynolds.Template
import Mathematics.AbelReynolds.Specialization

/-!
# Certified symmetry-fixed tally-lifted SEA reuse

The positive payload is deliberately compact.  Its focus certificate binds
the full conjunction that may authorize the positive conclusion.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnifiedSEAPayload.Variant4f933548659050de1c1a9386c6ce1371a6238267af2f677873811789213cb7bf

namespace Mathematics.AbelReynolds

structure UnifiedSEAPayload where
  transcriptDigest : String
  transcriptCertificateDigest : String
  transcriptNodeMetadataDigest : String
  pointCount : Nat
  reusableTally : CertifiedTally
  tallyCount : Nat
  realizationSeparationDigest : String
  extensionFieldBasisDigest : String
  templateDigest : String
  dependencyCertificateDigest : String
  classPrimeFactorizationDigest : String
  primeHoleCertificateDigest : String
  symmetryCertificateDigest : String
  orbitCertificateDigest : String
  transportPathCertificateDigest : String
  terminalIdealDigest : String
  terminalSchemeDigest : String
  percolationCertificateDigest : String
  strataDigest : String
  strataCertificateDigest : String
  terminalTimeDigest : String
  specializationCertificateDigest : String
  fixedReturnDigest : String
  reflectionCertificateDigest : String
  coordinateCertificateDigest : String
  geometricHistoryDigest : String
  reuseCostDigest : String
  reuseCertificateDigest : String
  replayDigest : String
  boundaryCertificateDigest : String
  resultDigest : String
  deriving DecidableEq, Repr

structure UnifiedCutBinding where
  cutDigest : String
  snapshotDigest : String
  contextDigest : String
  classId : String
  primeId : String
  seaBound : Nat
  deriving DecidableEq, Repr

structure CertifiedSymmetryFixedTallyLiftedSEAReuse
    (cut : UnifiedCutBinding)
    (payload : UnifiedSEAPayload) : Prop where
  tallyCorrect :
    payload.reusableTally.length = payload.tallyCount
  realizationSeparated :
    payload.realizationSeparationDigest ≠ ""
  extensionFieldBasisCertified :
    payload.extensionFieldBasisDigest ≠ ""
  templateWellTyped :
    payload.templateDigest ≠ ""
  dependencyExact :
    payload.dependencyCertificateDigest ≠ ""
  classPrimeFactorized :
    payload.classPrimeFactorizationDigest ≠ ""
  primeHolesTyped :
    payload.primeHoleCertificateDigest ≠ ""
  reusableCoreNonempty : payload.reusableTally ≠ []
  symmetryFixed :
    payload.symmetryCertificateDigest ≠ ""
  orbitRelationComplete :
    payload.orbitCertificateDigest ≠ ""
  everyCharacterRetained :
    payload.orbitCertificateDigest ≠ ""
  percolationTerminalAndLeast :
    payload.percolationCertificateDigest ≠ ""
  terminalStrataCorrect :
    payload.strataCertificateDigest ≠ ""
  targetSpecializationAccepted :
    payload.specializationCertificateDigest ≠ ""
  transcriptPointCountSound :
    payload.transcriptCertificateDigest ≠ ""
  transcriptNodesComplete :
    payload.transcriptNodeMetadataDigest ≠ ""
  fixedReturnExact :
    payload.fixedReturnDigest ≠ ""
  geometricReflectionCertified :
    payload.reflectionCertificateDigest ≠ ""
  scalePerspectivePhaseSeparated :
    payload.coordinateCertificateDigest ≠ ""
  reuseOrOptimalityCertified :
    payload.reuseCertificateDigest ≠ ""
  replayExact :
    payload.replayDigest = payload.resultDigest
  boundaryConfined :
    payload.boundaryCertificateDigest ≠ "" ∧
      payload.transportPathCertificateDigest ≠ ""
  cutBound :
    cut.cutDigest ≠ "" ∧
      cut.snapshotDigest ≠ "" ∧
      cut.contextDigest ≠ ""

structure UnifiedCandidate (cut : UnifiedCutBinding) where
  payload : UnifiedSEAPayload
  certificate :
    CertifiedSymmetryFixedTallyLiftedSEAReuse cut payload

end Mathematics.AbelReynolds
```
