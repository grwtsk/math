# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variante9d7380d3465e0dfcc7ffa7cad7ddf11dacc70b4fdc8e61689350c9702f5c0f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f42ec4454b96141090d9bdaff397190e6e900a63` · SHA-256 `c9bf5cd3c62446e08e53cee32f2179b8c29ce95a4e4fc2f71c9b570fc9f0838a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsNNRatOfScientificOfTrue.Variant097e64d127696f6c182abb61451558436b1a2bc14b3f1b3a2533dac161e66a5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"097e64d127696f6c182abb61451558436b1a2bc14b3f1b3a2533dac161e66a5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IsNNRatOfScientificOfTrue.Variant097e64d127696f6c182abb61451558436b1a2bc14b3f1b3a2533dac161e66a5e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"097e64d127696f6c182abb61451558436b1a2bc14b3f1b3a2533dac161e66a5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/NormNum/OfScientific.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Thomas Murrills
-/
module

public import Mathlib.Tactic.NormNum.Basic
public import Mathlib.Data.Rat.Cast.Defs
public import Mathlib.Tactic.Positivity.Basic
public import Mathlib.Tactic.SetLike

/-!
## `norm_num` plugin for scientific notation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsNNRatOfScientificOfTrue.Variant097e64d127696f6c182abb61451558436b1a2bc14b3f1b3a2533dac161e66a5e

public meta section

namespace Mathlib
open Lean
open Meta

namespace Meta.NormNum
open Qq

variable {α : Type*}

-- see note [norm_num lemma function equality]
theorem isNNRat_ofScientific_of_true [DivisionSemiring α] :
    {m e : ℕ} → {n : ℕ} → {d : ℕ} →
    IsNNRat (NNRat.divNat m (10 ^ e) : α) n d → IsNNRat (OfScientific.ofScientific m true e : α) n d
  | _, _, _, _, ⟨_, eq⟩ => ⟨‹_›, by rwa [NNRatCast.ofScientific_eq_ite, ite_eq_left rfl]⟩

-- see note [norm_num lemma function equality]
theorem isNat_ofScientific_of_false [DivisionSemiring α] : {m e nm ne n : ℕ} →
    IsNat m nm → IsNat e ne → n = Nat.mul nm ((10 : ℕ) ^ ne) →
    IsNat (OfScientific.ofScientific m false e : α) n
  | _, _, _, _, _, ⟨rfl⟩, ⟨rfl⟩, (rfl : (_ : ℕ) = _ * _) => ⟨by
    rw [NNRatCast.ofScientific_eq_ite, ite_eq_right Bool.false_ne_true]
    norm_cast⟩

/-- The `norm_num` extension which identifies expressions in scientific notation, normalizing them
to rat casts if the scientific notation is inherited from the one for rationals. -/
@[norm_num OfScientific.ofScientific _ _ _] def evalOfScientific :
    NormNumExt where eval {u α} e := do
  let mkApp3 f (m : Q(ℕ)) (b : Q(Bool)) (exp : Q(ℕ)) ← whnfR e | failure
  let dα ← inferDivisionSemiring α
  guard <|← withNewMCtxDepth <| isDefEq f q(OfScientific.ofScientific (α := $α))
  haveI' : $e =Q OfScientific.ofScientific $m $b $exp := ⟨⟩
  match b with
  | ~q(true) =>
    let rme ← derive (q(NNRat.divNat $m (10 ^ $exp)) : Q($α))
    let some ⟨q, n, d, p⟩ := rme.toNNRat' dα | failure
    return .isNNRat dα q n d q(isNNRat_ofScientific_of_true $p)
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
