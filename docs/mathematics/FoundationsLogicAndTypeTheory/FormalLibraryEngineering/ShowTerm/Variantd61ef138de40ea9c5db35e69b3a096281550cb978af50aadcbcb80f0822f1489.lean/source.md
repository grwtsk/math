# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowTerm.Variantd61ef138de40ea9c5db35e69b3a096281550cb978af50aadcbcb80f0822f1489

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `991b497dcf81d011a053602844b3f3f7974fcb1c` · SHA-256 `7e010c80f507f777e95a4d0ece24f7f802be126047ff40bd2303bed2a2b4a1e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowTerm.Variant98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ShowTerm.Variant98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/show_term.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Std.Tactic.ShowTerm
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ShowTerm.Variant98a603da5595f265a6fcb17c34984552489b32d920b1a0344da7d1c6e3237f0e

/-- info: Try this: exact (n, 37) -/
#guard_msgs in example (n : Nat) : Nat × Nat := by
  show_term
    constructor
    exact n
    exact 37

/-- info: Try this: refine (?fst, ?snd) -/
#guard_msgs in example : Nat × Nat := by
  show_term constructor
  repeat exact 42

/-- info: Try this: fun {X} => X -/
#guard_msgs in example : {_a : Nat} → Nat :=
  show_term by
    intro X
    exact X
```
