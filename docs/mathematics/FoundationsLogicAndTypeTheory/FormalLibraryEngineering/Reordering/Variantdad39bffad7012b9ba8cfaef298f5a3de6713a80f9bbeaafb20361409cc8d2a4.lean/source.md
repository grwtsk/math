# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reordering.Variantdad39bffad7012b9ba8cfaef298f5a3de6713a80f9bbeaafb20361409cc8d2a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55229be735c8aab7012a64f8ffc0b1abdb68aec6` · SHA-256 `dad39bffad7012b9ba8cfaef298f5a3de6713a80f9bbeaafb20361409cc8d2a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finsupp.Multiset

/-!
# Symbol counts and reordering

Finite words are represented by lists, arbitrary reordering classes by multisets,
and absolute count profiles by finitely supported natural-valued functions. The
main theorem identifies the latter two exactly.
-/

namespace FormalResearch.MathematicalTooling.SymbolCounts

universe u

/-- A finite word over `α`, represented by its ordered list of symbols. -/
abbrev Word (α : Type u) := List α

/-- A finite word modulo arbitrary reordering.

Mathlib's `Multiset α` is the quotient of `List α` by `List.Perm`, so this is the
formal counterpart of the reordering quotient used in T-001.
-/
abbrev ReorderingClass (α : Type u) := Multiset α

/-- A finitely supported absolute symbol-count profile. -/
abbrev CountProfile (α : Type u) := α →₀ ℕ

/-- The canonical equivalence between reordering classes and absolute count profiles. -/
noncomputable def countProfileEquiv (α : Type u) :
    ReorderingClass α ≃ CountProfile α := by
  classical
  exact (Multiset.toFinsupp (α := α)).toEquiv

/-- Send a reordering class to its absolute symbol-count profile. -/
noncomputable def quotientCountProfile {α : Type u} :
    ReorderingClass α → CountProfile α :=
  countProfileEquiv α

/-- Absolute symbol counts classify finite words exactly up to arbitrary reordering. -/
theorem count_profiles_classify_reordering {α : Type u} :
    Function.Bijective (quotientCountProfile (α := α)) := by
  simpa [quotientCountProfile] using (countProfileEquiv α).bijective

end FormalResearch.MathematicalTooling.SymbolCounts
```
