# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Legality.Variant319063ddaf028769572bc5cdac2062f6a072498396ad892d295c690a594834d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce9f4e8cdc80e8a818ddcfaea7873fc2dcd698f7` · SHA-256 `87674e68db8e477c04697256251bf421bcc6ef4a22192fd2caa0ac11e12ac6c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TerrainMoveLegality.Variantc36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TerrainMoveLegality.Variantc36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Terrain/Legality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Terrain.Move

/-!
# Terrain-local move legality

This module certifies only the terrain-owned portion of legality: exact locus,
adjacency/boundary, obstacles, capacity, conservation, and compatibility with
the fixed global ruleset.  Matrix, raster, torsion, determinant, prismatic, and
cross-layer checks belong to integration; this certificate is therefore never
presented as complete move legality.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TerrainMoveLegality.Variantc36c2578f1a76bac923f466d7b191d4df7f19790201065e10bfd431446c52765

universe u v

namespace DAF.Terrain

/-- Conjunctive terrain-local legality for one globally located move. -/
structure TerrainMoveLegality
    {State : Type u} {G : KnownMaximalState State}
    {V : Type v} [Fintype V] [DecidableEq V]
    (move : TerrainMove G V) where
  exactGlobalLocus : Prop
  exactGlobalLocus_proof : exactGlobalLocus
  adjacencyCompliant : Prop
  adjacencyCompliant_proof : adjacencyCompliant
  boundaryCompliant : Prop
  boundaryCompliant_proof : boundaryCompliant
  obstacleCompliant : Prop
  obstacleCompliant_proof : obstacleCompliant
  capacityCompliant : Prop
  capacityCompliant_proof : capacityCompliant
  conservative : Prop
  conservative_proof : conservative
  globalRulesetCompatible : Prop
  globalRulesetCompatible_proof : globalRulesetCompatible

namespace TerrainMoveLegality

variable {State : Type u} {G : KnownMaximalState State}
  {V : Type v} [Fintype V] [DecidableEq V]
  {move : TerrainMove G V}

/-- All terrain-local obligations are available separately. -/
theorem conjunction (h : TerrainMoveLegality move) :
    h.exactGlobalLocus ∧
    h.adjacencyCompliant ∧
    h.boundaryCompliant ∧
    h.obstacleCompliant ∧
    h.capacityCompliant ∧
    h.conservative ∧
    h.globalRulesetCompatible :=
  ⟨h.exactGlobalLocus_proof,
   h.adjacencyCompliant_proof,
   h.boundaryCompliant_proof,
   h.obstacleCompliant_proof,
   h.capacityCompliant_proof,
   h.conservative_proof,
   h.globalRulesetCompatible_proof⟩

end TerrainMoveLegality

/-- A move admitted to terrain-local algorithms, paired with its certificate. -/
structure AdmittedTerrainMove
    {State : Type u} (G : KnownMaximalState State)
    (V : Type v) [Fintype V] [DecidableEq V] where
  move : TerrainMove G V
  legality : TerrainMoveLegality move

end DAF.Terrain
```
