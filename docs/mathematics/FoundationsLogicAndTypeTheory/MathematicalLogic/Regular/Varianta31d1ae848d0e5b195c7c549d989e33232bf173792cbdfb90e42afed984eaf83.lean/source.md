# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Regular.Varianta31d1ae848d0e5b195c7c549d989e33232bf173792cbdfb90e42afed984eaf83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de05a58d700635bda93d4a09569e63f002284987` · SHA-256 `349e25481c9512350170848901af122a84d294c4387957767dc7956b536fea55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variantd9d65301172677da937d0a924c5b5b28b18bb16c7c89567961d37030934d5df1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9d65301172677da937d0a924c5b5b28b18bb16c7c89567961d37030934d5df1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.Subsingleton.Variantd9d65301172677da937d0a924c5b5b28b18bb16c7c89567961d37030934d5df1","mathematical_subject":"Logic.Foundations","original_sha256":"d9d65301172677da937d0a924c5b5b28b18bb16c7c89567961d37030934d5df1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/GroupWithZero/Action/Regular.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
module

public import Mathlib.Algebra.Regular.SMul
public import Mathlib.Algebra.GroupWithZero.Action.Defs

/-!
# Results about `IsSMulRegular` for `MonoidWithZero`
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Subsingleton.Variantd9d65301172677da937d0a924c5b5b28b18bb16c7c89567961d37030934d5df1

@[expose] public section

variable {R S M : Type*} {a b : R} {s : S}

namespace IsSMulRegular

section MonoidWithZero
variable [MonoidWithZero R] [Zero M] [MulActionWithZero R M]

/-- The element `0` is `M`-regular if and only if `M` is trivial. -/
protected theorem subsingleton (h : IsSMulRegular M (0 : R)) : Subsingleton M :=
  ⟨fun a b => h (by dsimp only [Function.comp_def]; repeat' rw [MulActionWithZero.zero_smul])⟩

/-- The element `0` is `M`-regular if and only if `M` is trivial. -/
theorem zero_iff_subsingleton : IsSMulRegular M (0 : R) ↔ Subsingleton M :=
  ⟨fun h => h.subsingleton, fun H a b _ => @Subsingleton.elim _ H a b⟩

/-- The `0` element is not `M`-regular, on a non-trivial module. -/
theorem not_zero_iff : ¬IsSMulRegular M (0 : R) ↔ Nontrivial M := by
  rw [nontrivial_iff, not_iff_comm, zero_iff_subsingleton, subsingleton_iff]
  push Not
  exact Iff.rfl

/-- The element `0` is `M`-regular when `M` is trivial. -/
theorem zero [sM : Subsingleton M] : IsSMulRegular M (0 : R) :=
  zero_iff_subsingleton.mpr sM

/-- The `0` element is not `M`-regular, on a non-trivial module. -/
theorem not_zero [nM : Nontrivial M] : ¬IsSMulRegular M (0 : R) :=
  not_zero_iff.mpr nM

end MonoidWithZero

end IsSMulRegular

section SMulZeroClass

protected lemma IsSMulRegular.right_eq_zero_of_smul [Zero M] [SMulZeroClass R M]
    {r : R} {x : M} (h1 : IsSMulRegular M r) (h2 : r • x = 0) : x = 0 :=
  h1 (h2.trans (smul_zero r).symm)

end SMulZeroClass

lemma isSMulRegular_iff_right_eq_zero_of_smul [AddGroup M] [DistribSMul R M] {r : R} :
    IsSMulRegular M r ↔ ∀ m : M, r • m = 0 → m = 0 where
  mp h _ := h.right_eq_zero_of_smul
  mpr h m₁ m₂ eq := sub_eq_zero.mp <| h _ <| by simp_rw [smul_sub, eq, sub_self]

alias ⟨_, IsSMulRegular.of_right_eq_zero_of_smul⟩ := isSMulRegular_iff_right_eq_zero_of_smul
```
