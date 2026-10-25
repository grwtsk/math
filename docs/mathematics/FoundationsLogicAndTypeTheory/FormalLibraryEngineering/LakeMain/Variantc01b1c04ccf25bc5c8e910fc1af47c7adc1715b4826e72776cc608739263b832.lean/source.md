# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LakeMain.Variantc01b1c04ccf25bc5c8e910fc1af47c7adc1715b4826e72776cc608739263b832

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad6da8f26859130088e1a24ccd40445be8053689` · SHA-256 `727d9949bd21dd3ec1242f377fd7064208817fb003207d56a44230f3a4fce298`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantef0cbdf88cbfb0f510c105d77116736cbe3963155101344a15a1517953889c64","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef0cbdf88cbfb0f510c105d77116736cbe3963155101344a15a1517953889c64","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.Main.Variantef0cbdf88cbfb0f510c105d77116736cbe3963155101344a15a1517953889c64","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"ef0cbdf88cbfb0f510c105d77116736cbe3963155101344a15a1517953889c64","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/LakeMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Sebastian Ullrich, Mac Malone
-/
module

prelude
public import Init.System.IO
import Lake.DSL -- shake: keep (registers builtins)
import Lake.CLI.Main


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Main.Variantef0cbdf88cbfb0f510c105d77116736cbe3963155101344a15a1517953889c64

public def main (args : List String) : IO UInt32 := do
  Lake.cli args
```
