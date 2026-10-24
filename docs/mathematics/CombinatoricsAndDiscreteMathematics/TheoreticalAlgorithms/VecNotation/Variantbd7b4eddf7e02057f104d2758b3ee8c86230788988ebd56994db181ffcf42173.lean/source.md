# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VecNotation.Variantbd7b4eddf7e02057f104d2758b3ee8c86230788988ebd56994db181ffcf42173

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98073a964007913e486bb7c67bfac550437f251c` · SHA-256 `5c1e09371ae561c32278418e0fb6a7bc36eb6a6946ec70dc5117800ff4bee70a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VecNotation.Variant6e2f1d036286ad31105261d7de2de39a2a6d696730c4a8935311b783c0e68ff6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e2f1d036286ad31105261d7de2de39a2a6d696730c4a8935311b783c0e68ff6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.VecNotation.Variant6e2f1d036286ad31105261d7de2de39a2a6d696730c4a8935311b783c0e68ff6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6e2f1d036286ad31105261d7de2de39a2a6d696730c4a8935311b783c0e68ff6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/vec_notation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Manually ported from
https://github.com/leanprover-community/mathlib/blob/fee91d74414e681a8b72cb7160e6b5ef0ec2cc0b/test/vec_notation.lean
-/
import Mathlib.Data.Fin.VecNotation

/-! These tests are testing `PiFin.toExpr` and fail with
`local attribute [-instance] PiFin.toExpr` -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VecNotation.Variant6e2f1d036286ad31105261d7de2de39a2a6d696730c4a8935311b783c0e68ff6

open Lean
open Lean.Meta
open Qq

#eval do
  let x : Fin 0 → ℕ := ![]
  let .true ← isDefEq (toExpr x) q((![] : Fin 0 → ℕ)) | failure

#eval do
  let x := ![1, 2, 3]
  let .true ← isDefEq (toExpr x) q(![1, 2, 3]) | failure

#eval do
  let x := ![![1, 2], ![3, 4]]
  let .true ← isDefEq (toExpr x) q(![![1, 2], ![3, 4]]) | failure

/-! These tests are testing `PiFin.repr` -/

#eval show MetaM Unit from guard (toString (repr (![] : _ → ℕ)) = "![]")
#eval show MetaM Unit from guard (toString (repr ![1, 2, 3]) = "![1, 2, 3]")
#eval show MetaM Unit from guard (toString (repr ![![1, 2], ![3, 4]]) = "![![1, 2], ![3, 4]]")
```
