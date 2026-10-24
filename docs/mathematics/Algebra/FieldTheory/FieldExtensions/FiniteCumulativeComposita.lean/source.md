# Complete source: GRWTSK.Algebra.FieldTheory.FieldExtensions.FiniteCumulativeComposita

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d7cf1b46d6e024281ce0cc5de290b374d03432e` · SHA-256 `9527d6f9d47bd33fd64a87ce16e2e1680349962722119fdf7145a2b628446b4d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These provisional roles and computational characterizations are user-supplied.
Source original SHA-256: 41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995
Manual conceptual split; uncompiled and not mathematically admitted.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
-/
import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic
import Mathlib.Data.Finset.Lattice.Fold


/-!
# Finite cumulative composita inside one ambient field

The statements concern finite suprema in the lattice of intermediate fields of the same K-algebra L, their monotonicity and actual algebra inclusions. No Galois, normality or splitting-field hypothesis is added.
-/

namespace GRWTSK.Algebra.FieldTheory.FieldExtensions.FiniteCumulativeComposita

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The compositum of precisely the first `n` intermediate fields in one ambient field. -/
noncomputable def cumulativeField (E : ℕ → IntermediateField K L) (n : ℕ) : IntermediateField K L :=
  (Finset.range n).sup E

/-- Extending a cumulative compositum supplies an actual intermediate-field inclusion. -/
theorem cumulative_field_mono (E : ℕ → IntermediateField K L) : Monotone (cumulativeField E) := by
  intro m n h
  exact Finset.sup_mono (Finset.range_mono h)

/-- Every field included in the declared finite prefix embeds into its compositum. -/
theorem component_le_cumulative (E : ℕ → IntermediateField K L) (i n : ℕ) (h : i < n) :
    E i ≤ cumulativeField E n :=
  Finset.le_sup (Finset.mem_range.mpr h)

/-- Canonical algebra homomorphism between cumulative fields, with a proved index order. -/
noncomputable def cumulativeInclusion (E : ℕ → IntermediateField K L) {m n : ℕ} (h : m ≤ n) :
    cumulativeField E m →ₐ[K] cumulativeField E n :=
  IntermediateField.inclusion (cumulative_field_mono E h)

/-- Cumulative inclusions compose as maps of the actual intermediate fields. -/
theorem cumulative_inclusion_comp (E : ℕ → IntermediateField K L) {l m n : ℕ}
    (hlm : l ≤ m) (hmn : m ≤ n) (x : cumulativeField E l) :
    cumulativeInclusion E hmn (cumulativeInclusion E hlm x) =
      cumulativeInclusion E (hlm.trans hmn) x := rfl


end GRWTSK.Algebra.FieldTheory.FieldExtensions.FiniteCumulativeComposita
```
