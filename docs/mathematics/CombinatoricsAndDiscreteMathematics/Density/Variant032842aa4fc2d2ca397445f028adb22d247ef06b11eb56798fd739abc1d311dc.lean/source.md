# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Density.Variant032842aa4fc2d2ca397445f028adb22d247ef06b11eb56798fd739abc1d311dc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `596a750b4a1f7f26614e38d22bd920d3a2694ce7` · SHA-256 `7c89dd656829498b06dbd9de41f69ab1878599a7f516ae48e18f86f0680e4092`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Imbalance.Variante70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Imbalance.Variante70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Bitspace/Density.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Imbalance.Variante70264a1b259cd1aa5b47b4d0bcc9d816a9def05bbb5cf5aa4b682680df67e29

namespace Folder
namespace Bitspace

open Carrier
open Finset
open scoped Count

noncomputable def imbalance (M : BinaryMatrix) : Int :=
  (BinaryMatrix.countOnes M : Int) - (BinaryMatrix.countZeros M : Int)

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

theorem checkerboard_count_imbalance_abs_le_one
    (m n : Nat) :
    Int.natAbs (imbalance (checkerboard m n)) ≤ 1 := by
  let N := BinaryMatrix.cellCount (checkerboard m n)
  have hones : BinaryMatrix.countOnes (checkerboard m n) = N / 2 := by
    simpa [N] using checkerboard_countOnes_eq m n
  have hzeros : BinaryMatrix.countZeros (checkerboard m n) = N - N / 2 := by
    simpa [N] using checkerboard_countZeros_eq m n
  have hN : N = 2 * (N / 2) + N % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod N 2).symm
  have hmod : N % 2 = 0 ∨ N % 2 = 1 := Nat.mod_two_eq_zero_or_one N
  rcases hmod with hmod | hmod
  · have hhalf : N - N / 2 = N / 2 := by omega
    simp [imbalance, hones, hzeros, hhalf]
  · have hhalf : (N : Int) - (N / 2 : Int) = (N / 2 : Int) + 1 := by
      have : N = 2 * (N / 2) + 1 := by omega
      omega
    have himb : imbalance (checkerboard m n) = -1 := by
      simp [imbalance, hones, hzeros]
      omega
    simp [himb]

theorem checkerboard_average_half_bound
    (m n : Nat)
    (_h : 0 < m * n) :
    2 * BinaryMatrix.countOnes (checkerboard m n) =
        BinaryMatrix.cellCount (checkerboard m n) ∨
      2 * BinaryMatrix.countOnes (checkerboard m n) + 1 =
        BinaryMatrix.cellCount (checkerboard m n) ∨
      2 * BinaryMatrix.countOnes (checkerboard m n) =
        BinaryMatrix.cellCount (checkerboard m n) + 1 := by
  let N := BinaryMatrix.cellCount (checkerboard m n)
  have hones : BinaryMatrix.countOnes (checkerboard m n) = N / 2 := by
    simpa [N] using checkerboard_countOnes_eq m n
  have hN : N = 2 * (N / 2) + N % 2 := by
    simpa [Nat.mul_comm, Nat.add_comm] using (Nat.div_add_mod N 2).symm
  rcases Nat.mod_two_eq_zero_or_one N with hmod | hmod
  · left
    omega
  · right
    left
    omega

end Bitspace
end Folder
```
