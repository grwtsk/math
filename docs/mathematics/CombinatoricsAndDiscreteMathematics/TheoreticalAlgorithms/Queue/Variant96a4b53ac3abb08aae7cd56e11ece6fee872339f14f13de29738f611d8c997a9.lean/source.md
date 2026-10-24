# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Queue.Variant96a4b53ac3abb08aae7cd56e11ece6fee872339f14f13de29738f611d8c997a9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9cb30ffc481983ab8e51cd4e89e3c375dc518a5` · SHA-256 `4919026ab9738ec43cf75bd404fafc6c15a68d482a0cff6625bdad4ffe53b7cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Queue.Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Queue.Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Queue.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Daniel Selsam

Simple queue implemented using two lists.
Note: this is only a temporary placeholder.
-/
module

prelude
public import Init.Data.List.Control


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Queue.Variantef3bb25d6b151ae4b623980a77c7f1f80ecde26970437f294f15de8281043e78

public section

namespace Std

/--
A functional queue data structure, using two back-to-back lists.
If we think of the queue as having elements pushed on the front and
popped from the back, then the queue itself is effectively `eList ++ dList.reverse`.
-/
structure Queue (α : Type u) where
  /-- The enqueue list, which stores elements that have just been pushed
  (with the most recently enqueued elements at the head). -/
  eList : List α := []
  /-- The dequeue list, which buffers elements ready to be dequeued
  (with the head being the next item to be yielded by `dequeue?`). -/
  dList : List α := []

namespace Queue

variable {α : Type u}

/-- `O(1)`. The empty queue. -/
def empty : Queue α := {}

instance : EmptyCollection (Queue α) := ⟨.empty⟩
instance : Inhabited (Queue α) := ⟨∅⟩

/-- `O(1)`. Is the queue empty? -/
def isEmpty (q : Queue α) : Bool :=
  q.dList.isEmpty && q.eList.isEmpty

/-- `O(1)`. Push an element on the front of the queue. -/
def enqueue (v : α) (q : Queue α) : Queue α :=
  { q with eList := v::q.eList }

/-- `O(|vs|)`. Push a list of elements `vs` on the front of the queue. -/
def enqueueAll (vs : List α) (q : Queue α) : Queue α :=
  { q with eList := vs ++ q.eList }

/--
`O(1)` amortized, `O(n)` worst case. Pop an element from the back of the queue,
returning the element and the new queue.
-/
def dequeue? (q : Queue α) : Option (α × Queue α) :=
  match q.dList with
  | d::ds => some (d, { q with dList := ds })
  | []    =>
    match q.eList.reverse with
    | []    => none
    | d::ds => some (d, { eList := [], dList := ds })

def toArray (q : Queue α) : Array α :=
  q.dList.toArray ++ q.eList.toArray.reverse

/--
`O(n)`. Applies the monadic predicate `p` to every element in the queue, and returns the queue
of elements for which `p` returns `true`. Note that there are currently no guarantees for the order
that `p` is applied in.
-/
@[specialize]
def filterM {m : Type → Type v} [Monad m] {α : Type} (p : α → m Bool) (q : Queue α) :
    m (Queue α) := do
  let dList ← q.dList.filterM p
  let eList ← q.eList.filterM p
  if dList.isEmpty then
    return { dList := eList.reverse, eList := [] }
  else
    return { dList, eList }
```
