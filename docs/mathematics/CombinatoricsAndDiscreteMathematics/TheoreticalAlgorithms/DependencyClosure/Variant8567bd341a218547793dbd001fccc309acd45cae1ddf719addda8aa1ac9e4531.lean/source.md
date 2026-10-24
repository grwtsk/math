# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DependencyClosure.Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf6b3705feae0a363c60217b425e28bb8c31897f` · SHA-256 `8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
