-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variantf97f6812920667e07b4a87b9ea95ece44f5f5f6920de3f6c7170207e419d6984","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f97f6812920667e07b4a87b9ea95ece44f5f5f6920de3f6c7170207e419d6984","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Notation.Variantf97f6812920667e07b4a87b9ea95ece44f5f5f6920de3f6c7170207e419d6984","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f97f6812920667e07b4a87b9ea95ece44f5f5f6920de3f6c7170207e419d6984","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Annotated.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module
prelude
public import Init.Notation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Notation.Variantf97f6812920667e07b4a87b9ea95ece44f5f5f6920de3f6c7170207e419d6984

public section
namespace Lean.Parser.Command

/--
`grind_annotated "YYYY-MM-DD"` marks the current file as having been manually annotated for `grind`.

When the LibrarySuggestion framework is called with `caller := "grind"` (as happens when using
`grind +suggestions`), theorems from grind-annotated files are excluded from premise selection.
This is because these files have already been manually reviewed and annotated with appropriate
`@[grind]` attributes.

The date argument (in YYYY-MM-DD format) records when the file was annotated. This is currently
informational only, but may be used in the future to detect files that have been significantly
modified since annotation and may need re-review.

Example:
```
grind_annotated "2025-01-15"
```

This command should typically appear near the top of a file, after imports.
-/
syntax (name := grindAnnotated) "grind_annotated" str : command

end Lean.Parser.Command
