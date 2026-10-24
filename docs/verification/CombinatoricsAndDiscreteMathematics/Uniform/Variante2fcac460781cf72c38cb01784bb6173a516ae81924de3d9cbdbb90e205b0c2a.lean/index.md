# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Uniform.Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ebff741f721ea1dc337d5d0a98c4dc378871af9",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ebff741f721ea1dc337d5d0a98c4dc378871af9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Constructions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [uniformOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/uniformoffinset--f9a37f645b376bd3cd000d05.md) | 46 | `declaration-track:f9a37f645b376bd3cd000d05da02968152607d949eeecf40ad73c28856b08bdd` |
| 2 | `theorem` | [uniformOfFinset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/uniformoffinset-apply--bebe2a3fe5b3d2de856c0a4a.md) | 59 | `result-track:bebe2a3fe5b3d2de856c0a4a9508c9992015fb6c3f86007d58f842550d690ba6` |
| 3 | `theorem` | [uniformOfFinset_apply_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/uniformoffinset-apply-of-mem--ef36e9e0ce226a1a66b1398e.md) | 64 | `result-track:ef36e9e0ce226a1a66b1398ea73d5389cf3298a36a28e835150fa0fcda97a0af` |
| 4 | `theorem` | [uniformOfFinset_apply_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/uniformoffinset-apply-of-not-mem--ee33b03a491517b886ccf628.md) | 68 | `result-track:ee33b03a491517b886ccf628eb163adc74321d0692958913fec443c5bbefa612` |
| 5 | `theorem` | [support_uniformOfFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/support-uniformoffinset--53a13eb0187345848281841d.md) | 72 | `result-track:53a13eb0187345848281841d281b2db3402e4e94303321497b166f9fccdc3973` |
| 6 | `theorem` | [mem_support_uniformOfFinset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/mem-support-uniformoffinset-iff--7ba066299d2df08f2be88fd3.md) | 79 | `result-track:7ba066299d2df08f2be88fd3b311bc3d3ab258982a70a7601b09459b7076e49e` |
| 7 | `theorem` | [toOuterMeasure_uniformOfFinset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/tooutermeasure-uniformoffinset-apply--f09895afb7abf148febd892f.md) | 88 | `result-track:f09895afb7abf148febd892f067cfe00113af9e79afa66db11650ac6ee16124f` |
| 8 | `theorem` | [toMeasure_uniformOfFinset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/tomeasure-uniformoffinset-apply--f39a1bca98910cd5b423ff7a.md) | 107 | `result-track:f39a1bca98910cd5b423ff7a3d97312f4760380416552ffa5c77e7b52949f6c3` |
| 9 | `def` | [uniformOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/uniformoffintype--0414e82275415688f37d0390.md) | 119 | `declaration-track:0414e82275415688f37d0390693481c42e1f696ae0b299106e63cfae1f743f96` |
| 10 | `theorem` | [uniformOfFintype_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/uniformoffintype-apply--500f12c34a044222e58524f7.md) | 126 | `result-track:500f12c34a044222e58524f79f565b2d56e33d181f0bd3409c610fba8faec0a4` |
| 11 | `theorem` | [support_uniformOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/support-uniformoffintype--7aa03cb0abf3b9c3f34ff565.md) | 132 | `result-track:7aa03cb0abf3b9c3f34ff565619bdbe2e683033529cffd9f55149c54dc8849d6` |
| 12 | `theorem` | [mem_support_uniformOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/mem-support-uniformoffintype--9f7ba87cc1932333fecd94ba.md) | 137 | `result-track:9f7ba87cc1932333fecd94ba5250a3d1137bcbf132478b083555deda5795ef24` |
| 13 | `theorem` | [toOuterMeasure_uniformOfFintype_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/tooutermeasure-uniformoffintype-apply--4119e8f63ba437c01185b1cb.md) | 144 | `result-track:4119e8f63ba437c01185b1cb27b440fbc9911083ce6b3f8fbe52e0318db05853` |
| 14 | `theorem` | [toMeasure_uniformOfFintype_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/tomeasure-uniformoffintype-apply--15219b340141ba8699c13ce5.md) | 150 | `result-track:15219b340141ba8699c13ce56c11774ef51b92e52d650641f3a57965232dfcb6` |
| 15 | `def` | [ofMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/ofmultiset--dcff6bc169c3ddfde20b5d3e.md) | 164 | `declaration-track:dcff6bc169c3ddfde20b5d3ed57284c53b1f3fbfa8f7cd71332bb307140b6448` |
| 16 | `theorem` | [ofMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/ofmultiset-apply--d9ac16737a1a4c066de7cd51.md) | 185 | `result-track:d9ac16737a1a4c066de7cd51add9a7131e2f98a289992a83f86a27e3e6a32ae5` |
| 17 | `theorem` | [support_ofMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/support-ofmultiset--48e7026b7ca99044238fedbd.md) | 190 | `result-track:48e7026b7ca99044238fedbd369301fe106eecee558e3ad8d153610f0fb0f64c` |
| 18 | `theorem` | [mem_support_ofMultiset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/mem-support-ofmultiset-iff--8e733769fa0cfe76eabe5774.md) | 194 | `result-track:8e733769fa0cfe76eabe5774e08b8a869452eac751b94eea5e59babdd986d2e4` |
| 19 | `theorem` | [ofMultiset_apply_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/ofmultiset-apply-of-not-mem--b81ba639cee50c7a8292ff19.md) | 198 | `result-track:b81ba639cee50c7a8292ff19493b3d2925aaa6aa1bd934ab6f62c975e19005fb` |
| 20 | `theorem` | [toOuterMeasure_ofMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/tooutermeasure-ofmultiset-apply--e178ff861b4343db5bc9a10d.md) | 208 | `result-track:e178ff861b4343db5bc9a10d93b960038b148acb0a925ed9318671607bd7d439` |
| 21 | `theorem` | [toMeasure_ofMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Uniform/Variante2fcac460781cf72c38cb01784bb6173a516ae81924de3d9cbdbb90e205b0c2a.lean/declarations/tomeasure-ofmultiset-apply--2f1af6f0a083c9344c6aeab3.md) | 217 | `result-track:2f1af6f0a083c9344c6aeab39cfda434d1e59629f40ce4a13193636a27806b88` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
