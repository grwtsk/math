# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PosFin.Variant6d679373c046bf03d64258554de4514bc9c52a3a88fd9f16a90c69db7330ee9f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09d6b233cded8b2f80232afea94689b5f935819f` · SHA-256 `087053c390ce159ece3af360498cd7e1ff51c48400dd8e6d0d307e7e32a4844b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hashable.Variante0f34004b225e58be56e21b08d537572df137540bfd4eabec451289b51cdd880","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0f34004b225e58be56e21b08d537572df137540bfd4eabec451289b51cdd880","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Hashable.Variante0f34004b225e58be56e21b08d537572df137540bfd4eabec451289b51cdd880","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"e0f34004b225e58be56e21b08d537572df137540bfd4eabec451289b51cdd880","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/PosFin.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Init.Data.Hashable


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hashable.Variante0f34004b225e58be56e21b08d537572df137540bfd4eabec451289b51cdd880

@[expose] public section

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

@[implicit_reducible] def PosFin (n : Nat) := {x : Nat // 0 < x ∧ x < n}

instance : DecidableEq (PosFin n) :=
  inferInstanceAs (DecidableEq {x : Nat // 0 < x ∧ x < n})

instance : CoeOut (PosFin n) Nat where
  coe p := p.val

instance {n} : Hashable (PosFin n) where
  hash p := hash p.val

instance : ToString (PosFin n) where
  toString p := toString p.val

end Internal
end LRAT
end Std.Tactic.BVDecide
```
