# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Literal.Variant57f69cc985163f9fefa62e1fca91d381ad11a97a6edeea9e50c98ef7fd341744

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc51396f133d4dc36bf9df4cce267b83657229cf` · SHA-256 `58f400f0b5ad17ecdaee01e7037b51b31d47511e7ced6d772e99a5ee8aba9ae2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Literal.Variant9e411e364353447e8b200c9b0d2dc0b892eded968de6eb28ff1a8ee6fdcf687d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e411e364353447e8b200c9b0d2dc0b892eded968de6eb28ff1a8ee6fdcf687d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Literal.Variant9e411e364353447e8b200c9b0d2dc0b892eded968de6eb28ff1a8ee6fdcf687d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9e411e364353447e8b200c9b0d2dc0b892eded968de6eb28ff1a8ee6fdcf687d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Sat/CNF/Literal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Init.Data.Hashable
public import Init.Data.ToString


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Literal.Variant9e411e364353447e8b200c9b0d2dc0b892eded968de6eb28ff1a8ee6fdcf687d

@[expose] public section

namespace Std
namespace Sat

/--
CNF literals identified by some type `α`. The `Bool` is the polarity of the literal.
`true` means positive polarity.
-/
abbrev Literal (α : Type u) := α × Bool

namespace Literal

/--
Flip the polarity of `l`.
-/
@[inline, grind =]
def negate (l : Literal α) : Literal α := (l.1, !l.2)

end Literal

end Sat
end Std
```
