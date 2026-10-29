-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Variant3c2569310c9b24fcf9381beaebfaebac1e7af0ff6c13a578bd4c89413685236c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c2569310c9b24fcf9381beaebfaebac1e7af0ff6c13a578bd4c89413685236c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Change.Variant3c2569310c9b24fcf9381beaebfaebac1e7af0ff6c13a578bd4c89413685236c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3c2569310c9b24fcf9381beaebfaebac1e7af0ff6c13a578bd4c89413685236c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Change.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Change


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Change.Variant3c2569310c9b24fcf9381beaebfaebac1e7af0ff6c13a578bd4c89413685236c

set_option linter.style.setOption false
set_option pp.unicode.fun true
set_option autoImplicit true

/--
info: Try this: change 0 = 1
---
info: Try this: change (fun x ↦ x) 0 = 1
---
info: Try this: change (fun x ↦ x) 0 = 1
---
error: The term
  1 = 0
is not defeq to the goal:
  (fun x ↦ x) 0 = 1
-/
#guard_msgs in
example : (fun x : Nat => x) 0 = 1 := by
  change? 0 = _  -- change 0 = 1
  change?        -- change (fun x ↦ x) 0 = 1
  change? _      -- change (fun x ↦ x) 0 = 1
  change? 1 = 0
    -- The term
    --   1 = 0
    -- is not defeq to the goal:
    --   (fun x ↦ x) 0 = 1
