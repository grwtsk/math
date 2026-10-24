# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Eval.Variant61d220f6935bd78d027823a95ec6572349c1e40f0654252707549b2b1236b3cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da517c8206dced8b8d9bcef23c21a08778df5c9b` · SHA-256 `8f365d66d17b1859dc295e8c518f924492353b9a829f175abdf21e969165760d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeEval.Variantfdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TreeEval.Variantfdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a","mathematical_subject":"Foundations.Unclassified","original_sha256":"fdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Eval.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree
import Boolean.Formula


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeEval.Variantfdded3e0119928440568017342f78016dd876e0c5b712213d824a1a21f98560a

namespace Boolean

universe u

/-- Bottom-up evaluation of a Boolean expression tree. -/
def Tree.eval (ν : Valuation α) : Tree α → Bool
  | .var a => ν a
  | .falsum => false
  | .truth => true
  | .neg p => !(Tree.eval ν p)
  | .conj p q => Tree.eval ν p && Tree.eval ν q
  | .disj p q => Tree.eval ν p || Tree.eval ν q
  | .impl p q => !(Tree.eval ν p) || Tree.eval ν q
  | .eqv p q => Tree.eval ν p == Tree.eval ν q
  | .nand p q => !(Tree.eval ν p && Tree.eval ν q)

end Boolean
```
