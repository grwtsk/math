# Complete source: GRWTSK.Algebra.LinearAlgebra.SourceRefinement.Variant39a0da4b591b8c92050844b9698da5b35f2876f5edf859ce41f059999692b97a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f5c1d20949e9ab886c9506a6351d11a9a2a7f818` · SHA-256 `79a5d6e82db993ce4bb497c37378ffa57e144188be0e7dda595a0b827bb14d02`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RetentionMatrix.Variant418499af84f7860ef7432b56e78ec2f56e1526f910239e803f36388be1fad686","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"418499af84f7860ef7432b56e78ec2f56e1526f910239e803f36388be1fad686","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RetentionMatrix.Variant418499af84f7860ef7432b56e78ec2f56e1526f910239e803f36388be1fad686","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"418499af84f7860ef7432b56e78ec2f56e1526f910239e803f36388be1fad686","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/SourceRefinement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ArithmeticDefect

/-!
Literal overlap transport between the non-nested arithmetic inventories. The
new normalized source, changed centered coefficients, deleted diagonal and main
term remain explicit. This supplies exact accounting, not a signed-work bound.
Direction: grwtsk contributors; construction: OpenAI Codex.
-/


namespace GRWTSK.Algebra.LinearAlgebra.RetentionMatrix.Variant418499af84f7860ef7432b56e78ec2f56e1526f910239e803f36388be1fad686

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
