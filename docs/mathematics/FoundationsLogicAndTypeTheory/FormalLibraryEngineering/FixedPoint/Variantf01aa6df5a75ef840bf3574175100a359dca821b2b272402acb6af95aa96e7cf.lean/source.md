# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPoint.Variantf01aa6df5a75ef840bf3574175100a359dca821b2b272402acb6af95aa96e7cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4781a0e871c0ee21d568da826cea064e38adc212` · SHA-256 `f129b98003ce1e4ef9315d1b2aa10ac51830761b75bcf7600a494a086c882f4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointCertificate.Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FixedPointCertificate.Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5","mathematical_subject":"Foundations.Unclassified","original_sha256":"87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Archive/FixedPoint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Archive.RuleEngine

/-!
# Folder.Archive.FixedPoint

Radiation role: archive-rule-engine
BinaryMatrix spine: This module certifies when a BinaryMatrix is fixed by a presentation rule.
Ontology: archive.fixed_point
Pivot role: none
Zero typology: none
Contract boundary: proved
Composite stack role: infrastructure
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointCertificate.Variant87bd37ef0cd18a2c13d2e6b10f5a4846981e9015f5ab16d87edcc2a75aa082e5

namespace Folder
namespace Archive

structure FixedPointCertificate
    (R : PresentationRule)
    (M : Carrier.BinaryMatrix) where
  fixed : R.apply M = M

structure FixedPointRecipe
    (A : MatrixAction)
    (E : RuleEngine)
    (D : MatrixAtomDictionary) where
  recipe : LayerRecipe A E
  output : Carrier.BinaryMatrix
  realizes : realizeLayerRecipe? A E D recipe = some output
  rule : PresentationRule
  rule_resolved : E.resolve recipe.rule = some rule
  fixed : FixedPointCertificate rule output

def copyFixedPointCertificate
    (M : Carrier.BinaryMatrix) :
    FixedPointCertificate copyRule M where
  fixed := rfl

theorem fixedPointRecipe_realizes_self
    {A : MatrixAction}
    {E : RuleEngine}
    {D : MatrixAtomDictionary}
    (F : FixedPointRecipe A E D) :
    F.rule.apply F.output = F.output :=
  F.fixed.fixed

theorem copy_fixedPointCertificate
    (M : Carrier.BinaryMatrix) :
    (copyFixedPointCertificate M).fixed = rfl :=
  rfl

end Archive
end Folder
```
