# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RadoProjectedHeatflow.Variant011011698a9d2241c070b1d36068c352221cd0729ca39722e5cf6bdbcffd394b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `888db26986343d66b80613d56174cd6bdb0f915c` · SHA-256 `011011698a9d2241c070b1d36068c352221cd0729ca39722e5cf6bdbcffd394b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Center.RadoModularHeatflow
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.All

set_option autoImplicit false

namespace Think.Pipeline.Center.RadoProjectedHeatflow

structure SelectedOptions where
  subsetMode : String
  projection : String
  heatGraph : String
  heatKernel : String
  group : String
  weightRule : String
  qCoefficients : String
  residueModel : String
  pairCorrelation : String
  layout : String
  witnessPolicy : String
  pruningPolicy : String
deriving DecidableEq, Repr

def selectedOptions : SelectedOptions :=
  { subsetMode := "finite_induced"
    projection := "residue_directed + orbit_quotient"
    heatGraph := "hybrid: tree + phase/pole + target/witness + aggregator"
    heatKernel := "chebyshev_accelerated_laplacian_exp"
    group := "typed_wreath + phase_reflection"
    weightRule := "heat + residue_pressure + phase_symmetric + orbit_average"
    qCoefficients := "structural + phase + pole + residue + witness"
    residueModel := "weighted_additive + boundary_corrected"
    pairCorrelation := "montgomery_gue_regularizer"
    layout := "residue_shells"
    witnessPolicy := "on_residue_threshold"
    pruningPolicy := "contract_when_objective_decreases" }

def requiredCanonicalPaths : List String :=
  [ "formal/Think/Pipeline/Phases/PhaseTable.lean"
  , "formal/Think/Pipeline/Phases/PhaseSymmetry.lean"
  , "formal/Think/Pipeline/Phases/PhaseResidue.lean"
  , "formal/Think/Poles/Classifier.lean"
  , "formal/Think/SourceTree/RadoProjected/Canonical.lean"
  ]

def listCovers (required actual : List String) : Prop :=
  ∀ p : String, p ∈ required -> p ∈ actual

def witnessTargetsCovered
    (witnesses : List Think.RadoProjectedModularHeatflow.PrunedWitness)
    (tree : List String) : Prop :=
  listCovers (witnesses.map (fun w => w.newPath)) tree

def witnessesRecorded
    (witnesses : List Think.RadoProjectedModularHeatflow.PrunedWitness) : Prop :=
  witnesses.length = 2

def boundaryDisciplinePreserved
    (options : SelectedOptions) (projectedCore : String) : Prop :=
  options.pairCorrelation = "montgomery_gue_regularizer" ∧
    projectedCore = "formal/Think/Pipeline/Center"

structure CanonicalizationPass where
  inputTree : String
  projectedCore : String
  centralFixedPhase : Nat
  phaseTablePath : String
  poleFamilyRoot : String
  prunedTree : List String
  contractionWitnesses :
    List Think.RadoProjectedModularHeatflow.PrunedWitness
  importClosurePreserved : listCovers requiredCanonicalPaths prunedTree
  validationCoveragePreserved :
    "formal/Think/SourceTree/RadoProjected/Canonical.lean" ∈ prunedTree
  noMathematicalContentDeleted :
    witnessTargetsCovered contractionWitnesses prunedTree ∧
      witnessesRecorded contractionWitnesses
  theoremAuthorityNotUpgraded :
    boundaryDisciplinePreserved selectedOptions projectedCore

def canonicalizationPass : CanonicalizationPass :=
  { inputTree := "formal"
    projectedCore := Think.RadoProjectedModularHeatflow.projectedCore
    centralFixedPhase := Think.RadoProjectedModularHeatflow.centralFixedPhase
    phaseTablePath := "formal/Think/Pipeline/Phases/PhaseTable.lean"
    poleFamilyRoot := "formal/Think/Poles"
    prunedTree := Think.RadoProjectedModularHeatflow.idealPrunedTree
    contractionWitnesses :=
      [ Think.RadoProjectedModularHeatflow.phase37Witness
      , Think.RadoProjectedModularHeatflow.classifierWeightScoreWitness
      ]
    importClosurePreserved := by
      intro p hp
      simp [requiredCanonicalPaths] at hp
      rcases hp with hp | hp | hp | hp | hp
      · subst p
        simp [Think.RadoProjectedModularHeatflow.idealPrunedTree]
      · subst p
        simp [Think.RadoProjectedModularHeatflow.idealPrunedTree]
      · subst p
        simp [Think.RadoProjectedModularHeatflow.idealPrunedTree]
      · subst p
        simp [Think.RadoProjectedModularHeatflow.idealPrunedTree]
      · subst p
        simp [Think.RadoProjectedModularHeatflow.idealPrunedTree]
    validationCoveragePreserved := by
      decide
    noMathematicalContentDeleted := by
      constructor
      · intro p hp
        simp
          [Think.RadoProjectedModularHeatflow.phase37Witness,
            Think.RadoProjectedModularHeatflow.classifierWeightScoreWitness] at hp
        rcases hp with hp | hp
        · subst p
          simp [Think.RadoProjectedModularHeatflow.idealPrunedTree]
        · subst p
          simp [Think.RadoProjectedModularHeatflow.idealPrunedTree]
      · rfl
    theoremAuthorityNotUpgraded := by
      exact ⟨rfl, rfl⟩ }

def passResidue : Think.Residue :=
  { target := FWR.Target.RadoProjectedModularHeatflow
    atomId := "source-tree-rado-projected-canonicalization"
    kind := FWR.ResidueKind.missingTraceQuotient
    blocks :=
      "physical source-tree pruning is represented by finite contraction witnesses, not by theorem authority"
    clearsBy :=
      "checked import closure, validation coverage, and residue-preserving contraction receipts for every moved file" }

def finalClaim : Prop :=
  listCovers requiredCanonicalPaths canonicalizationPass.prunedTree ∧
    "formal/Think/SourceTree/RadoProjected/Canonical.lean" ∈
      canonicalizationPass.prunedTree ∧
    witnessTargetsCovered
      canonicalizationPass.contractionWitnesses
      canonicalizationPass.prunedTree ∧
    witnessesRecorded canonicalizationPass.contractionWitnesses ∧
    boundaryDisciplinePreserved
      selectedOptions
      canonicalizationPass.projectedCore

def finalWitness : Think.Checked finalClaim :=
  FWR.Checked.residue [passResidue]

theorem finalWitness_hasResidue :
    finalWitness.hasResidue = true := by
  rfl

theorem projectedCore_is_center :
    canonicalizationPass.projectedCore = "formal/Think/Pipeline/Center" := by
  rfl

theorem centralFixedPhase_is_30 :
    canonicalizationPass.centralFixedPhase = 30 := by
  rfl

theorem canonicalization_requiredPathsCovered :
    listCovers requiredCanonicalPaths canonicalizationPass.prunedTree :=
  canonicalizationPass.importClosurePreserved

theorem canonicalization_witnessTargetsCovered :
    witnessTargetsCovered
      canonicalizationPass.contractionWitnesses
      canonicalizationPass.prunedTree :=
  canonicalizationPass.noMathematicalContentDeleted.1

theorem canonicalization_boundaryDisciplinePreserved :
    boundaryDisciplinePreserved
      selectedOptions
      canonicalizationPass.projectedCore :=
  canonicalizationPass.theoremAuthorityNotUpgraded

end Think.Pipeline.Center.RadoProjectedHeatflow
```
