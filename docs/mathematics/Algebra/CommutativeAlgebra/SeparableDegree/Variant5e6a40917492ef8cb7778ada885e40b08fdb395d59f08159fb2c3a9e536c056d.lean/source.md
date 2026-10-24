# Complete source: GRWTSK.Algebra.CommutativeAlgebra.SeparableDegree.Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9f67fbf72c0f021151c0c5b0ddc504739ae6015` · SHA-256 `f025814de5ce151b768f252485934f36a299072a9301521eefbc2a80d3bd4fa6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.IsSeparableContraction.Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.IsSeparableContraction.Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3","mathematical_subject":"Algebra.Polynomials","original_sha256":"e2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/FieldTheory/SeparableDegree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jakob Scholbach. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob Scholbach
-/
import Mathlib.Algebra.Algebra.Basic
import Mathlib.Algebra.CharP.ExpChar
import Mathlib.FieldTheory.Separable


namespace GRWTSK.Algebra.CommutativeAlgebra.IsSeparableContraction.Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3

#align_import field_theory.separable_degree from "leanprover-community/mathlib"@"d11893b411025250c8e61ff2f12ccbd7ee35ab15"

/-!

# Separable degree

This file contains basics about the separable degree of a polynomial.

## Main results

- `IsSeparableContraction`: is the condition that, for `g` a separable polynomial, we have that
   `g(x^(q^m)) = f(x)` for some `m : ℕ`.
- `HasSeparableContraction`: the condition of having a separable contraction
- `HasSeparableContraction.degree`: the separable degree, defined as the degree of some
  separable contraction
- `Irreducible.HasSeparableContraction`: any irreducible polynomial can be contracted
  to a separable polynomial
- `HasSeparableContraction.dvd_degree'`: the degree of a separable contraction divides the degree,
  in function of the exponential characteristic of the field
- `HasSeparableContraction.dvd_degree` and `HasSeparableContraction.eq_degree` specialize the
  statement of `separable_degree_dvd_degree`
- `IsSeparableContraction.degree_eq`: the separable degree is well-defined, implemented as the
  statement that the degree of any separable contraction equals `HasSeparableContraction.degree`

## Tags

separable degree, degree, polynomial
-/

noncomputable section

namespace Polynomial

open Classical Polynomial

section CommSemiring

variable {F : Type*} [CommSemiring F] (q : ℕ)

/-- A separable contraction of a polynomial `f` is a separable polynomial `g` such that
`g(x^(q^m)) = f(x)` for some `m : ℕ`.-/
def IsSeparableContraction (f : F[X]) (g : F[X]) : Prop :=
  g.Separable ∧ ∃ m : ℕ, expand F (q ^ m) g = f
#align polynomial.is_separable_contraction Polynomial.IsSeparableContraction

/-- The condition of having a separable contraction. -/
def HasSeparableContraction (f : F[X]) : Prop :=
  ∃ g : F[X], IsSeparableContraction q f g
#align polynomial.has_separable_contraction Polynomial.HasSeparableContraction

variable {q} {f : F[X]} (hf : HasSeparableContraction q f)

/-- A choice of a separable contraction. -/
def HasSeparableContraction.contraction : F[X] :=
  Classical.choose hf
#align polynomial.has_separable_contraction.contraction Polynomial.HasSeparableContraction.contraction

/-- The separable degree of a polynomial is the degree of a given separable contraction. -/
def HasSeparableContraction.degree : ℕ :=
  hf.contraction.natDegree
#align polynomial.has_separable_contraction.degree Polynomial.HasSeparableContraction.degree

/-- The separable degree divides the degree, in function of the exponential characteristic of F. -/
theorem IsSeparableContraction.dvd_degree' {g} (hf : IsSeparableContraction q f g) :
    ∃ m : ℕ, g.natDegree * q ^ m = f.natDegree := by
  obtain ⟨m, rfl⟩ := hf.2
  use m
  rw [natDegree_expand]
#align polynomial.is_separable_contraction.dvd_degree' Polynomial.IsSeparableContraction.dvd_degree'

theorem HasSeparableContraction.dvd_degree' : ∃ m : ℕ, hf.degree * q ^ m = f.natDegree :=
  (Classical.choose_spec hf).dvd_degree' hf
#align polynomial.has_separable_contraction.dvd_degree' Polynomial.HasSeparableContraction.dvd_degree'

/-- The separable degree divides the degree. -/
theorem HasSeparableContraction.dvd_degree : hf.degree ∣ f.natDegree :=
  let ⟨a, ha⟩ := hf.dvd_degree'
  Dvd.intro (q ^ a) ha
#align polynomial.has_separable_contraction.dvd_degree Polynomial.HasSeparableContraction.dvd_degree

/-- In exponential characteristic one, the separable degree equals the degree. -/
theorem HasSeparableContraction.eq_degree {f : F[X]} (hf : HasSeparableContraction 1 f) :
    hf.degree = f.natDegree := by
  let ⟨a, ha⟩ := hf.dvd_degree'
  rw [← ha, one_pow a, mul_one]
#align polynomial.has_separable_contraction.eq_degree Polynomial.HasSeparableContraction.eq_degree

end CommSemiring

section Field

variable {F : Type*} [Field F]

variable (q : ℕ) {f : F[X]} (hf : HasSeparableContraction q f)

/-- Every irreducible polynomial can be contracted to a separable polynomial.
https://stacks.math.columbia.edu/tag/09H0 -/
theorem Irreducible.hasSeparableContraction (q : ℕ) [hF : ExpChar F q] (f : F[X])
    (irred : Irreducible f) : HasSeparableContraction q f := by
  cases hF
  · exact ⟨f, irred.separable, ⟨0, by rw [pow_zero, expand_one]⟩⟩
  · rcases exists_separable_of_irreducible q irred ‹q.Prime›.ne_zero with ⟨n, g, hgs, hge⟩
    exact ⟨g, hgs, n, hge⟩
#align irreducible.has_separable_contraction Polynomial.Irreducible.hasSeparableContraction

/-- If two expansions (along the positive characteristic) of two separable polynomials `g` and `g'`
agree, then they have the same degree. -/
theorem contraction_degree_eq_or_insep [hq : NeZero q] [CharP F q] (g g' : F[X]) (m m' : ℕ)
    (h_expand : expand F (q ^ m) g = expand F (q ^ m') g') (hg : g.Separable) (hg' : g'.Separable) :
    g.natDegree = g'.natDegree := by
  wlog hm : m ≤ m'
  · exact (this q hf g' g m' m h_expand.symm hg' hg (le_of_not_le hm)).symm
  obtain ⟨s, rfl⟩ := exists_add_of_le hm
  rw [pow_add, expand_mul, expand_inj (pow_pos (NeZero.pos q) m)] at h_expand
  subst h_expand
  rcases isUnit_or_eq_zero_of_separable_expand q s (NeZero.pos q) hg with (h | rfl)
  · rw [natDegree_expand, natDegree_eq_zero_of_isUnit h, zero_mul]
  · rw [natDegree_expand, pow_zero, mul_one]
#align polynomial.contraction_degree_eq_or_insep Polynomial.contraction_degree_eq_or_insep

/-- The separable degree equals the degree of any separable contraction, i.e., it is unique. -/
theorem IsSeparableContraction.degree_eq [hF : ExpChar F q] (g : F[X])
    (hg : IsSeparableContraction q f g) : g.natDegree = hf.degree := by
  cases hF
  · rcases hg with ⟨_, m, hm⟩
    rw [one_pow, expand_one] at hm
    rw [hf.eq_degree, hm]
  · rcases hg with ⟨hg, m, hm⟩
    let g' := Classical.choose hf
    cases' (Classical.choose_spec hf).2 with m' hm'
    haveI : Fact q.Prime := ⟨by assumption⟩
    apply contraction_degree_eq_or_insep q g g' m m'
    rw [hm, hm']
    exact hg
    exact (Classical.choose_spec hf).1
#align polynomial.is_separable_contraction.degree_eq Polynomial.IsSeparableContraction.degree_eq

end Field

end Polynomial
```
