# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMatchTheoremPtr.Variantaeb2fc8fc92b22773a8eb3ab7a673c88d12b5f67521311bc40611283fad988b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3056c82defae621800effd52cab88903f9b7120b` · SHA-256 `02ecc0e99a82ccd69935ec662ce59b9138e3c71242273624eef3d4d540ec7cd9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMatchTheoremPtr.Variant00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EMatchTheoremPtr.Variant00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/EMatchTheoremPtr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.EMatchTheorem

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMatchTheoremPtr.Variant00cf1ff46e6953c62ccc4a9172315da92de9c1a6e11c220ff6087658d0e8b7db

public section
namespace Lean.Meta.Grind

@[inline] def isSameEMatchTheoremPtr (a b : EMatchTheorem) : Bool :=
  unsafe ptrEq a b

structure EMatchTheoremPtr where
  thm : EMatchTheorem

abbrev hashEMatchTheoremPtr (thm : EMatchTheorem) : UInt64 :=
  unsafe (ptrAddrUnsafe thm >>> 3).toUInt64

instance : Hashable EMatchTheoremPtr where
  hash k := hashEMatchTheoremPtr k.thm

instance : BEq EMatchTheoremPtr where
  beq k₁ k₂ := isSameEMatchTheoremPtr k₁.thm k₂.thm

end Lean.Meta.Grind
```
