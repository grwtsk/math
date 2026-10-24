-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SourceUnit.Variantd31cd548b5d1b21fb7174aa9e7ce7a4eda81dbe31ad093fea2c5f0f1f728d720","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d31cd548b5d1b21fb7174aa9e7ce7a4eda81dbe31ad093fea2c5f0f1f728d720","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SourceUnit.Variantd31cd548b5d1b21fb7174aa9e7ce7a4eda81dbe31ad093fea2c5f0f1f728d720","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d31cd548b5d1b21fb7174aa9e7ce7a4eda81dbe31ad093fea2c5f0f1f728d720","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/divisor-floor-literal-snippet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SourceUnit.Variantd31cd548b5d1b21fb7174aa9e7ce7a4eda81dbe31ad093fea2c5f0f1f728d720

noncomputable section
open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open DivisorFloorTransportScratch DampedDivisorCoefficient
open MobiusFractionalResidual MobiusPoleNumerator FiniteMobiusController

example (X : ℕ) (x : ℝ) (a : ℕ → ℝ) (hxX : x ≤ X) :
    (∑ d ∈ Icc 1 X, a d * (⌊x / (d : ℝ)⌋₊ : ℝ)) =
      ∑ n ∈ Icc 1 ⌊x⌋₊, ∑ d ∈ n.divisors, a d :=
  floor_sum_divisors X x a hxX

example (N : ℕ) (a : ℕ → ℝ) :
    (∑ n ∈ Icc 1 N, ∑ d ∈ n.divisors, a d) =
      ∑ d ∈ Icc 1 N, a d * ((N / d : ℕ) : ℝ) :=
  divisor_prefix_eq_floor N a

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x ≤ X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) +
        (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) *
          mobiusReciprocalSum X * (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ) :=
  arithmeticResidual_eq_divisor_prefix_closed X ε x hX hx hxX

example (X : ℕ) (ε x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X ε x =
      (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) + 1 -
        ((∑ n ∈ Icc 1 ⌊x⌋₊, dampedDivisorCoefficient ε n : ℝ) : ℂ) :=
  arithmeticResidual_eq_divisor_prefix X ε x hX hx hxX

example (X : ℕ) (x : ℝ) (hX : 1 ≤ X) (hx : 1 ≤ x) (hxX : x < X) :
    arithmeticResidual X 0 x = 0 :=
  arithmeticResidual_zero_of_lt_cutoff X x hX hx hxX

example (X : ℕ) (hX : 1 ≤ X) : arithmeticResidual X 0 (X : ℝ) =
    ((X : ℝ) * mobiusReciprocalSum X : ℂ) :=
  arithmeticResidual_zero_damping_endpoint X hX
end
