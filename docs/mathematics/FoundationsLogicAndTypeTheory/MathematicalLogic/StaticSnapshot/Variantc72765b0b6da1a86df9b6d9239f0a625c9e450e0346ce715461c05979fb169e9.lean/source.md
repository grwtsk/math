# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StaticSnapshot.Variantc72765b0b6da1a86df9b6d9239f0a625c9e450e0346ce715461c05979fb169e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `660e149f8c77716681096df09f23cb4eb7815358` · SHA-256 `fb8fd425cab6e2d15d48bae55291103ce880e285cd5666b1bce5cfdb1d309b52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StaticComposite.Variant422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.StaticComposite.Variant422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156","mathematical_subject":"Logic.Foundations","original_sha256":"422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/lean/composite/CompositeElements/StaticSnapshot.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import CompositeElements.Planes

/-! # Immutable formal half of one composite snapshot. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StaticComposite.Variant422af5f24d433a997c4174025700d435a6663b26ffd02042b87c99923104c156

namespace URSM.Composite

structure StaticComposite where
  projects : Fin projectCount → ProjectDescriptor
  projectIdsUnique :
    Function.Injective (fun index ↦ (projects index).projectId)
  planes : StaticPlanes
  parentSnapshotId : Option String
  formalCertificateRoot : String

def phaseOneStaticComposite : StaticComposite where
  projects := projectAt
  projectIdsUnique := projectId_unique
  planes := staticPlanes
  parentSnapshotId := none
  formalCertificateRoot :=
    "lean:URSM.Composite.phaseOneStaticComposite_valid"

abbrev DiagonalStatus (n : Nat) := Fin n → Bool

structure ActiveOverlay (n : Nat) where
  active : DiagonalStatus n
  buildComplete : DiagonalStatus n
  kernelChecked : DiagonalStatus n
  runtimeChecked : DiagonalStatus n
  quarantined : DiagonalStatus n

structure ActivationValid
    (imports conflict : BitMatrix n n)
    (overlay : ActiveOverlay n) : Prop where
  ready :
    ∀ i, overlay.active i = true →
      overlay.buildComplete i = true ∧
      overlay.kernelChecked i = true ∧
      overlay.runtimeChecked i = true ∧
      overlay.quarantined i = false
  dependencyClosed :
    ∀ i j,
      overlay.active i = true →
      imports i j = true →
      overlay.active j = true
  conflictFree :
    ∀ i j,
      overlay.active i = true →
      overlay.active j = true →
      conflict i j = false

end URSM.Composite
```
