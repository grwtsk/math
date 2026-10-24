# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Normalize.Variant512e983680c3e23af62dc7bdc6d9cd816daec6f92cba967b71c7aafa1df5b972

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4dd368fc7228119fdd7451fcd23f48e1777b6ac7` · SHA-256 `ded4be654e5a5f62f881388535bb002aba261792cdc677fe642856e6b9649c4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeNnf.Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TreeNnf.Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9","mathematical_subject":"Foundations.Unclassified","original_sha256":"7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Tree/Normalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
import Boolean.Tree.Eval


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TreeNnf.Variant7936192a84335b2872d6180614aa6a557f81001c903435a6379e02ecbe804ae9

namespace Boolean

universe u

/-!
Structural negation-normalization for Boolean trees.

`Tree.nnf` removes implication/equivalence/NAND and pushes negation to
variables and constants.  The auxiliary `Tree.negNnf` is structurally
recursive on the same tree, avoiding a fuel argument.
-/

mutual

def Tree.nnf : Tree α → Tree α
  | .var a => .var a
  | .falsum => .falsum
  | .truth => .truth
  | .neg p => Tree.negNnf p
  | .conj p q => .conj (Tree.nnf p) (Tree.nnf q)
  | .disj p q => .disj (Tree.nnf p) (Tree.nnf q)
  | .impl p q => .disj (Tree.negNnf p) (Tree.nnf q)
  | .eqv p q =>
      .conj
        (.disj (Tree.negNnf p) (Tree.nnf q))
        (.disj (Tree.negNnf q) (Tree.nnf p))
  | .nand p q => .disj (Tree.negNnf p) (Tree.negNnf q)

def Tree.negNnf : Tree α → Tree α
  | .var a => .neg (.var a)
  | .falsum => .truth
  | .truth => .falsum
  | .neg p => Tree.nnf p
  | .conj p q => .disj (Tree.negNnf p) (Tree.negNnf q)
  | .disj p q => .conj (Tree.negNnf p) (Tree.negNnf q)
  | .impl p q => .conj (Tree.nnf p) (Tree.negNnf q)
  | .eqv p q =>
      .disj
        (.conj (Tree.nnf p) (Tree.negNnf q))
        (.conj (Tree.negNnf p) (Tree.nnf q))
  | .nand p q => .conj (Tree.nnf p) (Tree.nnf q)

end

theorem Tree.eval_nnf_and_negNnf
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (Tree.nnf p) = Tree.eval ν p ∧
      Tree.eval ν (Tree.negNnf p) = !(Tree.eval ν p) := by
  induction p with
  | var a => exact ⟨rfl, rfl⟩
  | falsum => exact ⟨rfl, rfl⟩
  | truth => exact ⟨rfl, rfl⟩
  | neg p ih =>
      constructor
      · exact ih.2
      · cases hp : Tree.eval ν p <;> simp [Tree.negNnf, Tree.eval, ih.1, hp]
  | conj p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.eval, ihp.1, ihq.1]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.2, ihq.2, hp, hq]
  | disj p q ihp ihq =>
      constructor
      · simp [Tree.nnf, Tree.eval, ihp.1, ihq.1]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.2, ihq.2, hp, hq]
  | impl p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.2, ihq.1, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihq.2, hp, hq]
  | eqv p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.1, ihp.2, ihq.1, ihq.2, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihp.2, ihq.1, ihq.2, hp, hq]
  | nand p q ihp ihq =>
      constructor
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.nnf, Tree.eval, ihp.2, ihq.2, hp, hq]
      · cases hp : Tree.eval ν p <;>
          cases hq : Tree.eval ν q <;>
          simp [Tree.negNnf, Tree.eval, ihp.1, ihq.1, hp, hq]

@[simp] theorem Tree.eval_nnf
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (Tree.nnf p) = Tree.eval ν p :=
  (Tree.eval_nnf_and_negNnf ν p).1

@[simp] theorem Tree.eval_negNnf
    (ν : Valuation α)
    (p : Tree α) :
    Tree.eval ν (Tree.negNnf p) = !(Tree.eval ν p) :=
  (Tree.eval_nnf_and_negNnf ν p).2

end Boolean
```
