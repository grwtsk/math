# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stream.Variant8733c3b51bf786e3ffd7bc419f68adcf9b2d00cb977f691b52421c6b9646f19c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6394b31f1a45ad211a014b1af7ee5a20294e574` · SHA-256 `baa013c86adbac86933bd38ba23bbcc5b779530bb5e4e94e32a0c70a53a7ba7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToStream.Variant95147844e8a36949bbfa534c6b815379dca5e4780e5e202bf9a4f143bc5b967a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95147844e8a36949bbfa534c6b815379dca5e4780e5e202bf9a4f143bc5b967a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToStream.Variant95147844e8a36949bbfa534c6b815379dca5e4780e5e202bf9a4f143bc5b967a","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"95147844e8a36949bbfa534c6b815379dca5e4780e5e202bf9a4f143bc5b967a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Stream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich, Andrew Kent, Leonardo de Moura
-/
module

prelude
public import Init.Data.Range
public import Init.Data.Array.Subarray

import Init.Data.Slice.Array.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToStream.Variant95147844e8a36949bbfa534c6b815379dca5e4780e5e202bf9a4f143bc5b967a

public section

namespace Std

/-!
Remark: we considered using the following alternative design
```
structure Stream (α : Type u) where
  stream : Type u
  next? : stream → Option (α × stream)

class ToStream (collection : Type u) (value : outParam (Type v)) where
  toStream : collection → Stream value
```
where `Stream` is not a class, and its state is encapsulated.
The key problem is that the type `Stream α` "lives" in a universe higher than `α`.
This is a problem because we want to use `Stream`s in monadic code.
-/

/--
  Streams are used to implement parallel `for` statements.
  Example:
  ```
  for x in xs, y in ys do
    ...
  ```
  is expanded into
  ```
  let mut s := toStream ys
  for x in xs do
    match Stream.next? s with
    | none => break
    | some (y, s') =>
      s := s'
      ...
  ```
-/
class ToStream (collection : Type u) (stream : outParam (Type u)) : Type u where
  toStream : collection → stream

export ToStream (toStream)

class Stream (stream : Type u) (value : outParam (Type v)) : Type (max u v) where
  next? : stream → Option (value × stream)

protected partial def Stream.forIn [Stream ρ α] [Monad m] (s : ρ) (b : β) (f : α → β → m (ForInStep β)) : m β := do
  let _ : Inhabited (m β) := ⟨pure b⟩
  let rec visit (s : ρ) (b : β) : m β := do
    match Stream.next? s with
    | some (a, s) => match (← f a b) with
      | ForInStep.done b  => return b
      | ForInStep.yield b => visit s b
    | none => return b
  visit s b

instance (priority := low) [Monad m] [Stream ρ α] : ForIn m ρ α where
  forIn := Stream.forIn

instance : ToStream (List α) (List α) where
  toStream c := c

@[no_expose]
instance : ToStream (Array α) (Subarray α) where
  toStream a := a[*...*]

instance : ToStream (Subarray α) (Subarray α) where
  toStream a := a

instance : ToStream String Substring.Raw where
  toStream s := s.toRawSubstring

instance : ToStream Std.Legacy.Range Std.Legacy.Range where
  toStream r := r

instance [Stream ρ α] [Stream γ β] : Stream (ρ × γ) (α × β) where
  next?
    | (s₁, s₂) =>
      match Stream.next? s₁ with
      | none => none
      | some (a, s₁) => match Stream.next? s₂ with
        | none => none
        | some (b, s₂) => some ((a, b), (s₁, s₂))

instance : Stream (List α) α where
  next?
    | []    => none
    | a::as => some (a, as)

instance : Stream (Subarray α) α where
  next? s :=
    if h : s.start < s.stop then
      have : s.start + 1 ≤ s.stop := Nat.succ_le_of_lt h
      some (s.array[s.start]'(Nat.lt_of_lt_of_le h s.stop_le_array_size),
        ⟨{ s.internalRepresentation with start := s.start + 1, start_le_stop := this }⟩)
    else
      none

instance : Stream Std.Legacy.Range Nat where
  next? r :=
    if r.start < r.stop then
      some (r.start, { r with start := r.start + r.step })
    else
      none

end Std

@[deprecated Std.Stream (since := "2025-10-01")]
abbrev Stream := Std.Stream

-- Not deprecated to avoid bootstrapping annoyances
abbrev Stream.next? {stream : Type u} {value : outParam (Type v)} [self : Std.Stream stream value] :
    stream → Option (value × stream) := Std.Stream.next?

@[deprecated Std.ToStream (since := "2025-10-01")]
abbrev ToStream := Std.ToStream

-- Not deprecated to avoid bootstrapping annoyances
abbrev ToStream.toStream {collection : Type u} {stream : outParam (Type u)}
  [self : Std.ToStream collection stream] : collection → stream := Std.ToStream.toStream
````
