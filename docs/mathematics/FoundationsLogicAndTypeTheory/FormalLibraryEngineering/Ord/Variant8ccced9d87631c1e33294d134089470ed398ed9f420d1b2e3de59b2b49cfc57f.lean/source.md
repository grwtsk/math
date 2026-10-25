# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ord.Variant8ccced9d87631c1e33294d134089470ed398ed9f420d1b2e3de59b2b49cfc57f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af202a8257cd08c9bf46f765dc39266a84937dbe` · SHA-256 `94de3d1a004fa222c0ae4794835e132a501f40793095d49dfcd64ce5c7d3ded0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Swap.Variant43b0d192eaa8d840b6e2e9940a5a41461eaf2efdaea7bea83796d0823efec1be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43b0d192eaa8d840b6e2e9940a5a41461eaf2efdaea7bea83796d0823efec1be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Swap.Variant43b0d192eaa8d840b6e2e9940a5a41461eaf2efdaea7bea83796d0823efec1be","mathematical_subject":"Foundations.Unclassified","original_sha256":"43b0d192eaa8d840b6e2e9940a5a41461eaf2efdaea7bea83796d0823efec1be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Data/Ord.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Swap.Variant43b0d192eaa8d840b6e2e9940a5a41461eaf2efdaea7bea83796d0823efec1be

namespace Ordering

deriving instance DecidableEq for Ordering

/-- Swaps less and greater ordering results -/
def swap : Ordering → Ordering
  | .lt => .gt
  | .eq => .eq
  | .gt => .lt

/--
If `o₁` and `o₂` are `Ordering`, then `o₁.then o₂` returns `o₁` unless it is `.eq`,
in which case it returns `o₂`. Additionally, it has "short-circuiting" semantics similar to
boolean `x && y`: if `o₁` is not `.eq` then the expression for `o₂` is not evaluated.
This is a useful primitive for constructing lexicographic comparator functions:
```
structure Person where
  name : String
  age : Nat

instance : Ord Person where
  compare a b := (compare a.name b.name).then (compare b.age a.age)
```
This example will sort people first by name (in ascending order) and will sort people with
the same name by age (in descending order). (If all fields are sorted ascending and in the same
order as they are listed in the structure, you can also use `deriving Ord` on the structure
definition for the same effect.)
-/
@[macro_inline] def «then» : Ordering → Ordering → Ordering
  | .eq, f => f
  | o, _ => o

/--
Check whether the ordering is 'equal'.
-/
def isEq : Ordering → Bool
  | eq => true
  | _ => false

/--
Check whether the ordering is 'not equal'.
-/
def isNe : Ordering → Bool
  | eq => false
  | _ => true

/--
Check whether the ordering is 'less than'.
-/
def isLT : Ordering → Bool
  | lt => true
  | _ => false

/--
Check whether the ordering is 'greater than'.
-/
def isGT : Ordering → Bool
  | gt => true
  | _ => false

/--
Check whether the ordering is 'greater than or equal'.
-/
def isGE : Ordering → Bool
  | lt => false
  | _ => true

end Ordering

/--
Compare `a` and `b` lexicographically by `cmp₁` and `cmp₂`. `a` and `b` are
first compared by `cmp₁`. If this returns 'equal', `a` and `b` are compared
by `cmp₂` to break the tie.
-/
@[inline] def compareLex (cmp₁ cmp₂ : α → β → Ordering) (a : α) (b : β) : Ordering :=
  (cmp₁ a b).then (cmp₂ a b)

/--
Compare `x` and `y` by comparing `f x` and `f y`.
-/
@[inline] def compareOn [ord : Ord β] (f : α → β) (x y : α) : Ordering :=
  compare (f x) (f y)


namespace Ord

/--
Derive a `BEq` instance from an `Ord` instance.
-/
protected def toBEq (ord : Ord α) : BEq α where
  beq x y := ord.compare x y == .eq

/--
Derive an `LT` instance from an `Ord` instance.
-/
protected def toLT (_ : Ord α) : LT α :=
  ltOfOrd

/--
Derive an `LE` instance from an `Ord` instance.
-/
protected def toLE (_ : Ord α) : LE α :=
  leOfOrd

/--
Invert the order of an `Ord` instance.
-/
protected def opposite (ord : Ord α) : Ord α where
  compare x y := ord.compare y x

/--
`ord.on f` compares `x` and `y` by comparing `f x` and `f y` according to `ord`.
-/
protected def on (ord : Ord β) (f : α → β) : Ord α where
  compare := compareOn f

/--
Derive the lexicographic order on products `α × β` from orders for `α` and `β`.
-/
protected def lex (_ : Ord α) (_ : Ord β) : Ord (α × β) :=
  lexOrd

/--
Create an order which compares elements first by `ord₁` and then, if this
returns 'equal', by `ord₂`.
-/
protected def lex' (ord₁ ord₂ : Ord α) : Ord α where
  compare := compareLex ord₁.compare ord₂.compare
````
