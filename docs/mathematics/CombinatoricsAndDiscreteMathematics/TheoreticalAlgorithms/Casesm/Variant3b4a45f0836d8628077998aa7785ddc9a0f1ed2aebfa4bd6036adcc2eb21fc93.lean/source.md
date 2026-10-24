# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Casesm.Variant3b4a45f0836d8628077998aa7785ddc9a0f1ed2aebfa4bd6036adcc2eb21fc93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76991e2fc97238e6f725f40c27a5f5ed99f4d5ca` · SHA-256 `59f37ebfc0120ae417c31f83893044f662dc4b87bc0e3540f81145c135019e2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Test.Variant1fbf5e4dbc6aa66af565f41bf381e4d01d1573873d5876d17638d282c8a0a4fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1fbf5e4dbc6aa66af565f41bf381e4d01d1573873d5876d17638d282c8a0a4fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Test.Variant1fbf5e4dbc6aa66af565f41bf381e4d01d1573873d5876d17638d282c8a0a4fe","mathematical_subject":"Computation.DataStructures","original_sha256":"1fbf5e4dbc6aa66af565f41bf381e4d01d1573873d5876d17638d282c8a0a4fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/casesm.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CasesM


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Test.Variant1fbf5e4dbc6aa66af565f41bf381e4d01d1573873d5876d17638d282c8a0a4fe

set_option autoImplicit true
set_option linter.unusedVariables false

set_option linter.unusedTactic false in
example (h : a ∧ b ∨ c ∧ d) (h2 : e ∧ f) : True := by
  casesm* _∨_, _∧_
  · clear ‹a› ‹b› ‹e› ‹f›; (fail_if_success clear ‹c›); trivial
  · clear ‹c› ‹d› ‹e› ‹f›; trivial

example (h : a ∧ b ∨ c ∧ d) : True := by
  fail_if_success casesm* _∧_ -- no match expected
  clear ‹a ∧ b ∨ c ∧ d›; trivial

example (h : a ∧ b ∨ c ∨ d) : True := by
  casesm* _∨_
  · clear ‹a ∧ b›; trivial
  · clear ‹c›; trivial
  · clear ‹d›; trivial

example (h : a ∧ b ∨ c ∨ d) : True := by
  casesm _∨_
  · clear ‹a ∧ b›; trivial
  · clear ‹c ∨ d›; trivial

example (h : a ∧ b ∨ c ∨ d) : True := by
  cases_type And Or
  · clear ‹a ∧ b›; trivial
  · clear ‹c ∨ d›; trivial

example (h : a ∧ b ∨ c ∨ d) : True := by
  fail_if_success cases_type* And -- no match expected
  · clear ‹a ∧ b ∨ c ∨ d›; trivial

example (h : a ∧ b ∨ c ∨ d) : True := by
  cases_type Or
  · clear ‹a ∧ b›; trivial
  · clear ‹c ∨ d›; trivial

example (h : a ∧ b ∨ c ∨ d) : True := by
  cases_type* Or
  · clear ‹a ∧ b›; trivial
  · clear ‹c›; trivial
  · clear ‹d›; trivial

example (h : a ∧ b ∨ c ∨ d) : True := by
  fail_if_success cases_type!* And Or -- no match expected
  · clear ‹a ∧ b ∨ c ∨ d›; trivial

example (h : a ∧ b ∧ (c ∨ d)) : True := by
  cases_type! And Or
  · clear ‹a› ‹b ∧ (c ∨ d)›; trivial

example (h : a ∧ b ∧ (c ∨ d)) : True := by
  cases_type!* And Or
  · clear ‹a› ‹b› ‹c ∨ d›; trivial

inductive Test : Nat → Prop
  | foo : Test 0
  | bar : False → Test (n + 1)

example (_ : Test n) (h2 : Test (m + 1)) : True := by
  cases_type!* Test
  · clear ‹Test n› ‹False›; trivial

example (_ : Test n) (h2 : Test (m + 1)) : True := by
  cases_type Test
  · clear ‹Test (m + 1)›; trivial
  · clear ‹False› ‹Test (m + 1)›; trivial

example (_ : Test n) (h2 : Test (m + 1)) : True := by
  cases_type* Test
  · clear ‹False›; trivial
  · clear ‹False›; clear ‹False›; trivial

example : True ∧ True ∧ True := by
  fail_if_success constructorm* True, _∨_ -- no match expected
  guard_target = True ∧ True ∧ True
  constructorm _∧_
  · guard_target = True; constructorm True
  · guard_target = True ∧ True; constructorm* True, _∧_

example (n : Nat) : True := by
  fail_if_success casesm! Nat  -- two constructors, so `casesm!` doesn't fire
  trivial

example (h : Array Nat) : True := by
  casesm! Array _
  trivial

example (h : Array Nat) : True := by
  casesm Array _
  -- user facing name is preserved:
  guard_hyp h : List Nat
  trivial

example (n : Nat) (h : n = 0) : True := by
  casesm Nat
  · trivial
  · -- user facing name is preserved:
    guard_hyp h : n + 1 = 0
    trivial

example (h : P ∧ Q) : True := by
  casesm _ ∧ _
  -- user facing name is not used here, because there are multiple new hypotheses.
  fail_if_success guard_hyp h : P
  rename_i p q
  guard_hyp p : P
  guard_hyp q : Q
  trivial

section AuxDecl
variable {p q r : Prop}
variable (h : p ∧ q ∨ p ∧ r)
include h

-- Make sure that we don't try to work on auxiliary declarations.
-- In this case, there will be an auxiliary recursive declaration for
-- `foo` itself that `casesm (_ ∧ _)` could potentially match.
theorem foo : p ∧ p := by
  cases h
  · casesm (_ ∧ _)
    constructor <;> assumption
  · casesm (_ ∧ _)
    constructor <;> assumption

end AuxDecl
```
