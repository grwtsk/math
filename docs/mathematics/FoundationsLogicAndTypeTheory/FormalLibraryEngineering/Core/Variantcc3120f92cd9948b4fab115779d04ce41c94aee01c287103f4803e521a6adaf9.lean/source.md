# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variantcc3120f92cd9948b4fab115779d04ce41c94aee01c287103f4803e521a6adaf9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4c4806508244e04b8e1a09ebc79667b9be87fec` · SHA-256 `cc3120f92cd9948b4fab115779d04ce41c94aee01c287103f4803e521a6adaf9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.SemanticIdentity

/-! # Systems and natural transformations -/

namespace Mathematics.System

universe u v w

/-- A deterministic state machine with a separate observation map. -/
structure System (State : Type u) (Input : Type v) (Output : Type w) where
  step : State → Input → State
  observe : State → Output

universe u₁ v₁ w₁

/-- A morphism preserves both transition and observation structure. -/
structure SystemHom
    {State : Type u} {Input : Type v} {Output : Type w}
    {State' : Type u₁} {Input' : Type v₁} {Output' : Type w₁}
    (source : System State Input Output)
    (target : System State' Input' Output') where
  mapState : State → State'
  mapInput : Input → Input'
  mapOutput : Output → Output'
  step_naturality :
    ∀ state input,
      mapState (source.step state input) =
        target.step (mapState state) (mapInput input)
  observe_naturality :
    ∀ state,
      mapOutput (source.observe state) =
        target.observe (mapState state)

namespace SystemHom

def identity (system : System State Input Output) : SystemHom system system where
  mapState := id
  mapInput := id
  mapOutput := id
  step_naturality := by intros; rfl
  observe_naturality := by intros; rfl

def comp
    {source : System State Input Output}
    {middle : System State' Input' Output'}
    {target : System State'' Input'' Output''}
    (after : SystemHom middle target)
    (before : SystemHom source middle) :
    SystemHom source target where
  mapState := after.mapState ∘ before.mapState
  mapInput := after.mapInput ∘ before.mapInput
  mapOutput := after.mapOutput ∘ before.mapOutput
  step_naturality := by
    intro state input
    simp only [Function.comp_apply, before.step_naturality, after.step_naturality]
  observe_naturality := by
    intro state
    simp only [Function.comp_apply, before.observe_naturality,
      after.observe_naturality]

end SystemHom

end Mathematics.System
```
