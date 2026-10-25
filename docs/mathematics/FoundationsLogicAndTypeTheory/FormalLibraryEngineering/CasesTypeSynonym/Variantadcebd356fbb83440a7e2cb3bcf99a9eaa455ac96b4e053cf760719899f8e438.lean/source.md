# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesTypeSynonym.Variantadcebd356fbb83440a7e2cb3bcf99a9eaa455ac96b4e053cf760719899f8e438

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51faadbe26c37096d616749c5bcaa7f2b911cf98` · SHA-256 `1325aed019411a2cf43f4cf47bb21507b9a442ff15fa363b905269c232e6601b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantdadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.T.Variantdadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/CasesTypeSynonym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantdadded50c1cfa44289d2904dac73d7e0deefc967888201baa10efb1cfba2ee07

inductive T

abbrev U := T

def V := T
abbrev W := V
def X := V

example (h : T) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases T)

example (h : T) : False := by
  aesop (add safe cases U)

example (h : U) : False := by
  aesop (add safe cases U)

example (h : V) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  aesop (add safe cases V)

example (h : W) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  aesop (add safe cases V)

example (h : V) : False := by
  aesop (add safe cases W)

example (h : X) : False := by
  fail_if_success aesop (config := { terminal := true })
  fail_if_success aesop (add safe cases T) (config := { terminal := true })
  fail_if_success aesop (add safe cases U) (config := { terminal := true })
  fail_if_success aesop (add safe cases V) (config := { terminal := true })
  fail_if_success aesop (add safe cases W) (config := { terminal := true })
  aesop (add safe cases X)

example (h : T) : False := by
  aesop (add safe cases (transparency! := default) X)

inductive A (α : Type) : Prop

abbrev B β := A β

example (h : A Unit) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases A)

example (h : A Unit) : False := by
  aesop (add safe cases B)

example (h : B Unit) : False := by
  fail_if_success aesop (config := { terminal := true })
  aesop (add safe cases A)

example (h : B Unit) : False := by
  aesop (add safe cases B)
```
