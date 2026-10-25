# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZeroData.Variant4e4dc7ebc32aea4883068092ef05195966766b12ff020a17e2bfe1ccc80d9b94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aefed921b5ba1ec1faff0d981b0f9d62c86fc553` · SHA-256 `92a8e3d31d760d1cf6a3f34ed7fd2f75044e95931c9655b49f7a62fe316e7ade`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawZetaZeroData.Variant87eedc7512d6f1012dffa701802e93f78684ee399e31c460d798435298fa3117","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87eedc7512d6f1012dffa701802e93f78684ee399e31c460d798435298fa3117","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RawZetaZeroData.Variant87eedc7512d6f1012dffa701802e93f78684ee399e31c460d798435298fa3117","mathematical_subject":"Foundations.Unclassified","original_sha256":"87eedc7512d6f1012dffa701802e93f78684ee399e31c460d798435298fa3117","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/RH/ZeroData.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.RH.H0Translation

/-!
# Folder.RH.ZeroData

Radiation role: zero-data
BinaryMatrix spine: This module isolates raw zeta and H0 zero data.
Ontology: rh.zero_data
Pivot role: spectral
Zero typology: zeta
Contract boundary: raw-zero-data
Composite stack role: rh
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RawZetaZeroData.Variant87eedc7512d6f1012dffa701802e93f78684ee399e31c460d798435298fa3117

namespace Folder
namespace RH

/--
Raw nontrivial zeta-zero data.

This object only says which complex point is being represented and carries the
zero/nontriviality witness from `ZetaNontrivialZero`.
-/
structure RawZetaZeroData where
  point : ℂ
  witness : ZetaNontrivialZero point
  sourceLabel : String

/--
Raw `H_0` zero data.

This object only says which complex point is being represented and carries the
zero witness from `H0Zero`.
-/
structure RawH0ZeroData where
  point : ℂ
  witness : H0Zero point
  sourceLabel : String

theorem raw_zeta_zero_has_zero_statement
    (Z : RawZetaZeroData) :
    CompletedZeta Z.point = 0 :=
  Z.witness.1

theorem raw_zeta_zero_has_nontrivial_statement
    (Z : RawZetaZeroData) :
    NontrivialZetaZeroCondition Z.point :=
  Z.witness.2

theorem raw_h0_zero_has_zero_statement
    (Z : RawH0ZeroData) :
    H0 Z.point = 0 :=
  Z.witness

end RH
end Folder
```
