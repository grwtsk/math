-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsFiltration.Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsFiltration.Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/FilteredAlgebra/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Nailin Guan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Nailin Guan
-/
import Mathlib.Algebra.Module.Defs
import Mathlib.Algebra.Order.Ring.Int
import Mathlib.Algebra.GradedMonoid
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GradedMulAction
/-!
# The filtration on abelian groups and rings

In this file, we define the concept of filtration for abelian groups, rings, and modules.

# Main definitions

* `IsFiltration` : For a family of subsets `σ` of `A`, an increasing series of `F` in `σ` is a
  filtration if there is another series `F_lt` in `σ` equal to the
  supremum of `F` with smaller index.

* `IsRingFiltration` : For a family of subsets `σ` of semiring `R`, an increasing series `F` in `σ`
  is a ring filtration if `IsFiltration F F_lt` and the pointwise multiplication of `F i` and `F j`
  is in `F (i + j)`.

* `IsModuleFiltration` : For `F` satisfying `IsRingFiltration F F_lt` in a semiring `R` and `σM` a
  family of subsets of a `R` module `M`, an increasing series `FM` in `σM` is a module filtration
  if `IsFiltration F F_lt` and the pointwise scalar multiplication of `F i` and `FM j`
  is in `F (i +ᵥ j)`.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsFiltration.Variantdec32e8ee6e835f527f9ffcc0cd6b99274e0ab81a21a82434d47e1934c069a08

section GeneralFiltration

variable {ι A σ : Type*} [Preorder ι] [SetLike σ A]

/-- For a family of subsets `σ` of `A`, an increasing series of `F` in `σ` is a filtration if
there is another series `F_lt` in `σ` equal to the supremum of `F` with smaller index.

In the intended applications, `σ` is a complete lattice, and `F_lt` is uniquely-determined as
`F_lt j = ⨆ i < j, F i`. Thus `F_lt` is an implementation detail which allows us defer depending
on a complete lattice structure on `σ`. It also provides the ancillary benefit of giving us better
definition control. This is convenient e.g., when the index is `ℤ`. -/
class IsFiltration (F : ι → σ) (F_lt : outParam <| ι → σ) : Prop where
  mono : Monotone F
  is_le {i j} : i < j → F i ≤ F_lt j
  is_sup (B : σ) (j : ι) : (∀ i < j, F i ≤ B) → F_lt j ≤ B

lemma IsFiltration.F_lt_le_F (F : ι → σ) (F_lt : outParam <| ι → σ) (i : ι) [IsFiltration F F_lt] :
    F_lt i ≤ F i :=
  is_sup (F i) i (fun _ hi ↦ IsFiltration.mono (le_of_lt hi))

/-- A convenience constructor for `IsFiltration` when the index is the integers. -/
lemma IsFiltration.mk_int (F : ℤ → σ) (mono : Monotone F) :
    IsFiltration F (fun n ↦ F (n - 1)) where
  mono := mono
  is_le lt := mono (Int.le_sub_one_of_lt lt)
  is_sup _ j hi := hi (j - 1) (sub_one_lt j)

end GeneralFiltration

section FilteredRing

variable {ι R σ : Type*} [AddMonoid ι] [PartialOrder ι]
  [Semiring R] [SetLike σ R]

/-- For a family of subsets `σ` of semiring `R`, an increasing series `F` in `σ` is
a ring filtration if `IsFiltration F F_lt` and the pointwise multiplication of `F i` and `F j`
is in `F (i + j)`. -/
class IsRingFiltration (F : ι → σ) (F_lt : outParam <| ι → σ) : Prop
    extends IsFiltration F F_lt, SetLike.GradedMonoid F

/-- A convenience constructor for `IsRingFiltration` when the index is the integers. -/
lemma IsRingFiltration.mk_int (F : ℤ → σ) (mono : Monotone F) [SetLike.GradedMonoid F] :
    IsRingFiltration F (fun n ↦ F (n - 1)) where
  __ := IsFiltration.mk_int F mono

end FilteredRing

section FilteredModule

variable {ι ιM R M σ σM : Type*} [AddMonoid ι] [PartialOrder ι] [PartialOrder ιM] [VAdd ι ιM]
variable [Semiring R] [SetLike σ R] [AddCommMonoid M] [Module R M] [SetLike σM M]

/-- For `F` satisfying `IsRingFiltration F F_lt` in a semiring `R` and `σM` a family of subsets of
a `R` module `M`, an increasing series `FM` in `σM` is a module filtration if `IsFiltration F F_lt`
and the pointwise scalar multiplication of `F i` and `FM j` is in `F (i +ᵥ j)`.

The index set `ιM` for the module can be more general, however usually we take `ιM = ι`. -/
class IsModuleFiltration (F : ι → σ) (F_lt : outParam <| ι → σ) [IsRingFiltration F F_lt]
    (F' : ιM → σM) (F'_lt : outParam <| ιM → σM) : Prop
    extends IsFiltration F' F'_lt, SetLike.GradedSMul F F'

/-- A convenience constructor for `IsModuleFiltration` when the index is the integers. -/
lemma IsModuleFiltration.mk_int (F : ℤ → σ) (mono : Monotone F) [SetLike.GradedMonoid F]
    (F' : ℤ → σM) (mono' : Monotone F') [SetLike.GradedSMul F F']:
    letI := IsRingFiltration.mk_int F mono
    IsModuleFiltration F (fun n ↦ F (n - 1)) F' (fun n ↦ F' (n - 1)) :=
  letI := IsRingFiltration.mk_int F mono
  { IsFiltration.mk_int F' mono' with }

end FilteredModule
