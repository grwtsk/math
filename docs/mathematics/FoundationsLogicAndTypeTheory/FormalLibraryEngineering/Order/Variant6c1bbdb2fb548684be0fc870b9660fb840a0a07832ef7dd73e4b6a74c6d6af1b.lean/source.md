# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Order.Variant6c1bbdb2fb548684be0fc870b9660fb840a0a07832ef7dd73e4b6a74c6d6af1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a54c3ece0e47870ce4a9ad1cd89733b8159ad80` · SHA-256 `35c0bd566f4aea6ebc1ddf3a829664c33bd552b6b43b0c4ec010bbad2b2eaaa0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variant69b2b652429b168f918ed2865e4e9d652d7fb55f7a1685eb4f86efac94dcc7e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69b2b652429b168f918ed2865e4e9d652d7fb55f7a1685eb4f86efac94dcc7e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Types.Variant69b2b652429b168f918ed2865e4e9d652d7fb55f7a1685eb4f86efac94dcc7e6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"69b2b652429b168f918ed2865e4e9d652d7fb55f7a1685eb4f86efac94dcc7e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Order.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Order.Types
public import Lean.Meta.Tactic.Grind.Order.Internalize
public import Lean.Meta.Tactic.Grind.Order.StructId
public import Lean.Meta.Tactic.Grind.Order.OrderM
public import Lean.Meta.Tactic.Grind.Order.Assert
public import Lean.Meta.Tactic.Grind.Order.Util

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Types.Variant69b2b652429b168f918ed2865e4e9d652d7fb55f7a1685eb4f86efac94dcc7e6

public section
namespace Lean.Meta.Grind.Order
builtin_initialize registerTraceClass `grind.order
builtin_initialize registerTraceClass `grind.order.assert
builtin_initialize registerTraceClass `grind.order.internalize
builtin_initialize registerTraceClass `grind.order.internalize.term

builtin_initialize registerTraceClass `grind.debug.order
builtin_initialize registerTraceClass `grind.debug.order.add_edge (inherited := true)
builtin_initialize registerTraceClass `grind.debug.order.propagate (inherited := true)
builtin_initialize registerTraceClass `grind.debug.order.check_eq_true (inherited := true)
builtin_initialize registerTraceClass `grind.debug.order.check_eq_false (inherited := true)

builtin_initialize
  orderExt.setMethods
    (internalize := Order.internalize)
    (newEq       := Order.processNewEq)

end Lean.Meta.Grind.Order
```
