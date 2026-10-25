# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fd007d811c6a367299e4efac7ba87e4794abd07` · SHA-256 `77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Cut

/-!
# Total classified cut validation

Validation decides only the top-level invocation envelope.  A failed proof
object is not a cut failure and therefore cannot enter this classifier.
-/

namespace Mathematics.Resolution

universe u v w

structure ClassifiedCutValidator
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    extends CutValidator Obligation Proof Event where
  classifyFailure :
    InvocationCut Obligation Proof Event → CutFailure

inductive CutValidation
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (validator :
      ClassifiedCutValidator Obligation Proof Event)
    (cut : InvocationCut Obligation Proof Event)
  | valid (evidence : validator.Valid cut)
  | invalid
      (failure : CutFailure)
      (evidence : ¬ validator.Valid cut)

def validateCut
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (validator :
      ClassifiedCutValidator Obligation Proof Event)
    (cut : InvocationCut Obligation Proof Event) :
    CutValidation validator cut :=
  if evidence : validator.Valid cut then
    .valid evidence
  else
    .invalid (validator.classifyFailure cut) evidence

def CutValidation.IsRejected
    {Obligation : Type u}
    {Proof : Type v}
    {Event : Type w}
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    {validator :
      ClassifiedCutValidator Obligation Proof Event}
    {cut : InvocationCut Obligation Proof Event} :
    CutValidation validator cut → Prop
  | .valid _ => False
  | .invalid _ _ => True

theorem validateCut_rejected_exactly_when_invalid
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (validator :
      ClassifiedCutValidator Obligation Proof Event)
    (cut : InvocationCut Obligation Proof Event) :
    (validateCut validator cut).IsRejected ↔
      ¬ validator.Valid cut := by
  by_cases current : validator.Valid cut
  · simp [validateCut, current, CutValidation.IsRejected]
  · simp [validateCut, current, CutValidation.IsRejected]

end Mathematics.Resolution
```
