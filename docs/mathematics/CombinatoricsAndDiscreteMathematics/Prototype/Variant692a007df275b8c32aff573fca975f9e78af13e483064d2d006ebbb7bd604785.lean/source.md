# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Prototype.Variant692a007df275b8c32aff573fca975f9e78af13e483064d2d006ebbb7bd604785

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47ef5397bc94b130b2b6155619386d04870b771e` · SHA-256 `692a007df275b8c32aff573fca975f9e78af13e483064d2d006ebbb7bd604785`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Integration.WorldModelPrototype.Obstruction
import DAF.Integration.WorldModelPrototype.NegativeExamples
import Surface.ContinuousAssurance.WorldModel.ActiveRegion

/-!
# Integrated finite attention region

Attention is rooted at the Hamming-action and finite-homology wrappers.  Its
dependency closure is exactly the five-model prototype.  Every selected
version is the pinned registry version; no conflicting second version enters
the region.
-/

namespace DAF.Integration.WorldModelPrototype

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel

/-- The two semantic roots whose dependency closure reaches all five models. -/
def prototypeAttentionRoots : Finset prototypeRegistry.ModelId :=
  {.hammingGroupActions, .finiteEditHomology}

/-- Exact version-pinned dependency closure of the finite prototype. -/
def prototypeActiveRegion : ActiveModelRegion prototypeRegistry :=
  ActiveModelRegion.ofDependencyClosure prototypeRegistry
    prototypeAttentionRoots
    (fun model _ => prototypeRegistry.Version model)
    (fun _ _ => rfl)
    ⟨"attention:five-model-prototype:dependency-closure-v1"⟩

/-- The selected roots generate exactly all five model slots. -/
theorem prototypeActiveRegion_eq_univ :
    prototypeActiveRegion.activeModels = Finset.univ := by
  native_decide

/-- All five pinned versions are queryable inside the finite attention region. -/
theorem prototype_model_active (model : prototypeRegistry.ModelId) :
    model ∈ prototypeActiveRegion.activeModels := by
  rw [prototypeActiveRegion_eq_univ]
  simp

/-- Selected versions coincide exactly with registry versions. -/
theorem prototype_selectedVersion_eq
    (model : prototypeRegistry.ModelId)
    (member : model ∈ prototypeActiveRegion.activeModels) :
    prototypeActiveRegion.selectedVersion model member =
      prototypeRegistry.Version model :=
  rfl

/-- The prototype region omits no required semantic dependency. -/
theorem prototype_no_omitted_dependencies :
    prototypeActiveRegion.omittedDependencies = ∅ :=
  rfl

/-- The general least-closure theorem applies to the exact prototype roots. -/
theorem prototypeActiveRegion_is_least :
    prototypeAttentionRoots ⊆ prototypeActiveRegion.activeModels ∧
    (∀ {model}, model ∈ prototypeActiveRegion.activeModels →
      prototypeRegistry.dependencyGraph.dependsOn model ⊆
        prototypeActiveRegion.activeModels) ∧
    prototypeActiveRegion.omittedDependencies = ∅ ∧
    ∀ other : ActiveModelRegion prototypeRegistry,
      prototypeAttentionRoots ⊆ other.activeModels →
      (∀ {model}, model ∈ other.activeModels →
        prototypeRegistry.dependencyGraph.dependsOn model ⊆
          other.activeModels) →
      prototypeActiveRegion.activeModels ⊆ other.activeModels :=
  ActiveModelRegion.activeClosure_is_least_dependencyClosedRegion
    prototypeRegistry prototypeAttentionRoots
    (fun model _ => prototypeRegistry.Version model)
    (fun _ _ => rfl)
    ⟨"attention:five-model-prototype:dependency-closure-v1"⟩

/-- Compact completion predicate for the exact finite structural layer. -/
def PrototypeStructuralCompletion : Prop :=
  Fintype.card prototypeRegistry.ModelId = 5 ∧
  prototypeTranslationRegistry.entries.length = 6 ∧
  Fintype.card prototypeCarrier.Cell = 13 ∧
  prototypeCover.card = 3 ∧
  orientationLossObstruction.cochain ≠ 0 ∧
  ¬ PrototypeFamilyCompatible badPrototypeFamily

/-- The exact structural prototype meets its finite completion predicate. -/
theorem prototype_structural_completion : PrototypeStructuralCompletion := by
  exact ⟨prototypeRegistry_card,
    prototypeTranslationRegistry_card,
    prototypeCarrier_card,
    prototypeCover_card,
    orientationLossCochain_ne_zero,
    badPrototypeFamily_fails_gluing⟩

end DAF.Integration.WorldModelPrototype
```
