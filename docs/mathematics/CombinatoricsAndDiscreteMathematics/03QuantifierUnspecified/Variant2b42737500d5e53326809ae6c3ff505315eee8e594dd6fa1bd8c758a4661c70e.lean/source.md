# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.03QuantifierUnspecified.Variant2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7d02113c73489df9688ad8de682af822d5d3e55` · SHA-256 `2b42737500d5e53326809ae6c3ff505315eee8e594dd6fa1bd8c758a4661c70e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS

namespace FCRS.TheoremTransfer.Cycle3QuantifierWitness

def version (name : String) : VersionId :=
  .atomic ⟨"https://example.invalid/cycle-3", name, "1", "sha256:" ++ name⟩

def boolTheory : Theory where
  Object := Bool
  Proposition := Unit
  Holds := fun _ => True
  ProofObject := fun _ => Unit
  proofObjectSound := fun _ => True.intro
  reifyProofObject := fun _ => ()
  propositionSupport := fun _ => .nullary
  propositionProperty := fun _ _ => True

def natTheory : Theory where
  Object := Nat
  Proposition := Unit
  Holds := fun _ => True
  ProofObject := fun _ => Unit
  proofObjectSound := fun _ => True.intro
  reifyProofObject := fun _ => ()
  propositionSupport := fun _ => .nullary
  propositionProperty := fun _ _ => True

def foundation : Foundation := ⟨version "foundation", .DependentTypeTheory⟩
def neutral : QuantifierProfile := QuantifierProfile.unspecified (version "neutral")

def boolVersion : MathematicalTheoryVersion boolTheory foundation where
  artifact := version "bool-theory"
  theoryIdentity := ⟨"https://example.invalid/cycle-3", "bool-theory"⟩
  signatureVersion := version "bool-signature"
  axiomSetVersion := version "bool-axioms"
  definitionSetVersion := version "bool-definitions"
  importedTheoryVersions := []
  semanticRegime := "finite Bool carrier"
  quantifierProfile := neutral
  formalizationArtifactVersion := version "bool-formalization"
  releaseStatus := .Draft
  provenance := []

def natVersion : MathematicalTheoryVersion natTheory foundation where
  artifact := version "nat-theory"
  theoryIdentity := ⟨"https://example.invalid/cycle-3", "nat-theory"⟩
  signatureVersion := version "nat-signature"
  axiomSetVersion := version "nat-axioms"
  definitionSetVersion := version "nat-definitions"
  importedTheoryVersions := []
  semanticRegime := "infinite Nat carrier"
  quantifierProfile := neutral
  formalizationArtifactVersion := version "nat-formalization"
  releaseStatus := .Draft
  provenance := []

def boolAssumptions := AssumptionSet.empty boolTheory (version "bool-assumptions")
def natAssumptions := AssumptionSet.empty natTheory (version "nat-assumptions")
def boolScope := TransferScope.universal boolTheory (version "bool-scope")
def natScope := TransferScope.universal natTheory (version "nat-scope")

/-- Structurally accepted finite-to-infinite transfer with both regimes omitted. -/
def finiteToInfiniteTranslation : Translation boolTheory natTheory
    boolVersion natVersion boolAssumptions natAssumptions boolScope natScope where
  artifact := version "finite-to-infinite"
  lineage := .atomic (version "finite-to-infinite")
  lineageArtifactExact := rfl
  foundationInterpretation := .identity foundation (version "foundation-identity")
  mapObject := by
    change Bool → Nat
    exact fun b => if b then 1 else 0
  mapProposition := id
  assumptionTranslation := {
    artifact := version "assumption-translation"
    mapIndex := fun i => nomatch i.down
    propositionExact := fun i => nomatch i.down
  }
  targetAssumptionPartition := { classify := fun i => nomatch i.down }
  scopeTranslation := ⟨by intros; trivial⟩
  propositionScopeTranslation := by intros; trivial
  quantifierTransform := ⟨version "quantifier-transform", neutral, neutral, rfl⟩
  quantifierSourceExact := rfl
  quantifierTargetExact := rfl
  informationLoss := [{
    artifact := version "loss"
    classification := .Partial
    declaredScope := "all"
    forgottenInformation := ["cardinality regime omitted"]
    assessmentArtifact := version "loss-assessment"
  }]
  informationLossNonempty := by simp
  canonicality := []

example : Fintype Bool := inferInstance
example : Infinite Nat := inferInstance

#check finiteToInfiniteTranslation

end FCRS.TheoremTransfer.Cycle3QuantifierWitness
```
