# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteDimensional.Variant28ea10a304e90d95fd27d59d4675cdca519d6b272508223eaebc839c4db2ee87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37ed2d8566d19e5364d9b4ffac5cf926a294630c` · SHA-256 `ff2a36c6779c737b2834c2e00f45442d52f369cb38180b28cf23fecb7cf71d17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FinrankRealComplex.Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FinrankRealComplex.Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Complex/FiniteDimensional.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Alexander Bentkamp, Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alexander Bentkamp, Sébastien Gouëzel, Eric Wieser
-/
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Data.Complex.Cardinality
import Mathlib.Data.Complex.Module
import Mathlib.LinearAlgebra.FiniteDimensional.Defs
import Mathlib.Order.Interval.Set.Infinite

/-!
# Complex number as a finite dimensional vector space over `ℝ`

This file contains the `FiniteDimensional ℝ ℂ` instance, as well as some results about the rank
(`finrank` and `Module.rank`).
-/


namespace GRWTSK.Algebra.LinearAlgebra.FinrankRealComplex.Variant4d8773d12b62622f38d45f388b81bdafcab97d3a586e4495188a3f87b007685f

open Module

namespace Complex

instance : FiniteDimensional ℝ ℂ := .of_fintype_basis basisOneI

/-- `ℂ` is a finite extension of `ℝ` of degree 2, i.e `[ℂ : ℝ] = 2` -/
@[simp, stacks 09G4]
theorem finrank_real_complex : finrank ℝ ℂ = 2 := by
  rw [finrank_eq_card_basis basisOneI, Fintype.card_fin]

@[simp]
theorem rank_real_complex : Module.rank ℝ ℂ = 2 := by simp [← finrank_eq_rank, finrank_real_complex]

theorem rank_real_complex'.{u} : Cardinal.lift.{u} (Module.rank ℝ ℂ) = 2 := by
  rw [← finrank_eq_rank, finrank_real_complex, Cardinal.lift_natCast, Nat.cast_ofNat]

/-- `Fact` version of the dimension of `ℂ` over `ℝ`, locally useful in the definition of the
circle. -/
theorem finrank_real_complex_fact : Fact (finrank ℝ ℂ = 2) :=
  ⟨finrank_real_complex⟩

end Complex

instance (priority := 100) FiniteDimensional.complexToReal (E : Type*) [AddCommGroup E]
    [Module ℂ E] [FiniteDimensional ℂ E] : FiniteDimensional ℝ E :=
  FiniteDimensional.trans ℝ ℂ E

theorem rank_real_of_complex (E : Type*) [AddCommGroup E] [Module ℂ E] :
    Module.rank ℝ E = 2 * Module.rank ℂ E :=
  Cardinal.lift_inj.{_,0}.1 <| by
    rw [← lift_rank_mul_lift_rank ℝ ℂ E, Complex.rank_real_complex']
    simp only [Cardinal.lift_id']

theorem finrank_real_of_complex (E : Type*) [AddCommGroup E] [Module ℂ E] :
    Module.finrank ℝ E = 2 * Module.finrank ℂ E := by
  rw [← Module.finrank_mul_finrank ℝ ℂ E, Complex.finrank_real_complex]

section Rational

open Cardinal Module

@[simp]
lemma Real.rank_rat_real : Module.rank ℚ ℝ = continuum := by
  refine (Free.rank_eq_mk_of_infinite_lt ℚ ℝ ?_).trans mk_real
  simpa [mk_real] using aleph0_lt_continuum

/-- `C` has an uncountable basis over `ℚ`. -/
@[simp, stacks 09G0]
lemma Complex.rank_rat_complex : Module.rank ℚ ℂ = continuum := by
  refine (Free.rank_eq_mk_of_infinite_lt ℚ ℂ ?_).trans Cardinal.mk_complex
  simpa using aleph0_lt_continuum

/-- `ℂ` and `ℝ` are isomorphic as vector spaces over `ℚ`, or equivalently,
as additive groups. -/
theorem Complex.nonempty_linearEquiv_real : Nonempty (ℂ ≃ₗ[ℚ] ℝ) :=
  LinearEquiv.nonempty_equiv_iff_rank_eq.mpr <| by simp

end Rational
```
