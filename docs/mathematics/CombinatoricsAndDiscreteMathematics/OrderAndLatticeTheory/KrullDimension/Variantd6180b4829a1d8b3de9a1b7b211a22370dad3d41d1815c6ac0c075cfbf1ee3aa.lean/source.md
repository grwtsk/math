# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.KrullDimension.Variantd6180b4829a1d8b3de9a1b7b211a22370dad3d41d1815c6ac0c075cfbf1ee3aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aefa68c2c610ab117f01f9a5afac8b4363b73c4c` · SHA-256 `b0e032655fb3e10e5c2b4b6568c57e8d87d082908d606d364e668b3bb0bf0364`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.StrictSeries.Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.StrictSeries.Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de","mathematical_subject":"Algebra.OrderTheory","original_sha256":"a349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/KrullDimension.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang, Fangming Li
-/

import Mathlib.Order.Monotone.Basic
import Mathlib.Order.CompleteLattice
import Mathlib.Order.WithBot
import Mathlib.Data.Fin.Basic
import Mathlib.Data.Nat.Lattice
import Mathlib.Logic.Equiv.Fin

/-!
# Krull dimension of a preordered set

If `α` is a preordered set, then `krullDim α` is defined to be `sup {n | a₀ < a₁ < ... < aₙ}`.
In case that `α` is empty, then its Krull dimension is defined to be negative infinity; if the
length of all series `a₀ < a₁ < ... < aₙ` is unbounded, then its Krull dimension is defined to
be positive infinity.

For `a : α`, its height is defined to be the krull dimension of the subset `(-∞, a]` while its
coheight is defined to be the krull dimension of `[a, +∞)`.

## Implementation notes
Krull dimensions are defined to take value in `WithBot (WithTop ℕ)` so that `(-∞) + (+∞)` is
also negative infinity. This is because we want Krull dimensions to be additive with respect
to product of varieties so that `-∞` being the Krull dimension of empty variety is equal to
sum of `-∞` and the Krull dimension of any other varieties.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.StrictSeries.Varianta349bc03ebfb366477a114d09d6ca2228a5c2e1efadbc41710d37a1734a337de

variable (α : Type*) [Preorder α]

/--
For a preordered set `(α, <)`, a strict series of `α` of length `n` is a strictly monotonic function
`Fin (n + 1) → α`, i.e. `a₀ < a₁ < ... < aₙ` with `aᵢ : α`.
-/
structure StrictSeries where
  /-- the number of inequalities in the series -/
  length : ℕ
  /-- the underlying function of a strict series -/
  toFun : Fin (length + 1) → α
  /-- the underlying function should be strictly monotonic -/
  StrictMono : StrictMono toFun

namespace StrictSeries

instance : CoeFun (StrictSeries α) (fun x ↦ Fin (x.length + 1) → α) :=
  { coe := StrictSeries.toFun }

instance : Preorder (StrictSeries α) :=
  Preorder.lift StrictSeries.length

variable {α}

lemma le_def (x y : StrictSeries α) : x ≤ y ↔ x.length ≤ y.length :=
  Iff.rfl

lemma lt_def (x y : StrictSeries α) : x < y ↔ x.length < y.length :=
  Iff.rfl

/--
In a preordered set `α`, each term of `α` gives a strict series with the right most index to be 0.
-/
@[simps!] def singleton (a : α) : StrictSeries α :=
  { length := 0
    toFun := fun _ ↦ a
    StrictMono := fun _ _ h ↦ (ne_of_lt h $ @Subsingleton.elim _ subsingleton_fin_one _ _).elim }

instance [IsEmpty α] : IsEmpty (StrictSeries α) :=
  { false := fun x ↦ IsEmpty.false (x 0) }

instance [Inhabited α] : Inhabited (StrictSeries α) :=
  { default := singleton default }

instance [Nonempty α] : Nonempty (StrictSeries α) :=
  Nonempty.map singleton inferInstance

lemma top_len_unique [OrderTop (StrictSeries α)] (p : StrictSeries α) (hp : IsTop p) :
    p.length = (⊤ : StrictSeries α).length :=
  le_antisymm (@le_top (StrictSeries α) _ _ _) (hp ⊤)

lemma top_len_unique' (H1 H2 : OrderTop (StrictSeries α)) : H1.top.length = H2.top.length :=
  le_antisymm (H2.le_top H1.top) (H1.le_top H2.top)

end StrictSeries

/--
Krull dimension of a preordered set `α` is the supremum of the right most index of all strict
series of `α`. If there is no strict series `a₀ < a₁ < ... < aₙ` in `α`, then its Krull dimension
is defined to be negative infinity; if the length of `a₀ < a₁ < ... < aₙ` is unbounded, its Krull
dimension is defined to be positive infinity.
-/
noncomputable def krullDim : WithBot (WithTop ℕ) :=
  ⨆ (p : StrictSeries α), p.length

/--
Height of an element `a` of a preordered set `α` is the Krull dimension of the subset `(-∞, a]`
-/
noncomputable def height (a : α) : WithBot (WithTop ℕ) := krullDim (Set.Iic a)

/--
Coheight of an element `a` of a pre-ordered set `α` is the Krull dimension of the subset `[a, +∞)`
-/
noncomputable def coheight (a : α) : WithBot (WithTop ℕ) := krullDim (Set.Ici a)
```
