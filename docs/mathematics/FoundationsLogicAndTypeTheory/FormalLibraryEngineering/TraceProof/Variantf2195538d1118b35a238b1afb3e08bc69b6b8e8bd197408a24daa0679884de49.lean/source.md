# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TraceProof.Variantf2195538d1118b35a238b1afb3e08bc69b6b8e8bd197408a24daa0679884de49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eff0cbf1fdac888942b62dbde31e01a5ef0841f6` · SHA-256 `2f4855486a38aa62bd0a9efb00467ea067f82d0657e23589fb1f95ccc73879fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variante73600a67b40beebe06869dd08508230937a3e9ce2ddece832f2571fcea52d77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e73600a67b40beebe06869dd08508230937a3e9ce2ddece832f2571fcea52d77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.F.Variante73600a67b40beebe06869dd08508230937a3e9ce2ddece832f2571fcea52d77","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e73600a67b40beebe06869dd08508230937a3e9ce2ddece832f2571fcea52d77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/TraceProof.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variante73600a67b40beebe06869dd08508230937a3e9ce2ddece832f2571fcea52d77

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

set_option trace.aesop.proof true

/--
error: Tactic `aesop` failed, made no progress
---
trace: [aesop.proof] <no proof>
-/
#guard_msgs in
example : α := by
  aesop

@[aesop norm simp]
def F := False

set_option pp.mvars false in
/--
warning: aesop: failed to prove the goal after exhaustive search.
---
error: unsolved goals
⊢ False
---
trace: [aesop.proof] id ?_
-/
#guard_msgs in
example : F := by
  aesop
```
