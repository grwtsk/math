# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HeatInvertibility.Variant98a1b1e56cac75d925437e27e3fd4bec5a1f23eeea97ad9225860fa93b3df159

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `541a7029b0b79f33160b727de1276f08f83e78d2` · SHA-256 `b504140700f860783b2f84128c304bf41f463ffbeeca2067591846a9ca3686e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftedHeatReconstructs.Variant109da708deb39eefe37eb9c414ee754c2f5f3b643be1f6a9353935c1ef2e7665","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"109da708deb39eefe37eb9c414ee754c2f5f3b643be1f6a9353935c1ef2e7665","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LiftedHeatReconstructs.Variant109da708deb39eefe37eb9c414ee754c2f5f3b643be1f6a9353935c1ef2e7665","mathematical_subject":"Foundations.Unclassified","original_sha256":"109da708deb39eefe37eb9c414ee754c2f5f3b643be1f6a9353935c1ef2e7665","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Research/HeatInvertibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.HeatInvertibility

/-!
# Folder.Theorem.Research.HeatInvertibility

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.heat_invertibility
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LiftedHeatReconstructs.Variant109da708deb39eefe37eb9c414ee754c2f5f3b643be1f6a9353935c1ef2e7665

namespace Folder
namespace Theorem
namespace Research
namespace HeatInvertibility

theorem lifted_heat_reconstructs
    {α : Type _}
    {heat residual : α → α}
    (L : Folder.Research.HeatInvertibility.LiftedHeatInverse α heat residual)
    (x : α) :
    L.reconstruct (heat x) (residual x) = x :=
  Folder.Research.HeatInvertibility.lifted_heat_reconstructs L x

theorem ordinary_heat_left_inverse
    {α : Type _}
    {H : α → α}
    (I : Folder.Research.HeatInvertibility.HasTwoSidedInverse α H)
    (x : α) :
    I.inv (H x) = x :=
  Folder.Research.HeatInvertibility.ordinary_heat_left_inverse I x

theorem ordinary_heat_right_inverse
    {α : Type _}
    {H : α → α}
    (I : Folder.Research.HeatInvertibility.HasTwoSidedInverse α H)
    (x : α) :
    H (I.inv x) = x :=
  Folder.Research.HeatInvertibility.ordinary_heat_right_inverse I x

end HeatInvertibility
end Research
end Theorem
end Folder
```
