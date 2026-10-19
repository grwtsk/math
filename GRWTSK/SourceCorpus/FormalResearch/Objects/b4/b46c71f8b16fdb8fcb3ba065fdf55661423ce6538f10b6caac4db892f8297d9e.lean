import FCRS.TheoremTransfer.MultiSourceExample

namespace FCRS.TheoremTransfer.Cycle7.StructuralNonessentiality

open FCRS.TheoremTransfer.MultiSourceExample

/--
Both exact source leaves are present, but the root rule deliberately ignores
their proof objects. This is accepted structural coverage and is not presented
as counterfactual logical essentiality by the repaired API or documentation.
-/
def decorativeExpression : MultiSourceInferenceExpression Bool
    (fun index =>
      (sourceTranslation index).mapProposition (sourceTheorem index).proposition)
    (True ∧ True) :=
  .inference
    (PremiseIndex := Bool)
    (premiseProposition := fun _ => True)
    (version "cycle-7-decorative-rule")
    (fun index => .source index)
    (fun _proofs => ⟨True.intro, True.intro⟩)

/-- A full record update succeeds only after rebuilding the dependent joins. -/
def decorativeDerivation : MultiSourceTheoremTransferDerivation
    targetVersion targetAssumptions targetScope := {
  derivation with
  jointInferenceArtifact := version "cycle-7-structural-only-inference"
  jointInferenceExpression := decorativeExpression
  derivedProofObjectExact := by intros; rfl
  sourceLeafDependency := fun index => {
    expressionUsesSource := ⟨index, rfl⟩
    dependency := match index with
      | false => .left
      | true => .right
  }
  edgeKindExact := by intro index; cases index <;> rfl
  bridgeArtifactExact := by intro index; cases index <;> rfl
  evidenceArtifactExact := by intro index; cases index <;> rfl
}

theorem decorative_expression_covers_both :
    decorativeDerivation.jointInferenceExpression.UsesSource false ∧
      decorativeDerivation.jointInferenceExpression.UsesSource true := by
  exact ⟨decorativeDerivation.sourceLeafCoverage false,
    decorativeDerivation.sourceLeafCoverage true⟩

theorem decorative_expression_keeps_exact_fan_in :
    ∃ left right : decorativeDerivation.SourceIndex,
      left ≠ right ∧
      decorativeDerivation.sourceNode left ≠ decorativeDerivation.sourceNode right := by
  obtain ⟨left, right, distinct, nodeDistinct, _, _⟩ :=
    decorativeDerivation.hasDistinctFanIn
  exact ⟨left, right, distinct, nodeDistinct⟩

#check decorativeDerivation
#check decorative_expression_covers_both
#check decorative_expression_keeps_exact_fan_in

end FCRS.TheoremTransfer.Cycle7.StructuralNonessentiality
