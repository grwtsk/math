# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Validation.Variant6cee1e07a33d355c39c6a2060ff161097e87b92fc0b6560bc1fd619f589e4da5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d669b5df17a47ded1cf0bbe3ddc19f4a3b6927f0` · SHA-256 `f4618ae0e3326655693d96be7ace857e539f8fbebb217d7be0edcca58155f127`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassifiedCutValidator.Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ClassifiedCutValidator.Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed","mathematical_subject":"Foundations.Unclassified","original_sha256":"77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/Validation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.Cut

/-!
# Total classified cut validation

Validation decides only the top-level invocation envelope.  A failed proof
object is not a cut failure and therefore cannot enter this classifier.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClassifiedCutValidator.Variant77d12b6f6de89702e1fdf6a68a11dad34e2dc6737a04a970de786424f092c0ed

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
