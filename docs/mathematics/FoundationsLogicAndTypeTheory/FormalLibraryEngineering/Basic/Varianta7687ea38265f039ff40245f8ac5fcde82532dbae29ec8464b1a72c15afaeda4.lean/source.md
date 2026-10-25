# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Varianta7687ea38265f039ff40245f8ac5fcde82532dbae29ec8464b1a72c15afaeda4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2958120556ee95da92001ed1711e9ff60978bed4` · SHA-256 `68997e536db11f4bdae815e1b11bc84aad02851f99e42adc0d661864ba80e5cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Xor.Variantb0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Xor.Variantb0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a","mathematical_subject":"Foundations.Unclassified","original_sha256":"b0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Init/Data/Bool/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
import Mathlib.Mathport.Rename

/-!
# Boolean operations

In Lean 3 this file also contained the definitions of `cond`, `bor`, `band` and `bnot`,
the boolean functions. These are in Lean 4 core (as `cond`, `or`, `and` and `not`), but
apparently `xor` didn't make the cut.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Xor.Variantb0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a

#align bor or
#align band and
#align bnot not

/-- Boolean XOR -/
@[inline]
def xor : Bool → Bool → Bool
  | true, false => true
  | false, true => true
  | _, _ => false
#align bxor xor
```
