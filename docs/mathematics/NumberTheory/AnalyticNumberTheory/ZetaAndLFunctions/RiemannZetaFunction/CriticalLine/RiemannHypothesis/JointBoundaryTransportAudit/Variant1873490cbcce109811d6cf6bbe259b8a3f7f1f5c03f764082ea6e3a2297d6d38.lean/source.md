# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.JointBoundaryTransportAudit.Variant1873490cbcce109811d6cf6bbe259b8a3f7f1f5c03f764082ea6e3a2297d6d38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b913198013c910489264d86b87af81845591228` · SHA-256 `27800bc6f72402d08a1d886e344e4a835dd343a544fab40d6928ffdf2db8e1fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Rectangle.Variantef12ea63e69d11ca0d50486f5e6972da8b694d1faa735eaf8ea6eaacca48fcf0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef12ea63e69d11ca0d50486f5e6972da8b694d1faa735eaf8ea6eaacca48fcf0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Rectangle.Variantef12ea63e69d11ca0d50486f5e6972da8b694d1faa735eaf8ea6eaacca48fcf0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ef12ea63e69d11ca0d50486f5e6972da8b694d1faa735eaf8ea6eaacca48fcf0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/JointBoundaryTransportAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.TwoInsertionBoundary

/-! Exact finite parity regrouping of the original source. No sign assertion. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Rectangle.Variantef12ea63e69d11ca0d50486f5e6972da8b694d1faa735eaf8ea6eaacca48fcf0

set_option autoImplicit false
namespace JointBoundaryTransportScratch
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open TwoInsertionBoundary SourceSampling ThetaKernelTransport
noncomputable section

/-- Original signed product-argument rectangle, retaining every ordered pair. -/
def rectangle (S T : Finset ℕ) (F : ℕ → ℝ) : ℝ :=
  ∑ i ∈ S, ∑ j ∈ T,
    (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) * F (i * j)

/-- Swapping the original finite coordinates preserves the product argument. -/
theorem rectangle_symm (S T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle S T F = rectangle T S F := by
  unfold rectangle
  rw [sum_comm]
  apply sum_congr rfl
  intro i _
  apply sum_congr rfl
  intro j _
  rw [Nat.mul_comm j i]
  ring

/-- The first coordinate's complete parity split has the natural half-cutoff. -/
theorem rectangle_two_split_left (N : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) T F =
      rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) T F -
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) T
        (fun q ↦ F (2 * q)) := by
  have hs := moebius_sum_two_split N
    (fun i ↦ ∑ j ∈ T, (ArithmeticFunction.moebius j : ℝ) * F (i * j))
  simpa only [rectangle, mul_sum, mul_assoc, Nat.mul_assoc] using hs

/-- Both parity splits retain the entire even-even sector and both mixed sectors. -/
theorem rectangle_two_split (N : ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) (Icc 1 N) F =
      rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) F -
      2 * rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (2 * q)) +
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (4 * q)) := by
  rw [rectangle_two_split_left]
  rw [rectangle_symm _ (Icc 1 N) F, rectangle_two_split_left]
  rw [rectangle_symm _ (Icc 1 N) (fun q ↦ F (2 * q)), rectangle_two_split_left]
  have he : (fun q ↦ F (2 * (2 * q))) = (fun q ↦ F (4 * q)) := by
    funext q
    congr 1
    omega
  rw [he]
  rw [rectangle_symm ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2))
    ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))]
  ring

/-- Splitting odd rows preserves the strict lower and closed upper boundary endpoints. -/
theorem rectangle_odd_boundary (N : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) T F =
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) T F +
      rectangle ((Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2)) T F := by
  have hfirst : ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)).filter
      (fun d ↦ d ≤ N / 2) = (Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2) := by
    ext d
    simp only [mem_filter, mem_Icc]
    have hhalf := Nat.div_le_self N 2
    omega
  have hsecond : ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)).filter
      (fun d ↦ ¬d ≤ N / 2) = (Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2) := by
    ext d
    simp only [mem_filter, mem_Icc, mem_Ioc]
    omega
  have hs := sum_filter_add_sum_filter_not
    ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun d ↦ d ≤ N / 2)
    (fun i ↦ ∑ j ∈ T,
      (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) * F (i * j))
  rw [hfirst, hsecond] at hs
  exact hs.symm

/-- Kernel subtraction is an exact finite identity with signed coefficients. -/
theorem rectangle_sub_mul (S T : Finset ℕ) (F G : ℕ → ℝ) (c : ℝ) :
    rectangle S T (fun q ↦ F q - c * G q) = rectangle S T F - c * rectangle S T G := by
  unfold rectangle
  simp only [mul_sub, mul_left_comm _ c]
  simp_rw [sum_sub_distrib, ← mul_sum]

/-- Product-argument interior difference plus its full odd boundary and even-scale sector. -/
theorem rectangle_two_boundary (N : ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) (Icc 1 N) F =
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F q - 2 * F (2 * q)) +
      rectangle ((Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) F +
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (4 * q)) := by
  rw [rectangle_two_split, rectangle_odd_boundary, rectangle_sub_mul]
  ring

/-- The original Q has this exact joint boundary, using the complete strict-cutoff kernels. -/
theorem sourceQuadraticValue_joint_boundary (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue Realization.explicitSecondDerivative A =
      archimedeanValue Realization.explicitSecondDerivative A -
      4 * (∑ d ∈ (Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2),
        (ArithmeticFunction.moebius d : ℝ) *
          (sourceSamplingKernel A d - sourceSamplingKernel A (2 * d : ℕ))) +
      2 * rectangle ((Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2))
        (fun q ↦ thetaKernel A q - 2 * thetaKernel A (2 * q)) +
      2 * (rectangle ((Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊).filter
          (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 ⌊Real.exp A⌋₊).filter (fun d ↦ Nat.Coprime d 2)) (thetaKernel A) +
        rectangle ((Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2))
          ((Icc 1 (⌊Real.exp A⌋₊ / 2)).filter (fun d ↦ Nat.Coprime d 2))
          (fun q ↦ thetaKernel A (4 * q)) -
        2 * ∑ d ∈ (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊).filter
            (fun d ↦ Nat.Coprime d 2),
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) := by
  rw [sourceQuadraticValue, source_prime_decomposition_theta A hA]
  change archimedeanValue Realization.explicitSecondDerivative A -
    2 * (2 * (∑ d ∈ Icc 1 ⌊Real.exp A⌋₊,
      (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) -
      rectangle (Icc 1 ⌊Real.exp A⌋₊) (Icc 1 ⌊Real.exp A⌋₊) (thetaKernel A)) = _
  rw [sourceLinear_two_difference_boundary, rectangle_two_boundary]
  ring

end
end JointBoundaryTransportScratch

#print axioms JointBoundaryTransportScratch.rectangle
#print axioms JointBoundaryTransportScratch.rectangle_symm
#print axioms JointBoundaryTransportScratch.rectangle_two_split_left
#print axioms JointBoundaryTransportScratch.rectangle_two_split
#print axioms JointBoundaryTransportScratch.rectangle_odd_boundary
#print axioms JointBoundaryTransportScratch.rectangle_sub_mul
#print axioms JointBoundaryTransportScratch.rectangle_two_boundary
#print axioms JointBoundaryTransportScratch.sourceQuadraticValue_joint_boundary
```
