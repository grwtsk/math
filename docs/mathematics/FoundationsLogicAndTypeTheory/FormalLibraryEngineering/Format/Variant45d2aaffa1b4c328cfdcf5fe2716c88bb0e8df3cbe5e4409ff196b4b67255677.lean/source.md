# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Format.Variant45d2aaffa1b4c328cfdcf5fe2716c88bb0e8df3cbe5e4409ff196b4b67255677

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33b18e882c7e0ec55987a122ddaca1bf06dade15` · SHA-256 `753d2ea597590ae8bba2daacb7132f38b4edcf198920b26d288855651b7f8f54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrettyExtra.Variantd6a7447f55793b42643ad9099b280e9ae165722920c1ee6a54f952782f999f89","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6a7447f55793b42643ad9099b280e9ae165722920c1ee6a54f952782f999f89","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.PrettyExtra.Variantd6a7447f55793b42643ad9099b280e9ae165722920c1ee6a54f952782f999f89","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d6a7447f55793b42643ad9099b280e9ae165722920c1ee6a54f952782f999f89","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Lean/Format.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Std.Tactic.OpenPrivate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrettyExtra.Variantd6a7447f55793b42643ad9099b280e9ae165722920c1ee6a54f952782f999f89

namespace Std.Format

open private State State.mk State.out from Init.Data.Format.Basic in
/--
Renders a `Format` to a string. Similar to `Format.pretty`, but with additional options:
* `w`: the total width
* `indent`: the initial indentation
* `column`: the initial column for the first line
-/
def prettyExtra (f : Format) (w : Nat := defWidth) (indent : Nat := 0) (column := 0) : String :=
  let act : StateM State Unit := prettyM f w indent
  State.out <| act (State.mk "" column) |>.snd
```
