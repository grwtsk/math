# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WF.Variant20badbcde135e9ae06f6097fc0fbd18105571b80640c17a11a24d80956308838

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2769e09656e288c15987ce23ae179125b969be81` · SHA-256 `53a5e2c57dd36e550707e6425bb03b4171500f0864b858a7e9185d6df99a20cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecCIntro.Variantd7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RecCIntro.Variantd7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4","mathematical_subject":"Foundations.Unclassified","original_sha256":"d7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/WF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/

/-!
# Computable Acc.rec and WellFounded.fix

This file exports no public definitions / theorems, but by importing it the compiler will
be able to compile `Acc.rec` and functions that use it. For example:

Before:
```
-- failed to compile definition, consider marking it as 'noncomputable'
-- because it depends on 'WellFounded.fix', and it does not have executable code
def log2p1 : Nat → Nat :=
  WellFounded.fix Nat.lt_wfRel.2 fun n IH =>
    let m := n / 2
    if h : m < n then
      IH m h + 1
    else
      0
```

After:
```
import Std.WF

def log2p1 : Nat → Nat := -- works!
  WellFounded.fix Nat.lt_wfRel.2 fun n IH =>
    let m := n / 2
    if h : m < n then
      IH m h + 1
    else
      0

#eval log2p1 4   -- 3
```
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecCIntro.Variantd7d0a16a2ebfdc8f20e2a56589731b7a928ce95b7663745437e5f70fd04ddbc4

namespace Acc

private local instance wfRel {r : α → α → Prop} : WellFoundedRelation { val // Acc r val } where
  rel := InvImage r (·.1)
  wf  := ⟨fun ac => InvImage.accessible _ ac.2⟩

/-- A computable version of `Acc.rec`. Workaround until Lean has native support for this. -/
@[specialize, elab_as_elim] private def recC {motive : (a : α) → Acc r a → Sort v}
    (intro : (x : α) → (h : ∀ (y : α), r y x → Acc r y) →
     ((y : α) → (hr : r y x) → motive y (h y hr)) → motive x (intro x h))
    {a : α} (t : Acc r a) : motive a t :=
  intro a (fun x h => t.inv h) (fun y hr => recC intro (t.inv hr))
termination_by _ a h => Subtype.mk a h

private theorem recC_intro {motive : (a : α) → Acc r a → Sort v}
    (intro : (x : α) → (h : ∀ (y : α), r y x → Acc r y) →
     ((y : α) → (hr : r y x) → motive y (h y hr)) → motive x (intro x h))
    {a : α} (h : ∀ (y : α), r y a → Acc r y) :
    recC intro (Acc.intro _ h) = intro a h (fun y hr => recC intro (h y hr)) :=
  rfl

@[csimp] private theorem rec_eq_recC : @Acc.rec = @Acc.recC := by
  funext α r motive intro a t
  induction t with
  | intro x h ih =>
    dsimp only [recC_intro intro h]
    congr; funext y hr; exact ih _ hr

/-- A computable version of `Acc.ndrec`. Workaround until Lean has native support for this. -/
@[inline] private abbrev ndrecC {C : α → Sort v}
    (m : (x : α) → ((y : α) → r y x → Acc r y) → ((y : α) → (a : r y x) → C y) → C x)
    {a : α} (n : Acc r a) : C a :=
  n.recC m

@[csimp] private theorem ndrec_eq_ndrecC : @Acc.ndrec = @Acc.ndrecC := by
  funext α r motive intro a t
  rw [Acc.ndrec, rec_eq_recC, Acc.ndrecC]

/-- A computable version of `Acc.ndrecOn`. Workaround until Lean has native support for this. -/
@[inline] private abbrev ndrecOnC {C : α → Sort v} {a : α} (n : Acc r a)
    (m : (x : α) → ((y : α) → r y x → Acc r y) → ((y : α) → r y x → C y) → C x) : C a :=
  n.recC m

@[csimp] private theorem ndrecOn_eq_ndrecOnC : @Acc.ndrecOn = @Acc.ndrecOnC := by
  funext α r motive intro a t
  rw [Acc.ndrecOn, rec_eq_recC, Acc.ndrecOnC]

end Acc

namespace WellFounded

/-- A computable version of `WellFounded.fixF`.
Workaround until Lean has native support for this. -/
@[inline] private def fixFC {α : Sort u} {r : α → α → Prop}
    {C : α → Sort v} (F : ∀ x, (∀ y, r y x → C y) → C x) (x : α) (a : Acc r x) : C x := by
  induction a using Acc.recC with
  | intro x₁ _ ih => exact F x₁ ih

@[csimp] private theorem fixF_eq_fixFC : @fixF = @fixFC := by
  funext α r C F x a
  rw [fixF, Acc.rec_eq_recC, fixFC]

/-- A computable version of `fix`. Workaround until Lean has native support for this. -/
@[specialize] private def fixC {α : Sort u} {C : α → Sort v} {r : α → α → Prop}
    (hwf : WellFounded r) (F : ∀ x, (∀ y, r y x → C y) → C x) (x : α) : C x :=
  F x (fun y _ => fixC hwf F y)
termination_by' ⟨r, hwf⟩

@[csimp] private theorem fix_eq_fixC : @fix = @fixC := rfl

end WellFounded
````
