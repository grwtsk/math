# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variant425dc1d544c35732ac402637f6dc5ed07fd59b29e9ebf83b2c9db700a9cb566c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d4e5519e94638747525de9880e82575415814dd` · SHA-256 `9011f41349617d218c8cb5ac52a63334c48d5084ef61bcfbc6068050a9754b41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsRatOfScientificOfTrue.Variantd6a049f4e91536919e547c72eb68e6c47f9dd07d9385d493bfb8b82fa561ce16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6a049f4e91536919e547c72eb68e6c47f9dd07d9385d493bfb8b82fa561ce16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsRatOfScientificOfTrue.Variantd6a049f4e91536919e547c72eb68e6c47f9dd07d9385d493bfb8b82fa561ce16","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d6a049f4e91536919e547c72eb68e6c47f9dd07d9385d493bfb8b82fa561ce16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/NormNum/OfScientific.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Thomas Murrills
-/
import Mathlib.Tactic.NormNum.Basic
import Mathlib.Data.Rat.Cast.Lemmas

/-!
## `norm_num` plugin for scientific notation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsRatOfScientificOfTrue.Variantd6a049f4e91536919e547c72eb68e6c47f9dd07d9385d493bfb8b82fa561ce16

namespace Mathlib
open Lean
open Meta

namespace Meta.NormNum
open Qq

variable {α : Type*}

-- see note [norm_num lemma function equality]
theorem isRat_ofScientific_of_true [DivisionRing α] :
    {m e : ℕ} → {n : ℤ} → {d : ℕ} →
    IsRat (mkRat m (10 ^ e) : α) n d → IsRat (OfScientific.ofScientific m true e : α) n d
  | _, _, _, _, ⟨_, eq⟩ => ⟨‹_›, by
    rwa [← Rat.cast_ofScientific, ← Rat.ofScientific_eq_ofScientific, Rat.ofScientific_true_def]⟩

-- see note [norm_num lemma function equality]
theorem isNat_ofScientific_of_false [DivisionRing α] : {m e nm ne n : ℕ} →
    IsNat m nm → IsNat e ne → n = Nat.mul nm ((10 : ℕ) ^ ne) →
    IsNat (OfScientific.ofScientific m false e : α) n
  | _, _, _, _, _, ⟨rfl⟩, ⟨rfl⟩, h => ⟨by
    rw [← Rat.cast_ofScientific, ← Rat.ofScientific_eq_ofScientific]
    simp only [Nat.cast_id, Rat.ofScientific_false_def, Nat.cast_mul, Nat.cast_pow,
      Nat.cast_ofNat, h, Nat.mul_eq]
    norm_cast⟩

/-- The `norm_num` extension which identifies expressions in scientific notation, normalizing them
to rat casts if the scientific notation is inherited from the one for rationals. -/
@[norm_num OfScientific.ofScientific _ _ _] def evalOfScientific :
    NormNumExt where eval {u α} e := do
  let .app (.app (.app f (m : Q(ℕ))) (b : Q(Bool))) (exp : Q(ℕ)) ← whnfR e | failure
  let dα ← inferDivisionRing α
  guard <|← withNewMCtxDepth <| isDefEq f q(OfScientific.ofScientific (α := $α))
  assumeInstancesCommute
  haveI' : $e =Q OfScientific.ofScientific $m $b $exp := ⟨⟩
  match b with
  | ~q(true) =>
    let rme ← derive (q(mkRat $m (10 ^ $exp)) : Q($α))
    let some ⟨q, n, d, p⟩ := rme.toRat' dα | failure
    return .isRat' dα q n d q(isRat_ofScientific_of_true $p)
  | ~q(false) =>
    let ⟨nm, pm⟩ ← deriveNat m q(AddCommMonoidWithOne.toAddMonoidWithOne)
    let ⟨ne, pe⟩ ← deriveNat exp q(AddCommMonoidWithOne.toAddMonoidWithOne)
    have pm : Q(IsNat $m $nm) := pm
    have pe : Q(IsNat $exp $ne) := pe
    let m' := nm.natLit!
    let exp' := ne.natLit!
    let n' := Nat.mul m' (Nat.pow (10 : ℕ) exp')
    have n : Q(ℕ) := mkRawNatLit n'
    haveI : $n =Q Nat.mul $nm ((10 : ℕ) ^ $ne) := ⟨⟩
    return .isNat _ n q(isNat_ofScientific_of_false $pm $pe (.refl $n))

end NormNum

end Meta

end Mathlib
```
