-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantba93730f0e723889a1404ff97b6ec7c81d1d318da2f0687571e3c2967e0b3f8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ba93730f0e723889a1404ff97b6ec7c81d1d318da2f0687571e3c2967e0b3f8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variantba93730f0e723889a1404ff97b6ec7c81d1d318da2f0687571e3c2967e0b3f8f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ba93730f0e723889a1404ff97b6ec7c81d1d318da2f0687571e3c2967e0b3f8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/globalAttributeIn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang, Damiano Testa
-/

import Mathlib.Tactic.Linter.GlobalAttributeIn

/-! Tests for the `globalAttributeIn` linter. -/

-- Test disabling the linter.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variantba93730f0e723889a1404ff97b6ec7c81d1d318da2f0687571e3c2967e0b3f8f

set_option linter.globalAttributeIn false

set_option autoImplicit false in
attribute [instance] Int.add in
instance : Inhabited Int where
  default := 0

set_option linter.globalAttributeIn true

set_option linter.globalAttributeIn false in
attribute [instance] Int.add in
instance : Inhabited Int where
  default := 0

-- Global instances with `in`, are linted, as they are a footgun.

/--
warning: Despite the `in`, the attribute 'instance 1100' is added globally to 'Int.add'
please remove the `in` or make this a `local instance 1100`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
-/
#guard_msgs in
set_option autoImplicit false in
attribute [instance 1100] Int.add in
set_option autoImplicit false in
instance : Inhabited Int where
  default := 0

/--
warning: Despite the `in`, the attribute 'instance' is added globally to 'Int.add'
please remove the `in` or make this a `local instance`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
-/
#guard_msgs in
attribute [instance] Int.add in
instance : Inhabited Int where
  default := 0

/--
warning: Despite the `in`, the attribute 'simp' is added globally to 'Int.add'
please remove the `in` or make this a `local simp`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
-/
#guard_msgs in
attribute [simp] Int.add in
instance : Inhabited Int where
  default := 0

namespace X

-- Here's another example, with nested attributes.
/-- warning: declaration uses 'sorry' -/
#guard_msgs in
theorem foo (x y : Nat) : x = y := sorry

/--
warning: Despite the `in`, the attribute 'simp' is added globally to 'foo'
please remove the `in` or make this a `local simp`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
---
warning: Despite the `in`, the attribute 'ext' is added globally to 'foo'
please remove the `in` or make this a `local ext`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
-/
#guard_msgs in
attribute [simp, local simp, ext, scoped instance, -simp, -ext] foo in
def bar := False

#guard_msgs in
-- `local instance` is allowed with `in`
attribute [local instance] Int.add in
instance : Inhabited Int where
  default := 0

#guard_msgs in
-- `local instance priority` is allowed with `in`
attribute [local instance 42] Int.add in
instance : Inhabited Int where
  default := 0

#guard_msgs in
-- `scoped instance` is allowed with `in`
attribute [scoped instance] Int.add in
instance : Inhabited Int where
  default := 0

#guard_msgs in
-- `scoped instance priority` is allowed with `in`
attribute [scoped instance 42] Int.add in
instance : Inhabited Int where
  default := 0

end X

-- Omitting the `in` is also fine.

attribute [local instance 42] X.foo

-- Global instance without the `in` are also left alone.
attribute [instance 20000] X.foo

namespace X

attribute [scoped instance 0] foo
