# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AsyncElab.Variantf6b6ce8c9b7ac1518fcb9693705de267ea31d464f68fdd528540147d4b1b5d3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6396d4e04ec72f5e210dc83e02cfaafb823b6d1` · SHA-256 `686f64b6771f60877f04d8ac9de4331e05f0529cacae685f03f6f8905e0c1fc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Old.Variantc9dd8af24427eb9b6b9c5ef0e865d112444580d45094f179fc2fc99217666332","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9dd8af24427eb9b6b9c5ef0e865d112444580d45094f179fc2fc99217666332","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Old.Variantc9dd8af24427eb9b6b9c5ef0e865d112444580d45094f179fc2fc99217666332","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c9dd8af24427eb9b6b9c5ef0e865d112444580d45094f179fc2fc99217666332","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/ArchitectTest/AsyncElab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Architect


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Old.Variantc9dd8af24427eb9b6b9c5ef0e865d112444580d45094f179fc2fc99217666332

open Lean Elab Term Std.Time in
elab "now_ms%" : term => do
  -- Synchronize env
  let env := (← getEnv).checked.get
  let hasC := env.constants.contains `c
  logInfo m!"Contains `c`: {hasC}"
  -- Get time
  let now ← Timestamp.now
  let ms := now.toMillisecondsSinceUnixEpoch.toInt.natAbs
  elabTerm (Syntax.mkNatLit ms) (mkConst ``Nat)

/-- info: Contains `c`: false -/
#guard_msgs in
def old := now_ms%

theorem a : True := by /-- a -/ sleep 1000; trivial
theorem b : True := by /-- b -/ sleep 1000; trivial
theorem c : True := by /-- c -/ sleep 1000; trivial

/-- info: Contains `c`: true -/
#guard_msgs in
def new := now_ms%

open Lean Architect in
run_meta
  -- Running a, b, c should be all parallel and hence the time should be ≈1s and ≪2s
  assert! new - old < 1100
  assert! getProofDocString (← getEnv) ``a == "a"
  assert! getProofDocString (← getEnv) ``b == "b"
  assert! getProofDocString (← getEnv) ``c == "c"
```
