# Complete source: GRWTSK.Topology.GeneralTopology.PartialSups.Variant4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97ad3b105ec5aa861e55d54736c2897c552e6d77` · SHA-256 `4e30604df3b7a414e090c9f4d2108738f49c7faf5c79e7fcf3c07625a4decae5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Order.Lattice
import Mathlib.Order.PartialSups

/-!
# Continuity of `partialSups`

In this file we prove that `partialSups` of a sequence of continuous functions is continuous
as well as versions for `Filter.Tendsto`, `ContinuousAt`, `ContinuousWithinAt`, and `ContinuousOn`.
-/

open Filter
open scoped Topology

variable {L : Type*} [SemilatticeSup L] [TopologicalSpace L] [ContinuousSup L]

namespace Filter.Tendsto

variable {α : Type*} {l : Filter α} {f : ℕ → α → L} {g : ℕ → L} {n : ℕ}

protected lemma partialSups (hf : ∀ k ≤ n, Tendsto (f k) l (𝓝 (g k))) :
    Tendsto (partialSups f n) l (𝓝 (partialSups g n)) := by
  simp only [partialSups_eq_sup'_range]
  refine finset_sup'_nhds _ ?_
  simpa [Nat.lt_succ_iff]

protected lemma partialSups_apply (hf : ∀ k ≤ n, Tendsto (f k) l (𝓝 (g k))) :
    Tendsto (fun a ↦ partialSups (f · a) n) l (𝓝 (partialSups g n)) := by
  simpa only [← Pi.partialSups_apply] using Tendsto.partialSups hf

end Filter.Tendsto

variable {X : Type*} [TopologicalSpace X] {f : ℕ → X → L} {n : ℕ} {s : Set X} {x : X}

protected lemma ContinuousAt.partialSups_apply (hf : ∀ k ≤ n, ContinuousAt (f k) x) :
    ContinuousAt (fun a ↦ partialSups (f · a) n) x :=
  Tendsto.partialSups_apply hf

protected lemma ContinuousAt.partialSups (hf : ∀ k ≤ n, ContinuousAt (f k) x) :
    ContinuousAt (partialSups f n) x := by
  simpa only [← Pi.partialSups_apply] using ContinuousAt.partialSups_apply hf

protected lemma ContinuousWithinAt.partialSups_apply (hf : ∀ k ≤ n, ContinuousWithinAt (f k) s x) :
    ContinuousWithinAt (fun a ↦ partialSups (f · a) n) s x :=
  Tendsto.partialSups_apply hf

protected lemma ContinuousWithinAt.partialSups (hf : ∀ k ≤ n, ContinuousWithinAt (f k) s x) :
    ContinuousWithinAt (partialSups f n) s x := by
  simpa only [← Pi.partialSups_apply] using ContinuousWithinAt.partialSups_apply hf

protected lemma ContinuousOn.partialSups_apply (hf : ∀ k ≤ n, ContinuousOn (f k) s) :
    ContinuousOn (fun a ↦ partialSups (f · a) n) s := fun x hx ↦
  ContinuousWithinAt.partialSups_apply fun k hk ↦ hf k hk x hx

protected lemma ContinuousOn.partialSups (hf : ∀ k ≤ n, ContinuousOn (f k) s) :
    ContinuousOn (partialSups f n) s := fun x hx ↦
  ContinuousWithinAt.partialSups fun k hk ↦ hf k hk x hx

protected lemma Continuous.partialSups_apply (hf : ∀ k ≤ n, Continuous (f k)) :
    Continuous (fun a ↦ partialSups (f · a) n) :=
  continuous_iff_continuousAt.2 fun _ ↦ ContinuousAt.partialSups_apply fun k hk ↦
    (hf k hk).continuousAt

protected lemma Continuous.partialSups (hf : ∀ k ≤ n, Continuous (f k)) :
    Continuous (partialSups f n) :=
  continuous_iff_continuousAt.2 fun _ ↦ ContinuousAt.partialSups fun k hk ↦ (hf k hk).continuousAt
```
