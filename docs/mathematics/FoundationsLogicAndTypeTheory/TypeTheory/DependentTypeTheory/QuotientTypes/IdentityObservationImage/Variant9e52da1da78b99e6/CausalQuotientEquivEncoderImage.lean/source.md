# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.IdentityObservationImage.Variant9e52da1da78b99e6.CausalQuotientEquivEncoderImage

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `393b778415e03dede2d95b26e269c048ef67f824` · SHA-256 `9b9abc4cfadcae92132ae658281b4cb6851c6fd3cd6acb5fce6b7ca9c52e1e8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CausalQuotientEquivEncoderImage — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9e52da1da78b99e607c32e96eab1e84ce7ce32f26cd8ab5a0117a94e80846556
Organized SHA-256: 6731d5d5721fb0cb21f7269b937b64d94c6895fc4e35cd695587a5c265acff4c
PMD: 510.0.070.020.080 quotient types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Entire noncomputable Quotient.map id construction, both well-definedness proofs, both quotient-induction inverse proofs and trans with original Q.quotientEquivEffective retained. EffectiveState is the realized encoder image, not all matrices or concrete states; no finite-state assumption, surjective encoder or causal system isomorphism is asserted. -/

import DAF.Causal.QuantizerTower
import BitMatrix.Quantization.Core

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.IdentityObservationImage.Variant9e52da1da78b99e6.IdentityRecursionAndKernelEquality

/-!
# Boolean-matrix quantizers as causal observations

This domain adapter connects the generic DAF causal recursion to
`BitMatrix.Quantizer`.  It remains downstream of both abstractions: the owning
DAF causal modules do not import the BitMatrix domain.
-/

open ObservableRecursion

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.IdentityObservationImage.Variant9e52da1da78b99e6


open BitMatrix

universe uQ

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


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.IdentityObservationImage.Variant9e52da1da78b99e6
```
