# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Variant1968c043ab0e5b9ded9e722c8cc2c27650c0da27f892b6191e10fe2ffd6c96c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38049cf61cc36a96d1ef993bb67f2a3de1fec583` · SHA-256 `f4139744165a6ee318044c0ada78b2e50539a7d16ace8864c10ef143727643d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Varianteb75850c78e021a25362f8e4b6959166ca9c6d1c7ee2d73d332635241946fff5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eb75850c78e021a25362f8e4b6959166ca9c6d1c7ee2d73d332635241946fff5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tree.Varianteb75850c78e021a25362f8e4b6959166ca9c6d1c7ee2d73d332635241946fff5","mathematical_subject":"Foundations.Unclassified","original_sha256":"eb75850c78e021a25362f8e4b6959166ca9c6d1c7ee2d73d332635241946fff5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Boolean expression trees

Object nucleus for finite Boolean expression trees. Evaluation, compilation,
normal forms, encodings, and completeness proofs live in `Boolean.Tree.*`
leaves.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Varianteb75850c78e021a25362f8e4b6959166ca9c6d1c7ee2d73d332635241946fff5

namespace Boolean

universe u

/-- Boolean expression trees with NAND kept as a primitive structural operator. -/
inductive Tree (α : Type u) : Type u where
  | var : α → Tree α
  | falsum : Tree α
  | truth : Tree α
  | neg : Tree α → Tree α
  | conj : Tree α → Tree α → Tree α
  | disj : Tree α → Tree α → Tree α
  | impl : Tree α → Tree α → Tree α
  | eqv : Tree α → Tree α → Tree α
  | nand : Tree α → Tree α → Tree α
deriving Repr, DecidableEq

end Boolean
```
