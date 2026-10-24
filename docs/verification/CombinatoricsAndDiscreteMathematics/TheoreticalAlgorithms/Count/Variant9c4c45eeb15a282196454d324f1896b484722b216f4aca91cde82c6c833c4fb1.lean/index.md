# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5221af377a9a83c210bd7a0913a99634c9fb60a1",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5221af377a9a83c210bd7a0913a99634c9fb60a1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean.json)

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
| 1 | `theorem` | [count_singleton'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/count-singleton--4f1a7db27b8ac9ae3575ca8c.md) | 28 | `result-track:4f1a7db27b8ac9ae3575ca8cd54cf3f1ed137bb0e4edd6a71e56127358f9311d` |
| 2 | `theorem` | [count_concat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/count-concat--4afd34fce36067798b541ef1.md) | 31 | `result-track:4afd34fce36067798b541ef1733971201f0260960bf16147940a19e11d3929c9` |
| 3 | `def` | [idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/idxtosigmacount--ec88b806ed6ab38a4d4cb409.md) | 49 | `declaration-track:ec88b806ed6ab38a4d4cb409877ad207e1d07f483f38d59f2595d2c13dde5b9c` |
| 4 | `theorem` | [fst_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/fst-idxtosigmacount--278a6ef8881398a78c06a946.md) | 53 | `result-track:278a6ef8881398a78c06a9466e3a470c83e2b262cbaaa36cb6b1f66b1d6aefc2` |
| 5 | `theorem` | [snd_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/snd-idxtosigmacount--8dd27f5fcddad0ee6349774b.md) | 57 | `result-track:8dd27f5fcddad0ee6349774b9c9009b06f63610254b2e161807ff3092f65c727` |
| 6 | `theorem` | [coe_snd_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/coe-snd-idxtosigmacount--b9e7d8c539b19b4ffc900971.md) | 61 | `result-track:b9e7d8c539b19b4ffc9009715e1f5c1306e34055ee9e934c6ff0d41c6327a2a5` |
| 7 | `def` | [sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/sigmacounttoidx--55e3505340429eefb592f734.md) | 71 | `declaration-track:55e3505340429eefb592f73435e088e10e03c357ce773307c56e1ca28ec43627` |
| 8 | `theorem` | [coe_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/coe-sigmacounttoidx--07c5a8d71750fae5822ae730.md) | 75 | `result-track:07c5a8d71750fae5822ae7300664710c9ca5ab4721d581f9e97a3f302d5ab557` |
| 9 | `theorem` | [sigmaCountToIdx_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/sigmacounttoidx-idxtosigmacount--26d7be1d288d34cae113fd69.md) | 79 | `result-track:26d7be1d288d34cae113fd6999e107c1ad8470111c22e7b6b807fac4910b0453` |
| 10 | `theorem` | [leftInverse_sigmaCountToIdx_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/leftinverse-sigmacounttoidx-idxtosigmacount--07bcf657dda6f690b45b0bce.md) | 82 | `result-track:07bcf657dda6f690b45b0bced29b86338f33524a9739839a15b0641d1717a868` |
| 11 | `theorem` | [rightInverse_idxToSigmaCount_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/rightinverse-idxtosigmacount-sigmacounttoidx--da6598fcd954529318d10c5a.md) | 85 | `result-track:da6598fcd954529318d10c5ad038d406cfc367817a0b9972f14839c6283eaea9` |
| 12 | `theorem` | [injective_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/injective-idxtosigmacount--22ee40fcf9e75b9f9e7bfc26.md) | 88 | `result-track:22ee40fcf9e75b9f9e7bfc26664d5152246bf64663e33f939b5d1ff86881c780` |
| 13 | `theorem` | [surjective_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/surjective-sigmacounttoidx--9a0913a303e8acfa1163e82a.md) | 91 | `result-track:9a0913a303e8acfa1163e82ad6652d9ee41a3347244648c28455e4929bb52dcb` |
| 14 | `theorem` | [idxToSigmaCount_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/idxtosigmacount-sigmacounttoidx--9d4a70a253f128f0cd467d51.md) | 95 | `result-track:9d4a70a253f128f0cd467d51e6d3e28d44767ef0168ee54896a2ee19cedaba5a` |
| 15 | `theorem` | [leftInverse_idxToSigmaCount_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/leftinverse-idxtosigmacount-sigmacounttoidx--64df4b57309ff369075a5f6e.md) | 99 | `result-track:64df4b57309ff369075a5f6eab8ca6f66c14714bd20e561e57f77a14add85a55` |
| 16 | `theorem` | [rightInverse_sigmaCountToIdx_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/rightinverse-sigmacounttoidx-idxtosigmacount--81181fc6f0f01fc64db75464.md) | 102 | `result-track:81181fc6f0f01fc64db7546491a33473dd9b6b725616297fa50643c86f68ee0d` |
| 17 | `theorem` | [injective_sigmaCountToIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/injective-sigmacounttoidx--e4fcf4a764d20626764c71af.md) | 105 | `result-track:e4fcf4a764d20626764c71af292c9a1ddeb7058d1a321496a86af59cfc3091c5` |
| 18 | `theorem` | [surjective_idxToSigmaCount](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant9c4c45eeb15a282196454d324f1896b484722b216f4aca91cde82c6c833c4fb1.lean/declarations/surjective-idxtosigmacount--7b95f24c9ea6caa101d8ad26.md) | 108 | `result-track:7b95f24c9ea6caa101d8ad26e36fa9e0fceeaef55dc958f9d5b63ccd899dbf1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
