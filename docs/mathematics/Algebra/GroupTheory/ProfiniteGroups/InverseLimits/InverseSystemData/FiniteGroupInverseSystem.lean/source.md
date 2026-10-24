# Complete source: GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.FiniteGroupInverseSystem

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2c4b3c90bead82a7beac1f323dcba32798302b6` · SHA-256 `22ef3ec797c20ff797b5420de58a18e72a8741015fb412b768faa06c669479af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
# Finite group inverse-system data and a constant model

This component gives finitely indexed finite groups with specified backward homomorphisms and exact identity/composition laws, plus the constant finite-group model. The PMD inverse-system topic is navigational; no topology, infinite limit or decision oracle is constructed.
-/

namespace GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.FiniteGroupInverseSystem

/-- A finite inverse-system interface whose restriction maps obey identity and composition.
Its stages may be instantiated by finite Galois groups only after the relevant
field and normality witnesses have separately been supplied. -/
structure FiniteInverseSystem (N : ℕ) where
  /-- Group at each admitted finite stage. -/
  Stage : Fin (N + 1) → Type
  /-- Actual group law at each stage. -/
  group : ∀ i, Group (Stage i)
  /-- Every stage has an explicit finite inventory. -/
  finite : ∀ i, Fintype (Stage i)
  /-- Backward map for each proved index relation. -/
  restrict : ∀ i j, i ≤ j → @MonoidHom (Stage j) (Stage i) (group j).toMulOne (group i).toMulOne
  /-- Restriction to the same stage is the identity function. -/
  restrict_self : ∀ i (x : Stage i), restrict i i le_rfl x = x
  /-- Restriction through an intermediate stage is compatible with direct restriction. -/
  restrict_comp : ∀ i j k (hij : i ≤ j) (hjk : j ≤ k) (x : Stage k),
    restrict i j hij (restrict j k hjk x) = restrict i k (hij.trans hjk) x

/-- A genuine finite inverse system exists for every fixed finite group: all maps are identities.
This supplies a concrete model without pretending unrelated fields are nested. -/
def constantInverseSystem (N : ℕ) (G : Type) [Group G] [Fintype G] : FiniteInverseSystem N where
  Stage _ := G
  group _ := inferInstance
  finite _ := inferInstance
  restrict _ _ _ := MonoidHom.id G
  restrict_self _ _ := rfl
  restrict_comp _ _ _ _ _ _ := rfl


end GRWTSK.Algebra.GroupTheory.ProfiniteGroups.InverseLimits.InverseSystemData.FiniteGroupInverseSystem
```
