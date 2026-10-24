# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Towers.Variant7bed7b8a63a0dc3f1a0d9684d91f3815b8d1a2c49733bfe6aa87b876dab418e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fcd1c0d9271a978685afc886c9671ba168cac0d` · SHA-256 `055e24710690498d1e74ed20667ff8eda88464d69b52cbd06bd440ab9858ef89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteInverseSystem.Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FiniteInverseSystem.Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Towers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.FieldTheory.IntermediateField.Adjoin.Basic
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Actual cumulative composita and finite compatible inverse systems

A tower is formed inside one common ambient field by finite suprema, not by
listing unrelated splitting fields. The inverse-system alternative requires
explicit finite groups and compatible homomorphisms. Neither construction is
an inverse-limit decision oracle.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteInverseSystem.Variantc47645db72bc9fe61b27db5f402ae06ed7d3cf96a61f5a301d4c146c58c7f719

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Towers

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

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Towers
```
