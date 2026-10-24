# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Subsumption.Variant17efe348cf259828af8edf8ad753ea423ccb941d92089263ca293f027a3ca07c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f36f489218ca94b2fe62a34be93b20273116a930` · SHA-256 `1a46f4b4740759fad3c48ee309c317795508f06ae4e684deba58e8f12464f99d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EveryKernelProvedEuclideanItemIsMathematicsTheorem.Variant1fa051a56127b3c7f88cfb60facde8715fbd2f7bdcdce71e4966bf1a2a850c54","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1fa051a56127b3c7f88cfb60facde8715fbd2f7bdcdce71e4966bf1a2a850c54","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.EveryKernelProvedEuclideanItemIsMathematicsTheorem.Variant1fa051a56127b3c7f88cfb60facde8715fbd2f7bdcdce71e4966bf1a2a850c54","mathematical_subject":"Computation.DataStructures","original_sha256":"1fa051a56127b3c7f88cfb60facde8715fbd2f7bdcdce71e4966bf1a2a850c54","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Subsumption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.CorpusElement

/-!
# Euclidean subsumption

The modern layer is not a parallel theorem authority.  A proof-bearing
Euclidean item forgets directly to the ordinary Mathematics theorem-element
type.  Book labels and source placement are retained only as detachable
provenance.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EveryKernelProvedEuclideanItemIsMathematicsTheorem.Variant1fa051a56127b3c7f88cfb60facde8715fbd2f7bdcdce71e4966bf1a2a850c54

namespace Mathematics.Geometry

open Mathematics.Discovery

/--
Every kernel-proved Euclidean corpus item is already an ordinary Mathematics
theorem element for the exact same proposition and immutable seed.
-/
theorem everyKernelProvedEuclideanItemIsMathematicsTheorem
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed) :
    ∃ ordinary : LeanTheoremElement seed.proposal,
      ordinary = item.theoremElement := by
  exact ⟨item.asMathematicsTheoremElement, rfl⟩

/--
Replacing every historical coordinate and display label preserves semantic
identity, declared dependencies, theorem identity, and the proof term.
-/
theorem historicalPlacementIsNonauthoritative
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed)
    (replacement : List HistoricalProvenance) :
    let relocated := item.withProvenance replacement
    relocated.theoremElement.theoremElementId =
        item.theoremElement.theoremElementId ∧
      relocated.theoremElement.sourceSeedId =
        item.theoremElement.sourceSeedId ∧
      relocated.theoremElement.proof =
        item.theoremElement.proof ∧
      (seed.withProvenance replacement).dependencies =
        seed.dependencies := by
  exact ⟨rfl, rfl, rfl, rfl⟩

/--
The provenance erasure is exact: neither a book coordinate nor a label enters
the ordinary theorem element returned by subsumption.
-/
theorem provenanceErasureIsExact
    {statement : Prop}
    {seed : EuclideanSeed statement}
    (item : KernelProvedEuclideanItem seed) :
    item.asMathematicsTheoremElement = item.theoremElement :=
  rfl

end Mathematics.Geometry
```
