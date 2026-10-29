import Surface.Incremental.ReverseImportGraph
import Surface.Incremental.ReducerSeed

namespace Surface
namespace Incremental

inductive InclusionReason where
  | seedChanged
  | directReverseImport
  | transitiveReverseImport
  | declarationDependency
  | siteDependency
  | theoremManifestDependency
  | forcedByGeneratorVersion
  | forcedByToolchainChange
deriving Repr, DecidableEq

structure InclusionPath where
  seed : ModuleKey
  target : ModuleKey
  path : List ImportEdge
  reason : InclusionReason
  explanation : String
  claimBoundary : List String
deriving Repr

structure DownstreamClosure where
  graph : ImportGraph
  seeds : List ReducerSeed
  affectedModules : List ModuleKey
  inclusionPaths : List InclusionPath
  containsSeeds :
    ∀ s, s ∈ seeds → s.moduleKey ∈ affectedModules
  reverseClosed :
    ∀ A B,
      A ∈ affectedModules →
      reverseImports graph A B →
      B ∈ affectedModules
  everyAffectedExplained :
    ∀ M, M ∈ affectedModules →
      ∃ p ∈ inclusionPaths, p.target = M
  noUnexplainedModule :
    ∀ p, p ∈ inclusionPaths → p.target ∈ affectedModules
  minimalClosure : Prop
  minimalClosureCertified : minimalClosure
  claimBoundary : List String

theorem downstreamClosure_contains_seed
    (C : DownstreamClosure)
    (s : ReducerSeed)
    (hs : s ∈ C.seeds) :
    s.moduleKey ∈ C.affectedModules :=
  C.containsSeeds s hs

theorem reverseImportClosure_contains_seed
    (C : DownstreamClosure)
    (s : ReducerSeed)
    (hs : s ∈ C.seeds) :
    s.moduleKey ∈ C.affectedModules :=
  C.containsSeeds s hs

theorem downstreamClosure_reverse_closed
    (C : DownstreamClosure)
    {A B : ModuleKey}
    (hA : A ∈ C.affectedModules)
    (hrev : reverseImports C.graph A B) :
    B ∈ C.affectedModules :=
  C.reverseClosed A B hA hrev

theorem reverseImportClosure_is_reverse_closed
    (C : DownstreamClosure)
    {A B : ModuleKey}
    (hA : A ∈ C.affectedModules)
    (hrev : reverseImports C.graph A B) :
    B ∈ C.affectedModules :=
  C.reverseClosed A B hA hrev

theorem downstreamClosure_everyAffected_explained
    (C : DownstreamClosure)
    {M : ModuleKey}
    (hM : M ∈ C.affectedModules) :
    ∃ p ∈ C.inclusionPaths, p.target = M :=
  C.everyAffectedExplained M hM

theorem reverseImportClosure_every_module_explained
    (C : DownstreamClosure)
    {M : ModuleKey}
    (hM : M ∈ C.affectedModules) :
    ∃ p ∈ C.inclusionPaths, p.target = M :=
  C.everyAffectedExplained M hM

theorem downstreamClosure_no_unexplained_modules
    (C : DownstreamClosure)
    {p : InclusionPath}
    (hp : p ∈ C.inclusionPaths) :
    p.target ∈ C.affectedModules :=
  C.noUnexplainedModule p hp

theorem reverseImportClosure_is_minimal
    (C : DownstreamClosure) :
    C.minimalClosure :=
  C.minimalClosureCertified

end Incremental
end Surface
