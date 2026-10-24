# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CurvatureBalance.Variantfe28175b88f4b08c4fcc866fa5f7cf86f676733856c69849953ec258f43ca27d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e59b10078cf47f3b84a366f9818f1bbfc383f4a2` · SHA-256 `fe28175b88f4b08c4fcc866fa5f7cf86f676733856c69849953ec258f43ca27d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrix.Stream.TensorIntegrity

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Stream

structure CurvatureBalance where
  integrity : TensoralIntegrity
  balanced : Bool
  curvatureMatrix :
    BinaryLogicMatrix
      integrity.left.carrier.rows
      integrity.right.carrier.cols
  defect? : Option IntegrityDefect
  balanceRequiresRepair :
    balanced = false → defect?.isSome = true
  claimBoundary : List String

structure TheoremCreationObligation where
  obligationName : String
  sourceBalance : CurvatureBalance
  proposedStatement : String
  requiredFrames : List Frame
  requiredDefects : List IntegrityDefect
  requiredFoundations : List String
  notYetKernelChecked : Prop
  claimBoundary : List String

theorem unbalanced_curvature_creates_theorem_obligation
    (B : CurvatureBalance)
    (_h : B.balanced = false) :
    ∃ O : TheoremCreationObligation,
      O.sourceBalance = B ∧ O.notYetKernelChecked := by
  let O : TheoremCreationObligation := {
    obligationName := "polar_tensor_integrity_repair"
    sourceBalance := B
    proposedStatement :=
      "Resolve polar tensor-integrity curvature defect before stream emission."
    requiredFrames := []
    requiredDefects :=
      match B.defect? with
      | none => []
      | some d => [d]
    requiredFoundations := []
    notYetKernelChecked := True
    claimBoundary := [
      "Curvature imbalance creates a theorem obligation, not proof authority.",
      "Lean kernel checking is required before the obligation becomes a theorem."
    ]
  }
  exact ⟨O, rfl, True.intro⟩

end Stream
end BinaryLogicMatrix
end Surface.Legacy
```
