# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObservableAdapter.Variant5781c91795648599eb1a8c7dd52ca09fcc4927b482949a2484e80ed40d1df74f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ef51f2f86e2a12bc538e2bd0e2bbfd8e3e6d780` · SHA-256 `30519ece7e98409b0fc73698403798cd53759bd152e3dc32c020b37d317bea3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToDAF.Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToDAF.Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c","mathematical_subject":"Computation.DataStructures","original_sha256":"95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Causal/ObservableAdapter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Causal
import DAF.Causal.CausalState

/-!
# Observable-recursion system adapter

The original project parameterizes `ObservableRecursion.System` by its three
carrier types.  `DAF.System` bundles those carriers.  This adapter proves that
the two presentations have identical trace execution and causal quotients;
it does not create a second behavioral semantics.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToDAF.Variant95737bbc5a230b365d23057af65ce8216701785e962adf9116d4fd714ad4915c

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
