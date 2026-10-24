-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dimension.Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Dimension.Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856","mathematical_subject":"Computation.DataStructures","original_sha256":"86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/SmoothFramedSurgery/EulerCharacteristic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Ring.Parity
import Mathlib.Data.List.Basic
import Mathlib.Tactic

/-!
# Euler-characteristic arithmetic for framed surgery

This module isolates the exact arithmetic used by the finite-CW calculation
for a framed surgery of type `(p, q)`.  It does **not** construct a smooth
manifold, a tubular neighbourhood, or an Euler characteristic.  Instead,
`EulerGluingData` records the two finite-CW additivity identities as explicit
inputs.  From those inputs the module proves the local sign formula, its odd-
and even-dimensional specializations, and additivity for finite families.

The positivity field `q_pos` is essential: the inserted belt sphere has
dimension `q - 1`, so the usual framed-surgery formula presupposes `q > 0`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dimension.Variant86de4f1578c91a616a28fb3a16805be8ab1fe529c037eba29f9bfb0af96c7856

namespace Surface.SmoothFramedSurgery.EulerCharacteristic

/-- Euler characteristic of a sphere of dimension `k`, as an integer. -/
def sphereEuler (k : Nat) : Int :=
  1 + (-1 : Int) ^ k

/-- Dimension data for one framed surgery, including the required `q > 0`. -/
structure Dimension where
  p : Nat
  q : Nat
  q_pos : 0 < q

namespace Dimension

/-- Ambient dimension `n = p + q`. -/
def ambient (d : Dimension) : Nat :=
  d.p + d.q

/-- The local Euler-characteristic change predicted by finite-CW additivity. -/
def eulerChange (d : Dimension) : Int :=
  sphereEuler (d.q - 1) - sphereEuler d.p

/-- Cancellation of the two constant terms leaves the exact sign difference. -/
theorem eulerChange_eq_sign_difference (d : Dimension) :
    d.eulerChange =
      (-1 : Int) ^ (d.q - 1) - (-1 : Int) ^ d.p := by
  simp only [eulerChange, sphereEuler]
  ring

/-- In odd ambient dimension, the two relevant sphere dimensions have equal parity. -/
theorem eulerChange_eq_zero_of_odd_ambient
    (d : Dimension)
    (hodd : Odd d.ambient) :
    d.eulerChange = 0 := by
  rcases d with ⟨p, q, hq⟩
  cases q with
  | zero => omega
  | succ q =>
      have hsumOdd : Odd ((p + q) + 1) := by
        simpa [ambient, Nat.add_assoc] using hodd
      have hsumEven : Even (p + q) :=
        Nat.not_odd_iff_even.mp (Nat.odd_add_one.mp hsumOdd)
      rw [eulerChange_eq_sign_difference]
      simp only [Nat.succ_sub_one]
      rcases Nat.even_or_odd p with hp | hp
      · have hqEven : Even q := (Nat.even_add.mp hsumEven).mp hp
        rw [hqEven.neg_one_pow, hp.neg_one_pow]
        norm_num
      · have hpNotEven : ¬ Even p := Nat.not_even_iff_odd.mpr hp
        have hqNotEven : ¬ Even q := by
          intro hqEven
          exact hpNotEven ((Nat.even_add.mp hsumEven).mpr hqEven)
        have hqOdd : Odd q := Nat.not_even_iff_odd.mp hqNotEven
        rw [hqOdd.neg_one_pow, hp.neg_one_pow]
        norm_num

/-- In even ambient dimension, the local change is `2 * (-1)^(p+1)`. -/
theorem eulerChange_eq_two_mul_sign_of_even_ambient
    (d : Dimension)
    (heven : Even d.ambient) :
    d.eulerChange = 2 * (-1 : Int) ^ (d.p + 1) := by
  rcases d with ⟨p, q, hq⟩
  cases q with
  | zero => omega
  | succ q =>
      have hsumEven : Even ((p + q) + 1) := by
        simpa [ambient, Nat.add_assoc] using heven
      have hsumOdd : Odd (p + q) :=
        Nat.not_even_iff_odd.mp (Nat.even_add_one.mp hsumEven)
      have hopposite : Odd p ↔ Even q := Nat.odd_add.mp hsumOdd
      rw [eulerChange_eq_sign_difference]
      simp only [Nat.succ_sub_one]
      rcases Nat.even_or_odd p with hp | hp
      · have hpNotOdd : ¬ Odd p := Nat.not_odd_iff_even.mpr hp
        have hqNotEven : ¬ Even q := by
          intro hqEven
          exact hpNotOdd (hopposite.mpr hqEven)
        have hqOdd : Odd q := Nat.not_even_iff_odd.mp hqNotEven
        rw [hqOdd.neg_one_pow, hp.neg_one_pow, pow_succ, hp.neg_one_pow]
        norm_num
      · have hqEven : Even q := hopposite.mp hp
        rw [hqEven.neg_one_pow, hp.neg_one_pow, pow_succ, hp.neg_one_pow]
        norm_num

/-- Dimension-explicit odd case, convenient when `n = p + q` is supplied separately. -/
theorem eulerChange_eq_zero_of_odd_dimension
    (d : Dimension)
    {n : Nat}
    (hdim : d.ambient = n)
    (hodd : Odd n) :
    d.eulerChange = 0 :=
  d.eulerChange_eq_zero_of_odd_ambient (hdim ▸ hodd)

/-- Dimension-explicit even case, convenient when `n = p + q` is supplied separately. -/
theorem eulerChange_eq_two_mul_sign_of_even_dimension
    (d : Dimension)
    {n : Nat}
    (hdim : d.ambient = n)
    (heven : Even n) :
    d.eulerChange = 2 * (-1 : Int) ^ (d.p + 1) :=
  d.eulerChange_eq_two_mul_sign_of_even_ambient (hdim ▸ heven)

end Dimension

/--
The arithmetic content of the two finite-CW gluing decompositions
`M = E ∪_A N` and `Mᵢ = E ∪_A B`.

The record deliberately requires the additivity equations.  Supplying it is
the boundary between the geometric/topological development and this arithmetic
module.
-/
structure EulerGluingData (d : Dimension) where
  original : Int
  surgered : Int
  exterior : Int
  seam : Int
  original_additivity :
    original = exterior + sphereEuler d.p - seam
  surgered_additivity :
    surgered = exterior + sphereEuler (d.q - 1) - seam

namespace EulerGluingData

/-- Subtracting the two gluing identities gives the local Euler change. -/
theorem difference_eq_eulerChange
    {d : Dimension}
    (data : EulerGluingData d) :
    data.surgered - data.original = d.eulerChange := by
  rw [data.surgered_additivity, data.original_additivity]
  simp only [Dimension.eulerChange]
  ring

/-- A framed surgery in odd ambient dimension preserves Euler characteristic. -/
theorem surgered_eq_original_of_odd_ambient
    {d : Dimension}
    (data : EulerGluingData d)
    (hodd : Odd d.ambient) :
    data.surgered = data.original := by
  have hchange : data.surgered - data.original = 0 := by
    rw [data.difference_eq_eulerChange,
      d.eulerChange_eq_zero_of_odd_ambient hodd]
  omega

/-- The exact even-dimensional change, conditional only on the gluing identities. -/
theorem difference_eq_two_mul_sign_of_even_ambient
    {d : Dimension}
    (data : EulerGluingData d)
    (heven : Even d.ambient) :
    data.surgered - data.original =
      2 * (-1 : Int) ^ (d.p + 1) := by
  rw [data.difference_eq_eulerChange,
    d.eulerChange_eq_two_mul_sign_of_even_ambient heven]

end EulerGluingData

/-- Total Euler change of a finite, ordered family of pairwise-disjoint surgeries. -/
def familyEulerChange (surgeries : List Dimension) : Int :=
  (surgeries.map Dimension.eulerChange).sum

@[simp]
theorem familyEulerChange_nil :
    familyEulerChange [] = 0 :=
  rfl

@[simp]
theorem familyEulerChange_cons
    (d : Dimension)
    (surgeries : List Dimension) :
    familyEulerChange (d :: surgeries) =
      d.eulerChange + familyEulerChange surgeries :=
  rfl

/-- Concatenating two finite families adds their Euler changes. -/
@[simp]
theorem familyEulerChange_append
    (left right : List Dimension) :
    familyEulerChange (left ++ right) =
      familyEulerChange left + familyEulerChange right := by
  simp [familyEulerChange]

/-- The finite-family formula is the sum of the local sign differences. -/
theorem familyEulerChange_eq_sum_sign_differences
    (surgeries : List Dimension) :
    familyEulerChange surgeries =
      (surgeries.map fun d =>
        (-1 : Int) ^ (d.q - 1) - (-1 : Int) ^ d.p).sum := by
  induction surgeries with
  | nil => rfl
  | cons d surgeries ih =>
      change d.eulerChange + familyEulerChange surgeries =
        ((-1 : Int) ^ (d.q - 1) - (-1 : Int) ^ d.p) +
          (surgeries.map fun e =>
            (-1 : Int) ^ (e.q - 1) - (-1 : Int) ^ e.p).sum
      rw [d.eulerChange_eq_sign_difference, ih]

/-- A finite family of odd-dimensional surgeries has total Euler change zero. -/
theorem familyEulerChange_eq_zero_of_all_odd
    (surgeries : List Dimension)
    (hodd : ∀ d ∈ surgeries, Odd d.ambient) :
    familyEulerChange surgeries = 0 := by
  induction surgeries with
  | nil => rfl
  | cons d surgeries ih =>
      have hd : Odd d.ambient := hodd d (by simp)
      have htail : ∀ e ∈ surgeries, Odd e.ambient := by
        intro e he
        exact hodd e (by simp [he])
      rw [familyEulerChange_cons,
        d.eulerChange_eq_zero_of_odd_ambient hd,
        ih htail]
      norm_num

/-- For an all-even family, additivity preserves the exact local sign formula. -/
theorem familyEulerChange_eq_sum_even_signs
    (surgeries : List Dimension)
    (heven : ∀ d ∈ surgeries, Even d.ambient) :
    familyEulerChange surgeries =
      (surgeries.map fun d => 2 * (-1 : Int) ^ (d.p + 1)).sum := by
  induction surgeries with
  | nil => rfl
  | cons d surgeries ih =>
      have hd : Even d.ambient := heven d (by simp)
      have htail : ∀ e ∈ surgeries, Even e.ambient := by
        intro e he
        exact heven e (by simp [he])
      change d.eulerChange + familyEulerChange surgeries =
        2 * (-1 : Int) ^ (d.p + 1) +
          (surgeries.map fun e => 2 * (-1 : Int) ^ (e.p + 1)).sum
      rw [d.eulerChange_eq_two_mul_sign_of_even_ambient hd, ih htail]

end Surface.SmoothFramedSurgery.EulerCharacteristic
