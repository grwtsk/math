# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.HigherPowerTsumCore.Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33671ebf1c72952451457ecad2bc01be087f5b39",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33671ebf1c72952451457ecad2bc01be087f5b39`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean.json)

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
| 1 | `abbrev` | [HigherPowerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/higherpowerindex--a92269f25a6b531864475f9c.md) | 11 | `declaration-track:a92269f25a6b531864475f9c814cddb539cab51a8e0e9f430f0da005919ca102` |
| 2 | `def` | [powerIndex](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/powerindex--93e543b3a7c48033922e7b5b.md) | 14 | `declaration-track:93e543b3a7c48033922e7b5bf26ff6962f7511cf090c190abee51c5e0eded7d1` |
| 3 | `theorem` | [powerIndex_injective](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/powerindex-injective--4e341d93ce0b6ff6c30baaab.md) | 17 | `result-track:4e341d93ce0b6ff6c30baaab9d1705e8b2c24bb9050f72712ea74575e76c9531` |
| 4 | `def` | [higherPairIndices](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/higherpairindices--82a0ee94f3befb53cd8658ab.md) | 27 | `declaration-track:82a0ee94f3befb53cd8658ab1c33576c98ec1f91b4a83367988a519af4108ef7` |
| 5 | `def` | [higherSourceTerm](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/highersourceterm--d10f5220949ac2043300c9e3.md) | 31 | `declaration-track:d10f5220949ac2043300c9e3016fb129d92bfd2275db3b35b79631dc6e14d656` |
| 6 | `theorem` | [powerIndex_isHigher](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/powerindex-ishigher--a819da6b63351ea98a4944ca.md) | 36 | `result-track:a819da6b63351ea98a4944ca1220e569d064ce7e76d483c0c242d669e6ae862b` |
| 7 | `theorem` | [powerIndex_two_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/powerindex-two-le--0ecaff3ee9724caceed03512.md) | 40 | `result-track:0ecaff3ee9724caceed035126b84e07eb0cfc693b7e986343868dab7cee3e3c9` |
| 8 | `theorem` | [mem_higherPairIndices_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/mem-higherpairindices-iff--495e27848339da4f1dcadfce.md) | 44 | `result-track:495e27848339da4f1dcadfce6dd3d4e0f0f7635f713968f3d85e55dfa371ded5` |
| 9 | `theorem` | [higherPairIndices_image](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/higherpairindices-image--be7a5b4aaf9469d3f5ffb9f9.md) | 51 | `result-track:be7a5b4aaf9469d3f5ffb9f9d87e5284c395952b96aa1fb20eebe55c9d7d29b2` |
| 10 | `theorem` | [higherPrimePowerContribution_eq_finite_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/higherprimepowercontribution-eq-finite-sum--0ddd99a3a1d2a59d0d895b42.md) | 66 | `result-track:0ddd99a3a1d2a59d0d895b4276d59ff1d42563a80e8648c200ab1dd6b7794dda` |
| 11 | `theorem` | [higherSourceTerm_zero_outside](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/highersourceterm-zero-outside--986068a11f2cfede43d6bfd5.md) | 76 | `result-track:986068a11f2cfede43d6bfd511dff42761f2bbd40dd28bf3dd22f8f9f32c3f8a` |
| 12 | `theorem` | [higherSourceTerm_finite_support](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/highersourceterm-finite-support--58f9e5405cfa70d88cd33213.md) | 91 | `result-track:58f9e5405cfa70d88cd332139515e1fd5a2c33e121df79fd2eb0541980e655b9` |
| 13 | `theorem` | [higherSourceTerm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/highersourceterm-summable--3b3289dc91b54b366123f1af.md) | 97 | `result-track:3b3289dc91b54b366123f1afb42ef5f10d0ea0003640d7572d6784a94397d71f` |
| 14 | `theorem` | [higherSourceTerm_norm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/highersourceterm-norm-summable--9527a88358f913d1e576f658.md) | 102 | `result-track:9527a88358f913d1e576f6583453f17e5280a36fa59171cfde1e2882abbc22f4` |
| 15 | `theorem` | [higherPrimePowerContribution_eq_tsum](../../../../../mathematics/Analysis/AsymptoticAnalysis/HigherPowerTsumCore/Variantc9b0a88ecf9c4c6db11fb1d6502b107653270e4ab4cb2e0f10304c1dfa2d6fbb.lean/declarations/higherprimepowercontribution-eq-tsum--fec0e0da2a795df59b3ada68.md) | 109 | `result-track:fec0e0da2a795df59b3ada686c7a96feca418fb71462247137a5ab1d29fbe201` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
