# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Avalanche.Variant8458a26ad68a972f86b815b106509afe5064d4c0bd8e583fa6affe9beb0c1674

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecd30535d0927fef8b59c38beaa14e9895913b2b` · SHA-256 `f1436e0af91d10e6e24e41170668b9926f82c48442975f7d74988249c2179d89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Bits011.Variant50b38a23487e894834720cf1c73664719eec20b7e8009a57548603467d122bbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"50b38a23487e894834720cf1c73664719eec20b7e8009a57548603467d122bbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.Bits011.Variant50b38a23487e894834720cf1c73664719eec20b7e8009a57548603467d122bbe","mathematical_subject":"Probability.Independence","original_sha256":"50b38a23487e894834720cf1c73664719eec20b7e8009a57548603467d122bbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Tests/Avalanche.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Dynamics.Avalanche

/-!
# Concrete avalanche tests

The permutation below swaps `011` and `100` and fixes the other six three-bit
vectors.  Exact finite evaluation proves that it is bijective and has perfect
SAC marginals, while two output-flip coordinates remain perfectly correlated.
Thus marginal avalanche balance does not imply joint independence.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Bits011.Variant50b38a23487e894834720cf1c73664719eec20b7e8009a57548603467d122bbe

namespace BitMatrix.Tests.Avalanche

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche

/-- The three-bit vector `011`, with coordinates read from index `0` upward. -/
def bits011 : Bits 3 :=
  fun i => i.val != 0

/-- The three-bit vector `100`, with coordinates read from index `0` upward. -/
def bits100 : Bits 3 :=
  fun i => i.val == 0

/-- Swap `011` and `100`, fixing every other three-bit vector. -/
def swap011100 (x : Bits 3) : Bits 3 :=
  if x = bits011 then
    bits100
  else if x = bits100 then
    bits011
  else
    x

/-- The concrete swap is its own inverse. -/
theorem swap011100_involutive : Function.Involutive swap011100 := by
  unfold Function.Involutive
  native_decide

/-- Every involution is bijective. -/
theorem swap011100_bijective : Function.Bijective swap011100 :=
  swap011100_involutive.bijective

example : StrictSAC swap011100 := by
  unfold StrictSAC
  native_decide

example : sacScore swap011100 = 1 := by
  native_decide

example : varianceScore swap011100 = 1 := by
  native_decide

/--
For input direction zero, output-flip coordinates one and two always agree,
so their unnormalized sign correlation is the maximal value eight.
-/
example :
    correlationNumerator swap011100
      (0 : Fin 3) (1 : Fin 3) (2 : Fin 3) = 8 := by
  native_decide

example :
    correlationNumerator swap011100
      (0 : Fin 3) (1 : Fin 3) (2 : Fin 3) ≠ 0 := by
  native_decide

/-! The width-three random-function weight law is `1/8, 3/8, 3/8, 1/8`. -/

example : functionWeightMass 3 0 = 1 / 8 := by native_decide
example : functionWeightMass 3 1 = 3 / 8 := by native_decide
example : functionWeightMass 3 2 = 3 / 8 := by native_decide
example : functionWeightMass 3 3 = 1 / 8 := by native_decide

/-! The width-three permutation law is `0, 3/7, 3/7, 1/7`. -/

example : permutationWeightMass 3 0 = 0 := by native_decide
example : permutationWeightMass 3 1 = 3 / 7 := by native_decide
example : permutationWeightMass 3 2 = 3 / 7 := by native_decide
example : permutationWeightMass 3 3 = 1 / 7 := by native_decide

/-! Concrete checks of the identity-map counterexample and Jacobian image. -/

example : sacScore (id : Bits 3 → Bits 3) = 0 :=
  identity_sacScore (by decide)

example : varianceScore (id : Bits 3 → Bits 3) = 0 :=
  identity_varianceScore (by decide)

example :
    (jacobianQuantizer (id : Bits 3 → Bits 3)).effectiveStates.card = 1 :=
  identity_jacobian_effectiveStates_card

end BitMatrix.Tests.Avalanche
```
