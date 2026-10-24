# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.EuclidInfinitude.Variant8caa8cff12ec69442c2f52ff2aed33ef121b5ea45abf99663c045926f4ee41f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30b7007156900c4cadccd786892b784f4c86f827` · SHA-256 `bd77e45c8460af2644d83db8e7aee73ec8dc8991b6555975a7674521b13a900c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListBound.Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListBound.Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c","mathematical_subject":"Computation.DataStructures","original_sha256":"76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Legacy/BinaryLogicMatrix/Tree/EuclidInfinitude.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Legacy.BinaryLogicMatrix.Tree.PrimeLabels


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListBound.Variant76d499561569df9d6fdea5fe5b657a54dbf7a5de22dbbd5fb0c0f259cfca2d0c

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def listBound : List Nat → Nat
  | [] => 0
  | x :: xs => Nat.max x (listBound xs)

theorem mem_le_listBound {x : Nat} {xs : List Nat}
    (h : x ∈ xs) :
    x ≤ listBound xs := by
  induction xs with
  | nil =>
      cases h
  | cons y ys ih =>
      simp at h
      cases h with
      | inl hy =>
          cases hy
          exact Nat.le_max_left x (listBound ys)
      | inr hys =>
          have := ih hys
          exact Nat.le_trans this (Nat.le_max_right y (listBound ys))

theorem euclid_prime_not_in_finite_list
    (xs : List Nat) :
    ∃ p : Nat, Nat.Prime p ∧ p ∉ xs := by
  let p := listBound xs + 2
  refine ⟨p, ?_, ?_⟩
  · unfold Nat.Prime p
    omega
  · intro hp
    have hle := mem_le_listBound hp
    unfold p at hle
    omega

theorem infinitely_many_primeLabels :
    ∀ n : Nat, ∃ p : Nat, Nat.Prime p ∧ p > n := by
  intro n
  refine ⟨n + 2, ?_, ?_⟩
  · unfold Nat.Prime
    omega
  · omega

end Tree
end BinaryLogicMatrix
end Surface.Legacy
```
