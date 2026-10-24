-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant6fdca8535e0a5d9f3b0d0f591119f6ed600377bf96953f041e3cac1a465b96ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fdca8535e0a5d9f3b0d0f591119f6ed600377bf96953f041e3cac1a465b96ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Array.Variant6fdca8535e0a5d9f3b0d0f591119f6ed600377bf96953f041e3cac1a465b96ca","mathematical_subject":"Computation.DataStructures","original_sha256":"6fdca8535e0a5d9f3b0d0f591119f6ed600377bf96953f041e3cac1a465b96ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/array_scan.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Data.Array.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant6fdca8535e0a5d9f3b0d0f591119f6ed600377bf96953f041e3cac1a465b96ca

open Array

/- Docstring examples for `Array.scan{l,r,lM,rM}` -/

example [Monad m] (f : α → β → m α) :
    Array.scanlM f x₀ #[a, b, c] = (do
      let x₁ ← f x₀ a
      let x₂ ← f x₁ b
      let x₃ ← f x₂ c
      pure #[x₀, x₁, x₂, x₃]) := by
  simp [scanlM, scanlM.loop]

example [Monad m] (f : α → β → m α) :
    Array.scanlM f x₀ #[a, b, c] (start := 1) (stop := 3) = (do
      let x₁ ← f x₀ b
      let x₂ ← f x₁ c
      pure #[x₀, x₁, x₂]) := by
  simp [scanlM, scanlM.loop]

example [Monad m] (f : α → β → m β) :
    Array.scanrM f x₀ #[a, b, c] = (do
      let x₁ ← f c x₀
      let x₂ ← f b x₁
      let x₃ ← f a x₂
      pure #[x₃, x₂, x₁, x₀]) := by
  simp [scanrM, scanrM.loop]

example [Monad m] (f : α → β → m β) :
    Array.scanrM f x₀ #[a, b, c] (start := 3) (stop := 1) = (do
      let x₁ ← f c x₀
      let x₂ ← f b x₁
      pure #[x₂, x₁, x₀]) := by
  simp [scanrM, scanrM.loop]

#guard scanl (· + ·) 0 #[1, 2, 3] == #[0, 1, 3, 6]

#guard scanr (· + ·) 0 #[1, 2, 3] == #[6, 5, 3, 0]
