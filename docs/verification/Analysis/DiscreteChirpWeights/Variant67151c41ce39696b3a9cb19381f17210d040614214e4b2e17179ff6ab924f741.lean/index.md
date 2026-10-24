# Verification target: GRWTSK.Analysis.DiscreteChirpWeights.Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "521871c4db571ef92aa347f6e47576ed3583cb69",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/index.md) · [Full source](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `521871c4db571ef92aa347f6e47576ed3583cb69`.

Source path: `GRWTSK/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean.json)

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
| 1 | `def` | [signal](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/signal--a9c500655383da0155282f1e.md) | 27 | `declaration-track:a9c500655383da0155282f1e0f324daa77fd20a79ddf5a96ee4df6782613eccc` |
| 2 | `def` | [signalDerivative](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/signalderivative--7b4db7b236a1554f31abb51d.md) | 29 | `declaration-track:7b4db7b236a1554f31abb51d3e4f952ec57738d796e0374105ed599aabfd0c49` |
| 3 | `def` | [countingWeight](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/countingweight--dc727ef2adff4d899fe764cf.md) | 33 | `declaration-track:dc727ef2adff4d899fe764cf4b85ed749016a0c402b520c9d42e0c6cc71aa979` |
| 4 | `def` | [comparisonCoefficient](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/comparisoncoefficient--61f99704c488d07c77b11a5d.md) | 35 | `declaration-track:61f99704c488d07c77b11a5def2f5bbb7b5f980c1dbb2418f89e9caf834ff6d5` |
| 5 | `theorem` | [exact_signal_derivative](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/exact-signal-derivative--850dee15ff79789d1922c0b0.md) | 37 | `result-track:850dee15ff79789d1922c0b036e52b2a2c3ecb537c13ff885d380832b692d07c` |
| 6 | `theorem` | [actual_signal_derivative_bound](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/actual-signal-derivative-bound--17f63b02ce6f9d9fe8a9fdf0.md) | 61 | `result-track:17f63b02ce6f9d9fe8a9fdf056ca54bb0500791020d8d1f8566cedb91aac3c98` |
| 7 | `theorem` | [literal_source_integer_increment_bound](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/literal-source-integer-increment-bound--7bc795bd057fdaf7957cf260.md) | 83 | `result-track:7bc795bd057fdaf7957cf26013efdfda79ba9288fc050f32d936fe24c5926e53` |
| 8 | `theorem` | [literal_counting_weight_bounds](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/literal-counting-weight-bounds--88e8a13d04d26f0f3be86549.md) | 103 | `result-track:88e8a13d04d26f0f3be86549def6413d9329471d5eb6df4b925e859546f0f96f` |
| 9 | `theorem` | [exact_native_comparison_storage](../../../../mathematics/Analysis/DiscreteChirpWeights/Variant67151c41ce39696b3a9cb19381f17210d040614214e4b2e17179ff6ab924f741.lean/declarations/exact-native-comparison-storage--c640057107ea17f294c43b17.md) | 109 | `result-track:c640057107ea17f294c43b17447d0596c19ec3642fbb609b76bd1dddce6764fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
