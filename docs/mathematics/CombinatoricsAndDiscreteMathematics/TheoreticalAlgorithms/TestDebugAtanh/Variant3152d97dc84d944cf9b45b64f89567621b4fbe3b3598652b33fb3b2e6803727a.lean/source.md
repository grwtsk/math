# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TestDebugAtanh.Variant3152d97dc84d944cf9b45b64f89567621b4fbe3b3598652b33fb3b2e6803727a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13aeba0edb77f789ac7b8da95f97a226f8bdf0bb` · SHA-256 `94df1ba25f2be31056c4e25bc68bc17b1ad92a3a7588b0787c4163f239417e54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Taylor.Variant6c124dcae558a967350b0ec18876a5d9fc6354428f6e6561ef8aada8fc17987c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c124dcae558a967350b0ec18876a5d9fc6354428f6e6561ef8aada8fc17987c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Taylor.Variant6c124dcae558a967350b0ec18876a5d9fc6354428f6e6561ef8aada8fc17987c","mathematical_subject":"Computation.DataStructures","original_sha256":"6c124dcae558a967350b0ec18876a5d9fc6354428f6e6561ef8aada8fc17987c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_debug_atanh.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Minimal debug file for atanh coefficients issue.
-/
import LeanCert.Core.IntervalRat.Taylor

-- Test 1: Direct map with explicit type

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Taylor.Variant6c124dcae558a967350b0ec18876a5d9fc6354428f6e6561ef8aada8fc17987c

#eval
  let result := (List.range 11).map (fun i =>
    if i % 2 = 1 then (1 : ℚ) / (i : ℚ) else (0 : ℚ))
  dbg_trace "Direct map: {result}"
  pure ()

-- Test 2: Check what List.map returns for our lambda
#eval
  let f : ℕ → ℚ := fun i => if i % 2 = 1 then 1 / (i : ℚ) else (0 : ℚ)
  let coeffs := (List.range 11).map f
  dbg_trace "With explicit f: {coeffs}"
  pure ()

-- Test 3: More explicit version
#eval
  let coeffs : List ℚ := [0, 1, 0, 1/3, 0, 1/5, 0, 1/7, 0, 1/9, 0]
  dbg_trace "Manual coeffs: {coeffs}"
  pure ()

-- Test 4: Debug the condition
#eval
  let results := (List.range 11).map fun i =>
    let cond := i % 2 == 1  -- Use == for Bool instead of = for Prop
    let val : ℚ := if cond then 1 / (i : ℚ) else 0
    s!"i={i}, i % 2 = {i % 2}, cond={cond}, val={val}"
  dbg_trace "Condition debug:\n{String.intercalate "\n" results}"
  pure ()
```
