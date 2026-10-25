# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Permission.Variant7595372b19c0314475d91feea4144fc83890d229514196f5a4c13ac4be3b47f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c71b50119168e4118e4626e5ef2a9732b089dd3` · SHA-256 `4d2620271bc107c9bcff89fd294b660d3bc71ae6a7fb175fd195db117d73940b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObservedPermission.Variantfc0831bbb4ec4d23ee6c1db204f62738235f2cf9782a8c6cd2c3746791846064","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc0831bbb4ec4d23ee6c1db204f62738235f2cf9782a8c6cd2c3746791846064","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ObservedPermission.Variantfc0831bbb4ec4d23ee6c1db204f62738235f2cf9782a8c6cd2c3746791846064","mathematical_subject":"Foundations.Unclassified","original_sha256":"fc0831bbb4ec4d23ee6c1db204f62738235f2cf9782a8c6cd2c3746791846064","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Permission.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Fail-closed permission observations

Human consent, operating-system permission, and hardware availability are
independent veto coordinates.  Unknown and not-determined observations are
not grants.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ObservedPermission.Variantfc0831bbb4ec4d23ee6c1db204f62738235f2cf9782a8c6cd2c3746791846064

namespace Mathematics.Capability

inductive ObservedPermission
  | granted
  | denied
  | restricted
  | notDetermined
  | unknown
  deriving DecidableEq, Repr

def ObservedPermission.Permits : ObservedPermission → Prop
  | .granted => True
  | _ => False

inductive HardwareAvailability
  | available
  | unavailable
  | unknown
  deriving DecidableEq, Repr

def HardwareAvailability.Permits : HardwareAvailability → Prop
  | .available => True
  | _ => False

structure IndependentVeto where
  human : ObservedPermission
  operatingSystem : ObservedPermission
  hardware : HardwareAvailability
  deriving DecidableEq, Repr

def IndependentVeto.PermitsExecution
    (veto : IndependentVeto) : Prop :=
  veto.human.Permits ∧
    veto.operatingSystem.Permits ∧
    veto.hardware.Permits

@[simp] theorem unknown_permission_never_permits :
    ¬ ObservedPermission.unknown.Permits := by
  simp [ObservedPermission.Permits]

@[simp] theorem notDetermined_permission_never_permits :
    ¬ ObservedPermission.notDetermined.Permits := by
  simp [ObservedPermission.Permits]

@[simp] theorem denied_permission_never_permits :
    ¬ ObservedPermission.denied.Permits := by
  simp [ObservedPermission.Permits]

theorem human_veto
    (veto : IndependentVeto)
    (denied : ¬ veto.human.Permits) :
    ¬ veto.PermitsExecution := by
  intro permits
  exact denied permits.1

theorem operating_system_veto
    (veto : IndependentVeto)
    (denied : ¬ veto.operatingSystem.Permits) :
    ¬ veto.PermitsExecution := by
  intro permits
  exact denied permits.2.1

theorem hardware_veto
    (veto : IndependentVeto)
    (unavailable : ¬ veto.hardware.Permits) :
    ¬ veto.PermitsExecution := by
  intro permits
  exact unavailable permits.2.2

end Mathematics.Capability
```
