# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rat.Variant3ff1ac9a6a24eba38af727f5d0b758137fcba2ec2674cc041e599676e1681aa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50b8acf641d9b0a658dfc6e90ac450489e2ea373` · SHA-256 `2c0062fb268ab4c6c4506198ce303b57faa541992ac261ae4b6d77a7675870f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rat.Variant526bf41adf4efeb3e9cc172bc604b4b5b5b92f068a54e8eab2315d4db720b418","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"526bf41adf4efeb3e9cc172bc604b4b5b5b92f068a54e8eab2315d4db720b418","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Rat.Variant526bf41adf4efeb3e9cc172bc604b4b5b5b92f068a54e8eab2315d4db720b418","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"526bf41adf4efeb3e9cc172bc604b4b5b5b92f068a54e8eab2315d4db720b418","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Lean/Expr/Rat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kim Morrison
-/
import Mathlib.Init
import Batteries.Data.Rat.Basic
import Batteries.Tactic.Alias

/-!
# Additional operations on Expr and rational numbers

This file defines some operations involving `Expr` and rational numbers.

## Main definitions

* `Lean.Expr.isExplicitNumber`: is an expression a number in normal form?
  This includes natural numbers, integers and rationals.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rat.Variant526bf41adf4efeb3e9cc172bc604b4b5b5b92f068a54e8eab2315d4db720b418

namespace Lean.Expr

/--
Check if an expression is a "rational in normal form",
i.e. either an integer number in normal form,
or `n / d` where `n` is an integer in normal form, `d` is a natural number in normal form,
`d ≠ 1`, and `n` and `d` are coprime (in particular, we check that `(mkRat n d).den = d`).
If so returns the rational number.
-/
def rat? (e : Expr) : Option Rat := do
  if e.isAppOfArity ``Div.div 4 then
    let d ← e.appArg!.nat?
    guard (d ≠ 1)
    let n ← e.appFn!.appArg!.int?
    let q := mkRat n d
    guard (q.den = d)
    pure q
  else
    e.int?

/--
Test if an expression represents an explicit number written in normal form:
* A "natural number in normal form" is an expression `OfNat.ofNat n`, even if it is not of type `ℕ`,
  as long as `n` is a literal.
* An "integer in normal form" is an expression which is either a natural number in number form,
  or `-n`, where `n` is a natural number in normal form.
* A "rational in normal form" is an expressions which is either an integer in normal form,
  or `n / d` where `n` is an integer in normal form, `d` is a natural number in normal form,
  `d ≠ 1`, and `n` and `d` are coprime (in particular, we check that `(mkRat n d).den = d`).
-/
def isExplicitNumber : Expr → Bool
  | .lit _ => true
  | .mdata _ e => isExplicitNumber e
  | e => e.rat?.isSome

end Lean.Expr
```
