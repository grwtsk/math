# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafeExponentiation.Variant2c87e1eb0224e2c8d3579695d486b54fc884e41b58878c10a6e25ca6d09713a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c86cd9913a987aa559c1ff84dabf1ce0e6c6a707` · SHA-256 `f18d18cfa21d4f9663798718969f562a066af291ef0af865f398cd03991dc998`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckExponent.Variant8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CheckExponent.Variant8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/SafeExponentiation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.CoreM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckExponent.Variant8b8915c3a5892b125bc800023b5bd4f7eb5cdd4d08b9fcd84667e7196602b6eb

public section

namespace Lean

register_builtin_option exponentiation.threshold : Nat := {
  defValue := 256
  descr    := "maximum value for \
  which exponentiation operations are safe to evaluate. When an exponent \
  is a value greater than this threshold, the exponentiation will not be evaluated, \
  and a warning will be logged. This helps to prevent the system from becoming \
  unresponsive due to excessively large computations."
}

/--
Returns `true` if `n` is `≤ exponentiation.threshold`. Otherwise,
reports a warning and returns `false`.
This method ensures there is at most one warning message of this kind in the message log.
-/
def checkExponent (n : Nat) (warning := true) : CoreM Bool := do
  let threshold := exponentiation.threshold.get (← getOptions)
  if n > threshold then
    if (← pure warning <&&> logMessageKind `unsafe.exponentiation) then
      logWarning s!"exponent {n} exceeds the threshold {threshold}, exponentiation operation was not evaluated, use `set_option {exponentiation.threshold.name} <num>` to set a new threshold"
    return false
  else
    return true

end Lean
```
