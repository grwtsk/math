# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Eqns.Variant977eef14ea15c3e60d688311cfc8a1f744f61474f045e1f1b2c460506e5cb1cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac74d655bae773feb95765924fa0c28412a4b1f8` · SHA-256 `ebf2419289e662530944e9ddf269535a96cf5646e6ef9316e398f07f3227ee55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transpose.Variant2026614b671712477b51763f8338fd0c392d884c0cb7671f79a22b05c14d4827","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2026614b671712477b51763f8338fd0c392d884c0cb7671f79a22b05c14d4827","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Transpose.Variant2026614b671712477b51763f8338fd0c392d884c0cb7671f79a22b05c14d4827","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2026614b671712477b51763f8338fd0c392d884c0cb7671f79a22b05c14d4827","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/eqns.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Eqns

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Transpose.Variant2026614b671712477b51763f8338fd0c392d884c0cb7671f79a22b05c14d4827

def transpose {m n} (A : m → n → Nat) : n → m → Nat
  | i, j => A j i

theorem transpose_apply {m n} (A : m → n → Nat) (i j) : transpose A i j = A j i := rfl

attribute [eqns transpose_apply] transpose

theorem transpose_const {m n} (c : Nat) :
    transpose (fun (_i : m) (_j : n) => c) = fun _j _i => c := by
  fail_if_success {rw [transpose]}
  fail_if_success {simp [transpose]}
  funext i j -- the rw below does not work without this line
  rw [transpose]

def t : Nat := 0 + 1

theorem t_def : t = 1 := rfl
-- this rw causes lean to generate equations itself for t before the user can register them
theorem t_def' : t = 1 := by rw [t]

-- We used to test that this generated an error,
-- but with asynchronous elaboration, it now longer does!
-- `eqns` still seems to work (via `irreducible_def`) as expected,
-- so for now we just comment out the test...
-- #guard_msgs(error) in
-- attribute [eqns t_def] t

/--
warning: declaration uses 'sorry'
-/
#guard_msgs in
-- the above should error as the above equation would not have changed the output of the below
example (n : Nat) : t = n := by
  rw [t]
  admit
```
