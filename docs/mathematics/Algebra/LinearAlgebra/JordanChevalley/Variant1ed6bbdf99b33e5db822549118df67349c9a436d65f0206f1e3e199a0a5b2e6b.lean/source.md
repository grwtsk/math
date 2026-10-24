# Complete source: GRWTSK.Algebra.LinearAlgebra.JordanChevalley.Variant1ed6bbdf99b33e5db822549118df67349c9a436d65f0206f1e3e199a0a5b2e6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b00c943efe47b349b906200a62a16e8c11afe5f2` · SHA-256 `968bbae7a46cebab7722323086baa8dbaf179396cfc47ea719e8daa2f08a81da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ExistsIsNilpotentIsSemisimpleOfSeparableOfDvdPow.Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ExistsIsNilpotentIsSemisimpleOfSeparableOfDvdPow.Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/JordanChevalley.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Oliver Nash. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Nash
-/
import Mathlib.Dynamics.Newton
import Mathlib.LinearAlgebra.Semisimple
import Mathlib.LinearAlgebra.FreeModule.Finite.Matrix

/-!
# Jordan-Chevalley-Dunford decomposition

Given a finite-dimensional linear endomorphism `f`, the Jordan-Chevalley-Dunford theorem provides a
sufficient condition for there to exist a nilpotent endomorphism `n` and a semisimple endomorphism
`s`, such that `f = n + s` and both `n` and `s` are polynomial expressions in `f`.

The condition is that there exists a separable polynomial `P` such that the endomorphism `P(f)` is
nilpotent. This condition is always satisfied when the coefficients are a perfect field.

The proof given here uses Newton's method and is taken from Chambert-Loir's notes:
[Algebre](http://webusers.imj-prg.fr/~antoine.chambert-loir/enseignement/2022-23/agreg/algebre.pdf)

## Main definitions / results:

* `Module.End.exists_isNilpotent_isSemisimple`: an endomorphism of a finite-dimensional vector
  space over a perfect field may be written as a sum of nilpotent and semisimple endomorphisms.
  Moreover these nilpotent and semisimple components are polynomial expressions in the original
  endomorphism.

## TODO

* Uniqueness of decomposition (once we prove that the sum of commuting semisimple endomorphims is
  semisimple, this will follow from `Module.End.eq_zero_of_isNilpotent_isSemisimple`).

-/


namespace GRWTSK.Algebra.LinearAlgebra.ExistsIsNilpotentIsSemisimpleOfSeparableOfDvdPow.Variant1bcf21036107a9ee27ab9e4e331dd4c26f2fbfd06e71d1b57d16cd1fe18aa034

open Algebra Polynomial

namespace Module.End

variable {K V : Type*} [Field K] [AddCommGroup V] [Module K V] {f : End K V}

theorem exists_isNilpotent_isSemisimple_of_separable_of_dvd_pow {P : K[X]} {k : ℕ}
    (sep : P.Separable) (nil : minpoly K f ∣ P ^ k) :
    ∃ᵉ (n ∈ adjoin K {f}) (s ∈ adjoin K {f}), IsNilpotent n ∧ IsSemisimple s ∧ f = n + s := by
  set ff : adjoin K {f} := ⟨f, self_mem_adjoin_singleton K f⟩
  set P' := derivative P
  have nil' : IsNilpotent (aeval ff P) := by
    use k
    obtain ⟨q, hq⟩ := nil
    rw [← map_pow, Subtype.ext_iff]
    simp [ff, hq]
  have sep' : IsUnit (aeval ff P') := by
    obtain ⟨a, b, h⟩ : IsCoprime (P ^ k) P' := sep.pow_left
    replace h : (aeval f b) * (aeval f P') = 1 := by
      simpa only [map_add, map_mul, map_one, minpoly.dvd_iff.mp nil, mul_zero, zero_add]
        using (aeval f).congr_arg h
    refine isUnit_of_mul_eq_one_right (aeval ff b) _ (Subtype.ext_iff.mpr ?_)
    simpa [ff, coe_aeval_mk_apply] using h
  obtain ⟨⟨s, mem⟩, ⟨⟨k, hk⟩, hss⟩, -⟩ := existsUnique_nilpotent_sub_and_aeval_eq_zero nil' sep'
  refine ⟨f - s, ?_, s, mem, ⟨k, ?_⟩, ?_, (sub_add_cancel f s).symm⟩
  · exact sub_mem (self_mem_adjoin_singleton K f) mem
  · rw [Subtype.ext_iff] at hk
    simpa using hk
  · replace hss : aeval s P = 0 := by rwa [Subtype.ext_iff, coe_aeval_mk_apply] at hss
    exact isSemisimple_of_squarefree_aeval_eq_zero sep.squarefree hss

variable [FiniteDimensional K V]

/-- **Jordan-Chevalley-Dunford decomposition**: an endomorphism of a finite-dimensional vector space
over a perfect field may be written as a sum of nilpotent and semisimple endomorphisms. Moreover
these nilpotent and semisimple components are polynomial expressions in the original endomorphism.
-/
theorem exists_isNilpotent_isSemisimple [PerfectField K] :
    ∃ᵉ (n ∈ adjoin K {f}) (s ∈ adjoin K {f}), IsNilpotent n ∧ IsSemisimple s ∧ f = n + s := by
  obtain ⟨g, k, sep, -, nil⟩ := exists_squarefree_dvd_pow_of_ne_zero (minpoly.ne_zero_of_finite K f)
  rw [← PerfectField.separable_iff_squarefree] at sep
  exact exists_isNilpotent_isSemisimple_of_separable_of_dvd_pow sep nil

end Module.End
```
