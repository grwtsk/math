# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Round.Variant2e03444285c5b244906ae8d0dd57e2e64bb1c15e3a90cd5e25ea9629ed91dd4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99d3a3c3d6465e76e3a4dc141f0e26e14183b92f` · SHA-256 `4fe1495669111f882d66e1e81292afb71271db812869cf1d50b48638bbbc1f09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FieldRound.Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FieldRound.Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/FiniteField/Round.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FieldRound.Variant7b67a64e7cab240c073d99dc99ceb3c5a2845f1dbd1c0ddb388bbf1d17b59d42

namespace BitMatrix.FiniteField.Round

open BitMatrix.Reduction.SAT
open scoped BigOperators

universe u

/-! ## A partial finite-field expression -/

section Digamma

variable {F : Type u} [Field F] [CharP F 2]

/-- The denominator obtained by multiplying the linear factors selected by
`roots`. -/
def digammaDenominator (roots : Finset F) (x : F) : F :=
  ∏ a ∈ roots, (x + a)

/-- The proposed finite expression, kept partial at its poles. -/
noncomputable def finiteDigamma? (roots : Finset F) (x : F) : Option F := by
  classical
  exact if h : digammaDenominator roots x = 0 then
    none
  else
    some (x / digammaDenominator roots x)

/-- Every selected root is a pole.  Characteristic two is used precisely in
the equation `a + a = 0`. -/
theorem digammaDenominator_eq_zero_of_mem
    (roots : Finset F) {a : F} (ha : a ∈ roots) :
    digammaDenominator roots a = 0 := by
  apply Finset.prod_eq_zero ha
  exact CharTwo.add_self_eq_zero a

/-- The partial expression returns `none` at every selected root. -/
theorem finiteDigamma_none_of_mem
    (roots : Finset F) {a : F} (ha : a ∈ roots) :
    finiteDigamma? roots a = none := by
  rw [finiteDigamma?]
  split
  · rfl
  · rename_i h
    exact (h (digammaDenominator_eq_zero_of_mem roots ha)).elim

variable [Fintype F]

/-- All nonzero field elements, viewed as the proposed root set. -/
noncomputable def allNonzeroRoots : Finset F := by
  classical
  exact Finset.univ.erase 0

/-- Multiplying over all nonzero field elements makes the expression undefined
at every nonzero input. -/
theorem finiteDigamma_allNonzero_none {x : F} (hx : x ≠ 0) :
    finiteDigamma? (allNonzeroRoots (F := F)) x = none := by
  apply finiteDigamma_none_of_mem
  classical
  simp [allNonzeroRoots, hx]

end Digamma

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

section Inversion

variable {F : Type u} [Field F]

/-- Field inversion, extended by the standard convention `0⁻¹ = 0`, is an
involutive permutation of the whole field. -/
noncomputable def inversionPermutation : F ≃ F where
  toFun x := x⁻¹
  invFun x := x⁻¹
  left_inv x := inv_inv x
  right_inv x := inv_inv x

@[simp]
theorem inversionPermutation_apply (x : F) :
    inversionPermutation x = x⁻¹ :=
  rfl

@[simp]
theorem inversionPermutation_zero :
    (inversionPermutation (F := F)) 0 = 0 := by
  simp

@[simp]
theorem inversionPermutation_involutive (x : F) :
    inversionPermutation (inversionPermutation x) = x := by
  simp [inversionPermutation]

end Inversion

/-! ## Structurally bijective finite-field rounds -/

/-- A substitution--linear round over a finite field.  Both nonlinear and
linear stages are explicitly bundled equivalences. -/
structure FieldRound (F : Type u) [Field F] [Fintype F] where
  a : F
  b : F
  substitution : F ≃ F
  linear : F ≃+ F

namespace FieldRound

variable {F : Type u} [Field F] [Fintype F]

/-- The round equivalence `x ↦ L(S(x + a)) + b`. -/
def toEquiv (R : FieldRound F) : F ≃ F :=
  (((Equiv.addRight R.a).trans R.substitution).trans R.linear.toEquiv).trans
    (Equiv.addRight R.b)

/-- Execute a finite-field round. -/
def run (R : FieldRound F) (x : F) : F :=
  R.toEquiv x

@[simp]
theorem run_apply (R : FieldRound F) (x : F) :
    R.run x = R.linear (R.substitution (x + R.a)) + R.b :=
  rfl

/-- A round is bijective because it is a composition of equivalences.  No
avalanche property is inferred. -/
theorem run_bijective (R : FieldRound F) :
    Function.Bijective R.run :=
  R.toEquiv.bijective

/-- The inverse function of the bundled round equivalence. -/
def inverse (R : FieldRound F) : F → F :=
  R.toEquiv.symm

/-- The exact inverse formula
`S⁻¹(L⁻¹(y - b)) - a`. -/
@[simp]
theorem inverse_apply (R : FieldRound F) (y : F) :
    R.inverse y =
      R.substitution.symm (R.linear.symm (y - R.b)) - R.a := by
  rw [inverse, toEquiv,
    Equiv.symm_trans_apply, Equiv.symm_trans_apply, Equiv.symm_trans_apply]
  simp only [Equiv.addRight_symm_apply]
  simp [sub_eq_add_neg]

@[simp]
theorem inverse_run (R : FieldRound F) (x : F) :
    R.inverse (R.run x) = x :=
  R.toEquiv.symm_apply_apply x

@[simp]
theorem run_inverse (R : FieldRound F) (x : F) :
    R.run (R.inverse x) = x :=
  R.toEquiv.apply_symm_apply x

/-- Construct a round whose substitution is a valid finite-field power
permutation. -/
noncomputable def ofPower
    (a b : F)
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1))
    (L : F ≃+ F) :
    FieldRound F where
  a := a
  b := b
  substitution := powerPermutation d hd_pos hd
  linear := L

/-- A power-substitution round is bijective.  This theorem deliberately has no
diffusion or avalanche conclusion. -/
theorem ofPower_bijective
    (a b : F)
    (d : Nat)
    (hd_pos : 0 < d)
    (hd : Nat.Coprime d (Fintype.card F - 1))
    (L : F ≃+ F) :
    Function.Bijective (FieldRound.ofPower a b d hd_pos hd L).run :=
  FieldRound.run_bijective _

end FieldRound

/-! ## Representation-dependent transport to bits -/

/-- Transport a field permutation through an explicitly supplied bit
representation.  There is no canonical bit ordering for a generic field. -/
def transportToBits
    {F : Type u} {n : Nat}
    (code : F ≃ Bits n)
    (R : F ≃ F) :
    Bits n ≃ Bits n :=
  (code.symm.trans R).trans code

/-- Transport preserves bijectivity structurally. -/
theorem transportToBits_bijective
    {F : Type u} {n : Nat}
    (code : F ≃ Bits n)
    (R : F ≃ F) :
    Function.Bijective (transportToBits code R) :=
  (transportToBits code R).bijective

end BitMatrix.FiniteField.Round
```
