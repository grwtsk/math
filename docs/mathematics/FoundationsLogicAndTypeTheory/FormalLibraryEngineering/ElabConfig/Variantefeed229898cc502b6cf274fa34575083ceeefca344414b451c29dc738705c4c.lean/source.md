# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabConfig.Variantefeed229898cc502b6cf274fa34575083ceeefca344414b451c29dc738705c4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b952bb68f76222bfe1ad1a2b09720f69b585540f` · SHA-256 `82aee7de7c7f687a262a92d59f601707b1cb58874898b527baf1e39347a1aea2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variante594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Aesop.Variante594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/ElabConfig.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Aesop.Variante594acbad5c679fa97c86e6916e3a5dfe17e49972104d909ea22df2bc2739476

set_option aesop.check.all true

/-- error: `noSuchOption` is not a field of structure `Aesop.Options` -/
#guard_msgs in
example : True := by
  aesop (config := { noSuchOption := true })

/-- error: `noSuchOption` is not a field of structure `Lean.Meta.Simp.ConfigCtx` -/
#guard_msgs in
example : True := by
  aesop (simp_config := { noSuchOption := true })
```
