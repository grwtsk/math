# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clean.Variant3054306ac8ef39b64670a9e27077ec9c6cd8c8e594b2f5b102ec8c805d0956f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3612c7d0e9b6699aa3cdd88079f4811428a3bc44` · SHA-256 `7c73800c990768807479ed7891d2fd03084ac440e4253d29e15c756c13e10dba`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.X.Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.X.Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Clean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Clean


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.X.Variant1d649ec552c48a4f3dde368ce659f42f38b4068471d5222f6a866b2082e4cf75

namespace Tests

def x : Id Nat := by dsimp [Id]; exact 1
def x' : Id Nat := clean% by dsimp [Id]; exact 1

/--
info: def Tests.x : Id Nat :=
id 1
-/
#guard_msgs in #print x

/--
info: def Tests.x' : Id Nat :=
1
-/
#guard_msgs in #print x'
-- def x : Id Nat := 1

theorem withClean : 2 + 2 = 4 := clean% by exact id rfl
theorem withoutClean : 2 + 2 = 4 := by exact id rfl

/--
info: theorem Tests.withClean : 2 + 2 = 4 :=
rfl
-/
#guard_msgs in
#print Tests.withClean

/--
info: theorem Tests.withoutClean : 2 + 2 = 4 :=
id rfl
-/
#guard_msgs in
#print Tests.withoutClean

example : True := by
  let x : id Nat := by dsimp; exact 1
  guard_hyp x :ₛ id Nat := id (1 : Nat)
  let x' : id Nat := clean% by dsimp; exact 1
  guard_hyp x' :ₛ id Nat := (1 : Nat)

  let y := show Nat from 1
  guard_hyp y :ₛ Nat := let_fun this := 1; this
  let y' := clean% show Nat from 1
  guard_hyp y' :ₛ Nat := 1

  -- Not a tautological let_fun:
  let z := clean% let_fun x := 1; x + x
  guard_hyp z :ₛ Nat := let_fun x := 1; x + x

  trivial

end Tests
```
