# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Transport.Variant18e6670847045f00c09888e4c161e906639a06fc45e2aa1ba06f696019bbf29a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e7ef2415ae392490122b13882e5d0ae97010599` · SHA-256 `5e7f60b92b81abf5cf3933a1944910bffa4bdb8df45d1abbec48fd8daa4ac2a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Cleared.Variant078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Cleared.Variant078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/shell-count-transport/Transport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability
import Mathlib.Analysis.Complex.JensenFormula


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Cleared.Variant078b53d001638021a2bec4b1ff055071ddb446e30e874d0100b68a07057170cb

open Complex Filter Set Metric MeromorphicOn
open scoped Topology
namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ShellCountTransport
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability
noncomputable section

def cleared (s : ℂ) : ℂ := s * (s - 1) * completedRiemannZeta₀ s + 1

theorem cleared_entire : Differentiable ℂ cleared := by
  unfold cleared
  exact ((differentiable_id.mul (differentiable_id.sub_const 1)).mul
    differentiable_completedZeta₀).add_const 1

theorem cleared_zero : cleared 0 = 1 := by simp [cleared]

theorem cleared_eq_completed {s : ℂ} (h0 : s ≠ 0) (h1 : s ≠ 1) :
    cleared s = s * (s - 1) * completedRiemannZeta s := by
  rw [completedRiemannZeta_eq]
  unfold cleared
  have h1' : 1 - s ≠ 0 := sub_ne_zero.mpr h1.symm
  field_simp
  ring

theorem cleared_order (p : ZeroPoint) :
    analyticOrderAt cleared p.val = analyticOrderAt riemannZeta p.val := by
  have hp := point_nontrivial p
  have heq : cleared =ᶠ[𝓝 p.val]
      fun s : ℂ ↦ (s * (s-1)) * completedRiemannZeta s := by
    filter_upwards [eventually_ne_nhds hp.ne_zero, eventually_ne_nhds hp.2.2] with s h0 h1
    exact cleared_eq_completed h0 h1
  rw [analyticOrderAt_congr heq]
  change analyticOrderAt ((fun s : ℂ ↦ s * (s-1)) * completedRiemannZeta) p.val = _
  have ha : AnalyticAt ℂ (fun s : ℂ ↦ s * (s-1)) p.val := by fun_prop
  rw [analyticOrderAt_mul ha (ZeroObject.completed_analytic hp.ne_zero hp.2.2),
    ha.analyticOrderAt_eq_zero.mpr (mul_ne_zero hp.ne_zero (sub_ne_zero.mpr hp.2.2)),
    zero_add]
  exact (zeta_order_completed hp).symm

theorem cleared_order_nat (p : ZeroPoint) :
    analyticOrderNatAt cleared p.val = multiplicity p := by
  exact congrArg ENat.toNat (cleared_order p)

theorem shell_norm_lt (n : ℕ) (o : ZeroShell n) :
    ‖o.val.1.val‖ < (n : ℝ) + 2 := by
  have hb := Nat.lt_floor_add_one ‖shiftedValue o.val‖
  change ‖shiftedValue o.val‖ < (shellIndex o.val : ℝ) + 1 at hb
  rw [o.property] at hb
  have hn : ‖o.val.1.val‖ ≤ ‖shiftedValue o.val‖ + 1/2 := by
    have ht := norm_add_le (shiftedValue o.val) (1/2 : ℂ)
    have heq : shiftedValue o.val + (1/2 : ℂ) = o.val.1.val := by
      simp [shiftedValue]
    rw [heq] at ht
    norm_num at ht
    exact ht
  linarith

theorem shell_mem_closedBall (n : ℕ) (o : ZeroShell n) :
    o.val.1.val ∈ closedBall (0 : ℂ) ((n : ℝ)+2) := by
  simpa only [mem_closedBall, dist_zero_right] using (shell_norm_lt n o).le

theorem cleared_divisor_at_point (p : ZeroPoint) {R : ℝ}
    (hp : p.val ∈ closedBall (0 : ℂ) R) :
    divisor cleared (closedBall (0 : ℂ) R) p.val = (multiplicity p : ℤ) := by
  have ha : AnalyticOnNhd ℂ cleared (closedBall (0 : ℂ) R) :=
    fun s _ ↦ cleared_entire.analyticAt s
  rw [ha.divisor_apply hp, cleared_order p,
    ← Nat.cast_analyticOrderNatAt (zeta_order_finite (point_nontrivial p).2.2)]
  simp [ZeroObject.multiplicity]

/-- The finite divisor counts every actual shell occurrence with its original slot. -/
theorem shell_card_le_divisor (n : ℕ) :
    (Nat.card (ZeroShell n) : ℤ) ≤
      ∑ᶠ z, divisor cleared (closedBall (0 : ℂ) ((n : ℝ)+2)) z := by
  classical
  let D := divisor cleared (closedBall (0 : ℂ) ((n : ℝ)+2))
  let P := {z : ℂ // z ∈ D.support}
  have hpfinite : Finite P :=
    (D.finiteSupport (isCompact_closedBall (0 : ℂ) ((n : ℝ)+2))).to_subtype
  let _ : Fintype P := Fintype.ofFinite P
  let T := Σ p : P, Fin ((D p.val).toNat)
  have horder (o : ZeroShell n) :
      D o.val.1.val = (multiplicity o.val.1 : ℤ) :=
    cleared_divisor_at_point o.val.1 (shell_mem_closedBall n o)
  have hmem (o : ZeroShell n) : o.val.1.val ∈ D.support := by
    change D o.val.1.val ≠ 0
    rw [horder o]
    exact_mod_cast (multiplicity_positive o.val.1).ne'
  let f : ZeroShell n → T := fun o ↦
    ⟨⟨o.val.1.val, hmem o⟩, ⟨o.val.2.val, by simpa only [horder o, Int.toNat_natCast] using o.val.2.isLt⟩⟩
  have hf : Function.Injective f := by
    intro p q h
    apply Subtype.ext
    have heq : p.val.1 = q.val.1 := by
      apply Subtype.ext
      exact congrArg (fun t : T ↦ t.1.val) h
    apply Sigma.ext heq
    apply (Fin.heq_ext_iff (congrArg ZeroObject.multiplicity heq)).mpr
    exact congrArg (fun t : T ↦ t.2.val) h
  have hcard := Nat.card_le_card_of_injective f hf
  have hnonneg : ∀ z, 0 ≤ D z :=
    (show AnalyticOnNhd ℂ cleared (closedBall (0 : ℂ) ((n : ℝ)+2)) from
      fun z _ ↦ cleared_entire.analyticAt z).divisor_nonneg
  calc
    (Nat.card (ZeroShell n) : ℤ) ≤ (Nat.card T : ℤ) := by exact_mod_cast hcard
    _ = ∑ p : P, D p.val := by
      simp only [T, Nat.card_eq_fintype_card, Fintype.card_sigma, Fintype.card_fin, Nat.cast_sum]
      exact Finset.sum_congr rfl (fun p _ ↦ Int.toNat_of_nonneg (hnonneg p.val))
    _ = ∑ᶠ z, D z := by
      rw [← finsum_mem_support (fun z ↦ D z), ← finsum_set_coe_eq_finsum_mem]
      exact (finsum_eq_sum_of_fintype (fun p : P ↦ D p.val)).symm

/-- Real-cast form matching Mathlib's Jensen zero-count estimate. -/
theorem shell_card_le_divisor_real (n : ℕ) :
    (Nat.card (ZeroShell n) : ℝ) ≤
      ((∑ᶠ z, divisor cleared (closedBall (0 : ℂ) ((n : ℝ)+2)) z : ℤ) : ℝ) := by
  exact_mod_cast shell_card_le_divisor n

#print axioms cleared_order
#print axioms shell_mem_closedBall
#print axioms cleared_divisor_at_point
#print axioms shell_card_le_divisor
#print axioms shell_card_le_divisor_real
end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ShellCountTransport
```
