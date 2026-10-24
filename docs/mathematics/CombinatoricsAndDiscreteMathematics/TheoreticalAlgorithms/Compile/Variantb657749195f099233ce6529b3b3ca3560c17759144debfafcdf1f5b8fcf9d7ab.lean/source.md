# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Compile.Variantb657749195f099233ce6529b3b3ca3560c17759144debfafcdf1f5b8fcf9d7ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de9b65619acac51ced108a40698345187680b4e5` · SHA-256 `5c3b6685203fcd1022950ebaf4c5417cc637f0fb9ea2dba7d85c208f2709b4e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeToFormula.Variant6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TreeToFormula.Variant6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781","mathematical_subject":"Foundations.Unclassified","original_sha256":"6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Compile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Tree.Eval
import Boolean.Formula.Eval


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeToFormula.Variant6110fcf609dfb277633d03734d5cc616226b7fa6901144565349ced3054d0781

namespace Boolean

universe u

/-- Forget NAND as a primitive and compile a Boolean tree into `Formula`. -/
def Tree.toFormula : Tree α → Formula α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => .neg (Tree.toFormula p)
  | .conj p q => .conj (Tree.toFormula p) (Tree.toFormula q)
  | .disj p q => .disj (Tree.toFormula p) (Tree.toFormula q)
  | .impl p q => .impl (Tree.toFormula p) (Tree.toFormula q)
  | .eqv p q => .eqv (Tree.toFormula p) (Tree.toFormula q)
  | .nand p q => .neg (.conj (Tree.toFormula p) (Tree.toFormula q))

@[simp] theorem Tree.eval_toFormula
    (ν : Valuation α)
    (p : Tree α) :
    Formula.eval ν (Tree.toFormula p) = Tree.eval ν p := by
  induction p with
  | var a => rfl
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [Tree.toFormula, Tree.eval, ih]
  | conj p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | disj p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | impl p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | eqv p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]
  | nand p q ihp ihq => simp [Tree.toFormula, Tree.eval, ihp, ihq]

end Boolean
```
