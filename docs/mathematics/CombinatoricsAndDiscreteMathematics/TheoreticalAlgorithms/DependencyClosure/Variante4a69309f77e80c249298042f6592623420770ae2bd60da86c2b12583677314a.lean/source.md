# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DependencyClosure.Variante4a69309f77e80c249298042f6592623420770ae2bd60da86c2b12583677314a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a98e4d3e565a17578d7b3169bc8c2bdb5e85d9f4` · SHA-256 `57620a5de6d362f8aaa5118e66bfd86ea3d05b8063b50f95a028ebb97a3ca3cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InclusionReason.Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.InclusionReason.Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531","mathematical_subject":"Computation.DataStructures","original_sha256":"8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Incremental/DependencyClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Incremental.ReverseImportGraph
import Surface.Incremental.ReducerSeed


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InclusionReason.Variant8567bd341a218547793dbd001fccc309acd45cae1ddf719addda8aa1ac9e4531

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
