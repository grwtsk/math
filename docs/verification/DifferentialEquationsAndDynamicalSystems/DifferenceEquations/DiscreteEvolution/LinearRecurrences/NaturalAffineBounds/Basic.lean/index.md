# Verification target: GRWTSK.DynamicalSystems.DifferenceEquations.DiscreteEvolution.LinearRecurrences.NaturalAffineBounds.Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66779dea219b83824d3a051d49762e96821f2f5a",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean/index.md) · [Full source](../../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66779dea219b83824d3a051d49762e96821f2f5a`.

Source path: `GRWTSK/DynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [constantAffineBound](../../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean/declarations/constantaffinebound--d8d10b5d8dee37468a8040ea.md) | 21 | `declaration-track:d8d10b5d8dee37468a8040eafcd3eb30c09696b31b5dfd556e249a14c4566b0f` |
| 2 | `theorem` | [constantAffineBound_zero](../../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean/declarations/constantaffinebound-zero--b6120131aee498eac31be117.md) | 25 | `result-track:b6120131aee498eac31be117cf5deaba871ca283b6aa5ef0edf174a8d5841d30` |
| 3 | `theorem` | [constantAffineBound_succ](../../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean/declarations/constantaffinebound-succ--d88b0bb156a14100765ace96.md) | 28 | `result-track:d88b0bb156a14100765ace96a2ae0e605bbb6482a4655c2dec9d395e84504c24` |
| 4 | `theorem` | [iterated_affine_defect_bound](../../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DifferenceEquations/DiscreteEvolution/LinearRecurrences/NaturalAffineBounds/Basic.lean/declarations/iterated-affine-defect-bound--5d22ee4f7ccde501e488d606.md) | 33 | `result-track:5d22ee4f7ccde501e488d6061b55081cae00c31dcfd3e492bf3f2ccef41dce76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
