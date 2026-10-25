# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Test.Variant117d33eba6cf83af6f718b267c1d5b9e7f64966f676fceb0660ce87a90d22a83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a001a5a8e1c9730fb66ac67ac5cee384453677f8` · SHA-256 `6608acca479bb3f80bea8f5f53fe5de6a33bc2b28efee25f11d5e7514edc8d5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertNoSorry.Variant74ed07101c8640c80cffe11af6225925312ef891fe90bdf349567049910e02c7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"74ed07101c8640c80cffe11af6225925312ef891fe90bdf349567049910e02c7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AssertNoSorry.Variant74ed07101c8640c80cffe11af6225925312ef891fe90bdf349567049910e02c7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"74ed07101c8640c80cffe11af6225925312ef891fe90bdf349567049910e02c7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/DirectoryDependencyLinter/Test.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
import Mathlib.Init
import Mathlib.Util.AssertNoSorry
import Qq


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AssertNoSorry.Variant74ed07101c8640c80cffe11af6225925312ef891fe90bdf349567049910e02c7

/--
warning: The module doc-string for a file should be the first command after the imports.
Please, add a module doc-string (`/-! ... -/`) before `example :=
  trivial`.

Hint: Type `m(odule docstring) + [tab]` to insert a template via snippet.

Note: This linter can be disabled with `set_option linter.style.header false`
---
warning: Module MathlibTest.DirectoryDependencyLinter.Test depends on Mathlib.Util.AssertNoSorry,
but is only allowed to import modules starting with one of [Mathlib.Lean].
Note: module Mathlib.Util.AssertNoSorry is directly imported by this module

Note: This linter can be disabled with `set_option linter.directoryDependency false`
-/
#guard_msgs in
set_option linter.style.header true in
example := trivial

/-!
# Tests for the `directoryDependency` linter
-/

-- Some unit-tests for internal functions.
#guard Lean.Name.isPrefixOf `Mathlib.Util `Mathlib.Util.Basic == true
#guard Lean.Name.isPrefixOf `Mathlib.Util `Mathlib.Util.Nested.Basic == true
#guard Lean.Name.isPrefixOf `Mathlib.Util `Mathlib.Utils.Basic == false
#guard Lean.Name.isPrefixOf `Mathlib.Foo `Mathlib.Util.Foo == false
#guard Lean.Name.isPrefixOf `Mathlib.Util `Mathlib.Utils == false
```
