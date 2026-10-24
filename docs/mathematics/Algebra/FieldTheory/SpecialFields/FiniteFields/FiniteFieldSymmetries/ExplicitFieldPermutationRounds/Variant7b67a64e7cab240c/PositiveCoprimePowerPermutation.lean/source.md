# Complete source: GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c.PositiveCoprimePowerPermutation

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6868c9454dc0f056510e15ab18b08cd93dff7e43` · SHA-256 `a3d937d4b59f93796e3fff1a3df9ae54229d70f1d3f3f61407c0d88a50f917cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Positive coprime power permutations of a finite field
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42
Organized SHA-256: 63289ea99e05fa97ce00b933c1039216a39ca3f376010781ce1572c4b9f7e425
PMD: 510.1.080.030.010.020 finite field symmetries (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- powerMap_bijective retains0<d and Nat.Coprime d(cardF-1), unit-group cardinality proof and separate zero/nonzero arguments. Inversion needs only Field and retains conventional0 inverse0 and exact involutive inverse fields, with no finite enumeration. -/

import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.CharP.Two
import Mathlib.Algebra.Group.Units.Equiv
import Mathlib.Algebra.GroupWithZero.Units.Fintype
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.GroupTheory.OrderOfElement

/-!
# Finite-field permutation rounds and the finite ``Digamma'' obstruction

This module separates two unrelated facts about finite-field formulae.

First, the product occurring in the proposed finite ``Digamma'' expression has
a pole at every selected root.  In characteristic two the factor belonging to
`a` evaluates to `a + a = 0`.  In particular, selecting all nonzero field
elements makes the expression undefined at every nonzero input.  The
definition remains an `Option`; division by a zero denominator is not silently
totalized.

Second, exponentiation by `d` *is* a genuine permutation when `d` is positive
and coprime to the order of the multiplicative group.  The proof below uses
Mathlib's power equivalence on `Fˣ`, whose order is `|F| - 1`, and treats zero
separately.  No finite brute-force enumeration is involved.

A `FieldRound` composes explicit equivalences, so it is bijective by
construction.  This is only a permutation guarantee: it says nothing about
SAC, correlations, differential concentration, or other avalanche properties.
Likewise, transporting a field permutation to `Bits n` requires a chosen
representation equivalence.  SAC and output-bit correlations depend on that
choice; field-level bijectivity alone cannot determine them.
-/

namespace GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c

open BitMatrix.Reduction.SAT
open scoped BigOperators

universe u

/-! ## Power and inversion permutations -/

section PowerPermutations

variable {F : Type u} [Field F] [Fintype F]

/-- The field power map is bijective when its positive exponent is coprime to
`|Fˣ| = |F| - 1`.  The nonzero part is delegated to `powCoprime`; zero is
fixed because the exponent is positive. -/
theorem powerMap_bijective
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1)) :
    Function.Bijective (fun x : F => x ^ d) := by
  have hd_ne : d ≠ 0 := Nat.ne_of_gt hd_pos
  have hcard : Nat.card Fˣ = Fintype.card F - 1 := by
    rw [Nat.card_units, Nat.card_eq_fintype_card]
  have hcop : (Nat.card Fˣ).Coprime d := by
    rw [hcard]
    exact hd.symm
  have hunit := (powCoprime hcop).bijective
  constructor
  · intro x y hxy
    by_cases hx : x = 0
    · subst x
      have hy : y = 0 := by
        by_contra hy
        have hzero : (0 : F) ^ d = 0 := zero_pow hd_ne
        have hnonzero : y ^ d ≠ 0 := pow_ne_zero d hy
        exact hnonzero (hxy.symm.trans hzero)
      exact hy.symm
    · by_cases hy : y = 0
      · subst y
        have hzero : (0 : F) ^ d = 0 := zero_pow hd_ne
        have hnonzero : x ^ d ≠ 0 := pow_ne_zero d hx
        exact (hnonzero (hxy.trans hzero)).elim
      · let ux : Fˣ := Units.mk0 x hx
        let uy : Fˣ := Units.mk0 y hy
        have hu : ux ^ d = uy ^ d := by
          apply Units.ext
          simpa [ux, uy] using hxy
        have huv : ux = uy := hunit.1 hu
        exact congrArg Units.val huv
  · intro y
    by_cases hy : y = 0
    · exact ⟨0, by simp [hy, zero_pow hd_ne]⟩
    · let uy : Fˣ := Units.mk0 y hy
      obtain ⟨ux, hux⟩ := hunit.2 uy
      refine ⟨(ux : F), ?_⟩
      have hval := congrArg Units.val hux
      simpa [uy] using hval

/-- Exponentiation by a positive exponent coprime to `|F| - 1`, bundled as an
equivalence of the whole field. -/
noncomputable def powerPermutation
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1)) :
    F ≃ F :=
  Equiv.ofBijective (fun x : F => x ^ d)
    (powerMap_bijective d hd_pos hd)

@[simp]
theorem powerPermutation_apply
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1))
    (x : F) :
    powerPermutation d hd_pos hd x = x ^ d :=
  rfl

end PowerPermutations

end GRWTSK.Algebra.FieldTheory.SpecialFields.FiniteFields.FiniteFieldSymmetries.ExplicitFieldPermutationRounds.Variant7b67a64e7cab240c
```
