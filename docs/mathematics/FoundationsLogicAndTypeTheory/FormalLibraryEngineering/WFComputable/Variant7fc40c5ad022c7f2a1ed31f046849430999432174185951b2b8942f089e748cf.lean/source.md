# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WFComputable.Variant7fc40c5ad022c7f2a1ed31f046849430999432174185951b2b8942f089e748cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93ada9d9df3918eaa700c3de0e90204498c032c3` · SHA-256 `7aafa1f04b6aef6f5dcb38be420ded6a5ed62129c6205fbdacd0c015aa6b5337`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WF.Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.WF.Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/WFComputable.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
module
prelude
public import Init.WF
import Init.NotationExtra
import Init.WFTactics

/-!
# Computable Acc.rec and WellFounded.fix

This file adds csimp theorems so that the compiler will be able to compile
`Acc.rec`, `WellFounded.fix` and related operations.

Without this change, the following code will fail to compile as
`WellFounded.fix` is noncomputable.

```
def log2p1 : Nat → Nat :=
  WellFounded.fix Nat.lt_wfRel.2 fun n IH =>
    let m := n / 2
    if h : m < n then
      IH m h + 1
    else
      0
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WF.Variant8faf8167edb1e11d65238bda0f6e0a95de5f7ea2e2edae5c35a03a4f6f9a3801

namespace Acc

public instance wfRel {r : α → α → Prop} : WellFoundedRelation { val // Acc r val } where
  rel := InvImage r (·.1)
  wf  := ⟨fun ac => InvImage.accessible _ ac.2⟩

/-- A computable version of `Acc.rec`. -/
@[specialize, elab_as_elim] public def recC {motive : (a : α) → Acc r a → Sort v}
    (intro : (x : α) → (h : ∀ (y : α), r y x → Acc r y) →
     ((y : α) → (hr : r y x) → motive y (h y hr)) → motive x (intro x h))
    {a : α} (t : Acc r a) : motive a t :=
  intro a (fun _ h => t.inv h) (fun _ hr => recC intro (t.inv hr))
termination_by Subtype.mk a t

@[csimp] public theorem rec_eq_recC : @Acc.rec = @Acc.recC := by
  funext α r motive intro a t
  induction t with
  | intro x h ih =>
    rw [recC]
    dsimp only
    congr; funext y hr; exact ih _ hr

/-- A computable version of `Acc.ndrec`. -/
@[inline] public abbrev ndrecC {C : α → Sort v}
    (m : (x : α) → ((y : α) → r y x → Acc r y) → ((y : α) → (a : r y x) → C y) → C x)
    {a : α} (n : Acc r a) : C a :=
  n.recC m

@[csimp] public theorem ndrec_eq_ndrecC : @Acc.ndrec = @Acc.ndrecC := by
  funext α r motive intro a t
  rw [Acc.ndrec, rec_eq_recC, Acc.ndrecC]

/-- A computable version of `Acc.ndrecOn`. -/
@[inline] public abbrev ndrecOnC {C : α → Sort v} {a : α} (n : Acc r a)
    (m : (x : α) → ((y : α) → r y x → Acc r y) → ((y : α) → r y x → C y) → C x) : C a :=
  n.recC m

@[csimp] public theorem ndrecOn_eq_ndrecOnC : @Acc.ndrecOn = @Acc.ndrecOnC := by
  funext α r motive intro a t
  rw [Acc.ndrecOn, rec_eq_recC, Acc.ndrecOnC]

end Acc

namespace WellFounded

/-- A computable version of `WellFounded.fixF`. -/
@[inline] public def fixFC {α : Sort u} {r : α → α → Prop}
    {C : α → Sort v} (F : ∀ x, (∀ y, r y x → C y) → C x) (x : α) (a : Acc r x) : C x := by
  induction a using Acc.recC with
  | intro x₁ _ ih => exact F x₁ ih

@[csimp] public theorem fixF_eq_fixFC : @fixF = @fixFC := by
  funext α r C F x a
  rw [fixF, Acc.rec_eq_recC, fixFC]

/-- A computable version of `fix`. -/
@[specialize] public def fixC {α : Sort u} {C : α → Sort v} {r : α → α → Prop}
    (hwf : WellFounded r) (F : ∀ x, (∀ y, r y x → C y) → C x) (x : α) : C x :=
  F x (fun y _ => fixC hwf F y)
termination_by hwf.wrap x

unseal fixC

@[csimp] public theorem fix_eq_fixC : @fix = @fixC := by
  rfl

end WellFounded
````
