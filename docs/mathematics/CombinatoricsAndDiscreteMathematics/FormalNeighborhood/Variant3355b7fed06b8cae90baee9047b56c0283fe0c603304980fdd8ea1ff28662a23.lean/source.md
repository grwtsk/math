# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FormalNeighborhood.Variant3355b7fed06b8cae90baee9047b56c0283fe0c603304980fdd8ea1ff28662a23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db345341cb1a6e774588b5f5b5b6e004e8b8a256` · SHA-256 `2422183f8a5e350cb95160b29b3c2dad3547497b694d918424375aee7b80bdcf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FormalNeighborhoodCover.Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FormalNeighborhoodCover.Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/FormalNeighborhood.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.ExactOverlap
import Mathlib.Data.Finset.Union

/-!
# Exact overlapping formal neighborhoods

The reducer is a finite cover/DAG.  Children may intersect and an element may
occur along several routes.  The local carrier records exactly the part of a
node not supplied by its children, so no partition or preferred parent is
silently imposed.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FormalNeighborhoodCover.Variant27d5aad2cfa9bb493552de28f63993c780a218224f3d44f6057b1ad14edcde30

namespace Mathematics.Projection

universe u v w

structure FormalNeighborhoodCover
    (Element : Type u) (Neighborhood : Type v)
    [Fintype Element] [DecidableEq Element]
    [Fintype Neighborhood] [DecidableEq Neighborhood] where
  extent : Neighborhood → Finset Element
  children : Neighborhood → Finset Neighborhood
  localCarrier : Neighborhood → Finset Element
  roots : Finset Neighborhood
  childStrict :
    ∀ parent child,
      child ∈ children parent →
        extent child ⊂ extent parent
  exactDecomposition :
    ∀ neighborhood,
      extent neighborhood =
        localCarrier neighborhood ∪
          (children neighborhood).biUnion extent
  rootCoverage :
    roots.biUnion extent = Finset.univ

namespace FormalNeighborhoodCover

variable
    {Element : Type u} {Neighborhood : Type v}
    [Fintype Element] [DecidableEq Element]
    [Fintype Neighborhood] [DecidableEq Neighborhood]

noncomputable def flatFiber
    {Probe : Type w}
    (encode : Element → IncidenceCode Probe)
    (query : IncidenceCode Probe) :
    Finset Element := by
  classical
  exact Finset.univ.filter fun element ↦ encode element = query

/--
A deep reducer may use any exact traversal of the overlap DAG, but its result
must be extensionally equal to flat exact search.  This is the authority
condition that prevents pruning heuristics from deleting ties.
-/
structure DeepReducer
    {Probe : Type w}
    (cover : FormalNeighborhoodCover Element Neighborhood)
    (encode : Element → IncidenceCode Probe) where
  reduce : IncidenceCode Probe → Finset Element
  exact :
    ∀ query, reduce query = flatFiber encode query

end FormalNeighborhoodCover

end Mathematics.Projection
```
