# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CryptographicCouplingObligation.Variant4e1bc3ba5a63a090beee3dc5f5376962fe0b8a24f36da3d28e1cdb988e31d9cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5289af5550fbec6560eb44d9b07d678134523d8f` · SHA-256 `4e1bc3ba5a63a090beee3dc5f5376962fe0b8a24f36da3d28e1cdb988e31d9cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.DeriveFintype

/-!
# Arithmetic--cryptographic coupling obligations

These obligations are independent of the arithmetic--modularity analytic
frontier.  Missing cryptographic evidence remains named unknownness.
-/

namespace Mathematics.Resolution

/-- Complete obligation vocabulary extracted from the corrected assessment. -/
inductive CryptographicCouplingObligation
  | securityGame
  | parameterSemantics
  | effectivePresentation
  | gamePreservingAutomorphisms
  | adversaryInvariant
  | oracleToConcreteReduction
  | queryToWork
  | bitfieldAdvantageBridge
  | zeroKnowledgeSimulator
  | knowledgeExtractor
  | succinctnessMechanism
  | quantumAccessModel
  | traceToAdversaryBridge
  | purityToHardnessBridge
  | holonomyToQueryProgress
  | arithmeticSecurityFunctor
  deriving DecidableEq, Repr, Fintype

inductive CryptographicCouplingStage
  | problem
  | effectiveSymmetry
  | adversary
  | concreteReduction
  | protocol
  | arithmeticBridge
  deriving DecidableEq, Repr

def CryptographicCouplingObligation.stage :
    CryptographicCouplingObligation → CryptographicCouplingStage
  | .securityGame
  | .parameterSemantics
  | .quantumAccessModel => .problem
  | .effectivePresentation
  | .gamePreservingAutomorphisms => .effectiveSymmetry
  | .adversaryInvariant => .adversary
  | .oracleToConcreteReduction
  | .queryToWork
  | .bitfieldAdvantageBridge => .concreteReduction
  | .zeroKnowledgeSimulator
  | .knowledgeExtractor
  | .succinctnessMechanism => .protocol
  | .traceToAdversaryBridge
  | .purityToHardnessBridge
  | .holonomyToQueryProgress
  | .arithmeticSecurityFunctor => .arithmeticBridge

/-- Certificate-conservative result for the separate cryptographic frontier. -/
inductive CryptographicCouplingVerdict (Claim : Prop)
  | certified (proof : Claim)
  | refuted (proof : ¬ Claim)
  | unknown
      (obligations : Finset CryptographicCouplingObligation)
      (nonempty : obligations.Nonempty)

namespace CryptographicCouplingVerdict

variable {Claim : Prop}

def IsCertified : CryptographicCouplingVerdict Claim → Prop
  | .certified _ => True
  | .refuted _ => False
  | .unknown _ _ => False

def IsRefuted : CryptographicCouplingVerdict Claim → Prop
  | .certified _ => False
  | .refuted _ => True
  | .unknown _ _ => False

def unknowns :
    CryptographicCouplingVerdict Claim →
      Finset CryptographicCouplingObligation
  | .certified _ => ∅
  | .refuted _ => ∅
  | .unknown obligations _ => obligations

theorem certified_sound
    (verdict : CryptographicCouplingVerdict Claim)
    (certified : verdict.IsCertified) :
    Claim := by
  cases verdict with
  | certified proof => exact proof
  | refuted _ => exact False.elim certified
  | unknown _ _ => exact False.elim certified

theorem refuted_sound
    (verdict : CryptographicCouplingVerdict Claim)
    (refuted : verdict.IsRefuted) :
    ¬ Claim := by
  cases verdict with
  | certified _ => exact False.elim refuted
  | refuted proof => exact proof
  | unknown _ _ => exact False.elim refuted

end CryptographicCouplingVerdict

end Mathematics.Resolution
```
