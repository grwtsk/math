# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatFactorial.Variantb3235420a3d78ecc6c3ef7e362fdb780c7065cce69b887f40a5b1432b9fffbc5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce27881347b719c784a82a550072f2e2210f973c` · SHA-256 `c641b15106446bfa6fc4ad9255fba207bf29da8a95d5858b430c67bc9964188e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AscFactorialAux.Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AscFactorialAux.Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/NormNum/NatFactorial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Sebastian Zimmer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Zimmer
-/
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Tactic.NormNum

/-! # `norm_num` extensions for factorials

Extensions for `norm_num` that compute `Nat.factorial`, `Nat.ascFactorial` and `Nat.descFactorial`.

This is done by reducing each of these to `ascFactorial`, which is computed using a divide and
conquer strategy that improves performance and avoids exceeding the recursion depth.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AscFactorialAux.Variant50ec61355e40a78ca8025cc32b71b494de0131ea6c4c5a381d7f6b0fc5ad6679

namespace Mathlib.Meta.NormNum

open Nat Qq Lean Elab.Tactic Qq Meta

lemma asc_factorial_aux (n l m a b : ℕ) (h₁ : n.ascFactorial l = a)
    (h₂ : (n + l).ascFactorial m = b) : n.ascFactorial (l + m) = a * b := by
  rw [← h₁, ← h₂]
  symm
  apply ascFactorial_mul_ascFactorial

/-- Calculate `n.ascFactorial l` and return this value along with a proof of the result. -/
partial def proveAscFactorial (n l : ℕ) (en el : Q(ℕ)) :
    ℕ × (eresult : Q(ℕ)) × Q(($en).ascFactorial $el = $eresult) :=
  if l ≤ 50 then
    have res : ℕ := n.ascFactorial l
    have eres : Q(ℕ) := mkRawNatLit (n.ascFactorial l)
    have : ($en).ascFactorial $el =Q $eres := ⟨⟩
    ⟨res, eres, q(Eq.refl $eres)⟩
  else
    have m : ℕ := l / 2
    have em : Q(ℕ) := mkRawNatLit m
    have : $em =Q $el / 2 := ⟨⟩

    have r : ℕ := l - m
    have er : Q(ℕ) := mkRawNatLit r
    have : $er =Q $el - $em := ⟨⟩
    have : $el =Q ($em + $er) := ⟨⟩

    have nm : ℕ := n + m
    have enm : Q(ℕ) := mkRawNatLit nm
    have : $enm =Q $en + $em := ⟨⟩

    let ⟨a, ea, a_prf⟩ := proveAscFactorial n m en em
    let ⟨b, eb, b_prf⟩ := proveAscFactorial (n + m) r enm er
    have eab : Q(ℕ) := mkRawNatLit (a * b)
    have : $eab =Q $ea * $eb := ⟨⟩
    ⟨a * b, eab, q(by convert asc_factorial_aux $en $em $er $ea $eb $a_prf $b_prf)⟩

lemma isNat_factorial {n x : ℕ} (h₁ : IsNat n x) (a : ℕ) (h₂ : (1).ascFactorial x = a) :
    IsNat (n !) a := by
  constructor
  simp only [h₁.out, cast_id, ← h₂, one_ascFactorial]

/-- Evaluates the `Nat.factorial` function. -/
@[nolint unusedHavesSuffices, norm_num Nat.factorial _]
def evalNatFactorial : NormNumExt where eval {u α} e := do
  let .app _ (x : Q(ℕ)) ← Meta.whnfR e | failure
  have : u =QL 0 := ⟨⟩; have : $α =Q ℕ := ⟨⟩; have : $e =Q Nat.factorial $x := ⟨⟩
  let sℕ : Q(AddMonoidWithOne ℕ) := q(instAddMonoidWithOneNat)
  let ⟨ex, p⟩ ← deriveNat x sℕ
  let ⟨_, val, ascPrf⟩ := proveAscFactorial 1 ex.natLit! q(nat_lit 1) ex
  return .isNat sℕ q($val) q(isNat_factorial $p $val $ascPrf)

lemma isNat_ascFactorial {n x l y : ℕ} (h₁ : IsNat n x) (h₂ : IsNat l y) (a : ℕ)
    (p : x.ascFactorial y = a) : IsNat (n.ascFactorial l) a := by
  constructor
  simp [h₁.out, h₂.out, ← p]

/-- Evaluates the Nat.ascFactorial function. -/
@[nolint unusedHavesSuffices, norm_num Nat.ascFactorial _ _]
def evalNatAscFactorial : NormNumExt where eval {u α} e := do
  let .app (.app _ (x : Q(ℕ))) (y : Q(ℕ)) ← Meta.whnfR e | failure
  have : u =QL 0 := ⟨⟩; have : $α =Q ℕ := ⟨⟩; have : $e =Q Nat.ascFactorial $x $y := ⟨⟩
  let sℕ : Q(AddMonoidWithOne ℕ) := q(instAddMonoidWithOneNat)
  let ⟨ex₁, p₁⟩ ← deriveNat x sℕ
  let ⟨ex₂, p₂⟩ ← deriveNat y sℕ
  let ⟨_, val, ascPrf⟩ := proveAscFactorial ex₁.natLit! ex₂.natLit! ex₁ ex₂
  return .isNat sℕ q($val) q(isNat_ascFactorial $p₁ $p₂ $val $ascPrf)

lemma isNat_descFactorial {n x l y : ℕ} (z : ℕ) (h₁ : IsNat n x) (h₂ : IsNat l y)
    (h₃ : x = z + y) (a : ℕ) (p : (z + 1).ascFactorial y = a) : IsNat (n.descFactorial l) a := by
  constructor
  simpa [h₁.out, h₂.out, ← p, h₃] using Nat.add_descFactorial_eq_ascFactorial _ _

lemma isNat_descFactorial_zero {n x l y : ℕ} (z : ℕ) (h₁ : IsNat n x) (h₂ : IsNat l y)
    (h₃ : y = z + x + 1) : IsNat (n.descFactorial l) 0 := by
  constructor
  simp [h₁.out, h₂.out, h₃]

private partial def evalNatDescFactorialNotZero {x' y' : Q(ℕ)} (x y z : Q(ℕ))
    (_hx : $x =Q $z + $y)
    (px : Q(IsNat $x' $x)) (py : Q(IsNat $y' $y)) :
    (n : Q(ℕ)) × Q(IsNat (descFactorial $x' $y') $n) :=
  have zp1 :Q(ℕ) := mkRawNatLit (z.natLit! + 1)
  have : $zp1 =Q $z + 1 := ⟨⟩
  let ⟨_, val, ascPrf⟩ := proveAscFactorial (z.natLit! + 1) y.natLit! zp1 y
  ⟨val, q(isNat_descFactorial $z $px $py rfl $val $ascPrf)⟩

private partial def evalNatDescFactorialZero {x' y' : Q(ℕ)} (x y z : Q(ℕ))
    (_hy : $y =Q $z + $x + 1)
    (px : Q(IsNat $x' $x)) (py : Q(IsNat $y' $y)) :
    (n : Q(ℕ)) × Q(IsNat (descFactorial $x' $y') $n) :=
  ⟨q(nat_lit 0), q(isNat_descFactorial_zero $z $px $py rfl)⟩

/-- Evaluates the `Nat.descFactorial` function. -/
@[nolint unusedHavesSuffices, norm_num Nat.descFactorial _ _]
def evalNatDescFactorial : NormNumExt where eval {u α} e := do
  let .app (.app _ (x' : Q(ℕ))) (y' : Q(ℕ)) ← Meta.whnfR e | failure
  have : u =QL 0 := ⟨⟩
  have : $α =Q ℕ := ⟨⟩
  have : $e =Q Nat.descFactorial $x' $y' := ⟨⟩
  let sℕ : Q(AddMonoidWithOne ℕ) := q(instAddMonoidWithOneNat)
  let ⟨x, p₁⟩ ← deriveNat x' sℕ
  let ⟨y, p₂⟩ ← deriveNat y' sℕ
  if x.natLit! ≥ y.natLit! then
    have z : Q(ℕ) := mkRawNatLit (x.natLit! - y.natLit!)
    have : $x =Q $z + $y := ⟨⟩
    let ⟨val, prf⟩ := evalNatDescFactorialNotZero (x' := x') (y' := y') x y z ‹_› p₁ p₂
    return .isNat sℕ val q($prf)
  else
    have z : Q(ℕ) := mkRawNatLit (y.natLit! - x.natLit! - 1)
    have : $y =Q $z + $x + 1 := ⟨⟩
    let ⟨val, prf⟩ := evalNatDescFactorialZero (x' := x') (y' := y') x y z ‹_› p₁ p₂
    return .isNat sℕ val q($prf)

end NormNum

end Meta

end Mathlib
```
