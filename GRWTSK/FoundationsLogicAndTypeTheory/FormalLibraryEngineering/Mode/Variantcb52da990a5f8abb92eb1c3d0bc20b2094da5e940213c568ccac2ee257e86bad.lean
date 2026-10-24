-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraversalMode.Variant2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TraversalMode.Variant2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3","mathematical_subject":"Foundations.Unclassified","original_sha256":"2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Mode.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Objective

/-!
# Traversal mode semantics

The support relation is intentionally closed: mode names do not imply support
for objectives not represented by a constructor.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraversalMode.Variant2b9ed208a5dda4cdcd147a269999f84def4cd3894e98d21fe271d05c76c3f6a3

namespace Mathematics.GraphAccess

inductive TraversalMode
  | bfs
  | dijkstra
  | astar
  | rotor
  | universalSequence
  | debruijn
  | lowDiscrepancy
  | recaman
  | obstruction
  | cylinder
deriving DecidableEq, Repr

def TraversalMode.productKind :
    TraversalMode → AccessProductKind
  | .bfs => .path
  | .dijkstra => .path
  | .astar => .path
  | .rotor => .coverage
  | .universalSequence => .coverage
  | .debruijn => .coverage
  | .lowDiscrepancy => .sample
  | .recaman => .proposal
  | .obstruction => .obstruction
  | .cylinder => .coverage

inductive Supports :
    TraversalMode → AccessObjective → Prop
  | bfs :
      Supports .bfs .minimumHop
  | dijkstra :
      Supports .dijkstra .minimumCost
  | dijkstraGoalFallback :
      Supports .dijkstra .goalDirectedCost
  | astar :
      Supports .astar .goalDirectedCost
  | rotor :
      Supports .rotor .fairExploration
  | universalSequence :
      Supports .universalSequence .universalCoverage
  | debruijn :
      Supports .debruijn .finitePatternCoverage
  | lowDiscrepancy :
      Supports .lowDiscrepancy .invariantSampling
  | recaman :
      Supports .recaman .multiscaleDiversification
  | obstruction :
      Supports .obstruction .primitiveObstruction
  | cylinder :
      Supports .cylinder .limitCylinderAccess

theorem Supports.productKind_eq
    {mode : TraversalMode}
    {objective : AccessObjective}
    (support : Supports mode objective) :
    mode.productKind = objective.productKind := by
  cases support <;> rfl

end Mathematics.GraphAccess
