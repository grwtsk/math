# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lint.Variant9e09b419e56c506740d4b67a58d21a9d1a9c3d579a4eacfe4e3119fa5493581b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7677bbd8f67457d9d8ba023b82846e6a7844179f` · SHA-256 `1d28a2415143fb467cfb1c084f72344f5828e595277167d9d2eac3835a7468d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variant1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Tactics.Variant1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Lint.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Tactics

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactics.Variant1048084050c5bb364c147dd4a6d1cb89cb281851a907901845134d4acdf5fe11

public section
namespace Lean.Grind
open Parser Tactic Grind

/--
`#grind_lint check` analyzes all theorems annotated for theorem instantiation using E-matching.

It creates artificial goals and reports the number of instances each theorem produces.
The command helps detect long or unbounded theorem instantiation chains.

Usage examples:
```
#grind_lint check
#grind_lint check (min:=10) (detailed:=50)
#grind_lint check in Foo Bar -- restrict analysis to these namespaces
#grind_lint check in module Foo -- restrict analysis to theorems defined in module `Foo` or any of its submodules
```

Options can include any valid `grind` configuration option, and `min` and `detailed`.
- `min`:      minimum number of instantiations to print a summary (default: 10)
- `detailed`: minimum number of instantiations to print detailed breakdown (default: 50)
If the option `trace.grind.*` is enabled, additional details are printed.

By default, `#grind_lint` uses the following `grind` configuration:
```
  splits       := 0
  lookahead    := false
  mbtc         := false
  ematch       := 20
  instances    := 100
  gen          := 10
```
Consider using `#grind_lint inspect <thm>` to focus on specific theorems.
-/
syntax (name := grindLintCheck) "#grind_lint" ppSpace &"check" (ppSpace configItem)* (ppSpace "in" (ppSpace &"module")? ident+)? : command

/--
`#grind_lint inspect thm₁ …` analyzes the specified theorem(s) individually.

It always prints detailed statistics regardless of thresholds and is useful
for investigating specific `grind` lemmas that may generate excessive
instantiations.
Examples:
```
#grind_lint inspect Array.zip_map
```
You can use `set_option trace.grind.ematch.instance true` to instruct `grind` to display the
actual instances it produces.
-/
syntax (name := grindLintInspect) "#grind_lint" ppSpace &"inspect" (ppSpace configItem)* ident+ : command

/--
`#grind_lint mute thm₁ …` marks the given theorem(s) as *muted* during linting.

Muted theorems remain in the environment but are not instantiated when running
`#grind_lint check` or `#grind_lint inspect`.
This is useful for suppressing noisy or recursive lemmas that cause excessive
E-matching without removing their annotations.

Example:
```
#grind_lint mute Array.zip_map Int.zero_shiftRight
```
-/
syntax (name := grindLintMute) "#grind_lint" ppSpace &"mute" ident+ : command

/--
`#grind_lint skip thm₁ …` marks the given theorem(s) to be skipped entirely by `#grind_lint check`.
Skipped theorems are neither analyzed nor reported, but may still be used for
instantiation when analyzing other theorems.

`#grind_lint skip suffix name₁ …` marks all theorems with the given suffix(es) to be skipped.
For example, `#grind_lint skip suffix foo` will skip `bar.foo`, `qux.foo`, etc.

Examples:
```
#grind_lint skip Array.range_succ
#grind_lint skip suffix append
```
-/
syntax (name := grindLintSkip) "#grind_lint" ppSpace &"skip" (ppSpace &"suffix")? ident+ : command

end Lean.Grind
````
