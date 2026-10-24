# Verification target: GRWTSK.Analysis.DiscreteChirpWeights.Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8475b753f4394104b28eaf3c12aaff839350b39",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/index.md) · [Full source](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8475b753f4394104b28eaf3c12aaff839350b39`.

Source path: `GRWTSK/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.NativeClockDecay` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [signal](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/signal--0edad7ddddd2d8d795ae05ca.md) | 31 | `declaration-track:0edad7ddddd2d8d795ae05ca169edaa9ae8d4a49368cafeca5abb08c7ec87e3b` |
| 2 | `def` | [signalDerivative](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/signalderivative--3550dacceb20a6b9ebe3feaa.md) | 38 | `declaration-track:3550dacceb20a6b9ebe3feaadcec39cefcd91fad723b876c45e400aed9037c24` |
| 3 | `def` | [countingWeight](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/countingweight--56762f0a8ac32525cb0b3a19.md) | 46 | `declaration-track:56762f0a8ac32525cb0b3a1998adac4d76b2beae884742c3041bebe4ccbb8d28` |
| 4 | `def` | [comparisonCoefficient](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/comparisoncoefficient--5f0ac8865fb62560300102e3.md) | 52 | `declaration-track:5f0ac8865fb62560300102e3f33325ccc07f8b2335703c36bb5d64a43a919f95` |
| 5 | `theorem` | [exact_signal_derivative](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/exact-signal-derivative--57fbcfb4cc51466f391d2163.md) | 54 | `result-track:57fbcfb4cc51466f391d2163bdf00c05d95ff7e0d75ac3dc68dd6b142ea67513` |
| 6 | `theorem` | [actual_signal_derivative_bound](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/actual-signal-derivative-bound--08fde6fbc243d9c91e3d4b42.md) | 79 | `result-track:08fde6fbc243d9c91e3d4b4278890def37d179f1afee99624fa7d2f75fa8e910` |
| 7 | `theorem` | [literal_source_integer_increment_bound](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/literal-source-integer-increment-bound--2492078f1bc6943e3eec2488.md) | 101 | `result-track:2492078f1bc6943e3eec24885242058606b48b63553c979640018661c2a8ca96` |
| 8 | `theorem` | [literal_counting_weight_bounds](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/literal-counting-weight-bounds--0f03d1d2176bb18f22437657.md) | 121 | `result-track:0f03d1d2176bb18f22437657fd9b62e7f225891acdbc003cadba2c92b154a757` |
| 9 | `theorem` | [exact_native_comparison_storage](../../../../mathematics/Analysis/DiscreteChirpWeights/Variantb29612d1e074538f1eb51e29152612a9df51dc5ddb97628055147f7ee6008e76.lean/declarations/exact-native-comparison-storage--00453ad301a7e28ecf5504bd.md) | 127 | `result-track:00453ad301a7e28ecf5504bd763a3d680ef963beb048b8f147877e2b646f366d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
