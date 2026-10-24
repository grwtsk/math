# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CausalQuantizer.Variant5ac38d8825f9959f32cabccb8580e0118ac3963269b6f4023133f68a0e6eae15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad8ac3c6aba5a0694aa36b66739ce0590406c43a` · SHA-256 `e6533d54e278e476d39cf0d339d5d101efeca751843d160b5db1b4f3742fbe52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantizerIdentitySystem.Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.QuantizerIdentitySystem.Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556","mathematical_subject":"Computation.DataStructures","original_sha256":"9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Adapters/CausalQuantizer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Causal.QuantizerTower
import BitMatrix.Quantization.Core

/-!
# Boolean-matrix quantizers as causal observations

This domain adapter connects the generic DAF causal recursion to
`BitMatrix.Quantizer`.  It remains downstream of both abstractions: the owning
DAF causal modules do not import the BitMatrix domain.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.QuantizerIdentitySystem.Variant9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556

open ObservableRecursion

namespace BitMatrix.Adapters.CausalObservation

open BitMatrix

universe uQ

/-- The identity recursion observed by one existing Boolean-matrix quantizer. -/
def quantizerIdentitySystem
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n) :
    System PUnit State PUnit where
  Observation := fun _ => BitMatrix m n
  step := fun _ state => state
  observe := fun _ => Q.encode

private theorem quantizerIdentitySystem_run
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n)
    (inputs : List PUnit)
    (x : State) :
    (quantizerIdentitySystem Q).run inputs x = x := by
  induction inputs generalizing x with
  | nil => rfl
  | cons input rest ih =>
      simpa [quantizerIdentitySystem] using ih x

/-- For identity recursion, causal equivalence is static indistinguishability. -/
theorem causalEquivalent_identity_iff_indistinguishable
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n)
    (x y : State) :
    (quantizerIdentitySystem Q).CausalEquivalent x y ↔
      Q.Indistinguishable x y := by
  constructor
  · intro h
    change Q.encode x = Q.encode y
    exact h [] PUnit.unit
  · intro h inputs ρ
    rw [quantizerIdentitySystem_run, quantizerIdentitySystem_run]
    exact h

/-- The dynamic identity quotient is exactly the quantizer's effective image. -/
noncomputable def identityCausalStateEquivEffectiveState
    {State : Type uQ}
    {m n : Nat}
    (Q : Quantizer State m n) :
    (quantizerIdentitySystem Q).CausalState ≃ Q.EffectiveState :=
  let quotientEquiv :
      (quantizerIdentitySystem Q).CausalState ≃ Quotient Q.setoid :=
    {
      toFun := Quotient.map id (by
        intro x y h
        exact (causalEquivalent_identity_iff_indistinguishable Q x y).1 h)
      invFun := Quotient.map id (by
        intro x y h
        exact (causalEquivalent_identity_iff_indistinguishable Q x y).2 h)
      left_inv := by
        intro c
        refine Quotient.inductionOn c ?_
        intro x
        rfl
      right_inv := by
        intro c
        refine Quotient.inductionOn c ?_
        intro x
        rfl
    }
  quotientEquiv.trans Q.quotientEquivEffective

end BitMatrix.Adapters.CausalObservation
```
