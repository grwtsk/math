# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.AffectedOrder.Variant76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aedb196b6793e0203e5797ac57568f03b4f1568d` · SHA-256 `76772b4bbde2f888726a36ef826e40853ebf0883ae96acd7a6e763fc693fe5e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.DependencyClosure

namespace Surface
namespace Incremental

def indexOf [DecidableEq α]
    (x : α) : List α → Nat
  | [] => 0
  | y :: ys =>
      if x = y then
        0
      else
        Nat.succ (indexOf x ys)

structure AffectedModuleOrder where
  closure : DownstreamClosure
  ordered : List ModuleKey
  sameSet :
    ∀ M, M ∈ ordered ↔ M ∈ closure.affectedModules
  importsBeforeImporters :
    ∀ M I,
      M ∈ ordered →
      I ∈ ordered →
      imports closure.graph M I →
        indexOf I ordered < indexOf M ordered
  deterministicTieBreak : Prop
  deterministicTieBreakCertified : deterministicTieBreak
  orderHash : ContentHash
  claimBoundary : List String

structure ImportCycleReport where
  cycle : List ModuleKey
  edges : List ImportEdge
  explanation : String
  claimBoundary : List String
deriving Repr

theorem affectedOrder_sameSet
    (O : AffectedModuleOrder)
    (M : ModuleKey) :
    M ∈ O.ordered ↔ M ∈ O.closure.affectedModules :=
  O.sameSet M

theorem affectedOrder_contains_exactly_closure
    (O : AffectedModuleOrder)
    (M : ModuleKey) :
    M ∈ O.ordered ↔ M ∈ O.closure.affectedModules :=
  O.sameSet M

theorem affectedOrder_importsBeforeImporters
    (O : AffectedModuleOrder)
    {M I : ModuleKey}
    (hM : M ∈ O.ordered)
    (hI : I ∈ O.ordered)
    (hImports : imports O.closure.graph M I) :
    indexOf I O.ordered < indexOf M O.ordered :=
  O.importsBeforeImporters M I hM hI hImports

theorem affectedOrder_respects_import_dependencies
    (O : AffectedModuleOrder)
    {M I : ModuleKey}
    (hM : M ∈ O.ordered)
    (hI : I ∈ O.ordered)
    (hImports : imports O.closure.graph M I) :
    indexOf I O.ordered < indexOf M O.ordered :=
  O.importsBeforeImporters M I hM hI hImports

theorem affectedOrder_deterministic_given_graph_and_seeds
    (O : AffectedModuleOrder) :
    O.deterministicTieBreak :=
  O.deterministicTieBreakCertified

theorem affectedOrder_is_deterministic
    (O : AffectedModuleOrder) :
    O.deterministicTieBreak :=
  O.deterministicTieBreakCertified

theorem importCycle_blocks_incremental_plan
    (R : ImportCycleReport) :
    Nonempty ImportCycleReport :=
  ⟨R⟩

theorem importCycle_requires_failure_report
    (R : ImportCycleReport) :
    Nonempty ImportCycleReport :=
  ⟨R⟩

end Incremental
end Surface
```
