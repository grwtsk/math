-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatGcd.Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NatGcd.Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/artifacts/comparator-206/tests/projects/primitive_issue/Solution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
prelude
import Init.Prelude
import Init.Core


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatGcd.Variant13ce508c4c4f1f1614cc697c6b71c0253a854e6e56a3baa917a218baf2bcc47c

def Nat.gcd (_ _ : Nat) : Nat := 0

theorem thm1 a b : Nat.gcd a b = 0 := by
  unfold Nat.gcd
  rfl

theorem thm2 : Nat.gcd 1 1 = 1 := rfl

theorem boom : False :=
  Nat.noConfusion <| Eq.trans (thm1 1 1).symm thm2

-- The following are just to make the export “primitive-complete”
def Nat.land (_ _ : Nat) : Nat := 0
def Nat.lor (_ _ : Nat) : Nat := 0
def Nat.xor (_ _ : Nat) : Nat := 0
def Nat.shiftRight (_ _ : Nat) : Nat := 0
def Nat.shiftLeft (_ _ : Nat) : Nat := 0
