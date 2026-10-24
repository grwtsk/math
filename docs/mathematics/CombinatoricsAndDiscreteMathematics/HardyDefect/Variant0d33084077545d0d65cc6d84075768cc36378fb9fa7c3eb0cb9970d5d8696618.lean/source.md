# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.HardyDefect.Variant0d33084077545d0d65cc6d84075768cc36378fb9fa7c3eb0cb9970d5d8696618

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `464f13e0711734de669d7dfe3b197d97af66ceee` · SHA-256 `84b0e3d6a2aeaf38e058d896587b943f9b6b8b576d075881aa542558d766c309`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.HardyDefectFamily.Variant8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.HardyDefectFamily.Variant8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Hardy/HardyDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.Hardy.BlockDecomposition

/-!
# Hardy compression defect realization

Compact positive Hardy defects are not identified with the monotone abstract
capacity until an equality or packet-trace realization is certified.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.HardyDefectFamily.Variant8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime uTest

structure HardyDefectFamily
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  defect : Finset Prime → model.Operator
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (defect cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (defect cut)
  compact : Finset Prime → Prop
  compactProof :
    ∀ cut, compact cut
  digest : RealizationDigest

inductive HardyRealizationLevel
  | operatorEquality
  | packetTraceEquality
  | boundedPacketTraceDefect
deriving DecidableEq, Repr

structure HardyDefectRealization
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (hardy :
      HardyDefectFamily model Prime)
    (Test : Type uTest) where
  level : HardyRealizationLevel
  packetTrace :
    Test → model.Operator → ℝ
  remainder :
    Finset Prime → Test → ℝ
  operatorEquality :
    level = .operatorEquality →
      ∀ cut,
        capacity.defect cut =
          hardy.defect cut
  packetTraceEquality :
    level = .packetTraceEquality →
      ∀ cut test,
        packetTrace test (capacity.defect cut) =
          packetTrace test (hardy.defect cut)
  boundedPacketTraceDefect :
    level = .boundedPacketTraceDefect →
      ∀ cut test,
        packetTrace test (capacity.defect cut) =
          packetTrace test (hardy.defect cut) +
            remainder cut test

end Mathematics.SemiLocalDefect.Hardy
```
