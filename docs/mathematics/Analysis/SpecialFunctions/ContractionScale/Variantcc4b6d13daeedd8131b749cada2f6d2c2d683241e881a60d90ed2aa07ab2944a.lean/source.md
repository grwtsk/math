# Complete source: GRWTSK.Analysis.SpecialFunctions.ContractionScale.Variantcc4b6d13daeedd8131b749cada2f6d2c2d683241e881a60d90ed2aa07ab2944a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e2cc081d1c089ab85fab6bba2626aea1b00601f` · SHA-256 `cc2e0362a0405afa2f75db787910c8bfec2e03e06a01b85a7a1d0aaf8b958293`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.ContractionScaleCertificate.Variantd511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.ContractionScaleCertificate.Variantd511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"d511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/ContractionScale.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathematics.MobiusOntology.PerturbedBoundary

/-!
# Contraction-to-arithmetic scale bridge

Iteration-depth decay and arithmetic square-root scale remain independent
until this certificate identifies depth, mass, and the quantitative bound.
-/


namespace GRWTSK.Analysis.SpecialFunctions.ContractionScaleCertificate.Variantd511251a40bd9600dcaeb59b4b36a29e90ae10439c6e9777110a3958a4adcd25

namespace Mathematics.MobiusOntology

open scoped NNReal

def ContractionScaleRatio
    (contraction : ℝ≥0)
    (branchingBase : ℝ) : ℝ :=
  -Real.log contraction / Real.log branchingBase

structure ContractionScaleCertificate
    (Index : Type*) where
  contraction : ℝ≥0
  contraction_pos : 0 < contraction
  contraction_lt_one : contraction < 1
  branchingBase : ℝ
  branchingBase_gt_one : 1 < branchingBase
  depth : Index → ℕ
  arithmeticMass : Index → ℝ
  massPositive :
    ∀ index,
      0 < arithmeticMass index
  massFromDepth :
    ∀ index,
      arithmeticMass index =
        branchingBase ^ depth index
  ratioAtLeastHalf :
    (1 / 2 : ℝ) ≤
      ContractionScaleRatio
        contraction branchingBase
  squareRootDecay :
    ∀ index,
      (contraction : ℝ) ^ depth index ≤
        1 / Real.sqrt (arithmeticMass index)

theorem contraction_reaches_squareRoot_scale
    {Index : Type*}
    (certificate : ContractionScaleCertificate Index)
    (index : Index) :
    (certificate.contraction : ℝ) ^
        certificate.depth index ≤
      1 /
        Real.sqrt
          (certificate.arithmeticMass index) :=
  certificate.squareRootDecay index

structure ContractionToDiscrepancyCertificate
    (Index : Type*) where
  scale : ContractionScaleCertificate Index
  discrepancy : Index → ℝ
  constant : ℝ
  constant_nonneg : 0 ≤ constant
  logarithmicPower : Nat
  bound :
    ∀ index,
      |discrepancy index| ≤
        constant *
          (1 /
            Real.sqrt
              (scale.arithmeticMass index)) *
          (1 + Real.log (scale.arithmeticMass index)) ^
            logarithmicPower

theorem contraction_discrepancy_bound
    {Index : Type*}
    (certificate :
      ContractionToDiscrepancyCertificate Index)
    (index : Index) :
    |certificate.discrepancy index| ≤
      certificate.constant *
        (1 /
          Real.sqrt
            (certificate.scale.arithmeticMass index)) *
        (1 +
          Real.log
            (certificate.scale.arithmeticMass index)) ^
          certificate.logarithmicPower :=
  certificate.bound index

end Mathematics.MobiusOntology
```
