# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Percent.Variant2a579db55c032b3d7be68d0cf9ffb53e87a79a769018fd8ea1b89eea3b08f4ba

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `21fafd5a6d75ff7f39497423689c42e247d8054e` · SHA-256 `4965623d327ad0a054cdd9c6ec37a0a522a389399ad7ffff88918cffdc01d6a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Percent.Variant018c491c4aba730acc649714091ff3b1605aa7fb40d302bf312b7d4477d8a76e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"018c491c4aba730acc649714091ff3b1605aa7fb40d302bf312b7d4477d8a76e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Percent.Variant018c491c4aba730acc649714091ff3b1605aa7fb40d302bf312b7d4477d8a76e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"018c491c4aba730acc649714091ff3b1605aa7fb40d302bf312b7d4477d8a76e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Percent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg, Asta Halkjær From
-/
module


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Percent.Variant018c491c4aba730acc649714091ff3b1605aa7fb40d302bf312b7d4477d8a76e

public section

namespace Aesop

open Lean
open Std

/-
Invariant: between 0 and 1.0
-/
structure Percent where
  toFloat : Float
  deriving Inhabited

namespace Percent

protected def ofFloat (f : Float) : Option Percent :=
  if 0 <= f && f <= 1.0 then some ⟨f⟩ else none

instance : Mul Percent where
  mul p q := ⟨p.toFloat * q.toFloat⟩

@[inline]
def δ : Percent :=
  ⟨0.00001⟩

instance : BEq Percent where
  beq | ⟨p⟩, ⟨q⟩ => if p > q then p - q < δ.toFloat else q - p < δ.toFloat

instance : Ord Percent where
  compare p q :=
    if p == q then Ordering.eq
    else if p.toFloat < q.toFloat then Ordering.lt
    else Ordering.gt

-- NOTE: This is not the same as
--
--     p < q := p.toFloat < q.toFloat
--
-- That definition would not agree with the Ord instance.
instance : LT Percent :=
  ltOfOrd

instance : LE Percent :=
  leOfOrd

instance : ToString Percent where
  toString p := toString p.toFloat

instance : HPow Percent Nat Percent where
  hPow | ⟨p⟩, n => ⟨p ^ n.toFloat⟩

def hundred : Percent :=
  ⟨1⟩

def fifty : Percent :=
  ⟨0.5⟩

def toHumanString (p : Percent) : String :=
  let str := toString (p.toFloat * 100)
  match str.splitToList λ c => c == '.' with
  | [beforePoint] => beforePoint ++ "%"
  | [beforePoint, afterPoint] =>
    beforePoint ++ "." ++ afterPoint.take 4 ++ "%"
  | _ => unreachable!

protected def ofNat (n : Nat) : Option Percent :=
  Percent.ofFloat $ n.toFloat / 100

end Aesop.Percent
```
