# Complete source: GRWTSK.Algebra.GroupTheory.NoZeroDivisors.Variantd88be3ef57b176ccfd57d8924caea16845d7552a5c981e84453e2c59ef9b16f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2799958949b23edc71e860cbdb351853532f2e24` · SHA-256 `4f89cff4149a3573551519449de102185648e2c29db2ec27dd524e862430c9f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.MulApplyMulEqMulOfUniqueMul.Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.MulApplyMulEqMulOfUniqueMul.Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32","mathematical_subject":"Algebra.Groups","original_sha256":"39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/MonoidAlgebra/NoZeroDivisors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Group.UniqueProds.Basic
import Mathlib.Algebra.MonoidAlgebra.Defs

/-!
# Variations on non-zero divisors in `AddMonoidAlgebra`s

This file studies the interaction between typeclass assumptions on two Types `R` and `A` and
whether `R[A]` has non-zero zero-divisors.  For some background on related
questions, see [Kaplansky's Conjectures](https://en.wikipedia.org/wiki/Kaplansky%27s_conjectures),
especially the *zero divisor conjecture*.

_Conjecture._
Let `K` be a field, and `G` a torsion-free group. The group ring `K[G]` does not contain
nontrivial zero divisors, that is, it is a domain.

In this file we show that if `R` satisfies `NoZeroDivisors` and `A` is a grading type satisfying
`UniqueProds A` (resp. `UniqueSums A`), then `MonoidAlgebra R A` (resp. `R[A]`)
also satisfies `NoZeroDivisors`.

Because of the instances to `UniqueProds/Sums`, we obtain a formalization of the well-known result
that if `R` is a field and `A` is a left-ordered group, then `R[A]` contains no non-zero
zero-divisors.
The actual assumptions on `R` are weaker.

##  Main results

* `MonoidAlgebra.mul_apply_mul_eq_mul_of_uniqueMul` and
  `AddMonoidAlgebra.mul_apply_add_eq_mul_of_uniqueAdd`
  general sufficient results stating that certain monomials in a product have as coefficient a
  product of coefficients of the factors.
* The instance showing that `Semiring R, NoZeroDivisors R, Mul A, UniqueProds A` imply
  `NoZeroDivisors (MonoidAlgebra R A)`.
* The instance showing that `Semiring R, NoZeroDivisors R, Add A, UniqueSums A` imply
  `NoZeroDivisors R[A]`.

TODO: move the rest of the docs to UniqueProds?
* `NoZeroDivisors.of_left_ordered` shows that if `R` is a semiring with no non-zero
  zero-divisors, `A` is a linearly ordered, add right cancel semigroup with strictly monotone
  left addition, then `R[A]` has no non-zero zero-divisors.
* `NoZeroDivisors.of_right_ordered` shows that if `R` is a semiring with no non-zero
  zero-divisors, `A` is a linearly ordered, add left cancel semigroup with strictly monotone
  right addition, then `R[A]` has no non-zero zero-divisors.

The conditions on `A` imposed in `NoZeroDivisors.of_left_ordered` are sometimes referred to as
`left-ordered`.
The conditions on `A` imposed in `NoZeroDivisors.of_right_ordered` are sometimes referred to as
`right-ordered`.

These conditions are sufficient, but not necessary.  As mentioned above, *Kaplansky's Conjecture*
asserts that `A` being torsion-free may be enough.
-/


namespace GRWTSK.Algebra.GroupTheory.MulApplyMulEqMulOfUniqueMul.Variant39b0a50b02fa3583dcff519fac8a95aa51f4558cf6078414990c6358e922fa32

open Finsupp

variable {R A : Type*}

section Semiring
variable [Semiring R]

namespace MonoidAlgebra

/-- The coefficient of a monomial in a product `f * g` that can be reached in at most one way
as a product of monomials in the supports of `f` and `g` is a product. -/
theorem mul_apply_mul_eq_mul_of_uniqueMul [Mul A] {f g : MonoidAlgebra R A} {a0 b0 : A}
    (h : UniqueMul f.support g.support a0 b0) :
    (f * g) (a0 * b0) = f a0 * g b0 := by
  classical
  simp_rw [mul_apply, sum, ← Finset.sum_product']
  refine (Finset.sum_eq_single (a0, b0) ?_ ?_).trans (if_pos rfl) <;> simp_rw [Finset.mem_product]
  · refine fun ab hab hne => if_neg (fun he => hne <| Prod.ext ?_ ?_)
    exacts [(h hab.1 hab.2 he).1, (h hab.1 hab.2 he).2]
  · refine fun hnotMem => ite_eq_right_iff.mpr (fun _ => ?_)
    rcases not_and_or.mp hnotMem with af | bg
    · rw [notMem_support_iff.mp af, zero_mul]
    · rw [notMem_support_iff.mp bg, mul_zero]

instance instNoZeroDivisorsOfUniqueProds [NoZeroDivisors R] [Mul A] [UniqueProds A] :
    NoZeroDivisors (MonoidAlgebra R A) where
  eq_zero_or_eq_zero_of_mul_eq_zero {a b} ab := by
    contrapose! ab
    obtain ⟨da, a0, db, b0, h⟩ := UniqueProds.uniqueMul_of_nonempty
      (support_nonempty_iff.mpr ab.1) (support_nonempty_iff.mpr ab.2)
    refine support_nonempty_iff.mp ⟨da * db, ?_⟩
    rw [mem_support_iff] at a0 b0 ⊢
    exact mul_apply_mul_eq_mul_of_uniqueMul h ▸ mul_ne_zero a0 b0

end MonoidAlgebra

namespace AddMonoidAlgebra

/-- The coefficient of a monomial in a product `f * g` that can be reached in at most one way
as a product of monomials in the supports of `f` and `g` is a product. -/
theorem mul_apply_add_eq_mul_of_uniqueAdd [Add A] {f g : R[A]} {a0 b0 : A}
    (h : UniqueAdd f.support g.support a0 b0) :
    (f * g) (a0 + b0) = f a0 * g b0 :=
  MonoidAlgebra.mul_apply_mul_eq_mul_of_uniqueMul (A := Multiplicative A) h

instance instNoZeroDivisorsOfUniqueSums [NoZeroDivisors R] [Add A] [UniqueSums A] :
    NoZeroDivisors R[A] := MonoidAlgebra.instNoZeroDivisorsOfUniqueProds (A := Multiplicative A)

end AddMonoidAlgebra
end Semiring

section Ring
variable [Ring R] [IsDomain R]

namespace MonoidAlgebra

instance instIsDomainOfUniqueProds [Monoid A] [UniqueProds A] : IsDomain (MonoidAlgebra R A) :=
  NoZeroDivisors.to_isDomain _

end MonoidAlgebra

namespace AddMonoidAlgebra

instance instIsDomainOfUniqueSums [AddMonoid A] [UniqueSums A] : IsDomain R[A] :=
  NoZeroDivisors.to_isDomain _

end AddMonoidAlgebra
end Ring
```
