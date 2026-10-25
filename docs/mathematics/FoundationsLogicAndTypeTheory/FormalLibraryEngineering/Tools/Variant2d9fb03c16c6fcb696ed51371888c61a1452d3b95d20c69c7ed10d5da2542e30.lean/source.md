# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tools.Variant2d9fb03c16c6fcb696ed51371888c61a1452d3b95d20c69c7ed10d5da2542e30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0e75befc2cb7a854f3216db49d55af3433218c3` · SHA-256 `6f537e580d2a1248857c6059195dc057bb9c6b5ab3299c154c0417c36b9e8917`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindHome.Variant3ddcf61fa8bfd50bb9dd0f9ec9ae8b86b0eb39a92dc7ea3fd020986dc3f00ccd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ddcf61fa8bfd50bb9dd0f9ec9ae8b86b0eb39a92dc7ea3fd020986dc3f00ccd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FindHome.Variant3ddcf61fa8bfd50bb9dd0f9ec9ae8b86b0eb39a92dc7ea3fd020986dc3f00ccd","mathematical_subject":"Foundations.Unclassified","original_sha256":"3ddcf61fa8bfd50bb9dd0f9ec9ae8b86b0eb39a92dc7ea3fd020986dc3f00ccd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/importGraph/ImportGraph/Tools.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Paul Lezeau
-/
module

public meta import ImportGraph.Tools.FindHome
public meta import ImportGraph.Tools.ImportDiff
public meta import ImportGraph.Tools.MinImports
public meta import ImportGraph.Tools.RedundantImports

/-!
# Tools for analyzing imports.

Provides the commands

* `#redundant_imports` which lists any transitively redundant imports in the current module.
* `#min_imports` which attempts to construct a minimal set of imports for the declarations
  in the current file.
  (Must be run at the end of the file. Tactics and macros may result in incorrect output.)
* `#find_home decl` suggests files higher up the import hierarchy to which `decl` could be moved.
* `#import_diff foo bar ...` computes the new transitive imports that are added to a given file when
  modules `foo, bar, ...` are added to the set of imports of the file.

-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FindHome.Variant3ddcf61fa8bfd50bb9dd0f9ec9ae8b86b0eb39a92dc7ea3fd020986dc3f00ccd

```
