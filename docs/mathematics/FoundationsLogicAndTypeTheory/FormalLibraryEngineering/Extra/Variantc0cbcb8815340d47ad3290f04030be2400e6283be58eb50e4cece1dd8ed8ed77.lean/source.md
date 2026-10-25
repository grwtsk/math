# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Extra.Variantc0cbcb8815340d47ad3290f04030be2400e6283be58eb50e4cece1dd8ed8ed77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f90a8645b2fefa903140d77c8774bdf9e3a92c34` · SHA-256 `7134f8b73daf5c717166ece5f0ac86d530c9f0a35cad4c0bbcfd03bb172b90ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DupNamespace.Varianta2faf46e6256a48b83cd997b08816815ae1dd9e76548be6b736362be6fc1b92c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a2faf46e6256a48b83cd997b08816815ae1dd9e76548be6b736362be6fc1b92c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DupNamespace.Varianta2faf46e6256a48b83cd997b08816815ae1dd9e76548be6b736362be6fc1b92c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a2faf46e6256a48b83cd997b08816815ae1dd9e76548be6b736362be6fc1b92c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Linter/Extra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Lean.Linter.Extra.DupNamespace
public import Lean.Linter.Extra.UnnecessarySeqFocus
public import Lean.Linter.Extra.UnreachableTactic
public import Lean.Linter.Extra.UnusedDecidableInType


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DupNamespace.Varianta2faf46e6256a48b83cd997b08816815ae1dd9e76548be6b736362be6fc1b92c

namespace Lean.Linter

/-- Record the four extra linters as members of the `linter.extra` set, so that they pick up the
set-membership fallback in `getLinterValue`. The `linter.extra` option itself is registered as a
builtin option in `Lean.Linter.Init`. -/
builtin_initialize
  addBuiltinLinterSet `linter.extra <|
    NameSet.empty
      |>.insert `linter.extra.dupNamespace
      |>.insert `linter.extra.unnecessarySeqFocus
      |>.insert `linter.extra.unreachableTactic
      |>.insert `linter.extra.unusedDecidableInType

end Lean.Linter
```
