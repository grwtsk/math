# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSchedulingCumulative.Variant96fbfc325a25d598ae7a3144c7327648df63cc1dd045fb64fe5d4a6513c53fb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bc309776998e1cc259c1e8b4313ffda6e71b3cb` · SHA-256 `086b2f442008281f5e0f18603be814eca8e7566164de1c056542a609ab6599d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExtendFin.Variant0da86674fc7095aeed2da540c9e6fe3cbdf6a8122705da64cdce43eeb71ad661","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0da86674fc7095aeed2da540c9e6fe3cbdf6a8122705da64cdce43eeb71ad661","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ExtendFin.Variant0da86674fc7095aeed2da540c9e6fe3cbdf6a8122705da64cdce43eeb71ad661","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"0da86674fc7095aeed2da540c9e6fe3cbdf6a8122705da64cdce43eeb71ad661","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/SourceSchedulingCumulative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceSchedulingTransport

/-!
# Ordered cumulative drift and the native first-stage transport bound

CSE-RH16-20261007. Research direction: grwtsk contributors.
Finite proof adapters: OpenAI Codex. This module specializes the existing
weighted Abel identity to real drift on a complete ordered finite inventory.
The induced drift is the actual first-transport displacement and only its
total is required to vanish. Receiverwise vanishing is not assumed.
This proves a cumulative-cost certificate, not optimality over all couplings
or a uniform bound for the fixed logarithmic arithmetic source.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ExtendFin.Variant0da86674fc7095aeed2da540c9e6fe3cbdf6a8122705da64cdce43eeb71ad661

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceSchedulingCumulative

open scoped BigOperators
open SourceSchedulingTransport

/-- Extend a complete finite inventory by zero; no original atom is dropped. -/
def extendFin {n : ℕ} (v : Fin n → ℝ) (i : ℕ) : ℝ :=
  if h : i < n then v ⟨i, h⟩ else 0

@[simp] theorem extendFin_val {n : ℕ} (v : Fin n → ℝ) (i : Fin n) :
    extendFin v i.val = v i := by
  simp [extendFin, i.isLt]

theorem extendFin_sum {n : ℕ} (v : Fin n → ℝ) :
    (∑ i ∈ Finset.range n, extendFin v i) = ∑ i, v i := by
  symm
  exact Finset.sum_fin_eq_sum_range v

/-- The complete prefix drift crosses each nonnegative ordered gap once. -/
def cumulativeCost (c r : ℕ → ℝ) (n : ℕ) : ℝ :=
  ∑ k ∈ Finset.range n, |schedulePrefix r (k + 1)| * (c (k + 1) - c k)

theorem cumulativeCost_nonneg (c r : ℕ → ℝ) (n : ℕ)
    (hgap : ∀ k < n, 0 ≤ c (k + 1) - c k) :
    0 ≤ cumulativeCost c r n := by
  apply Finset.sum_nonneg
  intro k hk
  exact mul_nonneg (abs_nonneg _) (hgap k (Finset.mem_range.mp hk))

/-- Zero total removes only the terminal Abel term, retaining every prefix charge. -/
theorem cumulative_abel_identity (c r : ℕ → ℝ) (g : ℝ → ℝ) (n : ℕ)
    (hzero : schedulePrefix r (n + 1) = 0) :
    (∑ i ∈ Finset.range (n + 1), r i * g (c i)) =
      ∑ k ∈ Finset.range n,
        (g (c k) - g (c (k + 1))) * schedulePrefix r (k + 1) := by
  simpa only [Real.inner_apply, hzero, mul_zero, zero_add, mul_comm] using
    weighted_abel (fun i => g (c i)) r n

/-- The ordered derivative readout is bounded by its actual cumulative drift cost. -/
theorem cumulative_abs_le (c r : ℕ → ℝ) (g : ℝ → ℝ) (n : ℕ) (L : ℝ)
    (hzero : schedulePrefix r (n + 1) = 0)
    (_hgap : ∀ k < n, 0 ≤ c (k + 1) - c k)
    (hg : ∀ k < n, |g (c k) - g (c (k + 1))| ≤ L * (c (k + 1) - c k)) :
    |∑ i ∈ Finset.range (n + 1), r i * g (c i)| ≤ L * cumulativeCost c r n := by
  rw [cumulative_abel_identity c r g n hzero]
  calc
    _ ≤ ∑ k ∈ Finset.range n,
        |(g (c k) - g (c (k + 1))) * schedulePrefix r (k + 1)| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ Finset.range n,
        L * (|schedulePrefix r (k + 1)| * (c (k + 1) - c k)) := by
      apply Finset.sum_le_sum
      intro k hk
      rw [abs_mul, mul_comm]
      calc
        _ ≤ |schedulePrefix r (k + 1)| * (L * (c (k + 1) - c k)) :=
          mul_le_mul_of_nonneg_left (hg k (Finset.mem_range.mp hk)) (abs_nonneg _)
        _ = _ := by ring
    _ = _ := by rw [cumulativeCost, Finset.mul_sum]

/-- A complete `Fin (n+1)` inventory has the same ordered cumulative certificate. -/
theorem fin_cumulative_abs_le (c : ℕ → ℝ) {n : ℕ} (r : Fin (n + 1) → ℝ)
    (g : ℝ → ℝ) (L : ℝ) (hzero : (∑ i, r i) = 0)
    (hgap : ∀ k < n, 0 ≤ c (k + 1) - c k)
    (hg : ∀ k < n, |g (c k) - g (c (k + 1))| ≤ L * (c (k + 1) - c k)) :
    |∑ i, r i * g (c i.val)| ≤ L * cumulativeCost c (extendFin r) n := by
  have htotal : schedulePrefix (extendFin r) (n + 1) = 0 := by
    rw [schedulePrefix, extendFin_sum, hzero]
  have hreadout := Fin.sum_univ_eq_sum_range
    (fun i => extendFin r i * g (c i)) (n + 1)
  simp only [extendFin_val] at hreadout
  rw [hreadout]
  exact cumulative_abs_le c (extendFin r) g n L htotal hgap hg

/-- First transport plus cumulative drift, with the displacement-induced drift intact. -/
theorem first_transport_cumulative_abs_le (c : ℕ → ℝ) {n : ℕ}
    (b d : Fin (n + 1) → ℝ) (f g : ℝ → ℝ)
    (P : Fin (n + 1) → Fin (n + 1) → ℝ) (L : ℝ)
    (hP : ∀ i j, 0 ≤ P i j)
    (hb : ∀ i, b i = (∑ j, P i j) - ∑ j, P j i)
    (hmoment : firstMoment (fun i : Fin (n + 1) => c i.val) b d = 0)
    (hgap : ∀ k < n, 0 ≤ c (k + 1) - c k)
    (ht : ∀ i j : Fin (n + 1), |f (c i.val) - f (c j.val) -
        (c i.val - c j.val) * g (c j.val)| ≤ L * (c i.val - c j.val) ^ 2 / 2)
    (hg : ∀ k < n, |g (c k) - g (c (k + 1))| ≤ L * (c (k + 1) - c k)) :
    |readout (fun i : Fin (n + 1) => c i.val) b d f g| ≤
      L * ((∑ i, ∑ j, P i j * (c i.val - c j.val) ^ 2) / 2 +
        cumulativeCost c (extendFin (inducedDrift (fun i : Fin (n + 1) => c i.val) d P)) n) := by
  have hzero : (∑ j, inducedDrift (fun i : Fin (n + 1) => c i.val) d P j) = 0 := by
    rw [inducedDrift_total (fun i : Fin (n + 1) => c i.val) b d P hb, hmoment]
  have hsecond := fin_cumulative_abs_le c
    (inducedDrift (fun i : Fin (n + 1) => c i.val) d P) g L hzero hgap hg
  have hfirst :
      |∑ i, ∑ j, P i j * (f (c i.val) - f (c j.val) -
        (c i.val - c j.val) * g (c j.val))| ≤
      L * (∑ i, ∑ j, P i j * (c i.val - c j.val) ^ 2) / 2 := by
    calc
      _ ≤ ∑ i, ∑ j, |P i j * (f (c i.val) - f (c j.val) -
          (c i.val - c j.val) * g (c j.val))| := by
        apply (Finset.abs_sum_le_sum_abs _ _).trans
        exact Finset.sum_le_sum (fun i _ => Finset.abs_sum_le_sum_abs _ _)
      _ ≤ ∑ i, ∑ j, P i j * (L * (c i.val - c j.val) ^ 2 / 2) := by
        apply Finset.sum_le_sum
        intro i _
        apply Finset.sum_le_sum
        intro j _
        rw [abs_mul, abs_of_nonneg (hP i j)]
        exact mul_le_mul_of_nonneg_left (ht i j) (hP i j)
      _ = ∑ i, ∑ j, L * (P i j * (c i.val - c j.val) ^ 2) / 2 := by
        apply Finset.sum_congr rfl
        intro i _
        apply Finset.sum_congr rfl
        intro j _
        ring
      _ = _ := by simp only [Finset.sum_div, Finset.mul_sum]
  rw [first_transport_identity (fun i : Fin (n + 1) => c i.val) b d f g P hb]
  exact (abs_add_le _ _).trans ((add_le_add hfirst hsecond).trans_eq (by ring))

theorem two_atom_cumulative_cost :
    cumulativeCost (fun i => 2 * (i : ℝ)) (extendFin ![2, -2]) 1 = 4 := by
  norm_num [cumulativeCost, schedulePrefix, extendFin]

/-- A nonzero receiver drift pair gives the sharp cumulative charge four. -/
theorem two_atom_cumulative_readout (g : ℝ → ℝ) (L : ℝ)
    (hg : |g 0 - g 2| ≤ L * 2) :
    |2 * g 0 - 2 * g 2| ≤ L * 4 := by
  have htotal : (∑ i : Fin 2, (![2, -2] : Fin 2 → ℝ) i) = 0 := by
    rw [Fin.sum_univ_two]
    norm_num
  have hbound := fin_cumulative_abs_le (n := 1) (fun i => 2 * (i : ℝ))
    (![2, -2] : Fin 2 → ℝ) g L htotal
    (by
      intro k hk
      have hk0 : k = 0 := by omega
      subst k
      norm_num)
    (by
      intro k hk
      have hk0 : k = 0 := by omega
      subst k
      simpa using hg)
  rw [two_atom_cumulative_cost] at hbound
  simpa [Fin.sum_univ_two, sub_eq_add_neg] using hbound

end FormalResearch.RiemannHypothesis.SourceSchedulingCumulative
```
