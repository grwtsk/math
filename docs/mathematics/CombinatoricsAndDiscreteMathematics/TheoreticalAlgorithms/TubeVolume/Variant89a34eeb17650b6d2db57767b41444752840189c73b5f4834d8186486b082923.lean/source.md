# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TubeVolume.Variant89a34eeb17650b6d2db57767b41444752840189c73b5f4834d8186486b082923

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27740bfb18fb85f9ae9881bfcdc05c59ef5aabb8` · SHA-256 `3b23700b440ba9e5d6f08156905607a5181112d98a9f831e81909113873ff5a3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TubeVolumeLowerBound.Variantac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TubeVolumeLowerBound.Variantac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5","mathematical_subject":"Computation.DataStructures","original_sha256":"ac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Geometry/Kakeya/TubeVolume.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Geometry.Kakeya.WolffAxioms


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TubeVolumeLowerBound.Variantac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Tube-volume lower-bound theorem input data.

What is certificate-gated:
The lower-bound statement is a Prop-valued theorem input and requires Wolff
conditions.

What is not claimed:
No volume lower-bound theorem is proved here.
-/

/-- Quantitative tube-volume lower-bound theorem input. -/
structure TubeVolumeLowerBound
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  lowerBoundStatement : Prop
  lowerBoundCertified : lowerBoundStatement
  boundary : List String

def TubeVolumeLowerBound.usableForMajorProof
    {K : TubeConfiguration}
    (V : TubeVolumeLowerBound K) :
    Prop :=
  V.wolffAxioms.usableForMajorProof ∧ V.lowerBoundStatement

theorem TubeVolumeLowerBound.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (V : TubeVolumeLowerBound K) :
    V.usableForMajorProof :=
  ⟨V.wolffAxioms.usableForMajorProof_of_fields, V.lowerBoundCertified⟩

end Surface.Geometry.Kakeya
```
