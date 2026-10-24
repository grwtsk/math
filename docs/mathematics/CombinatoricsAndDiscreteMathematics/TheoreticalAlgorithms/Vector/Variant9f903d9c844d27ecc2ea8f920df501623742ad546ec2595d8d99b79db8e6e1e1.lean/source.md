# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variant9f903d9c844d27ecc2ea8f920df501623742ad546ec2595d8d99b79db8e6e1e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5e8cb416932496ebbe8ea4b1497136e78786cb1` · SHA-256 `7fca84f7cc8c5608e422c3a5d555f256233744a2da0cb94638a15c2299c6b0f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Gate.Varianta532b99d6d093ad8c72c767ce23fc91f91d3bc878cdcb1f0f73afd704f89354e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a532b99d6d093ad8c72c767ce23fc91f91d3bc878cdcb1f0f73afd704f89354e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Gate.Varianta532b99d6d093ad8c72c767ce23fc91f91d3bc878cdcb1f0f73afd704f89354e","mathematical_subject":"Computation.DataStructures","original_sha256":"a532b99d6d093ad8c72c767ce23fc91f91d3bc878cdcb1f0f73afd704f89354e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/vector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.Vector

/-! ### Testing scans over `Vector`. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Gate.Varianta532b99d6d093ad8c72c767ce23fc91f91d3bc878cdcb1f0f73afd704f89354e

#guard (Vector.scanr (· + ·) 0 (#v[1, 2, 3] : Vector Nat 3)).toList == [6, 5, 3, 0]

/-! ### Testing decidable quantifiers for `Vector`. -/

example : ∃ v : Vector Bool 6, v.toList.count true = 3 := by decide

inductive Gate : Nat → Type
| const : Bool → Gate 0
| if : ∀ {n}, Gate n → Gate n → Gate (n + 1)

namespace Gate

def and : Gate 2 := .if (.if (.const true) (.const false)) (.if (.const false) (.const false))

def eval (g : Gate n) (v : Vector Bool n) : Bool :=
  match g, v with
  | .const b, _ => b
  | .if g₁ g₂, v => if v.1.back! then eval g₁ v.pop else eval g₂ v.pop

example : ∀ v, and.eval v = (v[0] && v[1]) := by decide
example : ∃ v, and.eval v = false := by decide

end Gate
```
