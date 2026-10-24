# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant219263289c2d07b74be7215ad1ec0fe80249c7eb387a2155f7dc727efb97e5b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2a949d6178d11b85e6bde637bf19b5b0b0f00d1` · SHA-256 `219263289c2d07b74be7215ad1ec0fe80249c7eb387a2155f7dc727efb97e5b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Lemmas.Producers.Monadic.List
public import Std.Data.Iterators.Lemmas.Equivalence.Basic


namespace Std
open Std.Internal Std.Iterators Std.Iterators.Types

variable {m : Type w → Type w'} {n : Type w → Type w''} [Monad m] {β : Type w}

-- We don't want to pollute `List` with this rarely used lemma.
public theorem Types.ListIterator.stepAsHetT_iterM [LawfulMonad m] {l : List β} :
    (l.iterM m).stepAsHetT = (match l with
      | [] => pure .done
      | x :: xs => pure (.yield (xs.iterM m) x)) := by
  simp only [List.iterM, HetT.ext_iff, Equivalence.property_step, IterM.IsPlausibleStep,
    Equivalence.prun_step,
    -- TODO: get rid of these
    Iterator.IsPlausibleStep, ListIterator.instIterator]
  refine ⟨?_, ?_⟩
  · ext step
    cases step
    · cases l
      · simp [Pure.pure]
      · simp only [List.cons.injEq, pure, HetT.property_pure, IterStep.yield.injEq, IterM.ext_iff,
        ListIterator.ext_iff]
        exact And.comm
    · cases l <;> simp [Pure.pure]
    · cases l <;> simp [Pure.pure]
  · intro β f
    simp only [IterM.step, Iterator.step, pure_bind]
    cases l <;> simp [Pure.pure]

end Std
```
