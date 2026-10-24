# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ETransform.Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51a44eecf49b17e78c3511fd0d901afe97b2f8b5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51a44eecf49b17e78c3511fd0d901afe97b2f8b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulDysonETransform](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muldysonetransform--c6ea0ccc56ed9e04355a5814.md) | 51 | `declaration-track:c6ea0ccc56ed9e04355a5814b2db37a5c2ab7ea1cb4cd25cbe0ff83d09fac73a` |
| 2 | `theorem` | [mulDysonETransform.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muldysonetransform-subset--20d96b135d42e7ff21253272.md) | 55 | `result-track:20d96b135d42e7ff21253272dd20307f27055588f122ff8227f25edd7a1a3661` |
| 3 | `theorem` | [mulDysonETransform.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muldysonetransform-card--02f51fd138bc0003030a3e0d.md) | 61 | `result-track:02f51fd138bc0003030a3e0dc995e26b3b13d4d030574c8a717186d3c46e9175` |
| 4 | `theorem` | [mulDysonETransform_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muldysonetransform-idem--623d735478674ceb872c7f7b.md) | 68 | `result-track:623d735478674ceb872c7f7b51cce8e99944abbfdf78250b9da83f1f814b87da` |
| 5 | `theorem` | [mulDysonETransform.smul_finset_snd_subset_fst](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muldysonetransform-smul-finset-snd-subset-fst--a7d2251c437d4508b87f1069.md) | 79 | `result-track:a7d2251c437d4508b87f1069ae3be6ac8d4b1ac5aedd9f5f519e0665498a47c3` |
| 6 | `def` | [mulETransformLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformleft--e46c703015162cf9a92d556e.md) | 106 | `declaration-track:e46c703015162cf9a92d556e2344f888d2b6c9856bba3182dd99b4d2b2649507` |
| 7 | `def` | [mulETransformRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformright--bd1ec0976a711cb210874068.md) | 113 | `declaration-track:bd1ec0976a711cb210874068bfb7e67eba605a02486e2de5b0d8a88110c5eb09` |
| 8 | `theorem` | [mulETransformLeft_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformleft-one--fd41a104cf7945070ed486f9.md) | 117 | `result-track:fd41a104cf7945070ed486f95ab579f272fa27fd16a8806a9e5f59fb31d9ed99` |
| 9 | `theorem` | [mulETransformRight_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformright-one--8fc43bb0f0bc44bf07d11d60.md) | 120 | `result-track:8fc43bb0f0bc44bf07d11d6040ee2ae5c0b94bbf1e81f401047ebcdfc1d89b94` |
| 10 | `theorem` | [mulETransformLeft.fst_mul_snd_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformleft-fst-mul-snd-subset--19e2f6aee917f948acbc939d.md) | 123 | `result-track:19e2f6aee917f948acbc939d555165fa6a02db82bb588968691f49fa8a44e128` |
| 11 | `theorem` | [mulETransformRight.fst_mul_snd_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformright-fst-mul-snd-subset--38c8769d5c4b8346fb8ac8ff.md) | 129 | `result-track:38c8769d5c4b8346fb8ac8ffbd170ba405b7923ed495e774c358baa2f22ec7de` |
| 12 | `theorem` | [mulETransformLeft.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformleft-card--599cf1dc8901f6ad02bdde74.md) | 135 | `result-track:599cf1dc8901f6ad02bdde74613f2898b0f1163223474a61b40afb1c5eadd861` |
| 13 | `theorem` | [mulETransformRight.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformright-card--5c56be9e4a16694dda237922.md) | 140 | `result-track:5c56be9e4a16694dda2379222287751789c586d97976a8c2a705abc834bcc8cd` |
| 14 | `theorem` | [MulETransform.card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransform-card--0860f0608e0646a8d5d5cf10.md) | 147 | `result-track:0860f0608e0646a8d5d5cf100bbd83bd50e88e7a58315559d9e0f2a56a89f8e3` |
| 15 | `theorem` | [mulETransformLeft_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformleft-inv--a5dc904b0c38e5cbd8960db4.md) | 160 | `result-track:a5dc904b0c38e5cbd8960db44c2b7205c7414955668b8a0a7e26e82b63146463` |
| 16 | `theorem` | [mulETransformRight_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/ETransform/Variant1abc6ebf7a933e57df7ce6d3b60a429441ca59213db96d43a350d93ed7683f05.lean/declarations/muletransformright-inv--be10cee8a6969da2d5a496d6.md) | 164 | `result-track:be10cee8a6969da2d5a496d6e1626babcd7ae1c4b2d6ac3113366d5bdfee2a9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
