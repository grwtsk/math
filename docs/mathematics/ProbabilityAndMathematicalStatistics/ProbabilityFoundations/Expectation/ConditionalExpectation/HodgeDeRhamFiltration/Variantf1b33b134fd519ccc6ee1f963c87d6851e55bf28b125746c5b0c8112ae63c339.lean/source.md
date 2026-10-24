# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.HodgeDeRhamFiltration.Variantf1b33b134fd519ccc6ee1f963c87d6851e55bf28b125746c5b0c8112ae63c339

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdeff2ebc0ccf28391303e6026b397765436a8e3` · SHA-256 `ee0aee16a5a81ef0c2f9ce5f186bfb2e14afa3642136786cdc438091e35a31de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Filtration.Variantdc740ef81be143c29de50b1e8a28e38f28720008625b501ac4851d8c9418f45b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc740ef81be143c29de50b1e8a28e38f28720008625b501ac4851d8c9418f45b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ConditionalExpectation.SourceCorpus.Filtration.Variantdc740ef81be143c29de50b1e8a28e38f28720008625b501ac4851d8c9418f45b","mathematical_subject":"Probability.ConditionalExpectation","original_sha256":"dc740ef81be143c29de50b1e8a28e38f28720008625b501ac4851d8c9418f45b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/HodgeDeRhamFiltration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.IntegrableConnection

/-!
# Folder.CrystallineTensor.HodgeDeRhamFiltration

Radiation role: research-boundary
BinaryMatrix spine: This module records filtration boundary data, not BinaryMatrix density or heat.
Ontology: crystalline.hodge_de_rham_filtration
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.Filtration.Variantdc740ef81be143c29de50b1e8a28e38f28720008625b501ac4851d8c9418f45b

namespace Folder
namespace CrystallineTensor

structure Filtration where
  Carrier : Type _
  step : Nat → Type _
  exhaustive : Prop
  exhaustive_certified : exhaustive
  separated : Prop
  separated_certified : separated
  label : String

structure HodgeDeRhamFiltration
    {C : CrystallineSite}
    (F : Crystal C) where
  filtration : Filtration
  associatedConnection : Prop
  associatedConnection_certified : associatedConnection
  degeneratesAtE1? : Prop
  harmonicBasis? : Option Type
  sourceLabel : String

theorem filtration_exhaustive
    (F : Filtration) :
    F.exhaustive :=
  F.exhaustive_certified

theorem filtration_separated
    (F : Filtration) :
    F.separated :=
  F.separated_certified

theorem hodge_de_rham_has_associated_connection
    {C : CrystallineSite}
    {F : Crystal C}
    (H : HodgeDeRhamFiltration F) :
    H.associatedConnection :=
  H.associatedConnection_certified

end CrystallineTensor
end Folder
```
