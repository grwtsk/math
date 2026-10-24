# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.TensorSection.Variant593efea8db5a7136ac4b9b8fd9e3814a5bce974c1a474dc63715e9fef212de73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a8004d825af1d7488b2333d62d6ea17ad64668a` · SHA-256 `753b91631657b2e7606dc0ca98f0d38a4a5408f97c19aa5367337f96d13011ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.TensorSectionHasSomeRank.Variant44b76c679575752a4a7bc808f902c8b5fafbced1144700293af951733b7b8d42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44b76c679575752a4a7bc808f902c8b5fafbced1144700293af951733b7b8d42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ConditionalExpectation.SourceCorpus.TensorSectionHasSomeRank.Variant44b76c679575752a4a7bc808f902c8b5fafbced1144700293af951733b7b8d42","mathematical_subject":"Probability.ConditionalExpectation","original_sha256":"44b76c679575752a4a7bc808f902c8b5fafbced1144700293af951733b7b8d42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineTensor/TensorSection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.TensorSection
import Folder.CrystallineTensor.ChromaticHeight
import Folder.CrystallineTensor.HodgeDeRhamFiltration

/-!
# Folder.Theorem.CrystallineTensor.TensorSection

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports tensor-section, chromatic-height, and filtration boundary facts.
Ontology: proof.crystalline.tensor_section
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.TensorSectionHasSomeRank.Variant44b76c679575752a4a7bc808f902c8b5fafbced1144700293af951733b7b8d42

namespace Folder
namespace Theorem
namespace CrystallineTensor
namespace TensorSection

theorem tensor_section_has_some_rank
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {X : C.Site.Obj}
    (T : Folder.CrystallineTensor.TensorSection F X) :
    ∃ r : Nat, T.HasRank r :=
  Folder.CrystallineTensor.tensor_section_has_some_rank T

theorem height_rank_rule_monotone_if_supplied
    (R : Folder.CrystallineTensor.HeightRankRule) :
    R.monotone :=
  Folder.CrystallineTensor.height_rank_rule_monotone_if_supplied R

theorem filtration_exhaustive
    (F : Folder.CrystallineTensor.Filtration) :
    F.exhaustive :=
  Folder.CrystallineTensor.filtration_exhaustive F

theorem filtration_separated
    (F : Folder.CrystallineTensor.Filtration) :
    F.separated :=
  Folder.CrystallineTensor.filtration_separated F

end TensorSection
end CrystallineTensor
end Theorem
end Folder
```
