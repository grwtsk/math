# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.QuotientTypes.FiniteGraphAndObservationComponents.Variant95737bbc5a230b36.WholeBundledParameterizedCausalAdapter

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bae904e7087b85b94c61dfbf4abe8518805d1bf1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/index.md) · [Full source](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bae904e7087b85b94c61dfbf4abe8518805d1bf1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal` — import line 21; external provider; requires a separately pinned dependency.
- `DAF.Causal.CausalState` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDAF](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/declarations/todaf--861cc42950e70c7510b3ef5b.md) | 38 | `declaration-track:861cc42950e70c7510b3ef5bc38f6e68454bf958a1b821fe790a493eec6a9833` |
| 2 | `def` | [toObservable](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/declarations/toobservable--c0d1aaf73f19ff5b87a7fbf3.md) | 51 | `declaration-track:c0d1aaf73f19ff5b87a7fbf3c1580f71955595449fc37e4915b4220f47549308` |
| 3 | `theorem` | [toDAF_run](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/declarations/todaf-run--975eaca9f601dc285e2ece49.md) | 59 | `result-track:975eaca9f601dc285e2ece49ab7ed92c605985ca78142b7e0dfafaed070edb6a` |
| 4 | `theorem` | [toObservable_run](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/declarations/toobservable-run--872bd4140a391b0df2c58464.md) | 74 | `result-track:872bd4140a391b0df2c584645532466e9a5df6158b6e36b0a03851e7d799ff82` |
| 5 | `theorem` | [toDAF_causalEquivalent_iff](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/declarations/todaf-causalequivalent-iff--98173ce60b858c55d2da50d6.md) | 87 | `result-track:98173ce60b858c55d2da50d671d3c2fabd25fe72bd869aac2cdc4876faae4b2c` |
| 6 | `def` | [causalStateEquiv](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/declarations/causalstateequiv--002762e209ac3e29e8b4769b.md) | 104 | `declaration-track:002762e209ac3e29e8b4769b6e32e3152cd8a08377110d540501d1357d7eb5ed` |
| 7 | `theorem` | [causalStateEquiv_toCausal](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/QuotientTypes/FiniteGraphAndObservationComponents/Variant95737bbc5a230b36/WholeBundledParameterizedCausalAdapter.lean/declarations/causalstateequiv-tocausal--c66b43f331de8a9a8199c558.md) | 128 | `result-track:c66b43f331de8a9a8199c5583eee0002fa0ac8a894e6a5c6f3636a5b8762f11b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
