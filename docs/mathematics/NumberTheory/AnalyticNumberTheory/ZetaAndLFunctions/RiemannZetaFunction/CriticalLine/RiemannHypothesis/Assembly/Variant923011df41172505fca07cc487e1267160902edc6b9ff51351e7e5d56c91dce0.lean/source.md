# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Assembly.Variant923011df41172505fca07cc487e1267160902edc6b9ff51351e7e5d56c91dce0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9d8a856db7cf7e6487368d9b736eb66368890341` · SHA-256 `4a34522fb9678f9ae8100298cc44349bb86558555074d95ffe7ac33e853e7a5c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PositiveCandidateEq.Variant256f4b210362a140441c83242f01ce3f226c4da89a8555130ca0d67c627cc6f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"256f4b210362a140441c83242f01ce3f226c4da89a8555130ca0d67c627cc6f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PositiveCandidateEq.Variant256f4b210362a140441c83242f01ce3f226c4da89a8555130ca0d67c627cc6f1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"256f4b210362a140441c83242f01ce3f226c4da89a8555130ca0d67c627cc6f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/RiemannHypothesis/Laplace/Assembly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.PoleCertificate

/-!
# Final B3.3 meromorphic Laplace assembly

This module closes the exact B3.3 target.

The preceding checkpoints proved:

* the exact source kernel `J_k`;
* equation (17), local uniformity, continuity, reality, and source growth;
* genuine support-radius Laplace convergence and equation (20) on `Re s > 1`;
* candidate-free normal continuation on the positive half-plane;
* the exact nonzero reflected-pair ninth-order pole at every positive shifted
  zero.

Here those results are assembled into one global meromorphic continuation.
Every positive candidate is represented as `2 * (p - 1/2)` for an actual zero
point, using functional-equation reflection for candidates originally written
as `-2z`.  Positive real parameters are candidate-free because the already
proved real-zero exclusion makes every shifted zero nonreal.

No positivity/Landau descent or arithmetic lower estimate is asserted here.
Those belong to downstream B3.4 and estimate obligations.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PositiveCandidateEq.Variant256f4b210362a140441c83242f01ce3f226c4da89a8555130ca0d67c627cc6f1

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Laplace.Assembly

open MeasureTheory Set Filter
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject
open Algebra Kernel Expansion InitialFormula Continuation PoleCertificate

noncomputable section

/-- Every positive candidate location is the positive shifted location of one
actual zero point.  The `-2z` branch is transported through the exact
functional-equation reflection. -/
theorem positive_candidate_eq
    (s : ℂ) (hs : 0 < s.re)
    (hc : s ∈ candidateSingularities) :
    ∃ p : ZeroPoint,
      0 < (p.val - 1 / 2).re ∧
        s = 2 * (p.val - 1 / 2) := by
  rcases hc with (hzero | ⟨o, rfl⟩) | ⟨o, rfl⟩
  · have hz : s = 0 := hzero
    simp [hz] at hs
  · refine ⟨o.1, ?_, rfl⟩
    change 0 < (2 * (o.1.val - 1 / 2)).re at hs
    norm_num at hs ⊢
    linarith
  · have heq :
        -2 * shiftedValue o =
          2 * shiftedValue (reflectOccurrence o) := by
      rw [shiftedValue_reflect]
      ring
    refine ⟨(reflectOccurrence o).1, ?_, heq⟩
    rw [heq] at hs
    change
      0 < (2 *
        ((reflectOccurrence o).1.val - 1 / 2)).re at hs
    norm_num at hs ⊢
    linarith

/-- The continued equation-(20) sum is meromorphic on the entire positive
half-plane. -/
theorem continuedTransform_meromorphic :
    MeromorphicOn continuedTransform
      {s : ℂ | 0 < s.re} := by
  intro s hs
  by_cases hD : s ∈ convergenceDomain
  · exact (continuedTransform_analytic s hD).meromorphicAt
  have hc : s ∈ candidateSingularities := by
    by_contra hn
    exact hD ⟨hs, hn⟩
  obtain ⟨p, hp, rfl⟩ :=
    positive_candidate_eq s hs hc
  exact (source_exact_ninth_order_pole p hp).1

/-- The established real-axis zero exclusion makes every shifted candidate
nonreal. -/
theorem shifted_pole_nonreal
    (o : ZeroOccurrence) :
    (2 * shiftedValue o).im ≠ 0 := by
  have h :=
    shiftedValue_im_ne_zero_of_realZeroExclusion
      ZeroEta.real_zero_exclusion o
  simpa using h

theorem shifted_pole_ne_real
    (o : ZeroOccurrence) (σ : ℝ) :
    2 * shiftedValue o ≠ (σ : ℂ) := by
  intro h
  exact shifted_pole_nonreal o (by
    rw [h]
    simp)

/-- Every positive real parameter lies in the analytic candidate-free domain. -/
theorem positive_real_mem_domain
    (σ : ℝ) (hσ : 0 < σ) :
    (σ : ℂ) ∈ convergenceDomain := by
  apply (mem_convergenceDomain_iff (σ : ℂ)).mpr
  refine ⟨hσ, ?_, ?_, ?_⟩
  · exact_mod_cast hσ.ne'
  · intro o
    exact (shifted_pole_ne_real o σ).symm
  · intro o heq
    apply shifted_pole_ne_real (reflectOccurrence o) σ
    rw [shiftedValue_reflect]
    linear_combination -heq

/-- In particular the continued transform has no pole on the positive real
axis: it is analytic there. -/
theorem continuedTransform_analytic_positive_real
    (σ : ℝ) (hσ : 0 < σ) :
    AnalyticAt ℂ continuedTransform (σ : ℂ) :=
  continuedTransform_analytic (σ : ℂ)
    (positive_real_mem_domain σ hσ)

/-- The final exact B3.3 obligation.

It retains all previously reviewed source checkpoints and adds the global
positive-half-plane meromorphic assembly, positive-real analyticity, and the
explicit nonzero equation-(21) coefficient at every positive shifted zero. -/
def MeromorphicLaplacePoleObligation : Prop :=
  KernelCheckpoint ∧
  Equation17GrowthCheckpoint ∧
  InitialFormulaCheckpoint ∧
  CandidateFreeContinuationCheckpoint ∧
  LocallyFinite
    (fun o : ZeroOccurrence ↦
      ({2 * shiftedValue o} : Set ℂ)) ∧
  LocallyFinite
    (fun o : ZeroOccurrence ↦
      ({-2 * shiftedValue o} : Set ℂ)) ∧
  MeromorphicOn continuedTransform
    {s : ℂ | 0 < s.re} ∧
  (∀ σ : ℝ, 0 < σ →
    AnalyticAt ℂ continuedTransform (σ : ℂ)) ∧
  (∀ p : ZeroPoint,
    0 < (p.val - 1 / 2).re →
      meromorphicOrderAt continuedTransform
        (2 * (p.val - 1 / 2)) = (-9 : ℤ) ∧
      pointPairPrincipalCoefficient p =
        2 * (multiplicity p : ℂ) * 384 ^ 2 *
          (Nat.factorial 8 : ℂ) *
          ((p.val - 1 / 2) ^ 2 - 1 / 4) ^ 2 /
          (p.val - 1 / 2) ^ 10 ∧
      pointPairPrincipalCoefficient p ≠ 0)

/-- Complete proof of the exact B3.3 target. -/
theorem meromorphic_laplace_pole :
    MeromorphicLaplacePoleObligation := by
  refine ⟨kernel_checkpoint,
    equation17_growth_checkpoint,
    initial_formula_checkpoint,
    candidate_free_continuation_checkpoint,
    locallyFinite_scaled_values 2 (by norm_num),
    locallyFinite_scaled_values (-2) (by norm_num),
    continuedTransform_meromorphic,
    continuedTransform_analytic_positive_real, ?_⟩
  intro p hp
  obtain ⟨_, horder, _, _, hcoeff, _, _⟩ :=
    source_exact_ninth_order_pole p hp
  refine ⟨horder, ?_, hcoeff⟩
  unfold pointPairPrincipalCoefficient
  unfold principalCoefficient
  rfl

end
end FormalResearch.RiemannHypothesis.Laplace.Assembly
```
