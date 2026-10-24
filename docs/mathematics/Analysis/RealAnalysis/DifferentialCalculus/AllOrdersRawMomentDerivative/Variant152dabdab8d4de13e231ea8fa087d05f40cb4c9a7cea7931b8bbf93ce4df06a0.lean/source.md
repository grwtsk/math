# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AllOrdersRawMomentDerivative.Variant152dabdab8d4de13e231ea8fa087d05f40cb4c9a7cea7931b8bbf93ce4df06a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e45c6b0e10243903e077bec55756f2879e6ad1c` · SHA-256 `60a53fc966c44dfce8685c09230c1f120adb2fdc9823f0de096fd7f0eeab8f51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffUnnormalizedWeight.Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ContDiffUnnormalizedWeight.Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2","mathematical_subject":"Analysis.Calculus","original_sha256":"48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/AllOrdersRawMomentDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant
import Mathlib.Analysis.Calculus.ContDiff.FTaylorSeries
import Mathlib.Analysis.Calculus.ContDiff.Operations

/-!
# All-orders derivative of the finite partition function

This module proves the analytic raw-moment identity at every finite order.

For one unnormalized log-affine weight

  w_i(theta) = a_i exp(L_i(theta)),

the n-th iterated Frechet derivative is

  D^n w_i(theta)[v_0,...,v_{n-1}]
    = w_i(theta) * product_j L_i(v_j).

Summing over the finite index set gives

  D^n Z(theta)[v]
    = sum_i w_i(theta) product_j L_i(v_j)
    = Z(theta) M_n(theta;v),

where M_n is the raw directional moment hierarchy introduced earlier.

This is the analytic half of the all-orders moment-cumulant theorem.  The
remaining layer is to transport Faà di Bruno's ordered-partition sum for
exp(log Z) into the atlas's ordinary Finpartition moment recursion.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiffUnnormalizedWeight.Variant48f5fcb02308767222496e5ac23995fda8d9601012705543e045a5753a06cfc2

namespace FormalResearch.PositiveAtlas

universe u v

variable {I : Type u} [Fintype I] [Nonempty I]
variable {E : Type v} [NormedAddCommGroup E] [NormedSpace ℝ E]

namespace FiniteLogAffineFamily

variable (F : FiniteLogAffineFamily I E)

/-- Every unnormalized log-affine weight is smooth to all orders. -/
theorem contDiff_unnormalizedWeight
    (i : I) :
    ContDiff ℝ ⊤ (fun x : E => F.unnormalizedWeight x i) := by
  have hexp :
      ContDiff ℝ ⊤ (fun x : E => Real.exp (F.statistic i x)) :=
    Real.contDiff_exp.comp (F.statistic i).contDiff
  simpa [unnormalizedWeight, Pi.smul_apply, smul_eq_mul] using
    hexp.const_smul (F.baseWeight i)

/-- Exact all-orders iterated derivative of one log-affine weight. -/
theorem iteratedFDeriv_unnormalizedWeight
    (i : I) :
    ∀ (n : ℕ) (theta : E) (directions : Fin n → E),
      iteratedFDeriv ℝ n
          (fun x : E => F.unnormalizedWeight x i)
          theta directions =
        F.unnormalizedWeight theta i *
          ∏ j : Fin n, F.statistic i (directions j) := by
  intro n
  induction n with
  | zero =>
      intro theta directions
      simp [iteratedFDeriv_zero_apply]
  | succ n ih =>
      intro theta directions
      have hd :
          DifferentiableAt ℝ
            (iteratedFDeriv ℝ n
              (fun x : E => F.unnormalizedWeight x i))
            theta := by
        exact
          ((F.contDiff_unnormalizedWeight i).differentiable_iteratedFDeriv
            (by simp)).differentiableAt
      rw [hd.iteratedFDeriv_succ_apply_left']
      have heq :
          (fun y : E =>
            iteratedFDeriv ℝ n
              (fun x : E => F.unnormalizedWeight x i)
              y (Fin.tail directions)) =
          (fun y : E =>
            F.unnormalizedWeight y i *
              ∏ j : Fin n, F.statistic i ((Fin.tail directions) j)) := by
        funext y
        exact ih y (Fin.tail directions)
      rw [heq]
      have hderiv :=
        (F.hasFDerivAt_unnormalizedWeight theta i).mul_const
          (∏ j : Fin n, F.statistic i ((Fin.tail directions) j))
      rw [hderiv.fderiv]
      rw [Fin.prod_univ_succ]
      simp [F.weightDerivative_apply, Fin.tail_def]
      ring

/-- The n-th derivative of the partition function is the finite sum of the
n-th derivatives of its weights. -/
theorem iteratedFDeriv_partition_eq_unnormalizedMoment
    (n : ℕ)
    (theta : E)
    (directions : Fin n → E) :
    iteratedFDeriv ℝ n F.partition theta directions =
      ∑ i : I,
        F.unnormalizedWeight theta i *
          ∏ j : Fin n, F.statistic i (directions j) := by
  classical
  change
    iteratedFDeriv ℝ n
      (fun x : E => ∑ i : I, F.unnormalizedWeight x i)
      theta directions =
      _
  rw [iteratedFDeriv_fun_sum_apply]
  · simp only [Finset.sum_apply]
    apply Finset.sum_congr rfl
    intro i hi
    exact F.iteratedFDeriv_unnormalizedWeight i n theta directions
  · intro i hi
    exact (F.contDiff_unnormalizedWeight i).contDiffAt.of_le (by simp)

/-- Multiplying the normalized raw moment by the partition function recovers
the corresponding unnormalized moment sum. -/
theorem partition_mul_rawDirectionalMoment
    (theta : E)
    (n : ℕ)
    (directions : Fin n → E) :
    F.partition theta *
        F.rawDirectionalMoment theta n directions =
      ∑ i : I,
        F.unnormalizedWeight theta i *
          ∏ j : Fin n, F.statistic i (directions j) := by
  classical
  rw [F.rawDirectionalMoment, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  rw [← mul_assoc, F.partition_mul_probability]
  ring

/-- All-orders raw-moment derivative identity for the finite partition
function. -/
theorem iteratedFDeriv_partition_eq_partition_mul_rawMoment
    (n : ℕ)
    (theta : E)
    (directions : Fin n → E) :
    iteratedFDeriv ℝ n F.partition theta directions =
      F.partition theta *
        F.rawMomentHierarchy theta n directions := by
  rw [F.rawMomentHierarchy_apply]
  calc
    iteratedFDeriv ℝ n F.partition theta directions
        =
      ∑ i : I,
        F.unnormalizedWeight theta i *
          ∏ j : Fin n, F.statistic i (directions j) :=
      F.iteratedFDeriv_partition_eq_unnormalizedMoment
        n theta directions
    _ =
      F.partition theta *
        F.rawDirectionalMoment theta n directions :=
      (F.partition_mul_rawDirectionalMoment theta n directions).symm

/-- Division by the strictly positive partition function extracts the raw
moment from the iterated derivative. -/
theorem inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment
    (n : ℕ)
    (theta : E)
    (directions : Fin n → E) :
    (F.partition theta)⁻¹ *
        iteratedFDeriv ℝ n F.partition theta directions =
      F.rawMomentHierarchy theta n directions := by
  rw [F.iteratedFDeriv_partition_eq_partition_mul_rawMoment]
  rw [← mul_assoc, inv_mul_cancel₀ (ne_of_gt (F.partition_pos theta))]
  simp

/-- Equivalent quotient form of the all-orders raw-moment identity. -/
theorem iteratedFDeriv_partition_div_partition_eq_rawMoment
    (n : ℕ)
    (theta : E)
    (directions : Fin n → E) :
    iteratedFDeriv ℝ n F.partition theta directions /
        F.partition theta =
      F.rawMomentHierarchy theta n directions := by
  rw [div_eq_mul_inv, mul_comm]
  exact
    F.inv_partition_mul_iteratedFDeriv_partition_eq_rawMoment
      n theta directions

end FiniteLogAffineFamily

end FormalResearch.PositiveAtlas
```
