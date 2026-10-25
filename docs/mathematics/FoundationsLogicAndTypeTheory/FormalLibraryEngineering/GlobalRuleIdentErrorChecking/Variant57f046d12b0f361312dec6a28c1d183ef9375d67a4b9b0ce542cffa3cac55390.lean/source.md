# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GlobalRuleIdentErrorChecking.Variant57f046d12b0f361312dec6a28c1d183ef9375d67a4b9b0ce542cffa3cac55390

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9adfd00601f75044c52beb886003da750b1aea52` · SHA-256 `8f7e3b3654c8ec5f0ac3f8acb6108a42cb437628f60fa0f171ea67efac1b2439`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bar.Variantb69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Bar.Variantb69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/GlobalRuleIdentErrorChecking.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bar.Variantb69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502

/--
error: duplicate rule 'Nat.add_assoc'; rule 'bar' was already given.
Use [<term>,...] to give multiple rules.
-/
#guard_msgs in
@[aesop norm simp Nat.add_assoc]
theorem bar : True := trivial
```
