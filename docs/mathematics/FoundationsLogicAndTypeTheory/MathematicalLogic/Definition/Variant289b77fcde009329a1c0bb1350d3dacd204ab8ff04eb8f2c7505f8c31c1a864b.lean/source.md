# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Definition.Variant289b77fcde009329a1c0bb1350d3dacd204ab8ff04eb8f2c7505f8c31c1a864b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94ebbbae9ec16e6b4f5f26d83438bf988b410014` · SHA-256 `ef064204bbaa667d9d591b85d70bc9abc01e8861612fa238331673a3523470ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HorizonEmbedding.Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"adbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.HorizonEmbedding.Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549","mathematical_subject":"Logic.Foundations","original_sha256":"adbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/HorizonEmbedding/Definition.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut

/-!
# Horizon-embedding primitive
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.HorizonEmbedding.Variantadbffa3291f369f6088546757ab622ff0257933cc698f6c77b52f63014d13549

namespace Mathematics.SemiLocalDefect.SoninCore

structure HorizonEmbedding
    (Low High : FinitePrimeHorizon) where
  primeEmbedding : Low.Prime ↪ High.Prime
  preserves_value :
    ∀ p,
      High.value (primeEmbedding p) =
      Low.value p
  mapCut_injective :
    Function.Injective
      (fun S : PrimeCut Low =>
        S.map primeEmbedding)
  persistent_cut_id :
    PrimeCut Low →
    PersistentCutId

def HorizonEmbedding.mapCut
    {Low High : FinitePrimeHorizon}
    (ι : HorizonEmbedding Low High)
    (S : PrimeCut Low) :
    PrimeCut High :=
  S.map ι.primeEmbedding

@[simp]
theorem HorizonEmbedding.mapCut_empty
    {Low High : FinitePrimeHorizon}
    (ι : HorizonEmbedding Low High) :
    ι.mapCut ∅ = ∅ := by
  simp [HorizonEmbedding.mapCut]

@[simp]
theorem HorizonEmbedding.mapCut_insert
    {Low High : FinitePrimeHorizon}
    (ι : HorizonEmbedding Low High)
    (p : Low.Prime)
    (S : PrimeCut Low) :
    ι.mapCut (insert p S) =
      insert
        (ι.primeEmbedding p)
        (ι.mapCut S) := by
  simp [HorizonEmbedding.mapCut]

theorem HorizonEmbedding.mapCut_inj
    {Low High : FinitePrimeHorizon}
    (ι : HorizonEmbedding Low High)
    {S T : PrimeCut Low}
    (h : ι.mapCut S = ι.mapCut T) :
    S = T :=
  ι.mapCut_injective h

end Mathematics.SemiLocalDefect.SoninCore
```
