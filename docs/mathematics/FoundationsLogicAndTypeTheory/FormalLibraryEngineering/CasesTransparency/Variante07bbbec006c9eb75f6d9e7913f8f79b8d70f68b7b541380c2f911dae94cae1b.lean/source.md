# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesTransparency.Variante07bbbec006c9eb75f6d9e7913f8f79b8d70f68b7b541380c2f911dae94cae1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b79dc087e58180b9f0d04f2448d335688c36fbc` · SHA-256 `17d4f96a089b07442b114423edd1be6efb21a92af66138d134b144c04e6fcafc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant693b915cc5d9f39684edccca61741e6e08cfae59c8686d4a477277c2135c709a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"693b915cc5d9f39684edccca61741e6e08cfae59c8686d4a477277c2135c709a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variant693b915cc5d9f39684edccca61741e6e08cfae59c8686d4a477277c2135c709a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"693b915cc5d9f39684edccca61741e6e08cfae59c8686d4a477277c2135c709a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/CasesTransparency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variant693b915cc5d9f39684edccca61741e6e08cfae59c8686d4a477277c2135c709a

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

example (h : False) : α := by
  aesop

def T := False

variable {α : Type}

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : α := by
  aesop (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : α := by
  aesop (add safe cases (transparency! := reducible) False)
    (config := { terminal := true })

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
-/
#guard_msgs in
example (h : T) : α := by
  aesop (add safe cases (transparency := default) False)
    (config := { terminal := true })

example (h : T) : α := by
  aesop (add safe cases (transparency! := default) False)

def U := T

example (h : U) : α := by
  aesop (add safe cases (transparency! := default) False)
```
