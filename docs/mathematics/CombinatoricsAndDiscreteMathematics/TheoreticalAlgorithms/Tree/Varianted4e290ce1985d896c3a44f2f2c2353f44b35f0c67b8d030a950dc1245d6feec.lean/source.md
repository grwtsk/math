# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Tree.Varianted4e290ce1985d896c3a44f2f2c2353f44b35f0c67b8d030a950dc1245d6feec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5242ccb762a26174e278a2e82fb40b5ea9190747` · SHA-256 `6dcbb43080c2352a8b3b18f3a2591310bc12b8cbaf9b13f6c857c491bed2e681`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ContainsVariable.Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ContainsVariable.Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41","mathematical_subject":"Foundations.Unclassified","original_sha256":"8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/EdgeRelaxation/Tree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.EdgeRelaxation


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ContainsVariable.Variant8c97e31994de28af467d9b1b750403885ff2251e5b3b838c2f0f8c75cc447b41

namespace Boolean.Cube

universe u

namespace EdgeRelaxation

namespace FuzzyTree

/-- A Boolean tree contains at least one variable occurrence. -/
def ContainsVariable : Tree α → Prop
  | .var _ => True
  | .falsum => False
  | .truth => False
  | .neg p => ContainsVariable p
  | .conj p q => ContainsVariable p ∨ ContainsVariable q
  | .disj p q => ContainsVariable p ∨ ContainsVariable q
  | .impl p q => ContainsVariable p ∨ ContainsVariable q
  | .eqv p q => ContainsVariable p ∨ ContainsVariable q
  | .nand p q => ContainsVariable p ∨ ContainsVariable q

/-- A tree contains a variable whose relaxed valuation is non-crisp. -/
def ContainsSoftVariable
    (ρ : EdgeRelaxation.FuzzyTree.Valuation α) :
    Tree α → Prop
  | .var a => ¬ EdgeRelaxation.EpsilonDensity.IsCrisp (ρ a)
  | .falsum => False
  | .truth => False
  | .neg p => ContainsSoftVariable ρ p
  | .conj p q => ContainsSoftVariable ρ p ∨ ContainsSoftVariable ρ q
  | .disj p q => ContainsSoftVariable ρ p ∨ ContainsSoftVariable ρ q
  | .impl p q => ContainsSoftVariable ρ p ∨ ContainsSoftVariable ρ q
  | .eqv p q => ContainsSoftVariable ρ p ∨ ContainsSoftVariable ρ q
  | .nand p q => ContainsSoftVariable ρ p ∨ ContainsSoftVariable ρ q

theorem containsSoftVariable_of_containsVariable
    {ρ : EdgeRelaxation.FuzzyTree.Valuation α}
    (hρ : ∀ a : α,
      ¬ EdgeRelaxation.EpsilonDensity.IsCrisp (ρ a)) :
    ∀ t : Tree α,
      ContainsVariable t →
        ContainsSoftVariable ρ t
  | .var a, _ => hρ a
  | .falsum, h => False.elim h
  | .truth, h => False.elim h
  | .neg p, h =>
      containsSoftVariable_of_containsVariable hρ p h
  | .conj p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)
  | .disj p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)
  | .impl p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)
  | .eqv p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)
  | .nand p q, h => by
      rcases h with hp | hq
      · exact Or.inl
          (containsSoftVariable_of_containsVariable hρ p hp)
      · exact Or.inr
          (containsSoftVariable_of_containsVariable hρ q hq)

theorem eval_not_crisp_of_containsSoftVariable
    {ρ : EdgeRelaxation.FuzzyTree.Valuation α} :
    ∀ t : Tree α,
      ContainsSoftVariable ρ t →
        ¬ EdgeRelaxation.DensityExpr.IsCrisp
          (EdgeRelaxation.FuzzyTree.eval ρ t)
  | .var _a, h => by
      simpa [ContainsSoftVariable, EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp] using h
  | .falsum, h => False.elim h
  | .truth, h => False.elim h
  | .neg p, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .conj p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .disj p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .impl p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .eqv p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]
  | .nand p q, _h => by
      simp [EdgeRelaxation.FuzzyTree.eval,
        EdgeRelaxation.DensityExpr.IsCrisp]

theorem eval_not_crisp_of_containsVariable
    {ρ : EdgeRelaxation.FuzzyTree.Valuation α}
    (hρ : ∀ a : α,
      ¬ EdgeRelaxation.EpsilonDensity.IsCrisp (ρ a))
    (t : Tree α)
    (h : ContainsVariable t) :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval ρ t) :=
  eval_not_crisp_of_containsSoftVariable t
    (containsSoftVariable_of_containsVariable hρ t h)

end FuzzyTree

/-- The three-row relaxed valuation assigns a non-crisp density to every atom. -/
theorem relaxedValuation_not_crisp
    (p : EdgeRelaxation.Line3) :
    ¬ EdgeRelaxation.EpsilonDensity.IsCrisp
      (EdgeRelaxation.relaxedValuation p) := by
  cases p <;> decide

/--
The ε-relaxed three-row valuation softens every finite tree that contains a
variable occurrence.
-/
theorem epsilon_relaxation_softens_finite_tree
    (t : Tree EdgeRelaxation.Line3)
    (h : EdgeRelaxation.FuzzyTree.ContainsVariable t) :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation t) :=
  EdgeRelaxation.FuzzyTree.eval_not_crisp_of_containsVariable
    EdgeRelaxation.relaxedValuation_not_crisp t h

/-- The active root tree is a variable-containing finite tree. -/
theorem activeRootTree_containsVariable :
    EdgeRelaxation.FuzzyTree.ContainsVariable
      EdgeRelaxation.activeRootTree := by
  simp [EdgeRelaxation.activeRootTree,
    EdgeRelaxation.FuzzyTree.ContainsVariable]

/-- The bounded unary tree is a variable-containing finite tree. -/
theorem boundedUnaryTree_containsVariable :
    EdgeRelaxation.FuzzyTree.ContainsVariable
      EdgeRelaxation.boundedUnaryTree := by
  simp [EdgeRelaxation.boundedUnaryTree,
    EdgeRelaxation.FuzzyTree.ContainsVariable]

theorem activeRootTree_relaxed_not_crisp_from_finite_tree :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation
        EdgeRelaxation.activeRootTree) :=
  EdgeRelaxation.epsilon_relaxation_softens_finite_tree
    EdgeRelaxation.activeRootTree
    EdgeRelaxation.activeRootTree_containsVariable

theorem boundedUnaryTree_relaxed_not_crisp_from_finite_tree :
    ¬ EdgeRelaxation.DensityExpr.IsCrisp
      (EdgeRelaxation.FuzzyTree.eval
        EdgeRelaxation.relaxedValuation
        EdgeRelaxation.boundedUnaryTree) :=
  EdgeRelaxation.epsilon_relaxation_softens_finite_tree
    EdgeRelaxation.boundedUnaryTree
    EdgeRelaxation.boundedUnaryTree_containsVariable

end EdgeRelaxation

end Boolean.Cube
```
