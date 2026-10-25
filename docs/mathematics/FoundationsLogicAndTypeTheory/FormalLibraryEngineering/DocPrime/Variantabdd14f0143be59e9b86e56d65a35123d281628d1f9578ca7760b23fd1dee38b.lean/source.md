# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DocPrime.Variantabdd14f0143be59e9b86e56d65a35123d281628d1f9578ca7760b23fd1dee38b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5a2f6fe221d22d4ea29667da893a04ae7f67f4a` · SHA-256 `45d74303310f00bb0c4b93dad4e61a8876e208097e2e59e5fe9e9b70740b3421`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.XPrime.Variant1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.XPrime.Variant1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/DocPrime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linter.DocPrime
import Mathlib.Tactic.Lemma


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.XPrime.Variant1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9

set_option linter.docPrime true

-- no warning on a primed-declaration with a doc-string containing `'`
/-- X' has a doc-string -/
def X' := 0

-- no warning on a declaration whose name contains a `'` *and does not end with it*
def X'X := 0

-- A list of universe names in the declaration is handled correctly, i.e. warns.
/--
warning: `Y'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
def Y'.{u} := ULift.{u} Nat

namespace X
/--
warning: `ABC.thm_no_doc1'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
theorem _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.XPrime.Variant1bb84bf890e02d1f4cd809b54f4d1dffdc192d86be96fe29469a4ac9fe8f03c9.ABC.thm_no_doc1' : True := .intro

/--
warning: `X.thm_no_doc2'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
theorem thm_no_doc2' : True := .intro

end X

/--
warning: `thm_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
theorem thm_no_doc' : True := .intro

/--
warning: `thm_with_attr_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
@[simp]
theorem thm_with_attr_no_doc' : True := .intro

/--
warning: `inst_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
instance inst_no_doc' : True := .intro

/--
warning: `abbrev_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
abbrev abbrev_no_doc' : True := .intro

/--
warning: `def_no_doc'` is missing a doc-string, please add one.
Declarations whose name ends with a `'` are expected to contain an explanation for the presence of a `'` in their doc-string. This may consist of discussion of the difference relative to the unprimed version, or an explanation as to why no better naming scheme is possible.
note: this linter can be disabled with `set_option linter.docPrime false`
-/
#guard_msgs in
def def_no_doc' : True := .intro

-- Anonymous declarations in a primed namespace should not get flagged by the linter.
namespace Foo'

example : True := .intro
instance : True := .intro

end Foo'
```
