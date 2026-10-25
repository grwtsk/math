# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Erase.Variant123d94e7c5cf8a428edf8404657e5b10f6a3923940aab0f49eeb32a369bec18a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25e9718c0d49b76ac19e9e282766a8cab8092139` · SHA-256 `3eecd1dcaa2389245ddb9173a4b0ebeedd88dff922e5b383d54b685ccd64e50b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantfaa4da3f1df847712ee9fe08fafda88ab4113fab856238605e3442bec2b3e2ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"faa4da3f1df847712ee9fe08fafda88ab4113fab856238605e3442bec2b3e2ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Even.Variantfaa4da3f1df847712ee9fe08fafda88ab4113fab856238605e3442bec2b3e2ca","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"faa4da3f1df847712ee9fe08fafda88ab4113fab856238605e3442bec2b3e2ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/Erase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Even.Variantfaa4da3f1df847712ee9fe08fafda88ab4113fab856238605e3442bec2b3e2ca

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

@[aesop [10% cases, safe constructors]]
inductive Even : Nat → Prop
  | zero : Even 0
  | plus_two : Even n → Even (n + 2)

example : Even 2 := by
  aesop

-- Removing the Aesop attribute erases all rules associated with the identifier
-- from all rule sets.
attribute [-aesop] Even

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Even 2 := by
  aesop (config := { terminal := true })

example : Even 2 := by
  aesop (add safe Even)

-- We can also selectively remove rules in a certain phase or with a certain
-- builder.
attribute [aesop [unsafe 10% cases, safe constructors]] Even

erase_aesop_rules [ unsafe Even ]

example : Even 2 := by
  aesop

erase_aesop_rules [ constructors Even ]

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example : Even 2 := by
  aesop (config := { terminal := true })

example : Even 2 := by
  aesop (add safe constructors Even)
```
