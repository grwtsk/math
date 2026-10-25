# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Counterexample.Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dfd565ea750babebcd2846b92ef8211636dfaa4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dfd565ea750babebcd2846b92ef8211636dfaa4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.BVDecide.Reflect.SatAtBVLogical` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reconstructCounterExample](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/reconstructcounterexample--3906dad5f21657f224c0f64f.md) | 33 | `declaration-track:3906dad5f21657f224c0f64fe5fc97b6045f00e28ef88711d2a3229550da7f03` |
| 2 | `structure` | [CounterExample](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/counterexample--4e125bb58669f3bf3b3c7c52.md) | 80 | `declaration-track:4e125bb58669f3bf3b3c7c524ab6f999a4588f6fd2a15afa28463e9151ce8a9b` |
| 3 | `structure` | [Diagnosis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/diagnosis--60c4c188a5e18da6bbd40661.md) | 98 | `declaration-track:60c4c188a5e18da6bbd406617a5ce485fab789425c7f6baf014e54d6b7652f95` |
| 4 | `abbrev` | [DiagnosisM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/diagnosism--db81abb74937994ded913bc8.md) | 103 | `declaration-track:db81abb74937994ded913bc85272e2a4eccf6439caa2d00da305ce9f64b2c51f` |
| 5 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/run--e860c9002140b9a6219f3723.md) | 107 | `declaration-track:e860c9002140b9a6219f372364776aaa8876a60bcedac4d487a089fbebe65506` |
| 6 | `def` | [unusedHyps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/unusedhyps--6e07619bb7259d8b0ef928ce.md) | 113 | `declaration-track:6e07619bb7259d8b0ef928cedc2f5046ee68fe822b8518637aedbf2a71cf6aa3` |
| 7 | `def` | [equations](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/equations--6153db31a707be7eadf33370.md) | 117 | `declaration-track:6153db31a707be7eadf33370f6d9c99b2eaebe23c8fb9001a7720b96b3017753` |
| 8 | `def` | [addUninterpretedSymbol](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/adduninterpretedsymbol--d193f38630648b2bd1898c2d.md) | 121 | `declaration-track:d193f38630648b2bd1898c2dbcd0002a7712823e7b81a262fd6788f3e6239224` |
| 9 | `def` | [addUnusedRelevantHypothesis](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/addunusedrelevanthypothesis--ee0f53c6b990789f5fcc5fa9.md) | 125 | `declaration-track:ee0f53c6b990789f5fcc5fa924a19dfc44538d56a8876223ce1d1966df7353df` |
| 10 | `def` | [addDerivedEquation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/addderivedequation--94db4acacf76a0514fa1b3e6.md) | 129 | `declaration-track:94db4acacf76a0514fa1b3e64fec6a18d7ec646686bd320a9b1b9d78c4dbefce` |
| 11 | `def` | [checkRelevantHypsUsed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/checkrelevanthypsused--8105ff392d11e7d19abbc5b9.md) | 132 | `declaration-track:8105ff392d11e7d19abbc5b9a3e7bf47f91c79ae7d46cfe66d7975162cfe091b` |
| 12 | `def` | [diagnose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/diagnose--e67e2057b312643a9b198558.md) | 142 | `declaration-track:e67e2057b312643a9b198558e601f47f8650fba82765a2d8cd73f9ddaa68b64c` |
| 13 | `def` | [uninterpretedExplainer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/uninterpretedexplainer--5cee83567c7c4ceb5ddbb9f8.md) | 232 | `declaration-track:5cee83567c7c4ceb5ddbb9f84e36d18f37f30a40277ac838a5a958b2feb1e79d` |
| 14 | `def` | [unusedRelevantHypothesesExplainer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/unusedrelevanthypothesesexplainer--91d4d04744cb26121ddfaec4.md) | 237 | `declaration-track:91d4d04744cb26121ddfaec470ce288e1b84865c13f845f1b02c1a8264df60e3` |
| 15 | `def` | [explainers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/explainers--9a494c7d8fa03cd25de81cf9.md) | 242 | `declaration-track:9a494c7d8fa03cd25de81cf9c553593a4a44983b84edf04bf7f87340e2b6b126` |
| 16 | `def` | [explainCounterExampleQuality](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Counterexample/Variant9e54bbddb06bf6ddf89c5f27a0a02d8d7ebf9574d5827f63dfb287b352ce8d1e.lean/declarations/explaincounterexamplequality--e3a50467e327dddb62bc8e13.md) | 245 | `declaration-track:e3a50467e327dddb62bc8e1345a2193aa92448ddb46734a09a9846aa273e0629` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
