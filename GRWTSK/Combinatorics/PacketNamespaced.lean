-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DefectPacket.Variant54a3d8846ebaf7f5d31d82b4ca5f643a58f5b66478b56b7e72b105bb7dfc8748","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"54a3d8846ebaf7f5d31d82b4ca5f643a58f5b66478b56b7e72b105bb7dfc8748","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DefectPacket.Variant54a3d8846ebaf7f5d31d82b4ca5f643a58f5b66478b56b7e72b105bb7dfc8748","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"54a3d8846ebaf7f5d31d82b4ca5f643a58f5b66478b56b7e72b105bb7dfc8748","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Trace/Packet.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ShapleyAttribution

/-!
# Positive packet functionals

The packet functional abstracts `Tr(W* A W)`.  Its algebraic and positivity
laws are proof-bearing and digests remain metadata only.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DefectPacket.Variant54a3d8846ebaf7f5d31d82b4ca5f643a58f5b66478b56b7e72b105bb7dfc8748

namespace Mathematics.SemiLocalDefect.Trace

open scoped BigOperators

universe uTest

structure DefectPacket
    (model : OperatorModel)
    (Test : Type uTest) where
  energy :
    Test → model.Operator → ℝ
  packetNormSq : Test → ℝ
  packetNormSq_nonnegative :
    ∀ test, 0 ≤ packetNormSq test
  map_zero :
    ∀ test, energy test 0 = 0
  map_add :
    ∀ test left right,
      energy test (left + right) =
        energy test left + energy test right
  map_sub :
    ∀ test left right,
      energy test (left - right) =
        energy test left - energy test right
  map_sum :
    ∀ {Index : Type} [DecidableEq Index]
      (test : Test)
      (indices : Finset Index)
      (operator : Index → model.Operator),
      energy test (∑ index ∈ indices, operator index) =
        ∑ index ∈ indices,
          energy test (operator index)
  nonnegative :
    ∀ test operator,
      model.Nonnegative operator →
      0 ≤ energy test operator
  identity_energy :
    ∀ test,
      energy test model.identity =
        packetNormSq test
  digest : CertificateDigest

end Mathematics.SemiLocalDefect.Trace
