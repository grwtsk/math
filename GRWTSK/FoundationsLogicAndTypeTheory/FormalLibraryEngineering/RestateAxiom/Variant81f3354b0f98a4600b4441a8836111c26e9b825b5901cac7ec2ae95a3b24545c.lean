-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Varianta0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.A.Varianta0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/restate_axiom.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.RestateAxiom


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.A.Varianta0bd0612b6a3147ab3b6796ec2be4def424ed9700426ca101bbbc9b1a2ac5432

structure A :=
  (x : Nat)
  (a' : x = 1 := by rfl)
  (borp : x = 2 := by rfl)

#check A.a'
restate_axiom A.a'
#check A.a
restate_axiom A.a' foo
#check A.foo
restate_axiom A.borp
#check A.borp_lemma
