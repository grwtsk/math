# Complete source: GRWTSK.Topology.GeneralTopology.IndicatorFunction.Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e405dfff62a767a00841649e56cfbe6ecb707b6` · SHA-256 `7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Zhouhang Zhou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Zhouhang Zhou, Yury Kudryashov
-/
import Mathlib.Algebra.IndicatorFunction
import Mathlib.Order.Filter.AtTopBot

#align_import order.filter.indicator_function from "leanprover-community/mathlib"@"8631e2d5ea77f6c13054d9151d82b83069680cb1"

/-!
# Indicator function and filters

Properties of additive and multiplicative indicator functions involving `=ᶠ` and `≤ᶠ`.

## Tags
indicator, characteristic, filter
-/

variable {α β M E : Type*}

open Set Filter

section One

variable [One M] {s t : Set α} {f g : α → M} {a : α} {l : Filter α}

@[to_additive]
theorem mulIndicator_eventuallyEq (hf : f =ᶠ[l ⊓ 𝓟 s] g) (hs : s =ᶠ[l] t) :
    mulIndicator s f =ᶠ[l] mulIndicator t g :=
  (eventually_inf_principal.1 hf).mp <| hs.mem_iff.mono fun x hst hfg =>
    by_cases
      (fun hxs : x ∈ s => by simp only [*, hst.1 hxs, mulIndicator_of_mem])
      (fun hxs => by simp only [mulIndicator_of_not_mem, hxs, mt hst.2 hxs])
#align indicator_eventually_eq indicator_eventuallyEq

end One

section Monoid

variable [Monoid M] {s t : Set α} {f g : α → M} {a : α} {l : Filter α}

@[to_additive]
theorem mulIndicator_union_eventuallyEq (h : ∀ᶠ a in l, a ∉ s ∩ t) :
    mulIndicator (s ∪ t) f =ᶠ[l] mulIndicator s f * mulIndicator t f :=
  h.mono fun _a ha => mulIndicator_union_of_not_mem_inter ha _
#align indicator_union_eventually_eq indicator_union_eventuallyEq

end Monoid

section Order

variable [One β] [Preorder β] {s t : Set α} {f g : α → β} {a : α} {l : Filter α}

@[to_additive]
theorem mulIndicator_eventuallyLE_mulIndicator (h : f ≤ᶠ[l ⊓ 𝓟 s] g) :
    mulIndicator s f ≤ᶠ[l] mulIndicator s g :=
  (eventually_inf_principal.1 h).mono fun _ => mulIndicator_rel_mulIndicator le_rfl
#align indicator_eventually_le_indicator indicator_eventuallyLE_indicator

end Order

@[to_additive]
theorem Monotone.mulIndicator_eventuallyEq_iUnion {ι} [Preorder ι] [One β] (s : ι → Set α)
    (hs : Monotone s) (f : α → β) (a : α) :
    (fun i => mulIndicator (s i) f a) =ᶠ[atTop] fun _ ↦ mulIndicator (⋃ i, s i) f a := by
  classical exact hs.piecewise_eventually_eq_iUnion f 1 a

@[to_additive]
theorem Monotone.tendsto_mulIndicator {ι} [Preorder ι] [One β] (s : ι → Set α) (hs : Monotone s)
    (f : α → β) (a : α) :
    Tendsto (fun i => mulIndicator (s i) f a) atTop (pure <| mulIndicator (⋃ i, s i) f a) :=
  tendsto_pure.2 <| hs.mulIndicator_eventuallyEq_iUnion s f a
#align monotone.tendsto_indicator Monotone.tendsto_indicator

@[to_additive]
theorem Antitone.mulIndicator_eventuallyEq_iInter {ι} [Preorder ι] [One β] (s : ι → Set α)
    (hs : Antitone s) (f : α → β) (a : α) :
    (fun i => mulIndicator (s i) f a) =ᶠ[atTop] fun _ ↦ mulIndicator (⋂ i, s i) f a := by
  classical exact hs.piecewise_eventually_eq_iInter f 1 a

@[to_additive]
theorem Antitone.tendsto_mulIndicator {ι} [Preorder ι] [One β] (s : ι → Set α) (hs : Antitone s)
    (f : α → β) (a : α) :
    Tendsto (fun i => mulIndicator (s i) f a) atTop (pure <| mulIndicator (⋂ i, s i) f a) :=
  tendsto_pure.2 <| hs.mulIndicator_eventuallyEq_iInter s f a
#align antitone.tendsto_indicator Antitone.tendsto_indicator

@[to_additive]
theorem mulIndicator_biUnion_finset_eventuallyEq {ι} [One β] (s : ι → Set α) (f : α → β) (a : α) :
    (fun n : Finset ι => mulIndicator (⋃ i ∈ n, s i) f a) =ᶠ[atTop]
      fun _ ↦ mulIndicator (iUnion s) f a := by
  rw [iUnion_eq_iUnion_finset s]
  apply Monotone.mulIndicator_eventuallyEq_iUnion
  exact fun _ _ ↦ biUnion_subset_biUnion_left

@[to_additive]
theorem tendsto_mulIndicator_biUnion_finset {ι} [One β] (s : ι → Set α) (f : α → β) (a : α) :
    Tendsto (fun n : Finset ι => mulIndicator (⋃ i ∈ n, s i) f a) atTop
      (pure <| mulIndicator (iUnion s) f a) :=
  tendsto_pure.2 <| mulIndicator_biUnion_finset_eventuallyEq s f a
#align tendsto_indicator_bUnion_finset tendsto_indicator_biUnion_finset

@[to_additive]
protected theorem Filter.EventuallyEq.mulSupport [One β] {f g : α → β} {l : Filter α}
    (h : f =ᶠ[l] g) :
    Function.mulSupport f =ᶠ[l] Function.mulSupport g :=
  h.preimage ({1}ᶜ : Set β)
#align filter.eventually_eq.support Filter.EventuallyEq.support

@[to_additive]
protected theorem Filter.EventuallyEq.mulIndicator [One β] {l : Filter α} {f g : α → β} {s : Set α}
    (hfg : f =ᶠ[l] g) : s.mulIndicator f =ᶠ[l] s.mulIndicator g :=
  mulIndicator_eventuallyEq (hfg.filter_mono inf_le_left) EventuallyEq.rfl
#align filter.eventually_eq.indicator Filter.EventuallyEq.indicator

@[to_additive]
theorem Filter.EventuallyEq.mulIndicator_one [One β] {l : Filter α} {f : α → β} {s : Set α}
    (hf : f =ᶠ[l] 1) : s.mulIndicator f =ᶠ[l] 1 :=
  hf.mulIndicator.trans <| by rw [mulIndicator_one']
#align filter.eventually_eq.indicator_zero Filter.EventuallyEq.indicator_zero

@[to_additive]
theorem Filter.EventuallyEq.of_mulIndicator [One β] {l : Filter α} {f : α → β}
    (hf : ∀ᶠ x in l, f x ≠ 1) {s t : Set α} (h : s.mulIndicator f =ᶠ[l] t.mulIndicator f) :
    s =ᶠ[l] t := by
  have : ∀ {s : Set α}, Function.mulSupport (s.mulIndicator f) =ᶠ[l] s := fun {s} ↦ by
    rw [mulSupport_mulIndicator]
    exact (hf.mono fun x hx ↦ and_iff_left hx).set_eq
  exact this.symm.trans <| h.mulSupport.trans this

@[to_additive]
theorem Filter.EventuallyEq.of_mulIndicator_const [One β] {l : Filter α} {c : β} (hc : c ≠ 1)
    {s t : Set α} (h : s.mulIndicator (fun _ ↦ c) =ᶠ[l] t.mulIndicator fun _ ↦ c) : s =ᶠ[l] t :=
  .of_mulIndicator (eventually_of_forall fun _ ↦ hc) h
```
