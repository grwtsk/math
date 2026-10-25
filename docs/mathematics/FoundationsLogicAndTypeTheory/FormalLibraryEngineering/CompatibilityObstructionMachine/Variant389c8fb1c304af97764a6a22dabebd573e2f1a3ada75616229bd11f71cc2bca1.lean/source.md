# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibilityObstructionMachine.Variant389c8fb1c304af97764a6a22dabebd573e2f1a3ada75616229bd11f71cc2bca1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d6367905775589ca05700317c6c44e43e24aea6` · SHA-256 `67fa8db7f3abb25e4d84862a078974af5bb6e812abe87186629de42417cfa547`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibilityMachineHasStaticInvariant.Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompatibilityMachineHasStaticInvariant.Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1","mathematical_subject":"Foundations.Unclassified","original_sha256":"9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/CompatibilityObstructionMachine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.CompatibilityObstructionMachine

/-!
# Folder.Theorem.CanonicalPath.CompatibilityObstructionMachine

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports compatibility-obstruction scaffold facts.
Ontology: proof.compatibility_obstruction_machine
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibilityMachineHasStaticInvariant.Variant9b2bbb543754497404eeeb67d5c666d1cccdd90494e448a04d801693737f98a1

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem compatibility_machine_has_static_invariant
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine) :
    ∃ I : Folder.CanonicalPath.StaticInvariant, M.staticInvariant = I :=
  Folder.CanonicalPath.compatibility_machine_has_static_invariant M

theorem compatibility_machine_has_forbidden_configuration
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine) :
    ∃ F : Folder.CanonicalPath.ForbiddenConfiguration, M.forbidden = F :=
  Folder.CanonicalPath.compatibility_machine_has_forbidden_configuration M

theorem compatibility_machine_has_obstruction
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine) :
    ∃ O : Folder.CanonicalPath.GlobalObstructionClass, M.obstruction = O :=
  Folder.CanonicalPath.compatibility_machine_has_obstruction M

theorem compatible_implies_allowed_if_supplied
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine)
    (h : Folder.CanonicalPath.GloballyCompatible M.site) :
    M.compatibleImpliesAllowed h :=
  Folder.CanonicalPath.compatible_implies_allowed_if_supplied M h

theorem forbidden_forces_obstruction_if_supplied
    (M : Folder.CanonicalPath.CompatibilityObstructionMachine)
    (F : Folder.CanonicalPath.ForbiddenConfiguration) :
    M.forbiddenForcesObstruction F :=
  Folder.CanonicalPath.forbidden_forces_obstruction_if_supplied M F

theorem riemann_profile_is_theorem_target :
    Folder.CanonicalPath.riemannHypothesisCompatibilityProfile.status =
      Folder.CanonicalPath.CompatibilityProblemStatus.theoremTarget :=
  Folder.CanonicalPath.riemann_profile_is_theorem_target

theorem p_vs_np_profile_is_speculative :
    Folder.CanonicalPath.pVersusNPCompatibilityProfile.status =
      Folder.CanonicalPath.CompatibilityProblemStatus.speculativeTheoremTarget :=
  Folder.CanonicalPath.p_vs_np_profile_is_speculative

end CanonicalPath
end Theorem
end Folder

```
