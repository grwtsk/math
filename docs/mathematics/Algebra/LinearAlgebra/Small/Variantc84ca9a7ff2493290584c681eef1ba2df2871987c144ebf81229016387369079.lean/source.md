# Complete source: GRWTSK.Algebra.LinearAlgebra.Small.Variantc84ca9a7ff2493290584c681eef1ba2df2871987c144ebf81229016387369079

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e0ba852a905b3e7e4afd1795c763559468c1042` · SHA-256 `0f35d0e9f12e78ab0dceae06030237a767c1dc430346156a963c72fd3da22210`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FGSmall.Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FGSmall.Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"c3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Finiteness/Small.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Antoine Chambert-Loir, María-Inés de Frutos-Fernández. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Antoine Chambert-Loir, Maria-Inés de Frutos-Fernandez
-/
import Mathlib.LinearAlgebra.Finsupp.LinearCombination
import Mathlib.RingTheory.FiniteType
import Mathlib.LinearAlgebra.DFinsupp
import Mathlib.Algebra.Algebra.Subalgebra.Basic
import Mathlib.LinearAlgebra.Basis.Cardinality
import Mathlib.LinearAlgebra.StdBasis
import Mathlib.RingTheory.Finiteness.Basic
import Mathlib.RingTheory.MvPolynomial.Basic
import Mathlib.Data.DFinsupp.Small

/-! # Smallness properties of modules and algebras -/


namespace GRWTSK.Algebra.LinearAlgebra.FGSmall.Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e

universe u

namespace Submodule

variable {R M : Type*} [Semiring R] [AddCommMonoid M] [Module R M]

instance small_sup {P Q : Submodule R M} [smallP : Small.{u} P] [smallQ : Small.{u} Q] :
    Small.{u} (P ⊔ Q : Submodule R M) := by
  rw [Submodule.sup_eq_range]
  exact small_range _

instance : SemilatticeSup {P : Submodule R M // Small.{u} P} where
  sup := fun P Q ↦ ⟨P.val ⊔ Q.val, small_sup (smallP := P.property) (smallQ := Q.property)⟩
  le_sup_left := fun P Q ↦ by rw [← Subtype.coe_le_coe]; exact le_sup_left
  le_sup_right := fun P Q ↦ by rw [← Subtype.coe_le_coe]; exact le_sup_right
  sup_le := fun _ _ _ hPR hQR ↦ by
    rw [← Subtype.coe_le_coe] at hPR hQR ⊢
    exact sup_le hPR hQR

instance : Inhabited {P : Submodule R M // Small.{u} P} where
  default := ⟨⊥, inferInstance⟩

instance small_iSup
    {ι : Type*} {P : ι → Submodule R M} [Small.{u} ι] [∀ i, Small.{u} (P i)] :
    Small.{u} (iSup P : Submodule R M) := by
  classical
  rw [iSup_eq_range_dfinsupp_lsum]
  apply small_range

theorem FG.small [Small.{u} R] (P : Submodule R M) (hP : P.FG) : Small.{u} P := by
  rw [fg_iff_exists_fin_generating_family] at hP
  obtain ⟨n, s, rfl⟩ := hP
  rw [← Fintype.range_linearCombination]
  apply small_range

variable (R M) in
theorem _root_.GRWTSK.Algebra.LinearAlgebra.FGSmall.Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.Module.Finite.small [Small.{u} R] [Module.Finite R M] : Small.{u} M := by
  have : Small.{u} (⊤ : Submodule R M) :=
    FG.small _ (Module.finite_def.mp inferInstance)
  rwa [← small_univ_iff]

instance small_span_singleton [Small.{u} R] (m : M) :
    Small.{u} (span R {m}) := FG.small _ (fg_span_singleton _)

theorem small_span [Small.{u} R] (s : Set M) [Small.{u} s] :
    Small.{u} (span R s) := by
  suffices span R s = iSup (fun i : s ↦ span R ({(↑i : M)} : Set M)) by
    rw [this]
    apply small_iSup
  simp [← Submodule.span_iUnion]

end Submodule

variable {R S : Type*} [CommSemiring R] [CommSemiring S] [Algebra R S]

namespace Algebra

open MvPolynomial AlgHom

instance small_adjoin [Small.{u} R] {s : Set S} [Small.{u} s] :
    Small.{u} (adjoin R s : Subalgebra R S) := by
  rw [Algebra.adjoin_eq_range]
  apply small_range

theorem _root_.GRWTSK.Algebra.LinearAlgebra.FGSmall.Variantc3c347ba4287a97ace3925e2863898af09a59ced9f7531592e2d30c8da78205e.Subalgebra.FG.small [Small.{u} R] {A : Subalgebra R S} (fgS : A.FG) :
    Small.{u} A := by
  obtain ⟨s, hs, rfl⟩ := fgS
  exact small_adjoin

theorem FiniteType.small [Small.{u} R] [Algebra.FiniteType R S] :
    Small.{u} S := by
  have : Small.{u} (⊤ : Subalgebra R S) :=
    Subalgebra.FG.small Algebra.FiniteType.out
  rwa [← small_univ_iff]

end Algebra
```
