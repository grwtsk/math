# Complete source: GRWTSK.Algebra.LinearAlgebra.SourceRefinement.Variant8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14b478b6ad911d3c976b152c8e7a7c35e423b1f3` · SHA-256 `8e03e7459b7c87d09dcfcdadd8887b8c36de033a7be416c39f26de3e94b95fbc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ArithmeticDefect

/-!
Literal overlap transport between the non-nested arithmetic inventories. The
new normalized source, changed centered coefficients, deleted diagonal and main
term remain explicit. This supplies exact accounting, not a signed-work bound.
Direction: grwtsk contributors; construction: OpenAI Codex.
-/

noncomputable section
namespace FormalResearch.MutationGame.SourceRefinement
open Matrix SignedDefect ArithmeticDefect
open FormalResearch.RiemannHypothesis
open SourceArithmeticOrbit SourceWeightedOrbitAdapter SourceReflectionDuality
open SourceUpperBoundaryEvent SourceSamplingLedger SourceVaughanHankel
open SourceReflectionArithmetic SourceCompensatedReadout SourceOrbitCoordinates
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource

/-- Retain identical channel/index labels in the overlap and zero-fill new labels.
No containment between the two moving inventories is presumed. -/
def retentionMatrix (I J : Finset ℕ) : Matrix (OrbitIndex J) (OrbitIndex I) ℂ :=
  fun k i => if h : k.2.2.val ∈ I then
    if i = (k.1, k.2.1, ⟨k.2.2.val, h⟩) then 1 else 0 else 0

theorem retentionMatrix_apply (I J : Finset ℕ) (c : OrbitIndex I → ℂ)
    (k : OrbitIndex J) :
    (retentionMatrix I J *ᵥ c) k =
      if h : k.2.2.val ∈ I then c (k.1, k.2.1, ⟨k.2.2.val, h⟩) else 0 := by
  classical
  by_cases h : k.2.2.val ∈ I
  · simp [retentionMatrix, Matrix.mulVec, dotProduct, h]
  · simp [retentionMatrix, Matrix.mulVec, dotProduct, h]

theorem retentionMatrix_self (I : Finset ℕ) : retentionMatrix I I = 1 := by
  classical
  ext k i
  simp [retentionMatrix, k.2.2.property, Matrix.one_apply, eq_comm]

/-- The actual inventory overlap map, including all four literal channels. -/
def transportAt (A B : ℝ) :
    Matrix (OrbitIndex (longInventory B)) (OrbitIndex (longInventory A)) ℂ :=
  retentionMatrix (longInventory A) (longInventory B)

/-- Newly included Mangoldt rows after exact overlap transport. -/
def firstIncrement (A B : ℝ) := firstAt B - transportAt A B *ᵥ firstAt A

/-- New rows and cutoff-driven beta changes in the distinct centered column. -/
def secondIncrement (A B : ℝ) := secondAt B - transportAt A B *ᵥ secondAt A

theorem first_refinement (A B : ℝ) :
    firstAt B = transportAt A B *ᵥ firstAt A + firstIncrement A B := by
  simp [firstIncrement]

theorem second_refinement (A B : ℝ) :
    secondAt B = transportAt A B *ᵥ secondAt A + secondIncrement A B := by
  simp [secondIncrement]

/-- Existing Mangoldt coefficients agree on a retained label; its increment is
supported on the newly included arithmetic indices. -/
theorem firstIncrement_apply (A B : ℝ) (k : OrbitIndex (longInventory B)) :
    firstIncrement A B k =
      if k.2.2.val ∈ longInventory A then 0 else firstAt B k := by
  classical
  simp only [firstIncrement, Pi.sub_apply, transportAt, retentionMatrix_apply]
  by_cases h : k.2.2.val ∈ longInventory A
  · simp [h, firstAt, mangoldtCoordinates, embedChannel]
  · simp [h]

/-- The shared centered row retains the exact cutoff-dependent beta difference;
newly included labels retain their entire actual centered coefficient. -/
theorem secondIncrement_apply (A B : ℝ) (k : OrbitIndex (longInventory B)) :
    secondIncrement A B k =
      if k.2.2.val ∈ longInventory A then
        if k.1 = false ∧ k.2.1 = false then
          centeredCoefficient (vaughanCutoff B) k.2.2.val -
          centeredCoefficient (vaughanCutoff A) k.2.2.val else 0
      else secondAt B k := by
  classical
  simp only [secondIncrement, Pi.sub_apply, transportAt, retentionMatrix_apply]
  by_cases h : k.2.2.val ∈ longInventory A
  · by_cases hc : k.1 = false ∧ k.2.1 = false
    · simp [h, hc, secondAt, centeredCoordinates, embedChannel]
    · simp [h, hc, secondAt, centeredCoordinates, embedChannel]
  · simp [h]

/-- The literal scale increment retains the changed signed form, both mixed
terms, the new-row interaction, and both independently specified counterterms. -/
theorem literal_refinement_increment (A B : ℝ) (hA : 1 ≤ A) (hB : 1 ≤ B) :
    arithmeticReadout B hB - arithmeticReadout A hA =
      (pairing ((transportAt A B)ᴴ * matrixAt B hB * transportAt A B - matrixAt A hA)
        (firstAt A) (secondAt A) +
      pairing (matrixAt B hB) (transportAt A B *ᵥ firstAt A) (secondIncrement A B) +
      pairing (matrixAt B hB) (firstIncrement A B) (transportAt A B *ᵥ secondAt A) +
      pairing (matrixAt B hB) (firstIncrement A B) (secondIncrement A B)).re -
      (centeredDeletedDiagonal B - centeredDeletedDiagonal A) -
      (independentMainTerm B - independentMainTerm A) := by
  rw [literal_readout, literal_readout]
  have h := congrArg Complex.re (refinement_increment (matrixAt A hA) (matrixAt B hB)
    (transportAt A B) (firstAt A) (secondAt A) (firstIncrement A B) (secondIncrement A B))
  rw [← first_refinement, ← second_refinement] at h
  simp only [Complex.sub_re] at h
  linear_combination h

end FormalResearch.MutationGame.SourceRefinement
```
