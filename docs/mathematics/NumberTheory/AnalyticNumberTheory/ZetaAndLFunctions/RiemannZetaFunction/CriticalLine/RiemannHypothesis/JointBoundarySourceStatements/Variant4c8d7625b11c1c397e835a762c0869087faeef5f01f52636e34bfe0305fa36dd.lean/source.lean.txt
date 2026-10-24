-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.JointBoundaryTransport.Variantb8ba5993dbe6f666ca86a27bbc9e2c9a9e92c6f2de1ec17df95b1419d6c25d8e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b8ba5993dbe6f666ca86a27bbc9e2c9a9e92c6f2de1ec17df95b1419d6c25d8e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.JointBoundaryTransport.Variantb8ba5993dbe6f666ca86a27bbc9e2c9a9e92c6f2de1ec17df95b1419d6c25d8e","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"b8ba5993dbe6f666ca86a27bbc9e2c9a9e92c6f2de1ec17df95b1419d6c25d8e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/JointBoundarySourceStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.JointBoundaryTransport

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.JointBoundaryTransport.Variantb8ba5993dbe6f666ca86a27bbc9e2c9a9e92c6f2de1ec17df95b1419d6c25d8e

set_option autoImplicit false
section JointBoundaryTransportStatements
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open TwoInsertionBoundary SourceSampling ThetaKernelTransport JointBoundaryTransport

example (S T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle S T F = ∑ i ∈ S, ∑ j ∈ T,
      (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) * F (i * j) := rfl

example (S T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle S T F = rectangle T S F :=
  rectangle_symm S T F

example (N : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) T F =
      rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) T F -
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) T
        (fun q ↦ F (2 * q)) :=
  rectangle_two_split_left N T F

example (N : ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) (Icc 1 N) F =
      rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) F -
      2 * rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (2 * q)) +
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (4 * q)) :=
  rectangle_two_split N F

example (N : ℕ) (T : Finset ℕ) (F : ℕ → ℝ) :
    rectangle ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) T F =
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) T F +
      rectangle ((Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2)) T F :=
  rectangle_odd_boundary N T F

example (S T : Finset ℕ) (F G : ℕ → ℝ) (c : ℝ) :
    rectangle S T (fun q ↦ F q - c * G q) = rectangle S T F - c * rectangle S T G :=
  rectangle_sub_mul S T F G c

example (N : ℕ) (F : ℕ → ℝ) :
    rectangle (Icc 1 N) (Icc 1 N) F =
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F q - 2 * F (2 * q)) +
      rectangle ((Ioc (N / 2) N).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 N).filter (fun d ↦ Nat.Coprime d 2)) F +
      rectangle ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2))
        ((Icc 1 (N / 2)).filter (fun d ↦ Nat.Coprime d 2)) (fun q ↦ F (4 * q)) :=
  rectangle_two_boundary N F

example (A : ℝ) (hA : 1 ≤ A) :
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
          (ArithmeticFunction.moebius d : ℝ) * sourceSamplingKernel A d) :=
  sourceQuadraticValue_joint_boundary A hA

end JointBoundaryTransportStatements
