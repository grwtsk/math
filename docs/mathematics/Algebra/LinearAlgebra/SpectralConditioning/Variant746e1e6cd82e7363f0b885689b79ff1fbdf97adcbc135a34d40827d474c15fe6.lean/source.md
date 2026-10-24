# Complete source: GRWTSK.Algebra.LinearAlgebra.SpectralConditioning.Variant746e1e6cd82e7363f0b885689b79ff1fbdf97adcbc135a34d40827d474c15fe6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b5626c699e0574f7ef3e0302e0924afff1c2bdb` · SHA-256 `04359f53a2422389611c1f15f380552c1da55f7e3865ff61888f9d5f44c185dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.SpectralConditioningModulus.Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.SpectralConditioningModulus.Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/SpectralConditioning.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Module.LinearMap.End
import Mathlib.Topology.MetricSpace.Pseudo.Defs

/-!
# Spectral conditioning and Jordan-sensitive observation

Small operator defects control spectral data only through an explicit
conditioning modulus.  Nilpotent information is visible only through an
observable certified to distinguish it.
-/


namespace GRWTSK.Algebra.LinearAlgebra.SpectralConditioningModulus.Variant76a0b8594e8879b193f34c6c7052d4f1abb99c0582237d9c93ad7311a8da21b4

namespace Mathematics.AbelReynolds

open scoped NNReal

universe u v w

/--
A theorem-bearing modulus transporting operator distance to spectral-data
distance.  The modulus is data, not a conclusion inferred from a small defect.
-/
structure SpectralConditioningModulus
    (Operator : Type u) (SpectralData : Type v)
    [PseudoMetricSpace Operator] [PseudoMetricSpace SpectralData] where
  spectrum : Operator → SpectralData
  modulus : ℝ≥0 → ℝ≥0
  modulus_zero : modulus 0 = 0
  controls :
    ∀ left right,
      nndist (spectrum left) (spectrum right) ≤
        modulus (nndist left right)

namespace SpectralConditioningModulus

variable {Operator : Type u} {SpectralData : Type v}
  [PseudoMetricSpace Operator] [PseudoMetricSpace SpectralData]

/-- An exact operator identity has zero certified spectral displacement. -/
theorem exact_spectral_distance_zero
    (conditioning :
      SpectralConditioningModulus Operator SpectralData)
    {left right : Operator}
    (equal : left = right) :
    nndist (conditioning.spectrum left)
      (conditioning.spectrum right) = 0 := by
  subst right
  simp

end SpectralConditioningModulus

/-- A certified uniform annihilation order for a nilpotent linear direction. -/
structure JordanOrderCertificate
    (R : Type u) (Carrier : Type v)
    [Semiring R] [AddCommMonoid Carrier] [Module R Carrier]
    (nilpotent : Module.End R Carrier) where
  order : Nat
  order_pos : 0 < order
  annihilates : nilpotent ^ order = 0

/--
An observable is Jordan-sensitive when every nonzero nilpotent direction is
detected at some positive derivative or weighted-trace order.
-/
structure JordanSensitiveObservable
    (Direction : Type u) (Observation : Type v) where
  isNilpotent : Direction → Prop
  isZero : Direction → Prop
  observe : Nat → Direction → Observation
  detects :
    ∀ direction,
      isNilpotent direction →
      ¬ isZero direction →
        ∃ order, 0 < order ∧
          observe order direction ≠ observe 0 direction

end Mathematics.AbelReynolds
```
