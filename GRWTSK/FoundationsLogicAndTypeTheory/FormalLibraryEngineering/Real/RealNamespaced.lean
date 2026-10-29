-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variante15c7651df907d186675de34d8847458de7c0e41452952dde35fab34020d74c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e15c7651df907d186675de34d8847458de7c0e41452952dde35fab34020d74c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variante15c7651df907d186675de34d8847458de7c0e41452952dde35fab34020d74c1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e15c7651df907d186675de34d8847458de7c0e41452952dde35fab34020d74c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Data/Real.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
! This file was ported from Lean 3 source file `test/real.lean`
! leanprover-community/mathlib commit d7943885503965d07ccaeb390d65fbc3f45962e6
! Please do not edit these lines, except to modify the commit id
! if you have ported upstream changes.
-/
import Mathlib.Basic.Real.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variante15c7651df907d186675de34d8847458de7c0e41452952dde35fab34020d74c1

private axiom test_sorry : ∀ {α}, α
unsafe def testRepr (r : ℝ) (s : String) : Lean.Elab.Command.CommandElabM Unit :=
unless toString (repr r) = s do throwError "got {repr r}"

run_cmd unsafe testRepr 0 "Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)"
run_cmd unsafe testRepr 1 "Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/)"
run_cmd
  unsafe testRepr (37 : ℕ) "Real.ofCauchy (sorry /- 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, ... -/)"
run_cmd unsafe testRepr (2 + 3) "Real.ofCauchy (sorry /- 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, ... -/)"
run_cmd unsafe testRepr ⟨CauSeq.Completion.mk <| ⟨fun n ↦ 2^(-n:ℤ), test_sorry⟩⟩
                        "Real.ofCauchy (sorry /- 1, (1 : Rat)/2, (1 : Rat)/4, (1 : Rat)/8, \
                        (1 : Rat)/16, (1 : Rat)/32, (1 : Rat)/64, (1 : Rat)/128, (1 : Rat)/256, \
                        (1 : Rat)/512, ... -/)"
