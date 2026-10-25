# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PnatToNat.Variant29774e9905d3bb07406782b290b0aa7baa79c0c395766b346cd19d4e31ca141d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2012db4bcf5f44e14df2a39cbb0d273299162079` · SHA-256 `0007c762055d70a38ae6b5ae9738eb6a862cd5c5b43623093605e2db93c61a20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PNatToNat.Varianta33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PNatToNat.Varianta33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/pnat_to_nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.PNatToNat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PNatToNat.Varianta33bb380268deb6c644b2495ab2c78e82ee50d72487eacf11aabee0db849c408

example (a b : PNat) (h : a < b) : 1 < b := by
  pnat_to_nat
  omega

example (a b : PNat) (h : a = b) : b = a := by
  -- to test if the tactic works with inaccessible names
  let a : ℤ := 42
  pnat_to_nat
  omega

example (a b : PNat) (h : a < b) : 1 < b := by
  have := a.pos
  pnat_to_nat
  omega
```
