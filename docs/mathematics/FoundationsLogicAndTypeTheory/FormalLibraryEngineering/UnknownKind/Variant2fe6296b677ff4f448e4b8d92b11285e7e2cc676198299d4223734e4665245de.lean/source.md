# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnknownKind.Variant2fe6296b677ff4f448e4b8d92b11285e7e2cc676198299d4223734e4665245de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ef21f71a184c8c2d51310c98417c7457a3753bc` · SHA-256 `2fe6296b677ff4f448e4b8d92b11285e7e2cc676198299d4223734e4665245de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.RelationAlgebra

/-! # Exhaustive conservative unknown vocabulary -/

namespace Mathematics.SemanticTokenization

inductive SemanticTokenUnknownKind
  -- structural
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
  -- boundary
  | boundaryMetric
  | boundaryRule
  | boundaryThreshold
  | boundaryStability
  | segmentationUniqueness
  -- context
  | contextBinding
  | contextSufficiency
  | contextTransport
  | domainTransport
  | registerTransport
  | taskTransport
  -- phrase
  | phraseBoundary
  | syntacticDependency
  | phraseComposition
  | literalReading
  | contextualReading
  | compositionAdequacy
  -- idiom and metaphor
  | figurativeStatus
  | idiomaticity
  | idiomDomain
  | idiomProductivity
  | sourceDomain
  | targetDomain
  | metaphorMapping
  | readingPriority
  -- concept
  | conceptOntology
  | conceptOntologyCoverage
  | coreMeaning
  | protectedFeatures
  | tolerance
  | conceptEquivalence
  | toleranceTransitivity
  -- synonym
  | substitutability
  | pragmaticPreservation
  | singleWordEquivalent
  | globalSynonymy
  | crossContextStability
  -- network
  | edgeType
  | tokenConnectivity
  | relationAlgebra
  | pathSemantics
  | networkClosure
  | conceptMergeSafety
  | contradictionPropagation
  -- architectural language
  | irreducibilityMeaning
  | localFinitude
  | monoParent
  | polyHierarchy
  | deviceTransport
  | deviceNeutrality
  | boundaryInvariant
  | percolationModel
  | stabilityInvariant
  -- terminal semantic frontiers
  | interpretationAdequacy
  | contextTransportCompleteness
  | conceptOntologyCompleteness
  | pragmaticSubstitutionInvariant
  | universalIdiomClassification
  deriving DecidableEq, Repr

end Mathematics.SemanticTokenization
```
