# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.FrobeniusBitspace.Variant892e16888c925b91f60b4aa48d134a7c0391acca3deffad46c939068cfb521b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `66cfd25ec12e38391cd873fcc4fd3aaa966f5189` · SHA-256 `8210a85c4482cd79acb17fb5fb7c25225dab920da8582844809724dbf4dd1794`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.FrobeniusBitspace.Variant5f4638f32c21802d86d36aa78a33c5e40fc2cb66b53ccdecde95bab5d470df25","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f4638f32c21802d86d36aa78a33c5e40fc2cb66b53ccdecde95bab5d470df25","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.ConditionalExpectation.SourceCorpus.FrobeniusBitspace.Variant5f4638f32c21802d86d36aa78a33c5e40fc2cb66b53ccdecde95bab5d470df25","mathematical_subject":"Probability.ConditionalExpectation","original_sha256":"5f4638f32c21802d86d36aa78a33c5e40fc2cb66b53ccdecde95bab5d470df25","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Bitspace/FrobeniusBitspace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Bitspace.FrobeniusBitspace

Radiation role: shell-filtration
BinaryMatrix spine: This module organizes boundary, shell, or expansion layers radiating out from BinaryMatrix-shaped finite carriers.
Ontology: bitspace.frobenius_bitspace
Pivot role: spectral
Zero typology: spectral
Contract boundary: definition
Composite stack role: field
-/



namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.ConditionalExpectation.FrobeniusBitspace.Variant5f4638f32c21802d86d36aa78a33c5e40fc2cb66b53ccdecde95bab5d470df25

namespace Folder
namespace Bitspace

open Carrier

structure FrobeniusBitspace where
  stream : BinaryMatrixStream
  capacity : Nat
  fits : stream.length ≤ capacity

namespace FrobeniusBitspace

def bitValue (b : Bit) : ℝ :=
  if b = 0 then 0 else 1

def bitNormSq (b : Bit) : ℝ :=
  bitValue b * bitValue b

theorem bitNormSq_le_one (b : Bit) :
    bitNormSq b ≤ 1 := by
  by_cases h : b = 0 <;> simp [bitNormSq, bitValue, h]

end FrobeniusBitspace
end Bitspace
end Folder
```
