# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteQWave.Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da62625e088117b91e760a2517c950386689624b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da62625e088117b91e760a2517c950386689624b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FiniteWitnessStatus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/finitewitnessstatus--5a68beb9fa91ea07825a4d51.md) | 3 | `declaration-track:5a68beb9fa91ea07825a4d516d4cf593a99ddb9d35aaf4a62f6cfc4e756e65d3` |
| 2 | `structure` | [ModularFormQWave](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/modularformqwave--c5fc25cf1bfe3f4d1644c987.md) | 10 | `declaration-track:c5fc25cf1bfe3f4d1644c987957d6c20ba0cea593d259b38c0352feabb9c93a5` |
| 3 | `def` | [ModularFormQWave.IsFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/modularformqwave-isfinite--709b21a66ccf3f358cce3038.md) | 17 | `declaration-track:709b21a66ccf3f358cce3038f63643074c3a2a767d94320137649552da349226` |
| 4 | `structure` | [EllipticCurveRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/ellipticcurverecord--5654cbadb372b041b69cc3ac.md) | 23 | `declaration-track:5654cbadb372b041b69cc3acf029938cf3e5359a13c7d0c604edf2fed48ef3e5` |
| 5 | `def` | [EllipticCurveRecord.IsAdmittedFiniteCurveRecord](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/ellipticcurverecord-isadmittedfinitecurverecord--965601773bc4ccf3db06a3da.md) | 31 | `declaration-track:965601773bc4ccf3db06a3da25f10ce0c2060c7c4f354f81e9d37e7af93896a2` |
| 6 | `structure` | [GoodPrimeTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/goodprimetrace--cd86727b4d6940de33fdc7e1.md) | 40 | `declaration-track:cd86727b4d6940de33fdc7e10805d942599039964b5d41e6dafc53b8e93264ed` |
| 7 | `def` | [GoodPrimeTrace.IsFiniteWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/goodprimetrace-isfinitewitness--b00ca4be8f5534f814beb42f.md) | 47 | `declaration-track:b00ca4be8f5534f814beb42f2b52e6112f6214f1e462fded08e4becc79a3fd34` |
| 8 | `theorem` | [modular_q_wave_is_finite_carrier](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/modular-q-wave-is-finite-carrier--cec6527b9daf3753925dfa6e.md) | 54 | `result-track:cec6527b9daf3753925dfa6e6bd84f5309c45278b39dd8df679fc62e8ba3982a` |
| 9 | `theorem` | [elliptic_curve_record_is_finite_if_discriminant_checked](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/elliptic-curve-record-is-finite-if-discriminant-checked--357290d97d16c5806560a055.md) | 63 | `result-track:357290d97d16c5806560a055317dbb8fcdce0c2e9a1d8ae9eaf1c76ffbf50daa` |
| 10 | `theorem` | [good_prime_trace_is_finite_witness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FiniteQWave/Variant24ab81630e1ff47bbfc1367a1c25f3b9c8b3999519acd3d92ff201591d71b3c2.lean/declarations/good-prime-trace-is-finite-witness--c0c1417bb408f2eda5240b13.md) | 79 | `result-track:c0c1417bb408f2eda5240b1307baec54b1b7d7483d7e5b97ce3de8fa4a8d2c64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
