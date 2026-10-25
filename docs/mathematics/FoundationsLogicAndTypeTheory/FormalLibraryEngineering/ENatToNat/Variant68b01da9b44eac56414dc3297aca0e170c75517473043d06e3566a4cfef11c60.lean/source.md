# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnatToNat.Variant68b01da9b44eac56414dc3297aca0e170c75517473043d06e3566a4cfef11c60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e0212fe36a167bc3ad3b132a855101bb5f6bcde0` · SHA-256 `629f339c2fd65d3215030d097079fb62ea2785ff432891e4cce1a6ba62322506`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ENatToNat.Variant2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ENatToNat.Variant2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/enat_to_nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ENatToNat


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ENatToNat.Variant2b449fbc6b9d203d738cc7dbc2726438072790501b672ffe321a641270eed46a

example (a b : ENat) (h : a = b) : a - b = b - a := by
  enat_to_nat
  omega

example (a b : ENat) (h : a ≤ b) : a - b < b + 1 := by
  enat_to_nat
  omega

example (a b : ENat) (h : a ≤ b) : a - 2 * b ≤ b + 1 := by
  enat_to_nat
  omega

example (a b c : ENat) (hab : a ≥ b) (hbc : b ≥ c) : a ≥ c := by
  enat_to_nat
  omega

example (a b : ENat) (h : a = b) : a - b = b - a := by
  -- to test if the tactic works with inaccessible names
  let a : ℤ := 42
  let b : ℤ := 32
  enat_to_nat
  omega
```
