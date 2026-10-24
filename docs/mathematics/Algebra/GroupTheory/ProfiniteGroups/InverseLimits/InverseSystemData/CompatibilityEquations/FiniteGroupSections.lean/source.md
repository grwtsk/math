# Complete source: GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.CompatibilityEquations.FiniteGroupSections

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8c612d24888c14ecf842f713718395e3af9ed65` · SHA-256 `15c75a8d6fc8c2ca7317912126e24848477ca83c9f4cb52eb9022f034b5cfa90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

import GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.FiniteGroupInverseSystem

/-!
# Compatibility equations for finite group sections

This component isolates the explicit compatibility equations and the section induced from an actual last-stage element. Its proof uses the supplied restriction-composition law and the finite last-index bound; it is separate from constructing the inverse-system data.
-/

namespace GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.CompatibilityEquations.FiniteGroupSections

open GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.FiniteGroupInverseSystem

/-- A compatible finite observation is a section satisfying every declared restriction. -/
def CompatibleSection {N : ℕ} (T : FiniteInverseSystem N) (x : ∀ i, T.Stage i) : Prop :=
  ∀ i j (hij : i ≤ j), T.restrict i j hij (x j) = x i

/-- Complete compatibility contains each adjacent check, without promoting it to a solver. -/
theorem compatible_section_restrict {N : ℕ} (T : FiniteInverseSystem N)
    (x : ∀ i, T.Stage i) (h : CompatibleSection T x) (i j : Fin (N + 1)) (hij : i ≤ j) :
    T.restrict i j hij (x j) = x i := h i j hij

/-- Restricting an actual final-stage observation determines a finite section. -/
def sectionFromLast {N : ℕ} (T : FiniteInverseSystem N) (x : T.Stage (Fin.last N))
    (i : Fin (N + 1)) : T.Stage i :=
  T.restrict i (Fin.last N) (Fin.le_last i) x

/-- The section from the last stage is compatible because the maps actually compose. -/
theorem section_from_last_compatible {N : ℕ} (T : FiniteInverseSystem N)
    (x : T.Stage (Fin.last N)) : CompatibleSection T (sectionFromLast T x) := by
  intro i j hij
  exact T.restrict_comp i j (Fin.last N) hij (Fin.le_last j) x

end GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.CompatibilityEquations.FiniteGroupSections
```
