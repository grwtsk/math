# Complete source: GRWTSK.Topology.GeneralTopology.Cut.Variant74ba74009b7f59ebdf3d99f2c56a5b85cfc18e2385d62aff3ad9d5e76f331d6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b2093b3f01e5fcfbd3e6e0fe85a4a0ce1fa1ddd` · SHA-256 `4c0281c439289481838e276e79c508e439235c2b012ac2552eae56b05dee3799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.HeightConvention.Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.HeightConvention.Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/RHIsolation/Cut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.RHIsolation.Basic

/-!
# Compact critical-strip cuts

The compact carrier is independent of the ownership convention at its upper
horizontal boundary.  Every global count and every local region must use the
same `owns` predicate.
-/


namespace GRWTSK.Topology.GeneralTopology.HeightConvention.Variantf2f8e67146e9f4be96305f1eef3aff190affa3ab89ed701be04c4f61299a3541

namespace Mathematics.RHIsolation

inductive HeightConvention
  | openTop
  | closedTop
deriving DecidableEq, Repr

structure CriticalStripCut where
  sigmaLower : ℝ
  sigmaUpper : ℝ
  heightLower : ℝ
  heightUpper : ℝ
  sigmaLower_pos : 0 < sigmaLower
  sigmaUpper_lt_one : sigmaUpper < 1
  sigma_order : sigmaLower < sigmaUpper
  heightLower_pos : 0 < heightLower
  height_order : heightLower < heightUpper
  convention : HeightConvention
  carrier : Set ℂ
  carrier_eq :
    carrier =
      {z |
        sigmaLower ≤ z.re ∧
        z.re ≤ sigmaUpper ∧
        heightLower ≤ z.im ∧
        z.im ≤ heightUpper}
  compact_carrier : IsCompact carrier
  digest : CutDigest

def CriticalStripCut.owns
    (cut : CriticalStripCut)
    (z : ℂ) : Prop :=
  z ∈ cut.carrier ∧
    match cut.convention with
    | .openTop => z.im < cut.heightUpper
    | .closedTop => z.im ≤ cut.heightUpper

def CriticalStripCut.boundaryOwned
    (cut : CriticalStripCut) : Prop :=
  match cut.convention with
  | .openTop =>
      ∀ z, z ∈ cut.carrier →
        z.im = cut.heightUpper →
        ¬ cut.owns z
  | .closedTop =>
      ∀ z, z ∈ cut.carrier →
        z.im = cut.heightUpper →
        cut.owns z

theorem CriticalStripCut.boundaryOwned_sound
    (cut : CriticalStripCut) :
    cut.boundaryOwned := by
  cases h : cut.convention
  · simp only [CriticalStripCut.boundaryOwned, h]
    intro z inCarrier onTop
    simp [CriticalStripCut.owns, h,
      inCarrier, onTop]
  · simp only [CriticalStripCut.boundaryOwned, h]
    intro z inCarrier onTop
    simp [CriticalStripCut.owns, h,
      inCarrier, onTop]

end Mathematics.RHIsolation
```
