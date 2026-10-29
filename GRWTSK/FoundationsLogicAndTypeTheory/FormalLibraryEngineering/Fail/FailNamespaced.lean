-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant81579482f094243b99400a045f3185b3bd0422b210ab056bb05571e46cd7639b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81579482f094243b99400a045f3185b3bd0422b210ab056bb05571e46cd7639b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant81579482f094243b99400a045f3185b3bd0422b210ab056bb05571e46cd7639b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"81579482f094243b99400a045f3185b3bd0422b210ab056bb05571e46cd7639b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Linter/Header/Fail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/

import Mathlib.Tactic.Linter.Header

/- Test that the module header linter correctly complains about missing headers,
even if we set `doc.verso` to `true. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant81579482f094243b99400a045f3185b3bd0422b210ab056bb05571e46cd7639b

/--
warning: The module doc-string for a file should be the first command after the imports.
Please, add a module doc-string (`/-! ... -/`) before `def foo :=
  37`.

Hint: Type `m(odule docstring) + [tab]` to insert a template via snippet.

Note: This linter can be disabled with `set_option linter.style.header false`
-/
#guard_msgs in
set_option linter.style.header true in
set_option doc.verso true in

def foo := 37
