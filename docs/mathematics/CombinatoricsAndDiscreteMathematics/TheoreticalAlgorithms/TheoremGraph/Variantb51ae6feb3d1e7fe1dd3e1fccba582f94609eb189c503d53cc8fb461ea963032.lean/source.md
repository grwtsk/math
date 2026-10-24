# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TheoremGraph.Variantb51ae6feb3d1e7fe1dd3e1fccba582f94609eb189c503d53cc8fb461ea963032

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `327f863204792008938e0d4896f5367e7a801622` · SHA-256 `ab06862fb014c09634a4bcecdf1490f350b7606ebc5171348f648be74615e3d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RTHIdentifier.Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RTHIdentifier.Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9","mathematical_subject":"Computation.DataStructures","original_sha256":"4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremGraph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.TheoremTransfer.Foundations

/-!
Repository-bound theorem declarations and forward proof dependencies.

This is deliberately not `TheoremTransfer.TransferDependencyGraph`: that graph
records semantic transfer stages, whereas this graph records constants found
in one exact elaborated Lean environment.  Import order, filenames, reflection,
and equivalence are not constructors of `ProofDependencySource`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RTHIdentifier.Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9

namespace FCRS.TheoremGraph

open FCRS.TheoremTransfer

universe uNode

/-- Closed catalog of repository-theorem obligations RTH-01--RTH-14. -/
inductive RTHIdentifier where
  | rth01ExactSnapshotBinding
  | rth02CompleteLeanDeclarationInventory
  | rth03PrincipalTheoremFamilyCoverage
  | rth04ExactTheoremIdentityInjectivity
  | rth05DependencyExtractionSoundness
  | rth06DependencyExtractionCompleteness
  | rth07ForwardProofDependencyAcyclicity
  | rth08AssumptionClosure
  | rth09TheoryVersionContinuity
  | rth10RegistryProjectionBoundary
  | rth11BridgeMatrixTotality
  | rth12BridgeDispositionExclusivity
  | rth13HelperLemmaCoverage
  | rth14NoFilenameDerivedProofDependency
deriving Repr, DecidableEq

/-- Exact repository/build environment to which an inventory is bound. -/
structure RepositorySnapshot where
  repository : String
  revision : String
  sourceManifestDigest : String
  leanVersion : String
  mathlibRevision : String
  inventoryFormatVersion : String
deriving Repr, DecidableEq

/-- Lean's elaborated declaration class; lemma/theorem syntax shares this class. -/
inductive LeanProofDeclarationKind where
  | theoremOrLemma
deriving Repr, DecidableEq

/-- Stable identity of one declaration in one exact elaborated environment. -/
structure TheoremDeclarationIdentity where
  snapshot : RepositorySnapshot
  fullName : String
  sourceModule : String
  typeDigest : String
deriving Repr, DecidableEq

/-- An elaborated theorem/lemma declaration, not its proposition or proof. -/
structure TheoremDeclaration where
  identity : TheoremDeclarationIdentity
  kind : LeanProofDeclarationKind
  typeText : String
  axiomDependencies : List String
deriving Repr, DecidableEq

/-- A traversal occurrence of a declaration, separately versioned and scoped. -/
structure TheoremOccurrence where
  occurrenceVersion : VersionId
  declaration : TheoremDeclaration
  sequence : Nat
deriving Repr, DecidableEq

/-- Proposition identity remains distinct from declaration and proof identity. -/
structure PropositionIdentity where
  version : VersionId
deriving Repr, DecidableEq

/-- Proof identity remains distinct from declaration and proposition identity. -/
structure ProofIdentity where
  version : VersionId
deriving Repr, DecidableEq

/-- An assumption is a typed inventory entry rather than a truth-valued flag. -/
structure AssumptionOccurrence where
  assumptionVersion : VersionId
  proposition : PropositionIdentity
deriving Repr, DecidableEq

/-- Authoritative sources from which a forward proof dependency may be emitted. -/
inductive ProofDependencySource where
  | elaboratedConstantReference
  | compilerEnvironmentReference
deriving Repr, DecidableEq

/-- One source-bound dependency record extracted from compiled declaration data. -/
structure ExtractedProofDependency where
  dependencyVersion : VersionId
  predecessor : TheoremDeclarationIdentity
  successor : TheoremDeclarationIdentity
  source : ProofDependencySource
deriving Repr, DecidableEq

/-- Reflection/equivalence relationships live outside the forward proof DAG. -/
inductive SemanticRelationshipKind where
  | independentReflection
  | independentlyProvedEquivalence
deriving Repr, DecidableEq

structure SemanticRelationship where
  relationshipVersion : VersionId
  left : TheoremDeclarationIdentity
  right : TheoremDeclarationIdentity
  kind : SemanticRelationshipKind
deriving Repr, DecidableEq

/-- One exact declaration-to-axiom dependency retained by the exported
environment inventory. -/
structure AxiomDependencyOccurrence where
  declaration : TheoremDeclarationIdentity
  axiomName : String
deriving Repr, DecidableEq

/-- A finite repository inventory exported from one exact environment. -/
structure TheoremInventory where
  inventoryVersion : VersionId
  snapshot : RepositorySnapshot
  declarations : List TheoremDeclaration
  dependencies : List ExtractedProofDependency
  assumptions : List AssumptionOccurrence
  axiomOccurrences : List AxiomDependencyOccurrence

/-- External validation status cannot be confused with a kernel theorem. -/
inductive InventoryValidationStatus where
  | pending
  | accepted
  | rejected
deriving Repr, DecidableEq

structure InventoryValidationExecution where
  executionVersion : VersionId
  inventoryVersion : VersionId
  exporterVersion : VersionId
deriving Repr, DecidableEq

structure InventoryValidationResult
    (execution : InventoryValidationExecution) where
  resultVersion : VersionId
  executionVersion : VersionId
  executionExact : executionVersion = execution.executionVersion
  status : InventoryValidationStatus

/-- Accepted completeness is external evidence with a nonempty artifact ledger. -/
structure AcceptedInventoryValidation
    {execution : InventoryValidationExecution}
    (result : InventoryValidationResult execution) where
  acceptedExact : result.status = .accepted
  evidenceVersions : List VersionId
  evidenceNonempty : evidenceVersions ≠ []

/-- Ranked forward dependency graph over exact theorem occurrences. -/
structure ForwardDependencyGraph where
  Node : Type uNode
  occurrence : Node → TheoremOccurrence
  occurrenceInjective : Function.Injective occurrence
  dependsOn : Node → Node → Prop
  rank : Node → Nat
  rankIncreases : ∀ {predecessor successor},
    dependsOn predecessor successor → rank predecessor < rank successor

namespace ForwardDependencyGraph

/-- Nonempty transitive forward proof dependence. -/
inductive DependsTransitively (graph : ForwardDependencyGraph) :
    graph.Node → graph.Node → Prop where
  | direct {predecessor successor} :
      graph.dependsOn predecessor successor →
      DependsTransitively graph predecessor successor
  | step {first middle last} :
      DependsTransitively graph first middle →
      graph.dependsOn middle last →
      DependsTransitively graph first last

/-- Every nonempty proof-dependency path strictly increases rank. -/
theorem rank_lt_of_dependsTransitively
    (graph : ForwardDependencyGraph)
    {predecessor successor : graph.Node}
    (path : graph.DependsTransitively predecessor successor) :
    graph.rank predecessor < graph.rank successor := by
  induction path with
  | direct edge => exact graph.rankIncreases edge
  | step pathToMiddle edge inductionHypothesis =>
      exact Nat.lt_trans inductionHypothesis (graph.rankIncreases edge)

/-- RTH-07: ranked forward proof dependence is acyclic. -/
theorem rth07_forwardProofDependencyAcyclic
    (graph : ForwardDependencyGraph) (node : graph.Node) :
    ¬ graph.DependsTransitively node node := by
  intro cycle
  exact (Nat.lt_irrefl _) (graph.rank_lt_of_dependsTransitively cycle)

/-- A visited set contains the proof dependencies of every visited theorem. -/
def DependencyClosed
    (graph : ForwardDependencyGraph) (visited : graph.Node → Prop) : Prop :=
  ∀ {predecessor successor},
    graph.dependsOn predecessor successor →
    visited successor → visited predecessor

/-- Dependency readiness; cyclotomic data has no place in this definition. -/
def Ready
    (graph : ForwardDependencyGraph)
    (visited : graph.Node → Prop) (node : graph.Node) : Prop :=
  ¬ visited node ∧
    ∀ predecessor, graph.dependsOn predecessor node → visited predecessor

/-- Dependency closure propagates backward along every nonempty path. -/
theorem visited_of_path_to_visited
    (graph : ForwardDependencyGraph)
    {visited : graph.Node → Prop}
    (closed : graph.DependencyClosed visited)
    {predecessor successor : graph.Node}
    (path : graph.DependsTransitively predecessor successor)
    (visitedSuccessor : visited successor) : visited predecessor := by
  induction path with
  | direct edge => exact closed edge visitedSuccessor
  | step pathToMiddle edge inductionHypothesis =>
      exact inductionHypothesis (closed edge visitedSuccessor)

/-- One Kahn ready wave is an antichain for transitive proof dependence. -/
theorem readyWave_antichain
    (graph : ForwardDependencyGraph)
    {visited : graph.Node → Prop}
    (closed : graph.DependencyClosed visited)
    {left right : graph.Node}
    (leftReady : graph.Ready visited left)
    (rightReady : graph.Ready visited right) :
    ¬ graph.DependsTransitively left right := by
  intro path
  have rightPredecessorVisited : visited left := by
    cases path with
    | direct edge => exact rightReady.2 _ edge
    | step pathToMiddle edge =>
        exact graph.visited_of_path_to_visited closed pathToMiddle (rightReady.2 _ edge)
  exact leftReady.1 rightPredecessorVisited

end ForwardDependencyGraph

/-- Top-level RTH-07 entry point for the ranked-DAG acyclicity theorem. -/
theorem rth07_forwardProofDependencyAcyclic
    (graph : ForwardDependencyGraph) (node : graph.Node) :
    ¬ graph.DependsTransitively node node :=
  graph.rth07_forwardProofDependencyAcyclic node

/-- RTH-04: identity injection is carried as actual function injectivity. -/
structure ExactTheoremIdentityInventory (inventory : TheoremInventory) : Prop where
  identityInjective : Function.Injective
    (fun declaration : TheoremDeclaration => declaration.identity)

/-- RTH-08: every declaration-level axiom dependency has a matching exact
occurrence in the inventory, rather than a tautological membership projection. -/
structure AssumptionClosureCertificate (inventory : TheoremInventory) : Prop where
  axiomDependenciesRetained : ∀ declaration,
    declaration ∈ inventory.declarations →
    ∀ axiomName, axiomName ∈ declaration.axiomDependencies →
      ∃ occurrence,
        occurrence ∈ inventory.axiomOccurrences ∧
        occurrence.declaration = declaration.identity ∧
        occurrence.axiomName = axiomName
  noOrphanAxiomOccurrences : ∀ occurrence,
    occurrence ∈ inventory.axiomOccurrences →
      ∃ declaration,
        declaration ∈ inventory.declarations ∧
        declaration.identity = occurrence.declaration ∧
        occurrence.axiomName ∈ declaration.axiomDependencies

/-- RTH-14 is structural: forbidden filename/import sources have no constructor. -/
theorem rth14_noFilenameDerivedProofDependency
    (dependency : ExtractedProofDependency) :
    dependency.source = .elaboratedConstantReference ∨
      dependency.source = .compilerEnvironmentReference := by
  cases dependency.source <;> simp

end FCRS.TheoremGraph
```
