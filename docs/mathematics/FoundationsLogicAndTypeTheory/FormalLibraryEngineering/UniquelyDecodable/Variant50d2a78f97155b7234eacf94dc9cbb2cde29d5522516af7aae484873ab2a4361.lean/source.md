# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UniquelyDecodable.Variant50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d15e0a331b29293610d2e8ab93b1360d5ef59c6` · SHA-256 `50d2a78f97155b7234eacf94dc9cbb2cde29d5522516af7aae484873ab2a4361`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Elazar Gershuni. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Elazar Gershuni
-/
module

public import Mathlib.Data.Subtype
public import Mathlib.Tactic.Finiteness.Attr
public import Mathlib.Tactic.Push
public import Mathlib.Util.CompileInductive

/-!
# Uniquely Decodable Codes

This file defines uniquely decodable codes and proves basic properties.

## Main definitions

* `IsUniquelyDecodable`: A set of codewords is uniquely decodable if distinct concatenations
  of codewords yield distinct strings.

## Main results

* `IsUniquelyDecodable.epsilon_not_mem`: Uniquely decodable codes cannot contain the empty
  string.
* `IsUniquelyDecodable.flatten_injective`: The flatten function is injective on lists of
  codewords from a uniquely decodable code.
-/

@[expose] public section

namespace InformationTheory

variable {α : Type*}

/-- A set of lists is uniquely decodable if distinct concatenations yield distinct strings. -/
def IsUniquelyDecodable (S : Set (List α)) : Prop :=
  ∀ (L₁ L₂ : List (List α)),
    (∀ w ∈ L₁, w ∈ S) → (∀ w ∈ L₂, w ∈ S) →
    L₁.flatten = L₂.flatten → L₁ = L₂

@[deprecated (since := "2026-08-16")] alias UniquelyDecodable := IsUniquelyDecodable

variable {S : Set (List α)}

/-- If a code is uniquely decodable, it does not contain the empty string.

The empty string can be "decoded" as either zero or two copies of itself,
violating unique decodability. -/
lemma IsUniquelyDecodable.epsilon_not_mem
    (h : IsUniquelyDecodable S) :
    [] ∉ S := by
  simpa using h [[]] [[], []]

@[deprecated (since := "2026-08-16")]
alias UniquelyDecodable.epsilon_not_mem := IsUniquelyDecodable.epsilon_not_mem

lemma IsUniquelyDecodable.flatten_injective (h : IsUniquelyDecodable S) :
    Function.Injective (fun (L : {L : List (List α) // ∀ x ∈ L, x ∈ S}) => L.val.flatten) := by
  intro L₁ L₂ hflat
  apply Subtype.ext
  exact h L₁.val L₂.val L₁.prop L₂.prop hflat

@[deprecated (since := "2026-08-16")]
alias UniquelyDecodable.flatten_injective := IsUniquelyDecodable.flatten_injective

end InformationTheory
```
