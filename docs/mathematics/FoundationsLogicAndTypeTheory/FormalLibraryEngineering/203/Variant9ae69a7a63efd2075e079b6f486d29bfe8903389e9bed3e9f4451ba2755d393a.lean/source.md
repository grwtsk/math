# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.203.Variant9ae69a7a63efd2075e079b6f486d29bfe8903389e9bed3e9f4451ba2755d393a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e10733bf912ee7e3c2c00aee1aa9beaf6d32b05` · SHA-256 `920dacbfd459a3150cc469674eb12bdfc74d4a469d79779073a66a1b5e5f6089`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantd6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Frontend.Variantd6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/203.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop.Frontend

-- Thank to Damiano Testa for this bug report.


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Frontend.Variantd6ab0a2c12a1f8d6511216deb70cbdfd960206746741c9ad7c2606e54481156a

/--
info: @[aesop (rule_sets := [builtin✝]) safe✝ apply✝]
example : True✝ :=
  trivial✝
-/
#guard_msgs in
#eval do
  let stx ← `(@[aesop (rule_sets := [builtin]) safe apply] example : True := trivial)
  Lean.logInfo stx
```
