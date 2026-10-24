# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaCumulativeMatching.Variantae6718477a43985e4cb5b5094fd77b58d83bbf6e0accc2d357588f2bf0ebaaf2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe7164de578c9a04732eb653e8f594d040144dbd` · SHA-256 `1ff632ab761abcb690de8dc7d7726ec9541f454e39792c54f0f9bad9d24b5411`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Overlap.Variant96a14062cb72e7cb052ef05f16c23b43f5d9d89369f49283ca05637af058c25d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96a14062cb72e7cb052ef05f16c23b43f5d9d89369f49283ca05637af058c25d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Overlap.Variant96a14062cb72e7cb052ef05f16c23b43f5d9d89369f49283ca05637af058c25d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"96a14062cb72e7cb052ef05f16c23b43f5d9d89369f49283ca05637af058c25d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceKapitzaCumulativeMatching.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-!
# Complete interval matching for the physical K-C6 strips

CSE-RH16-20261007. Research direction: grwtsk contributors.
The interval allocation and exact unused-supply interpretation were preserved
at the K-C7 owner paper checkpoint. OpenAI Codex supplied this native proof.
No arithmetic sign or source row is selected freely. The full middle and
unused top supply remain in the exact signed reconstruction.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Overlap.Variant96a14062cb72e7cb052ef05f16c23b43f5d9d89369f49283ca05637af058c25d

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceKapitzaCumulativeMatching
open scoped BigOperators

/-- Length of the intersection of two ordered cumulative intervals. -/
def overlap (a b c d : ℝ) : ℝ := max 0 (min b d - max a c)

/-- Cumulative filling of one interval, including zero-length intervals. -/
def ramp (a b x : ℝ) : ℝ := max 0 (min b x - a)

/-- Exact symbolic matching; no division or enumeration of the inventory. -/
def allocation (demand supply : ℕ → ℝ) (i j : ℕ) : ℝ :=
  overlap (demand i) (demand (i + 1)) (supply j) (supply (j + 1))

theorem overlap_nonneg (a b c d : ℝ) : 0 ≤ overlap a b c d := le_max_left _ _

theorem overlap_symm (a b c d : ℝ) : overlap a b c d = overlap c d a b := by
  simp only [overlap, min_comm b d, max_comm a c]

/-- The exact overlap is the difference of two cumulative fills. -/
theorem overlap_eq_ramp_sub (a b c d : ℝ) (hab : a ≤ b) (hcd : c ≤ d) :
    overlap a b c d = ramp a b d - ramp a b c := by
  unfold overlap ramp
  simp only [min_def, max_def]
  split_ifs <;> linarith

@[simp] theorem ramp_zero (a b : ℝ) (ha : 0 ≤ a) : ramp a b 0 = 0 := by
  unfold ramp
  have h : min b 0 - a ≤ 0 := by linarith [min_le_right b 0]
  exact max_eq_left h

theorem ramp_full (a b x : ℝ) (hab : a ≤ b) (hbx : b ≤ x) :
    ramp a b x = b - a := by
  rw [ramp, min_eq_left hbx, max_eq_right (sub_nonneg.mpr hab)]

theorem ramp_le_length (a b x : ℝ) (hab : a ≤ b) : ramp a b x ≤ b - a := by
  exact max_le (sub_nonneg.mpr hab)
    (sub_le_sub_right (min_le_left b x) a)

/-- Finite telescoping retains its terminal and initial terms. -/
theorem sum_successive_difference (f : ℕ → ℝ) (n : ℕ) :
    (∑ i ∈ Finset.range n, (f (i + 1) - f i)) = f n - f 0 := by
  induction n with
  | zero => simp
  | succ n ih => rw [Finset.sum_range_succ, ih]; ring

/-- Each row is filled exactly when the complete supply covers all demands. -/
theorem allocation_row_sum (demand supply : ℕ → ℝ) (n m i : ℕ)
    (hd : Monotone demand) (hs : Monotone supply)
    (hd0 : demand 0 = 0) (hs0 : supply 0 = 0)
    (htotal : demand n ≤ supply m) (hi : i < n) :
    (∑ j ∈ Finset.range m, allocation demand supply i j) =
      demand (i + 1) - demand i := by
  have ha : 0 ≤ demand i := by simpa only [hd0] using hd (Nat.zero_le i)
  have hab : demand i ≤ demand (i + 1) := hd (Nat.le_succ i)
  have hb : demand (i + 1) ≤ supply m := (hd (by omega)).trans htotal
  calc
    _ = ∑ j ∈ Finset.range m,
        (ramp (demand i) (demand (i + 1)) (supply (j + 1)) -
          ramp (demand i) (demand (i + 1)) (supply j)) := by
      apply Finset.sum_congr rfl
      intro j _
      exact overlap_eq_ramp_sub _ _ _ _ hab (hs (Nat.le_succ j))
    _ = ramp (demand i) (demand (i + 1)) (supply m) -
        ramp (demand i) (demand (i + 1)) (supply 0) :=
      sum_successive_difference (fun j =>
        ramp (demand i) (demand (i + 1)) (supply j)) m
    _ = _ := by rw [hs0, ramp_zero _ _ ha, ramp_full _ _ _ hab hb, sub_zero]

/-- The exact column fill retains truncation at the total demand. -/
theorem allocation_column_sum (demand supply : ℕ → ℝ) (n j : ℕ)
    (hd : Monotone demand) (hs : Monotone supply)
    (hd0 : demand 0 = 0) (hs0 : supply 0 = 0) :
    (∑ i ∈ Finset.range n, allocation demand supply i j) =
      ramp (supply j) (supply (j + 1)) (demand n) := by
  have ha : 0 ≤ supply j := by simpa only [hs0] using hs (Nat.zero_le j)
  calc
    _ = ∑ i ∈ Finset.range n,
        (ramp (supply j) (supply (j + 1)) (demand (i + 1)) -
          ramp (supply j) (supply (j + 1)) (demand i)) := by
      apply Finset.sum_congr rfl
      intro i _
      rw [allocation, overlap_symm]
      exact overlap_eq_ramp_sub _ _ _ _ (hs (Nat.le_succ j)) (hd (Nat.le_succ i))
    _ = _ := by
      rw [sum_successive_difference (fun i =>
        ramp (supply j) (supply (j + 1)) (demand i)) n,
        hd0, ramp_zero _ _ ha, sub_zero]

theorem allocation_column_le (demand supply : ℕ → ℝ) (n j : ℕ)
    (hd : Monotone demand) (hs : Monotone supply)
    (hd0 : demand 0 = 0) (hs0 : supply 0 = 0) :
    (∑ i ∈ Finset.range n, allocation demand supply i j) ≤
      supply (j + 1) - supply j := by
  rw [allocation_column_sum demand supply n j hd hs hd0 hs0]
  exact ramp_le_length _ _ _ (hs (Nat.le_succ j))

/-- Every unused column remains available to the complete middle-row consumer. -/
def unusedSupply (demand supply : ℕ → ℝ) (n j : ℕ) : ℝ :=
  supply (j + 1) - supply j - ∑ i ∈ Finset.range n, allocation demand supply i j

theorem unusedSupply_nonneg (demand supply : ℕ → ℝ) (n j : ℕ)
    (hd : Monotone demand) (hs : Monotone supply)
    (hd0 : demand 0 = 0) (hs0 : supply 0 = 0) :
    0 ≤ unusedSupply demand supply n j :=
  sub_nonneg.mpr (allocation_column_le demand supply n j hd hs hd0 hs0)

/-- The actual surviving supply starts exactly at the cumulative demand threshold. -/
theorem length_sub_ramp (a b t : ℝ) (hab : a ≤ b) :
    b - a - ramp a b t = max 0 (b - t) - max 0 (a - t) := by
  unfold ramp
  simp only [min_def, max_def]
  split_ifs <;> linarith

theorem unusedSupply_eq_surplus (demand supply : ℕ → ℝ) (n j : ℕ)
    (hd : Monotone demand) (hs : Monotone supply)
    (hd0 : demand 0 = 0) (hs0 : supply 0 = 0) :
    unusedSupply demand supply n j =
      max 0 (supply (j + 1) - demand n) - max 0 (supply j - demand n) := by
  rw [unusedSupply, allocation_column_sum demand supply n j hd hs hd0 hs0]
  exact length_sub_ramp _ _ _ (hs (Nat.le_succ j))

/-- The full unused supply equals the exact packet, without replacing it by a bound. -/
theorem unusedSupply_total (demand supply : ℕ → ℝ) (n m : ℕ)
    (hd : Monotone demand) (hs : Monotone supply)
    (hd0 : demand 0 = 0) (hs0 : supply 0 = 0)
    (htotal : demand n ≤ supply m) :
    (∑ j ∈ Finset.range m, unusedSupply demand supply n j) =
      supply m - demand n := by
  unfold unusedSupply
  rw [Finset.sum_sub_distrib, sum_successive_difference, Finset.sum_comm]
  have hr : (∑ i ∈ Finset.range n, ∑ j ∈ Finset.range m,
      allocation demand supply i j) = demand n := by
    calc
      _ = ∑ i ∈ Finset.range n, (demand (i + 1) - demand i) := by
        apply Finset.sum_congr rfl
        intro i hi
        exact allocation_row_sum demand supply n m i hd hs hd0 hs0 htotal
          (Finset.mem_range.mp hi)
      _ = _ := by rw [sum_successive_difference, hd0, sub_zero]
  rw [hr, hs0, sub_zero]

/-- Exact residual reconstruction: the head payment and all leftover supply occur once. -/
theorem residual_eq_middle_add_unused (head middle top : ℝ)
    (demand supply : ℕ → ℝ) (n m : ℕ)
    (hd : Monotone demand) (hs : Monotone supply)
    (hd0 : demand 0 = 0) (hs0 : supply 0 = 0)
    (hhead : head = -demand n) (htop : top = supply m)
    (htotal : demand n ≤ supply m) :
    head + middle + top = middle +
      ∑ j ∈ Finset.range m, unusedSupply demand supply n j := by
  rw [unusedSupply_total demand supply n m hd hs hd0 hs0 htotal, hhead, htop]
  ring

/-- Literal three-strip partition of the original closed outer inventory. -/
theorem three_strip_identity (rows : ℕ → ℝ) (D B U : ℕ)
    (hD : 2 ≤ D) (hDB : D ≤ B) (hBU : B ≤ U) :
    (∑ d ∈ Finset.Icc 2 U, rows d) =
      (∑ d ∈ Finset.Icc 2 D, rows d) +
      (∑ d ∈ Finset.Ioc D B, rows d) +
      (∑ d ∈ Finset.Ioc B U, rows d) := by
  have h1 : Finset.Icc 2 U = Finset.Icc 2 D ∪ Finset.Ioc D U := by
    ext d
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  have h2 : Finset.Ioc D U = Finset.Ioc D B ∪ Finset.Ioc B U := by
    ext d
    simp only [Finset.mem_union, Finset.mem_Ioc]
    omega
  have hd1 : Disjoint (Finset.Icc 2 D) (Finset.Ioc D U) := by
    apply Finset.disjoint_left.mpr
    intro d hd he
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at hd he
    omega
  have hd2 : Disjoint (Finset.Ioc D B) (Finset.Ioc B U) := by
    apply Finset.disjoint_left.mpr
    intro d hd he
    simp only [Finset.mem_Ioc] at hd he
    omega
  rw [h1, Finset.sum_union hd1, h2, Finset.sum_union hd2]
  ring

end FormalResearch.RiemannHypothesis.SourceKapitzaCumulativeMatching
```
