# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnknownKind.Variantb5f921f57da61c5fa28fc2fb63e7eca9536f01ddcf81d832a3fd6803f85b5867

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2fdd97f14c1548091d259b8a830ca87a65ae2b4c` · SHA-256 `14bef1363ff4077267522f058c0fd653237aae97237ff729482d15d04100f20e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StructuralUnknownKind.Variant53f0b4ac30060552ef19bc199e5ea2d7dee46ff65b8e60e6ca79685de20d0d22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53f0b4ac30060552ef19bc199e5ea2d7dee46ff65b8e60e6ca79685de20d0d22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.StructuralUnknownKind.Variant53f0b4ac30060552ef19bc199e5ea2d7dee46ff65b8e60e6ca79685de20d0d22","mathematical_subject":"Foundations.Unclassified","original_sha256":"53f0b4ac30060552ef19bc199e5ea2d7dee46ff65b8e60e6ca79685de20d0d22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemanticTokenization/UnknownKind.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemanticTokenization.Basic

/-!
# Category-specific semantic unknowns
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StructuralUnknownKind.Variant53f0b4ac30060552ef19bc199e5ea2d7dee46ff65b8e60e6ca79685de20d0d22

namespace Mathematics.SemanticTokenization

inductive StructuralUnknownKind
  | characterNormalization
  | offsetTransport
  | candidateSpanCoverage
  | baseTokenization
  | tokenCoverage
  | metadataTyping
  | evidenceProvenance
  | evidenceAdjudication
  | snapshot
  | replay
deriving DecidableEq, Repr

inductive BoundaryUnknownKind
  | boundaryMetric
  | boundaryRule
  | boundaryThreshold
  | boundaryStability
  | segmentationUniqueness
deriving DecidableEq, Repr

inductive ContextUnknownKind
  | contextBinding
  | contextSufficiency
  | contextTransport
  | domainTransport
  | registerTransport
  | diachronicTransport
  | speakerTransport
  | taskTransport
deriving DecidableEq, Repr

inductive PhraseUnknownKind
  | phraseBoundary
  | syntacticDependency
  | phraseComposition
  | literalReading
  | contextualReading
  | compositionAdequacy
deriving DecidableEq, Repr

inductive FigurativeUnknownKind
  | figurativeStatus
  | idiomaticity
  | idiomDomain
  | idiomProductivity
  | sourceDomain
  | targetDomain
  | metaphorMapping
  | readingPriority
deriving DecidableEq, Repr

inductive ConceptUnknownKind
  | conceptOntology
  | conceptOntologyCoverage
  | coreMeaning
  | protectedFeatures
  | tolerance
  | conceptEquivalence
  | toleranceTransitivity
deriving DecidableEq, Repr

inductive SynonymUnknownKind
  | substitutability
  | pragmaticPreservation
  | singleWordEquivalent
  | globalSynonymy
  | crossContextStability
deriving DecidableEq, Repr

inductive NetworkUnknownKind
  | edgeType
  | tokenConnectivity
  | relationAlgebra
  | pathSemantics
  | networkClosure
  | conceptMergeSafety
  | approximateEquivalenceQuotient
  | contradictionPropagation
deriving DecidableEq, Repr

inductive ArchitecturalUnknownKind
  | irreducibilityMeaning
  | localFinitude
  | monoParent
  | polyHierarchy
  | deviceTransport
  | deviceNeutrality
  | boundaryInvariant
  | percolationModel
  | stabilityInvariant
deriving DecidableEq, Repr

inductive SemanticTokenUnknownKind
  | structural (kind : StructuralUnknownKind)
  | boundary (kind : BoundaryUnknownKind)
  | context (kind : ContextUnknownKind)
  | phrase (kind : PhraseUnknownKind)
  | figurative (kind : FigurativeUnknownKind)
  | concept (kind : ConceptUnknownKind)
  | synonym (kind : SynonymUnknownKind)
  | network (kind : NetworkUnknownKind)
  | architectural (kind : ArchitecturalUnknownKind)
  | interpretationAdequacy
  | contextTransportCompleteness
  | conceptOntologyCompleteness
  | pragmaticSubstitutionInvariant
  | universalIdiomClassification
deriving DecidableEq, Repr

end Mathematics.SemanticTokenization
```
