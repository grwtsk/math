# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DistinctionAdapter.Variant7e95c4040299c6ad166c08ef60b771c208c1611e227cac694ba6e5f9675506cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ef0655de0981214c40203ddadf982ae4cf394cc` · SHA-256 `c8f0b90ffaac717f43db49872497506bf6aa91695b881bc820a59ab1b5f65d6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DistinctionCoordinate.Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DistinctionCoordinate.Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/BinaryFrontier/Presentation/DistinctionAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Refinement.Tree

/-!
# Presentation distinction adapters

Coordinate meaning is carried by immutable semantic references, never inferred
from array position.  Multi-coordinate edits are represented as explicit
chains of certified one-coordinate edges.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DistinctionCoordinate.Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549

namespace Mathematics.BinaryFrontier

structure DistinctionCoordinate (n : Nat) where
  index : Fin n
  coordinateId : String
  name : String
  semanticRef : String
  kindRef : String
  zeroMeaningRef : String
  oneMeaningRef : String
  unresolvedMeaningRef : String
  verifierRef : String
  authorityRef : String
  cognitiveLoadWeight : Nat

structure DistinctionRegistry (n : Nat) where
  registryId : String
  revisionRef : String
  coordinates : Fin n → DistinctionCoordinate n
  index_exact :
    ∀ index, (coordinates index).index = index

structure PresentationRefinementStep
    {n : Nat} where
  parent : PartialBitfield n
  child : PartialBitfield n
  edge : RefinementEdge parent child

structure PresentationRefinementChain
    (n : Nat) where
  sourcePresentationRef : String
  candidatePresentationRef : String
  steps : List (PresentationRefinementStep (n := n))
  affectedCoordinates : Finset (Fin n)
  everyAffectedCoordinateHasStep :
    ∀ coordinate ∈ affectedCoordinates,
      ∃ step ∈ steps,
        step.edge.resolution.coordinate = coordinate

def presentation_refinement_step_changes_one_coordinate
    {n : Nat}
    (step : PresentationRefinementStep (n := n)) :
    OneCoordinateResolution step.parent step.child :=
  step.edge.resolution

end Mathematics.BinaryFrontier
```
