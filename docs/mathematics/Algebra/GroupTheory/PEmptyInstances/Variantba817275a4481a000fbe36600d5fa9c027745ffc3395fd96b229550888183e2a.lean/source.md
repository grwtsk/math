# Complete source: GRWTSK.Algebra.GroupTheory.PEmptyInstances.Variantba817275a4481a000fbe36600d5fa9c027745ffc3395fd96b229550888183e2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de3a0c545a8773e6d5749179da592acab51b56eb` · SHA-256 `6af52f12c120de70973d3ec4cf221e05be0942bf6c79f9630b055b6cf8566ffa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Group.Variant666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Group.Variant666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb","mathematical_subject":"Algebra.Groups","original_sha256":"666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/PEmptyInstances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Julian Kuelshammer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julian Kuelshammer
-/
import Mathlib.Algebra.Group.Defs
import Mathlib.Tactic.ToAdditive

/-!
# Instances on pempty

This file collects facts about algebraic structures on the (universe-polymorphic) empty type, e.g.
that it is a semigroup.
-/



namespace GRWTSK.Algebra.GroupTheory.Group.Variant666cc970273ac4c61a442c83fa97610007b109ac286ea0ac3bad7c6bf39ed8eb

universe u

@[to_additive]
instance SemigroupPEmpty : Semigroup PEmpty.{u + 1} where
  mul x _ := by cases x
  mul_assoc x y z := by cases x
```
