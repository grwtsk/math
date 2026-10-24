# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Monad.Variant425455cd78492558c54133424bbe6426f4e0bf10ddc5b5c1b616b4b3f84230ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ff5fcff637bc2cc0187d4e53b1a053745d532c1` · SHA-256 `0ebc87b1c595efab4439bb79228c864410295ab630de6cd7c54e9e244229ef9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FintypeBind.Variantd91d389c6d851be95a1f353be2bcf82185f2e17057dfc63b5a34ca4ee6054907","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d91d389c6d851be95a1f353be2bcf82185f2e17057dfc63b5a34ca4ee6054907","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.FintypeBind.Variantd91d389c6d851be95a1f353be2bcf82185f2e17057dfc63b5a34ca4ee6054907","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d91d389c6d851be95a1f353be2bcf82185f2e17057dfc63b5a34ca4ee6054907","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Set/Finite/Monad.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kyle Miller
-/
module

public import Mathlib.Basic.Finite.Prod
public import Mathlib.Data.Set.Finite.Lattice
public import Mathlib.Data.Set.Functor

/-!
# Finiteness of the Set monad operations

## Tags

finite sets
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FintypeBind.Variantd91d389c6d851be95a1f353be2bcf82185f2e17057dfc63b5a34ca4ee6054907

@[expose] public section

assert_not_exists IsOrderedRing MonoidWithZero

open Set

universe u v w x

variable {α : Type u} {β : Type v}

namespace Set

/-! ### Fintype instances

Every instance here should have a corresponding `Set.Finite` constructor in the next section.
-/

section FintypeInstances

section monad
attribute [local instance] Set.monad

/-- If `s : Set α` is a set with `Fintype` instance and `f : α → Set β` is a function such that
each `f a`, `a ∈ s`, has a `Fintype` structure, then `s >>= f` has a `Fintype` structure. -/
@[instance_reducible]
def fintypeBind {α β} [DecidableEq β] (s : Set α) [Fintype s] (f : α → Set β)
    (H : ∀ a ∈ s, Fintype (f a)) : Fintype (s >>= f) :=
  Set.fintypeBiUnion s f H

instance fintypeBind' {α β} [DecidableEq β] (s : Set α) [Fintype s] (f : α → Set β)
    [∀ a, Fintype (f a)] : Fintype (s >>= f) :=
  Set.fintypeBiUnion' s f

end monad

instance fintypePure : ∀ a : α, Fintype (pure a : Set α) :=
  Set.fintypeSingleton

instance fintypeSeq [DecidableEq β] (f : Set (α → β)) (s : Set α) [Fintype f] [Fintype s] :
    Fintype (f.seq s) := by
  rw [seq_def]
  apply Set.fintypeBiUnion'

instance fintypeSeq' {α β : Type u} [DecidableEq β] (f : Set (α → β)) (s : Set α) [Fintype f]
    [Fintype s] : Fintype (f <*> s) :=
  Set.fintypeSeq f s

end FintypeInstances

end Set

/-! ### Finite instances

There is seemingly some overlap between the following instances and the `Fintype` instances
in `Data.Set.Finite`. While every `Fintype` instance gives a `Finite` instance, those
instances that depend on `Fintype` or `Decidable` instances need an additional `Finite` instance
to be able to generally apply.

Some set instances do not appear here since they are consequences of others, for example
`Subtype.Finite` for subsets of a finite type.
-/


namespace Finite.Set

theorem finite_pure (a : α) : (pure a : Set α).Finite :=
  toFinite _

instance finite_seq (f : Set (α → β)) (s : Set α) [Finite f] [Finite s] : Finite (f.seq s) := by
  rw [seq_def]
  infer_instance

end Finite.Set

namespace Set

/-! ### Constructors for `Set.Finite`

Every constructor here should have a corresponding `Fintype` instance in the previous section
(or in the `Fintype` module).

The implementation of these constructors ideally should be no more than `Set.toFinite`,
after possibly setting up some `Fintype` and classical `Decidable` instances.
-/


section SetFiniteConstructors

section monad
attribute [local instance] Set.monad

theorem Finite.bind {α β} {s : Set α} {f : α → Set β} (h : s.Finite) (hf : ∀ a ∈ s, (f a).Finite) :
    (s >>= f).Finite :=
  h.biUnion hf

end monad

theorem Finite.seq {f : Set (α → β)} {s : Set α} (hf : f.Finite) (hs : s.Finite) :
    (f.seq s).Finite :=
  hf.image2 _ hs

theorem Finite.seq' {α β : Type u} {f : Set (α → β)} {s : Set α} (hf : f.Finite) (hs : s.Finite) :
    (f <*> s).Finite :=
  hf.seq hs

end SetFiniteConstructors

end Set
```
