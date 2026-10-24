# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ArithmeticSecurityMacro.Variant773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f6d33f4b3974a2e8f3035b6f3d9b35d6ebf8efe` · SHA-256 `773960d74ccabb0ff5b28fba313e5c7031c6de1017a59badc8030a00fa3ade8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic
import Mathematics.Resolution.ArithmeticSecurityDependency

/-!
# Three terminal arithmetic-security macro-unknowns

The three-node terminal state is authoritative.  Each node expands to its
machine-readable internal obligations without changing the terminal status.
-/

namespace Mathematics.Resolution

inductive ArithmeticSecurityMacroObligation
  | arithmeticSecurityFunctor
  | traceToAdversaryBridge
  | purityToHardnessBridge
  deriving DecidableEq, Repr, Fintype

/-- Canonical presentation order of the exact terminal expression. -/
def terminalArithmeticSecurityMacroOrder :
    List ArithmeticSecurityMacroObligation :=
  [
    .arithmeticSecurityFunctor,
    .traceToAdversaryBridge,
    .purityToHardnessBridge
  ]

theorem terminalArithmeticSecurityMacroOrder_nodup :
    terminalArithmeticSecurityMacroOrder.Nodup := by
  native_decide

def ArithmeticSecurityMacroObligation.refinement :
    ArithmeticSecurityMacroObligation →
      Finset ArithmeticSecurityObligation
  | .arithmeticSecurityFunctor =>
      {
        .effectiveArithmeticSource,
        .effectiveEncoding,
        .oracleIncidence,
        .resourceNaturality,
        .securityGameSemantics,
        .concreteReduction
      }
  | .traceToAdversaryBridge =>
      {
        .traceToKernelLift,
        .outputSeparation,
        .adversaryFeasibility,
        .kernelNondegeneracy,
        .cancellationControl
      }
  | .purityToHardnessBridge =>
      {
        .arithmeticQueryLocality,
        .purityLocalityTheorem,
        .schurContraction,
        .uniformCoordinateBound,
        .exponentialScaleIdentification
      }

theorem arithmeticSecurityFunctor_refinement_card :
    ArithmeticSecurityMacroObligation.arithmeticSecurityFunctor
        |>.refinement.card = 6 := by
  native_decide

theorem traceToAdversaryBridge_refinement_card :
    ArithmeticSecurityMacroObligation.traceToAdversaryBridge
        |>.refinement.card = 5 := by
  native_decide

theorem purityToHardnessBridge_refinement_card :
    ArithmeticSecurityMacroObligation.purityToHardnessBridge
        |>.refinement.card = 5 := by
  native_decide

def terminalArithmeticSecurityMacros :
    Finset ArithmeticSecurityMacroObligation :=
  Finset.univ

theorem terminalArithmeticSecurityMacroOrder_toFinset :
    terminalArithmeticSecurityMacroOrder.toFinset =
      terminalArithmeticSecurityMacros := by
  native_decide

theorem terminalArithmeticSecurityMacros_card :
    terminalArithmeticSecurityMacros.card = 3 := by
  native_decide

inductive ArithmeticSecurityMacroVerdict (Claim : Prop)
  | certified (proof : Claim)
  | refuted (proof : ¬ Claim)
  | unknown
      (obligations : Finset ArithmeticSecurityMacroObligation)
      (nonempty : obligations.Nonempty)

namespace ArithmeticSecurityMacroVerdict

variable {Claim : Prop}

def IsCertified : ArithmeticSecurityMacroVerdict Claim → Prop
  | .certified _ => True
  | .refuted _ => False
  | .unknown _ _ => False

def IsRefuted : ArithmeticSecurityMacroVerdict Claim → Prop
  | .certified _ => False
  | .refuted _ => True
  | .unknown _ _ => False

def unknowns :
    ArithmeticSecurityMacroVerdict Claim →
      Finset ArithmeticSecurityMacroObligation
  | .certified _ => ∅
  | .refuted _ => ∅
  | .unknown obligations _ => obligations

end ArithmeticSecurityMacroVerdict

def terminalArithmeticSecurityVerdict
    (Claim : Prop) :
    ArithmeticSecurityMacroVerdict Claim :=
  .unknown terminalArithmeticSecurityMacros (by
    exact ⟨.arithmeticSecurityFunctor, by
      simp [terminalArithmeticSecurityMacros]⟩)

@[simp]
theorem terminalArithmeticSecurityVerdict_unknowns
    (Claim : Prop) :
    (terminalArithmeticSecurityVerdict Claim).unknowns =
      terminalArithmeticSecurityMacros :=
  rfl

@[simp]
theorem terminalArithmeticSecurityVerdict_not_certified
    (Claim : Prop) :
    ¬ (terminalArithmeticSecurityVerdict Claim).IsCertified :=
  id

@[simp]
theorem terminalArithmeticSecurityVerdict_not_refuted
    (Claim : Prop) :
    ¬ (terminalArithmeticSecurityVerdict Claim).IsRefuted :=
  id

end Mathematics.Resolution
```
