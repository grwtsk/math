# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCoprime.Variantc5ebad52a9deb11e3580aee79781c7bf293374e49a25a82384d91dd1f781ed0d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c15e329fd4ca16c5ffb99961775cbc067dd07df` · SHA-256 `92a10717669bc31d82227d7c96f30aa52affb0f2b2a1f9aead72e0025a945661`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntNotIsCoprimeHelper.Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IntNotIsCoprimeHelper.Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/NormNum/IsCoprime.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.RingTheory.Coprime.Lemmas
import Mathlib.Tactic.NormNum.GCD

/-! # `norm_num` extension for `IsCoprime`

This module defines a `norm_num` extension for `IsCoprime` over `ℤ`.

(While `IsCoprime` is defined over `ℕ`, since it uses Bezout's identity with `ℕ` coefficients
it does not correspond to the usual notion of coprime.)
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntNotIsCoprimeHelper.Variant0a0d4fbfc35ab77c7ebb9fd0991a978798c92e7fb04106d2ec52c7d19ab696fe

namespace Tactic

namespace NormNum

open Qq Lean Elab.Tactic Mathlib.Meta.NormNum

theorem int_not_isCoprime_helper (x y : ℤ) (d : ℕ) (hd : Int.gcd x y = d)
    (h : Nat.beq d 1 = false) : ¬ IsCoprime x y := by
  rw [Int.isCoprime_iff_gcd_eq_one, hd]
  exact Nat.ne_of_beq_eq_false h

theorem isInt_isCoprime : {x y nx ny : ℤ} →
    IsInt x nx → IsInt y ny → IsCoprime nx ny → IsCoprime x y
  | _, _, _, _, ⟨rfl⟩, ⟨rfl⟩, h => h

theorem isInt_not_isCoprime : {x y nx ny : ℤ} →
    IsInt x nx → IsInt y ny → ¬ IsCoprime nx ny → ¬ IsCoprime x y
  | _, _, _, _, ⟨rfl⟩, ⟨rfl⟩, h => h

/-- Evaluates `IsCoprime` for the given integer number literals.
Panics if `ex` or `ey` aren't integer number literals. -/
def proveIntIsCoprime (ex ey : Q(ℤ)) : Q(IsCoprime $ex $ey) ⊕ Q(¬ IsCoprime $ex $ey) :=
  let ⟨ed, pf⟩ := proveIntGCD ex ey
  if ed.natLit! = 1 then
    have pf' : Q(Int.gcd $ex $ey = 1) := pf
    Sum.inl q(Int.isCoprime_iff_gcd_eq_one.mpr $pf')
  else
    have h : Q(Nat.beq $ed 1 = false) := (q(Eq.refl false) : Expr)
    Sum.inr q(int_not_isCoprime_helper $ex $ey $ed $pf $h)

/-- Evaluates the `IsCoprime` predicate over `ℤ`. -/
@[norm_num IsCoprime (_ : ℤ) (_ : ℤ)]
def evalIntIsCoprime : NormNumExt where eval {_ _} e := do
  let .app (.app _ (x : Q(ℤ))) (y : Q(ℤ)) ← Meta.whnfR e | failure
  let ⟨ex, p⟩ ← deriveInt x _
  let ⟨ey, q⟩ ← deriveInt y _
  match proveIntIsCoprime ex ey with
  | .inl pf =>
    have pf' : Q(IsCoprime $x $y) := q(isInt_isCoprime $p $q $pf)
    return .isTrue pf'
  | .inr pf =>
    have pf' : Q(¬ IsCoprime $x $y) := q(isInt_not_isCoprime $p $q $pf)
    return .isFalse pf'

end NormNum

end Tactic
```
