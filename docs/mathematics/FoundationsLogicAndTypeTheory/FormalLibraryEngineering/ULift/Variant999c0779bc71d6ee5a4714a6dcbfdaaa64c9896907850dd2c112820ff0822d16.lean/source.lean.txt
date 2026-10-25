-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteratorsTypesULiftIteratorModifyStep.Variantdc781baf461e4636826c894fcb9c31af7c80e1558e25d6d8c805d669eccf8a77","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc781baf461e4636826c894fcb9c31af7c80e1558e25d6d8c805d669eccf8a77","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IteratorsTypesULiftIteratorModifyStep.Variantdc781baf461e4636826c894fcb9c31af7c80e1558e25d6d8c805d669eccf8a77","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"dc781baf461e4636826c894fcb9c31af7c80e1558e25d6d8c805d669eccf8a77","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Combinators/ULift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.ULift


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IteratorsTypesULiftIteratorModifyStep.Variantdc781baf461e4636826c894fcb9c31af7c80e1558e25d6d8c805d669eccf8a77

public section

namespace Std
open Std.Iterators Std.Iterators.Types

universe v u v' u'

variable {α : Type u} {β : Type u}

/--
Transforms a step of the base iterator into a step of the `uLift` iterator.
-/
@[always_inline, inline]
def Iterators.Types.ULiftIterator.modifyStep (step : IterStep (Iter (α := α) β) β) :
    IterStep (Iter (α := ULiftIterator.{v} α Id Id β (fun _ => monadLift)) (ULift.{v} β))
      (ULift.{v} β) :=
  (ULiftIterator.Monadic.modifyStep (step.mapIterator Iter.toIterM)).mapIterator IterM.toIter

/--
Transforms an iterator with values in `β` into one with values in `ULift β`.

Most other combinators like `map` cannot switch between universe levels. This combinators
makes it possible to transition to a higher universe.

**Marble diagram:**

```
it            ---a    ----b    ---c    --d    ---⊥
it.uLift n    ---.up a----.up b---.up c--.up d---⊥
```

**Termination properties:**

* `Finite`: only if the original iterator is finite
* `Productive`: only if the original iterator is productive
-/
@[cbv_opaque, always_inline, inline, expose]
def Iter.uLift (it : Iter (α := α) β) :
    Iter (α := Types.ULiftIterator.{v} α Id Id β (fun _ => monadLift)) (ULift β) :=
  (it.toIterM.uLift Id).toIter

end Std
