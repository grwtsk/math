# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.FiniteBinaryCarrierMathematics.Variante70264a1b259cd1a.OddEvenCardinalityAndMatrixCounts

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86ff9af2ed87f2a3601cad0d133b677518a01fb6` · SHA-256 `39147d5303e4a945c573c639498765a5d3b12a489bfa96656deee771c8ba804c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OddEvenCardinalityAndMatrixCounts — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: e70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29
Organized SHA-256: 3c52709fd14315d0fe4dbcd003c982e38cc1c1c557d27dcc9d7913a42dc4463e
PMD: 510.7.010 enumerative combinatorics (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- All six complete private odd/even equivalence/count/parity objects stay with their consumers, followed by exact ones and zeros cardinality formulas. No imported checkerboard provider is replaced by new459 components. Original declaration namespaces and historical imports are retained literally. No geometric, probabilistic, analytic, operational or kernel acceptance is inferred from historical labels. Tactics are preserved text and remain unexecuted. -/

import Folder.Bitspace.Checkerboard

/-!
# Folder.Bitspace.Density

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: bitspace.density
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/


namespace Folder
namespace Bitspace

open Carrier
open Finset
open scoped Count

private theorem count_odd_eq_div_two (N : Nat) :
    Nat.count (fun k => Odd k) N = N / 2 := by
  induction N with
  | zero => simp
  | succ N ih =>
      rw [Nat.count_succ, ih]
      by_cases hodd : Odd N
      · simp [hodd]
        rcases hodd with ⟨k, hk⟩
        omega
      · simp [hodd]
        have heven : Even N := Nat.not_odd_iff_even.mp hodd
        rcases heven with ⟨k, hk⟩
        omega

private def finOddEquiv (n : Nat) :
    {i : Fin n // Odd i.val} ≃ {k : Nat // k < n ∧ Odd k} where
  toFun i := ⟨i.1.val, i.1.isLt, i.2⟩
  invFun k := ⟨⟨k.1, k.2.1⟩, k.2.2⟩
  left_inv i := by
    cases i
    rfl
  right_inv k := by
    cases k
    rfl

private theorem card_fin_odd (n : Nat) :
    ((Finset.univ : Finset (Fin n)).filter (fun i => Odd i.val)).card = n / 2 := by
  classical
  calc
    ((Finset.univ : Finset (Fin n)).filter (fun i => Odd i.val)).card
        = Fintype.card {i : Fin n // Odd i.val} := by
          rw [Fintype.card_of_subtype]
          simp
    _ = Fintype.card {k : Nat // k < n ∧ Odd k} := by
          exact Fintype.card_congr (finOddEquiv n)
    _ = Nat.count (fun k => Odd k) n := by
          exact (Nat.count_eq_card_fintype (fun k => Odd k) n).symm
    _ = n / 2 := count_odd_eq_div_two n

private theorem card_fin_even (n : Nat) :
    ((Finset.univ : Finset (Fin n)).filter (fun i => ¬ Odd i.val)).card = n - n / 2 := by
  classical
  have htotal :
      ((Finset.univ : Finset (Fin n)).filter (fun i => Odd i.val)).card +
        ((Finset.univ : Finset (Fin n)).filter (fun i => ¬ Odd i.val)).card = n := by
    simpa using Finset.card_filter_add_card_filter_not
      (s := (Finset.univ : Finset (Fin n))) (p := fun i => Odd i.val)
  have hodd := card_fin_odd n
  omega

private theorem checkerboard_count_arithmetic (m n : Nat) :
    (m / 2) * (n - n / 2) + (m - m / 2) * (n / 2) = m * n / 2 := by
  have hee (a b : Nat) :
      a * b + a * b = (2 * a * (2 * b)) / 2 := by
    rw [show 2 * a * (2 * b) = 2 * (2 * a * b) by ring]
    rw [Nat.mul_div_right _ (by decide : 0 < 2)]
    ring
  have heo (a b : Nat) :
      a * (b + 1) + a * b = (2 * a * (2 * b + 1)) / 2 := by
    rw [show 2 * a * (2 * b + 1) = 2 * (a * (2 * b + 1)) by ring]
    rw [Nat.mul_div_right _ (by decide : 0 < 2)]
    ring
  have hoe (a b : Nat) :
      a * b + (a + 1) * b = ((2 * a + 1) * (2 * b)) / 2 := by
    rw [show (2 * a + 1) * (2 * b) = 2 * ((2 * a + 1) * b) by ring]
    rw [Nat.mul_div_right _ (by decide : 0 < 2)]
    ring
  have hoo (a b : Nat) :
      a * (b + 1) + (a + 1) * b =
        ((2 * a + 1) * (2 * b + 1)) / 2 := by
    have h :
        ((2 * a + 1) * (2 * b + 1)) / 2 =
          2 * a * b + a + b := by
      rw [show (2 * a + 1) * (2 * b + 1) =
        2 * (2 * a * b + a + b) + 1 by ring]
      rw [show (2 * (2 * a * b + a + b) + 1) / 2 =
        2 * a * b + a + b by omega]
    rw [h]
    ring
  have hm : m = 2 * (m / 2) + m % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod m 2).symm
  have hn : n = 2 * (n / 2) + n % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod n 2).symm
  rcases Nat.mod_two_eq_zero_or_one m with hm0 | hm1 <;>
  rcases Nat.mod_two_eq_zero_or_one n with hn0 | hn1
  · have hm_eq : m = 2 * (m / 2) := by omega
    have hn_eq : n = 2 * (n / 2) := by omega
    rw [hm_eq, hn_eq]
    rw [show 2 * (m / 2) / 2 = m / 2 by omega]
    rw [show 2 * (n / 2) / 2 = n / 2 by omega]
    rw [show 2 * (n / 2) - n / 2 = n / 2 by omega]
    rw [show 2 * (m / 2) - m / 2 = m / 2 by omega]
    exact hee (m / 2) (n / 2)
  · have hm_eq : m = 2 * (m / 2) := by omega
    have hn_eq : n = 2 * (n / 2) + 1 := by omega
    rw [hm_eq, hn_eq]
    rw [show 2 * (m / 2) / 2 = m / 2 by omega]
    rw [show (2 * (n / 2) + 1) / 2 = n / 2 by omega]
    rw [show 2 * (n / 2) + 1 - n / 2 = n / 2 + 1 by omega]
    rw [show 2 * (m / 2) - m / 2 = m / 2 by omega]
    exact heo (m / 2) (n / 2)
  · have hm_eq : m = 2 * (m / 2) + 1 := by omega
    have hn_eq : n = 2 * (n / 2) := by omega
    rw [hm_eq, hn_eq]
    rw [show (2 * (m / 2) + 1) / 2 = m / 2 by omega]
    rw [show 2 * (n / 2) / 2 = n / 2 by omega]
    rw [show 2 * (n / 2) - n / 2 = n / 2 by omega]
    rw [show 2 * (m / 2) + 1 - m / 2 = m / 2 + 1 by omega]
    exact hoe (m / 2) (n / 2)
  · have hm_eq : m = 2 * (m / 2) + 1 := by omega
    have hn_eq : n = 2 * (n / 2) + 1 := by omega
    rw [hm_eq, hn_eq]
    rw [show (2 * (m / 2) + 1) / 2 = m / 2 by omega]
    rw [show (2 * (n / 2) + 1) / 2 = n / 2 by omega]
    rw [show 2 * (n / 2) + 1 - n / 2 = n / 2 + 1 by omega]
    rw [show 2 * (m / 2) + 1 - m / 2 = m / 2 + 1 by omega]
    exact hoo (m / 2) (n / 2)

private theorem checkerboard_one_iff (i : Fin m) (j : Fin n) :
    (checkerboard m n).get i j = 1 ↔ (Odd i.val) = (¬ Odd j.val) := by
  change (((i.val + j.val : Nat) : Bit) = 1 ↔ (Odd i.val) = (¬ Odd j.val))
  rw [show (((i.val + j.val : Nat) : Bit) = 1 ↔ Odd (i.val + j.val)) by
    exact ZMod.natCast_eq_one_iff_odd]
  simp [parity_simps]

theorem checkerboard_countOnes_eq (m n : Nat) :
    BinaryMatrix.countOnes (checkerboard m n) =
      BinaryMatrix.cellCount (checkerboard m n) / 2 := by
  classical
  unfold BinaryMatrix.countOnes BinaryMatrix.actualCount
  change ((Finset.univ : Finset (Fin m × Fin n)).filter
      (fun c => (checkerboard m n).get c.1 c.2 = 1)).card = m * n / 2
  have hfilter :
      ((Finset.univ : Finset (Fin m × Fin n)).filter
        (fun c => (checkerboard m n).get c.1 c.2 = 1)) =
      ((Finset.univ : Finset (Fin m × Fin n)).filter
        (fun c => (Odd c.1.val) = (¬ Odd c.2.val))) := by
    apply Finset.filter_congr
    intro c hc
    exact checkerboard_one_iff c.1 c.2
  rw [hfilter]
  rw [← Finset.univ_product_univ]
  rw [Finset.filter_product_card
    (s := (Finset.univ : Finset (Fin m)))
    (t := (Finset.univ : Finset (Fin n)))
    (p := fun i : Fin m => Odd i.val)
    (q := fun j : Fin n => ¬ Odd j.val)]
  rw [card_fin_odd, card_fin_even, card_fin_even]
  simp only [not_not]
  rw [card_fin_odd]
  exact checkerboard_count_arithmetic m n

theorem checkerboard_countZeros_eq (m n : Nat) :
    BinaryMatrix.countZeros (checkerboard m n) =
      BinaryMatrix.cellCount (checkerboard m n) -
        BinaryMatrix.cellCount (checkerboard m n) / 2 := by
  have htotal := BinaryMatrix.countOnes_add_countZeros (checkerboard m n)
  have hones := checkerboard_countOnes_eq m n
  omega

end Bitspace
end Folder
```
