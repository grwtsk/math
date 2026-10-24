# Complete source: GRWTSK.Combinatorics.WeightedQuartetBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ced2bf6220cb4d9eda65eeff47b49704b27e11c` · SHA-256 `0928abdf98cfcc01f8327dab0a3c3657be39d0ac653f3fd221981a4db802215d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.WeightedSubsetBudget

set_option autoImplicit false

/-!
# Four distinct contributions and fixed-point-free remainder exhaustion

Reuse the existing natural-weight mass and exact subset partition. A quartet
requires SIX distinctness proofs, not four occurrence labels. The separate
exhaustion theorem needs a fixed-point-free involution preserving both sets and
positive weights; it does not require equal paired weights or a parity theorem.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Combinatorics.WeightedQuartetBudget

open GRWTSK.Combinatorics.WeightedPairBudget
open GRWTSK.Combinatorics.WeightedSubsetBudget
open scoped BigOperators

variable {α : Type*} [DecidableEq α]

/-- Four genuinely distinct members contribute all four weights once. -/
theorem four_le_mass (whole : Finset α) (weight : α → ℕ) (a b c d : α)
    (ha : a ∈ whole) (hb : b ∈ whole) (hc : c ∈ whole) (hd : d ∈ whole)
    (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hbc : b ≠ c) (hbd : b ≠ d) (hcd : c ≠ d) :
    weight a + weight b + weight c + weight d ≤ mass whole weight := by
  have subset : ({a, b, c, d} : Finset α) ⊆ whole := by
    intro x hx
    simp only [Finset.mem_insert, Finset.mem_singleton] at hx
    rcases hx with rfl | rfl | rfl | rfl
    · exact ha
    · exact hb
    · exact hc
    · exact hd
  have bound := mass_mono ({a, b, c, d} : Finset α) whole weight subset
  simpa [mass, hab, hac, had, hbc, hbd, hcd, Nat.add_assoc] using bound

/-- The known subset and an outside quartet are disjoint contributions. -/
theorem known_add_four_le_mass (whole known : Finset α) (weight : α → ℕ)
    (subset : known ⊆ whole) (a b c d : α)
    (ha : a ∈ whole) (hb : b ∈ whole) (hc : c ∈ whole) (hd : d ∈ whole)
    (haKnown : a ∉ known) (hbKnown : b ∉ known)
    (hcKnown : c ∉ known) (hdKnown : d ∉ known)
    (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hbc : b ≠ c) (hbd : b ≠ d) (hcd : c ≠ d) :
    mass known weight + weight a + weight b + weight c + weight d ≤
      mass whole weight := by
  have four := four_le_mass (whole \ known) weight a b c d
    (Finset.mem_sdiff.mpr ⟨ha, haKnown⟩) (Finset.mem_sdiff.mpr ⟨hb, hbKnown⟩)
    (Finset.mem_sdiff.mpr ⟨hc, hcKnown⟩) (Finset.mem_sdiff.mpr ⟨hd, hdKnown⟩)
    hab hac had hbc hbd hcd
  have partition := remaining_add_known whole known weight subset
  omega

/-- A nonempty remaining set contains a distinct partner as well. Positivity
then rules out mass below two. Closure of the KNOWN set is indispensable. -/
theorem eq_of_remaining_lt_two_of_involution (whole known : Finset α)
    (weight : α → ℕ) (partner : α → α) (involutive : Function.Involutive partner)
    (subset : known ⊆ whole)
    (wholeStable : ∀ x ∈ whole, partner x ∈ whole)
    (knownStable : ∀ x ∈ known, partner x ∈ known)
    (noFixed : ∀ x ∈ whole, partner x ≠ x)
    (positive : ∀ x ∈ whole, 0 < weight x)
    (small : mass (whole \ known) weight < 2) : known = whole := by
  apply Finset.Subset.antisymm subset
  intro x hx
  by_contra missing
  have partnerMember := wholeStable x hx
  have partnerMissing : partner x ∉ known := by
    intro h
    exact missing (by simpa only [involutive x] using knownStable (partner x) h)
  have bound := pair_le_mass (whole \ known) weight x (partner x)
    (Finset.mem_sdiff.mpr ⟨hx, missing⟩)
    (Finset.mem_sdiff.mpr ⟨partnerMember, partnerMissing⟩) (Ne.symm (noFixed x hx))
  have leftPositive := positive x hx
  have rightPositive := positive (partner x) partnerMember
  omega

/-- The sharp threshold four still permits four distinct points. -/
theorem strict_four_threshold_fixture :
    mass ({0, 1, 2, 3} : Finset ℕ) (fun _ => 1) = 4 ∧
      ¬ mass ({0, 1, 2, 3} : Finset ℕ) (fun _ => 1) < 4 := by norm_num [mass]

/-- Four occurrence labels that collapse to two points are not a quartet. -/
theorem collapsed_occurrences_fixture :
    mass ({0, 1, 0, 1} : Finset ℕ) (fun _ => 1) = 2 := by norm_num [mass]

/-- One omitted conjugate pair can have mass two, below four, without exhaustion. -/
theorem missing_pair_below_four_fixture :
    mass (({0, 1, 2, 3} : Finset ℕ) \ {0, 1}) (fun _ => 1) = 2 ∧
      mass (({0, 1, 2, 3} : Finset ℕ) \ {0, 1}) (fun _ => 1) < 4 ∧
      ({0, 1} : Finset ℕ) ≠ {0, 1, 2, 3} := by norm_num [mass]

/-- Boolean negation is fixed-point-free, but the singleton known set is not closed. -/
theorem unpaired_known_fixture :
    Function.Involutive Bool.not ∧ (∀ b : Bool, Bool.not b ≠ b) ∧
      mass (({false, true} : Finset Bool) \ {false}) (fun _ => 1) = 1 ∧
      Bool.not false ∉ ({false} : Finset Bool) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro b; cases b <;> rfl
  · intro b; cases b <;> decide
  · norm_num [mass]
  · decide

/-- Positive weights cannot be omitted from fixed-point-free exhaustion. -/
theorem zero_weight_pair_fixture :
    mass ({false, true} : Finset Bool) (fun _ => 0) = 0 ∧
      ({false, true} : Finset Bool) ≠ ∅ := by norm_num [mass]

end GRWTSK.Combinatorics.WeightedQuartetBudget
```
