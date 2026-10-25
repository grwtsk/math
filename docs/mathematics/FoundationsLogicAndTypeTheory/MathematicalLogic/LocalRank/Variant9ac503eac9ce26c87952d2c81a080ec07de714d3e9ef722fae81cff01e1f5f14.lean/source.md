# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocalRank.Variant9ac503eac9ce26c87952d2c81a080ec07de714d3e9ef722fae81cff01e1f5f14

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11182fd019aea7c743e9870e58ce75550014682c` · SHA-256 `c0551e85adba82bf97bfb1e9d91bf50898e8521bceb7245d7d1a2dd864976455`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocalRankCertificate.Variant567ff3f5cf2d05e3033460797a678b714edece8980c86f4c2507505cb49b5e43","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"567ff3f5cf2d05e3033460797a678b714edece8980c86f4c2507505cb49b5e43","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.LocalRankCertificate.Variant567ff3f5cf2d05e3033460797a678b714edece8980c86f4c2507505cb49b5e43","mathematical_subject":"Logic.Foundations","original_sha256":"567ff3f5cf2d05e3033460797a678b714edece8980c86f4c2507505cb49b5e43","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/Frontier/LocalRank.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathematics.StratifiedBoundary.Frontier.MajorityCrossing

/-!
# Injective finite frontier ranks

Ranks are local presentation coordinates.  They do not identify orbit
quotients unless a separate automorphism canonicalizer is supplied.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.LocalRankCertificate.Variant567ff3f5cf2d05e3033460797a678b714edece8980c86f4c2507505cb49b5e43

namespace Mathematics.StratifiedBoundary.Frontier

universe uFrontier

structure LocalRankCertificate
    (Frontier : Type uFrontier) where
  rank : Frontier → Nat
  injective :
    Function.Injective rank

def LocalRankCertificate.tallyCode
    {Frontier : Type uFrontier}
    (certificate :
      LocalRankCertificate Frontier)
    (frontier : Frontier) :
    OrdinalTally.RawCode :=
  .tall (certificate.rank frontier)

theorem localRank_equal_iff
    {Frontier : Type uFrontier}
    (certificate :
      LocalRankCertificate Frontier)
    {left right : Frontier} :
    certificate.rank left =
        certificate.rank right ↔
      left = right :=
  ⟨certificate.injective, congrArg certificate.rank⟩

end Mathematics.StratifiedBoundary.Frontier
```
