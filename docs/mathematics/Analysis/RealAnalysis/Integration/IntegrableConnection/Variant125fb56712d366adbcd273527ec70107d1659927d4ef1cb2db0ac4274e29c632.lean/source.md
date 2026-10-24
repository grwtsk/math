# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.IntegrableConnection.Variant125fb56712d366adbcd273527ec70107d1659927d4ef1cb2db0ac4274e29c632

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8486b89b282b0c24cec88b27db61ed778b60cfdf` · SHA-256 `838005fbe78b83aa51c5740343667ba022024fcf531263c43f9af008bb9e8c97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Connection.Variant18ccaaea6cfaf312b54f4d004f7e8ddf725070f7c661644f783a85ea0a027cc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18ccaaea6cfaf312b54f4d004f7e8ddf725070f7c661644f783a85ea0a027cc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Connection.Variant18ccaaea6cfaf312b54f4d004f7e8ddf725070f7c661644f783a85ea0a027cc4","mathematical_subject":"Analysis.Integration","original_sha256":"18ccaaea6cfaf312b54f4d004f7e8ddf725070f7c661644f783a85ea0a027cc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CrystallineTensor/IntegrableConnection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineTensor.Crystal

/-!
# Folder.CrystallineTensor.IntegrableConnection

Radiation role: research-boundary
BinaryMatrix spine: This module records horizontal-section interface data, not BinaryMatrix dynamics.
Ontology: crystalline.integrable_connection
Pivot role: none
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.Connection.Variant18ccaaea6cfaf312b54f4d004f7e8ddf725070f7c661644f783a85ea0a027cc4

namespace Folder
namespace CrystallineTensor

/--
Connection interface for a crystal.

Flatness and integrability are certificates supplied by the contract; no
Hodge-theoretic degeneration theorem is proved here.
-/
structure Connection
    {C : CrystallineSite}
    (F : Crystal C) where
  Nabla : ∀ X : C.Site.Obj, F.Section X → Type _
  horizontal : ∀ X : C.Site.Obj, F.Section X → Prop
  flat : Prop
  flat_certified : flat
  integrable : Prop
  integrable_certified : integrable

theorem connection_flat
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F) :
    nabla.flat :=
  nabla.flat_certified

theorem connection_integrable
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F) :
    nabla.integrable :=
  nabla.integrable_certified

structure HorizontalSection
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F)
    (X : C.Site.Obj) where
  value : F.Section X
  horizontal : nabla.horizontal X value

theorem horizontal_section_is_horizontal
    {C : CrystallineSite}
    {F : Crystal C}
    {nabla : Connection F}
    {X : C.Site.Obj}
    (s : HorizontalSection nabla X) :
    nabla.horizontal X s.value :=
  s.horizontal

end CrystallineTensor
end Folder
```
