# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Towers.Variant41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f16394e9e7fe8bcffa3cd37374c97fb2350d3f69` · SHA-256 `41ed3707c6049dbafe3de860b640f35c76dd5d92d1dffad4120cd5c490b36995`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Actual cumulative composita and finite compatible inverse systems

A tower is formed inside one common ambient field by finite suprema, not by
listing unrelated splitting fields. The inverse-system alternative requires
explicit finite groups and compatible homomorphisms. Neither construction is
an inverse-limit decision oracle.
-/

namespace FormalResearch.SUCAS.Towers

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

/-- A compatible finite observation is a section satisfying every declared restriction. -/
def CompatibleSection {N : ℕ} (T : FiniteInverseSystem N) (x : ∀ i, T.Stage i) : Prop :=
  ∀ i j (hij : i ≤ j), T.restrict i j hij (x j) = x i

/-- Complete compatibility contains each adjacent check, without promoting it to a solver. -/
theorem compatible_section_restrict {N : ℕ} (T : FiniteInverseSystem N)
    (x : ∀ i, T.Stage i) (h : CompatibleSection T x) (i j : Fin (N + 1)) (hij : i ≤ j) :
    T.restrict i j hij (x j) = x i := h i j hij

/-- A genuine finite inverse system exists for every fixed finite group: all maps are identities.
This supplies a concrete model without pretending unrelated fields are nested. -/
def constantInverseSystem (N : ℕ) (G : Type) [Group G] [Fintype G] : FiniteInverseSystem N where
  Stage _ := G
  group _ := inferInstance
  finite _ := inferInstance
  restrict _ _ _ := MonoidHom.id G
  restrict_self _ _ := rfl
  restrict_comp _ _ _ _ _ _ := rfl

/-- Restricting an actual final-stage observation determines a finite section. -/
def sectionFromLast {N : ℕ} (T : FiniteInverseSystem N) (x : T.Stage (Fin.last N))
    (i : Fin (N + 1)) : T.Stage i :=
  T.restrict i (Fin.last N) (Fin.le_last i) x

/-- The section from the last stage is compatible because the maps actually compose. -/
theorem section_from_last_compatible {N : ℕ} (T : FiniteInverseSystem N)
    (x : T.Stage (Fin.last N)) : CompatibleSection T (sectionFromLast T x) := by
  intro i j hij
  exact T.restrict_comp i j (Fin.last N) hij (Fin.le_last j) x

end FormalResearch.SUCAS.Towers
```
