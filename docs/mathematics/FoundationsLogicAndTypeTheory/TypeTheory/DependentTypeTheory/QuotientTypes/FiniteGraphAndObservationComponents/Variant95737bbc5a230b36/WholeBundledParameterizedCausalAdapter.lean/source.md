# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.FiniteGraphAndObservationComponents.Variant95737bbc5a230b36.WholeBundledParameterizedCausalAdapter

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bae904e7087b85b94c61dfbf4abe8518805d1bf1` · SHA-256 `77de650bdefa4f2099a30230f967843abd9e279f6a79c67e506a55e01e0763f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeBundledParameterizedCausalAdapter - exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c
Organized SHA-256: 53c563009054356cc5829fbf36daea7fa9937caf6261eb2b6db5cebebc7f838c
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Whole existing original adapter between bundled DAF.System and parameterized ObservableRecursion.System, all carrier/observation fields, trace equality, causal-equivalence iff and full quotient equivalence with every embedded proof. Existing source-supplied bridge only. Root selected this complete seam after full individual source/provider reads. Original whole-file documentation below is retained unchanged and can also describe other components. Historical providers remain literal; no stronger quotient, equivalence, canonicality or semantic law is inferred.
-/

import DAF.Causal
import DAF.Causal.CausalState

/-!
# Observable-recursion system adapter

The original project parameterizes `ObservableRecursion.System` by its three
carrier types.  `DAF.System` bundles those carriers.  This adapter proves that
the two presentations have identical trace execution and causal quotients;
it does not create a second behavioral semantics.
-/

namespace DAF.Causal.ObservableAdapter

universe uI uS uR uO

/-- Bundle an existing observable-recursion system as a `DAF.System`. -/
def toDAF
    {Input : Type uI}
    {State : Type uS}
    {Resolution : Type uR}
    (M : ObservableRecursion.System Input State Resolution) : DAF.System where
  Input := Input
  State := State
  Resolution := Resolution
  Observation := M.Observation
  step := M.step
  observe := M.observe

/-- Forget the bundled carriers and recover the existing system presentation. -/
def toObservable
    (M : DAF.System) :
    ObservableRecursion.System M.Input M.State M.Resolution where
  Observation := M.Observation
  step := M.step
  observe := M.observe

@[simp]
theorem toDAF_run
    {Input : Type uI}
    {State : Type uS}
    {Resolution : Type uR}
    (M : ObservableRecursion.System Input State Resolution)
    (inputs : List Input)
    (state : State) :
    (toDAF M).run inputs state = M.run inputs state := by
  induction inputs generalizing state with
  | nil => rfl
  | cons input inputs ih =>
      simp only [ObservableRecursion.System.run_cons, toDAF]
      exact ih (M.step input state)

@[simp]
theorem toObservable_run
    (M : DAF.System)
    (inputs : List M.Input)
    (state : M.State) :
    (toObservable M).run inputs state = M.run inputs state := by
  induction inputs generalizing state with
  | nil => rfl
  | cons input inputs ih =>
      simp only [DAF.System.run_cons,
        ObservableRecursion.System.run_cons, toObservable]
      exact ih (M.step input state)

/-- Both APIs define exactly the same complete-future equivalence. -/
theorem toDAF_causalEquivalent_iff
    {Input : Type uI}
    {State : Type uS}
    {Resolution : Type uR}
    (M : ObservableRecursion.System Input State Resolution)
    (x y : State) :
    (toDAF M).CausalEquivalent x y ↔ M.CausalEquivalent x y := by
  constructor
  · intro h inputs resolution
    have hfuture := h inputs resolution
    rw [toDAF_run M inputs x, toDAF_run M inputs y] at hfuture
    exact hfuture
  · intro h inputs resolution
    rw [toDAF_run M inputs x, toDAF_run M inputs y]
    exact h inputs resolution

/-- The old and bundled presentations have canonically equivalent causal states. -/
noncomputable def causalStateEquiv
    {Input : Type uI}
    {State : Type uS}
    {Resolution : Type uR}
    (M : ObservableRecursion.System Input State Resolution) :
    (toDAF M).CausalState ≃ M.CausalState where
  toFun := Quotient.map id (by
    intro x y h
    exact (toDAF_causalEquivalent_iff M x y).1 h)
  invFun := Quotient.map id (by
    intro x y h
    exact (toDAF_causalEquivalent_iff M x y).2 h)
  left_inv := by
    intro causal
    refine Quotient.inductionOn causal ?_
    intro state
    rfl
  right_inv := by
    intro causal
    refine Quotient.inductionOn causal ?_
    intro state
    rfl

@[simp]
theorem causalStateEquiv_toCausal
    {Input : Type uI}
    {State : Type uS}
    {Resolution : Type uR}
    (M : ObservableRecursion.System Input State Resolution)
    (state : State) :
    causalStateEquiv M ((toDAF M).toCausal state) = M.toCausal state :=
  rfl

end DAF.Causal.ObservableAdapter
```
