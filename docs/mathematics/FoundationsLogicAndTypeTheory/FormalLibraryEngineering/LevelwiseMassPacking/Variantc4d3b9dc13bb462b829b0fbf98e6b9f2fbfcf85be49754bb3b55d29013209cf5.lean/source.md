# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelwiseMassPacking.Variantc4d3b9dc13bb462b829b0fbf98e6b9f2fbfcf85be49754bb3b55d29013209cf5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5860cdc52a7f6e23e8dad4dc350e3ed1df8b9b` · SHA-256 `405a0214c1258e96c6d6bd80334e1738c9df20ae2a08e3faeeb4e8718d3587f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelwiseCoefficientPartition.Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LevelwiseCoefficientPartition.Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/LevelwiseMassPacking.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.TypeII.MassPacking
import Mathlib.Tactic

/-!
# Levelwise coefficient-mass packing

At a fixed recursion depth the active left supports and active right supports
must each form a partition.  Encoding those two partitions by owner maps lets
the finite Cauchy--Schwarz theorem from `MassPacking` apply at every depth.

This file contains only coefficient-energy bookkeeping.  It does not assert
a local square estimate or a bound on tree depth.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LevelwiseCoefficientPartition.Variantce8da77b91204e551c7f4f0e74090c24dc4aa506cecc12d8802c69aeb0a3fd6f

public section

namespace Surface.Core.TypeII

noncomputable section

open scoped BigOperators

/-- Matched partitions at every depth.  The node family and owner maps are
coefficient-blind. -/
structure LevelwiseCoefficientPartition
    (Depth Left Right : Type*) [Fintype Depth]
    [Fintype Left] [Fintype Right] where
  Node : Depth → Type
  nodeFintype : ∀ depth, Fintype (Node depth)
  nodeDecidableEq : ∀ depth, DecidableEq (Node depth)
  leftOwner : ∀ depth, Left → Node depth
  rightOwner : ∀ depth, Right → Node depth

/-- Matched partition at one fixed depth. -/
@[expose]
def LevelwiseCoefficientPartition.atDepth
    {Depth Left Right : Type*} [Fintype Depth]
    [Fintype Left] [Fintype Right]
    (partition : LevelwiseCoefficientPartition Depth Left Right)
    (depth : Depth) :
    letI := partition.nodeFintype depth
    letI := partition.nodeDecidableEq depth
    MatchedCoefficientPartition (partition.Node depth) Left Right := by
  letI := partition.nodeFintype depth
  letI := partition.nodeDecidableEq depth
  exact {
    leftBlock := partition.leftOwner depth
    rightBlock := partition.rightOwner depth }

/-- Product mass of a node at one level. -/
@[expose]
def LevelwiseCoefficientPartition.nodeMass
    {Depth Left Right : Type*} [Fintype Depth]
    [Fintype Left] [Fintype Right]
    (partition : LevelwiseCoefficientPartition Depth Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right)
    (depth : Depth) (node : partition.Node depth) : ℝ :=
  letI := partition.nodeFintype depth
  letI := partition.nodeDecidableEq depth
  (partition.atDepth depth).childMass left right node

/-- At every depth, the sum of active node masses is bounded by the root
coefficient mass. -/
@[surface_novel, surface_published]
theorem LevelwiseCoefficientPartition.sum_nodeMass_le_parent
    {Depth Left Right : Type*} [Fintype Depth]
    [Fintype Left] [Fintype Right]
    (partition : LevelwiseCoefficientPartition Depth Left Right)
    (left : EuclideanSpace ℂ Left) (right : EuclideanSpace ℂ Right)
    (depth : Depth) :
    letI := partition.nodeFintype depth
    letI := partition.nodeDecidableEq depth
    (∑ node : partition.Node depth,
        partition.nodeMass left right depth node) ≤ ‖left‖ * ‖right‖ := by
  letI := partition.nodeFintype depth
  letI := partition.nodeDecidableEq depth
  exact (partition.atDepth depth).sum_childMass_le_parent left right

end

end Surface.Core.TypeII
```
