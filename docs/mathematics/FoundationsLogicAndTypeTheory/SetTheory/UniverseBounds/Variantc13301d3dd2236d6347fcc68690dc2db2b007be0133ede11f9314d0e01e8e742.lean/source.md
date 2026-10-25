# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.UniverseBounds.Variantc13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79f2b5b3934ee51fe12240b7c0f9f3e0075339cf` · SHA-256 `c13301d3dd2236d6347fcc68690dc2db2b007be0133ede11f9314d0e01e8e742`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.SetTheory.Cardinal.Regular

/-!
# Uniform cardinal support bounds

These statements use one explicit cardinal universe. Cardinal smallness is
independent of Lean's universe levels. Regular unions and strong-limit uniform
bounds are separate contracts; no revised-GCH existence claim is assumed.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/

namespace FormalResearch.MathematicalTooling.Coverage

universe u
open Cardinal

/-- A regular cardinal cannot be reached by fewer small blocks than itself. -/
theorem regular_union_obstruction {I X : Type u} (C : I → Set X)
    (μ : Cardinal.{u}) (hμ : μ.IsRegular) (hI : #I < μ)
    (hC : ∀ i, #(C i) < μ) : #(⋃ i, C i) ≠ μ := by
  exact (Cardinal.card_iUnion_lt_iff_forall_of_isRegular hμ hI).mpr hC |>.ne

/-- A common bound controls a dependent sum, including an empty index type. -/
theorem sigma_uniform_bound {I : Type u} (X : I → Type u)
    (ρ : Cardinal.{u}) (hX : ∀ i, #(X i) ≤ ρ) : #(Σ i, X i) ≤ #I * ρ := by
  rw [Cardinal.mk_sigma, ← Cardinal.sum_const']
  exact Cardinal.sum_le_sum _ _ hX

/-- A common bound controls the complete dependent product. -/
theorem pi_uniform_bound {I : Type u} (X : I → Type u)
    (ρ : Cardinal.{u}) (hX : ∀ i, #(X i) ≤ ρ) : #(Π i, X i) ≤ ρ ^ #I := by
  rw [Cardinal.mk_pi, ← Cardinal.prod_const']
  exact Cardinal.prod_le_prod _ _ hX

/-- Strong limits bound powers with both a uniformly small base and exponent. -/
theorem power_lt_strongLimit (μ ρ ι : Cardinal.{u}) (hμ : μ.IsStrongLimit)
    (hρ : ρ < μ) (hι : ι < μ) : ρ ^ ι < μ := by
  calc
    ρ ^ ι ≤ (2 ^ ρ) ^ ι := Cardinal.power_le_power_right (Cardinal.cantor ρ).le
    _ = 2 ^ (ρ * ι) := by rw [power_mul]
    _ < μ := hμ.isStrongPrelimit (Cardinal.mul_lt_of_lt hμ.aleph0_le hρ hι)

/-- Both dependent constructions stay small under a common fiber bound. -/
theorem sigma_pi_lt_strongLimit {I : Type u} (X : I → Type u)
    (μ ι ρ : Cardinal.{u}) (hμ : μ.IsStrongLimit)
    (hI : #I ≤ ι) (hι : ι < μ) (hρ : ρ < μ) (hX : ∀ i, #(X i) ≤ ρ) :
    #(Σ i, X i) < μ ∧ #(Π i, X i) < μ := by
  constructor
  · exact (sigma_uniform_bound X ρ hX).trans_lt
      (Cardinal.mul_lt_of_lt hμ.aleph0_le (hI.trans_lt hι) hρ)
  · exact (pi_uniform_bound X ρ hX).trans_lt
      (power_lt_strongLimit μ ρ #I hμ hρ (hI.trans_lt hι))

/-- Below cofinality, pointwise smallness supplies a common fiber bound. -/
theorem uniform_bound_of_below_cofinality {I : Type u} (X : I → Type u)
    (μ : Cardinal.{u}) (hI : #I < μ.ord.cof) (hX : ∀ i, #(X i) < μ) :
    ∃ ρ < μ, ∀ i, #(X i) ≤ ρ := by
  refine ⟨⨆ i, #(X i), Cardinal.iSup_lt_of_lt_cof_ord hI hX, ?_⟩
  intro i
  exact le_ciSup Cardinal.bddAbove_of_small i

end FormalResearch.MathematicalTooling.Coverage
```
