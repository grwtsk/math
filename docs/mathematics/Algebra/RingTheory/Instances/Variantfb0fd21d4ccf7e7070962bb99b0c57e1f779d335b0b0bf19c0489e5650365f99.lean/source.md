# Complete source: GRWTSK.Algebra.RingTheory.Instances.Variantfb0fd21d4ccf7e7070962bb99b0c57e1f779d335b0b0bf19c0489e5650365f99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f125ed7e247a7320223aecc6040c85d8abbeb6e` · SHA-256 `ae0d522c6759520c668b9bc3c1ed4cd5fee720a2178494c473d28e909b921b79`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.RingTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.RingTheory.TestSorry.Variant4a9722f7947874147628870fa555d09ab1ba926c0a1b16e309502b42a7dc2120","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a9722f7947874147628870fa555d09ab1ba926c0a1b16e309502b42a7dc2120","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.TestSorry.Variant4a9722f7947874147628870fa555d09ab1ba926c0a1b16e309502b42a7dc2120","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"4a9722f7947874147628870fa555d09ab1ba926c0a1b16e309502b42a7dc2120","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Tactic/Convert/Instances.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.RingTheory.UniqueFactorizationDomain.Nat
import Mathlib.Tactic.Convert


namespace GRWTSK.Algebra.RingTheory.TestSorry.Variant4a9722f7947874147628870fa555d09ab1ba926c0a1b16e309502b42a7dc2120

private axiom test_sorry : ∀ {α}, α

/-! `convert` should not pop up goals about instances. -/
example {a b c : ℕ} (hab : instLTNat.lt a b) : Nat.instLinearOrder.toLT.lt a c := by
  convert (preTransparency := .reducible) hab
  · guard_target =ₛ Nat.instLinearOrder.toLT = instLTNat
    exact test_sorry
  · guard_target =ₛ c = b
    exact test_sorry

example {a b c : ℕ} (hab : instLTNat.lt a b) : Nat.instLinearOrder.toLT.lt a c := by
  convert (preTransparency := .instances) hab
  guard_target =ₛ c = b
  exact test_sorry

example (q z : Nat) : semigroupDvd.dvd q z := by
  convert_to (preTransparency := .reducible) q ^ 1 ∣ z
  · guard_target =ₛ semigroupDvd = Nat.instDvd
    exact test_sorry
  · guard_target =ₛ q = q ^ 1
    exact test_sorry
  · guard_target =ₛ q ^ 1 ∣ z
    exact test_sorry

example (q z : Nat) : semigroupDvd.dvd q z := by
  convert_to (preTransparency := .instances) q ^ 1 ∣ z
  · guard_target =ₛ q = q ^ 1
    exact test_sorry
  · guard_target =ₛ q ^ 1 ∣ z
    exact test_sorry
```
