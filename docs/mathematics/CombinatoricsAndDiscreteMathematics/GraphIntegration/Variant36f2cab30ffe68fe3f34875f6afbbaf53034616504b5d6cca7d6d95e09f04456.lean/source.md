# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphIntegration.Variant36f2cab30ffe68fe3f34875f6afbbaf53034616504b5d6cca7d6d95e09f04456

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdebbffb562bd3b3c962a0f62edd25cbd134c7ed` · SHA-256 `5ff42a6b3cb3973d20741da899bd458b63344ee03051c3ccbdb66a344e97db7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RHNodeClass.Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RHNodeClass.Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/GraphIntegration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Priority
import Mathematics.GraphAccess.All

/-!
# Graph-access compilation

RH objectives compile into the existing closed graph-access objective/mode
contract.  Domain scheduling hints remain advisory when the foundational
support relation does not assign them the requested authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RHNodeClass.Variant79494200a1bb2af0f8c13f8b652fd2734d7ff12c1c6722b876dea0403ce936ff

namespace Mathematics.RHIsolation

open Mathematics.GraphAccess

inductive RHNodeClass
  | analyticCell
  | zeroCountCertificate
  | uniqueZeroEnvelope
  | spectralCandidate
  | localCorrespondence
  | traceContribution
  | unresolvedObligation
deriving DecidableEq, Ord, Repr, Fintype

inductive RHEdgeClass
  | refines
  | countedBy
  | containsSameZero
  | symmetryPartner
  | proposedBySpectrum
  | locallyCorresponds
  | contributesToTrace
  | blocksCompleteness
deriving DecidableEq, Ord, Repr, Fintype

inductive RHObjective
  | certifyZeroCount
  | isolateAllZeros
  | auditFiniteHeightCompleteness
  | proposeSpectralMatches
  | certifyFiniteSpectralClosure
  | inspectCofinalCompatibility
  | searchTraceFactorization
deriving DecidableEq, Repr

def canonicalGraphModePlan
    (objective : AccessObjective) :
    ModePlan objective where
  primary := canonicalPrimaryMode objective
  supports :=
    canonicalPrimaryMode_supports objective
  tieBreaker := .canonicalOrder
  tieBreakerAllowed :=
    .canonical (canonicalPrimaryMode objective)
  revision := ⟨1⟩

structure RHGraphAccessPlan
    (objective : RHObjective) where
  graphObjective : AccessObjective
  graphPlan : ModePlan graphObjective
  analyticSchedulerHint :
    Option TraversalMode
  schedulerHintAdvisory : Prop
  schedulerHintAdvisoryProof :
    schedulerHintAdvisory

def RHObjective.toGraphAccessPlan :
    (objective : RHObjective) →
      RHGraphAccessPlan objective
  | .certifyZeroCount =>
      {
        graphObjective := .primitiveObstruction
        graphPlan :=
          canonicalGraphModePlan
            .primitiveObstruction
        analyticSchedulerHint := none
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .isolateAllZeros =>
      {
        graphObjective := .universalCoverage
        graphPlan :=
          canonicalGraphModePlan
            .universalCoverage
        analyticSchedulerHint := some .bfs
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .auditFiniteHeightCompleteness =>
      {
        graphObjective := .universalCoverage
        graphPlan :=
          canonicalGraphModePlan
            .universalCoverage
        analyticSchedulerHint := some .bfs
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .proposeSpectralMatches =>
      {
        graphObjective := .goalDirectedCost
        graphPlan :=
          canonicalGraphModePlan
            .goalDirectedCost
        analyticSchedulerHint := some .astar
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .certifyFiniteSpectralClosure =>
      {
        graphObjective := .universalCoverage
        graphPlan :=
          canonicalGraphModePlan
            .universalCoverage
        analyticSchedulerHint := none
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .inspectCofinalCompatibility =>
      {
        graphObjective := .limitCylinderAccess
        graphPlan :=
          canonicalGraphModePlan
            .limitCylinderAccess
        analyticSchedulerHint := some .cylinder
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }
  | .searchTraceFactorization =>
      {
        graphObjective := .invariantSampling
        graphPlan :=
          canonicalGraphModePlan
            .invariantSampling
        analyticSchedulerHint :=
          some .lowDiscrepancy
        schedulerHintAdvisory := True
        schedulerHintAdvisoryProof := trivial
      }

theorem RHObjective.compiledPlan_supported
    (objective : RHObjective) :
    Supports
      objective.toGraphAccessPlan.graphPlan.primary
      objective.toGraphAccessPlan.graphObjective :=
  objective.toGraphAccessPlan.graphPlan.supports

end Mathematics.RHIsolation
```
