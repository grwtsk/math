# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Variadic.Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0601bd39815753a601ca31dd941531638a4a255c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0601bd39815753a601ca31dd941531638a4a255c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Eval` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Tree.List` — import line 2; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Polish` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prefix.Variadic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/prefix-variadic--1fb6d51a1da1faa3b8387ca8.md) | 18 | `declaration-track:1fb6d51a1da1faa3b8387ca838faa11d557820e468a2500fc5d7a5ef9dbd552a` |
| 2 | `def` | [Prefix.Variadic.toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/prefix-variadic-totree--619b58439d17d6d2568824e6.md) | 33 | `declaration-track:619b58439d17d6d2568824e67e7115493aa4c885b3f5c4f1ccc977ced006423b` |
| 3 | `def` | [Prefix.Variadic.toTreeList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/prefix-variadic-totreelist--13f59d7b73dcd05a4bd8fcf0.md) | 45 | `declaration-track:13f59d7b73dcd05a4bd8fcf0c6aa11651e30794e0ceadeadfa27ed325ed73d98` |
| 4 | `def` | [Prefix.Variadic.eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/prefix-variadic-eval--dd5ebda7b4773ab590cfc7a0.md) | 53 | `declaration-track:dd5ebda7b4773ab590cfc7a0f1067ce5f4e9351aaad9d81a0977870950216b79` |
| 5 | `def` | [Prefix.Variadic.toStrictPolish](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/prefix-variadic-tostrictpolish--fb8a40d6c54e5e108adbff3b.md) | 60 | `declaration-track:fb8a40d6c54e5e108adbff3b9ddc8ec4787179bb3fb5e0a069d0784f850bda9d` |
| 6 | `def` | [Tree.toPrefix.Variadic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/tree-toprefix-variadic--823f1fec70c6edb4b184baf0.md) | 74 | `declaration-track:823f1fec70c6edb4b184baf0cee9677cb11850b5ff65eb85bef58f4fc2d2d3b8` |
| 7 | `def` | [Tree.toVariadicConjArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/tree-tovariadicconjargs--25d5898b523d29891a86157e.md) | 91 | `declaration-track:25d5898b523d29891a86157edb0ef63a7c82c016e2d2940d3738ededc3841b9f` |
| 8 | `def` | [Tree.toVariadicDisjArgs](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/tree-tovariadicdisjargs--e00a792fc00f9bc1cb61b77c.md) | 97 | `declaration-track:e00a792fc00f9bc1cb61b77cb7f05ea9353d49b631c42e7218e5704ab52b0e28` |
| 9 | `def` | [PolishExamples.implicationAB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-implicationab--7e199e5ba4775f91570cc585.md) | 105 | `declaration-track:7e199e5ba4775f91570cc585c68611ac066b14b66044c7ba0164075383cc1e17` |
| 10 | `def` | [PolishExamples.implicationBA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-implicationba--315ac0f434e2b1c8326db699.md) | 109 | `declaration-track:315ac0f434e2b1c8326db699039424e076ab58083ddf16e666ce4c169e644de3` |
| 11 | `def` | [PolishExamples.leftNestedNand](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-leftnestednand--00378049f4aab09b368ff7f2.md) | 113 | `declaration-track:00378049f4aab09b368ff7f25f464a514432a6497f58e0dfaee58767775fe3fa` |
| 12 | `def` | [PolishExamples.rightNestedNand](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-rightnestednand--5b1abee355def5c4bc890912.md) | 117 | `declaration-track:5b1abee355def5c4bc890912966068073d12389dfd6025b5bcfc9f9ca583be2e` |
| 13 | `def` | [PolishExamples.flatAnd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-flatand--e23ac45657d5062daee7c469.md) | 121 | `declaration-track:e23ac45657d5062daee7c4695cfa2a411f7f04f119cc7615e527a99c126934db` |
| 14 | `theorem` | [PolishExamples.parse_implicationAB](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-parse-implicationab--93a34641098feab96457a79b.md) | 125 | `result-track:93a34641098feab96457a79b8e6d106b7bf075ec51143c51bede2b1f4af7deb2` |
| 15 | `theorem` | [PolishExamples.parse_implicationBA](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-parse-implicationba--0cd8b80619e6a3973bd97406.md) | 131 | `result-track:0cd8b80619e6a3973bd9740664a4894a9226982f21abf7ffd7c99c43635815eb` |
| 16 | `theorem` | [PolishExamples.implication_order_distinct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-implication-order-distinct--a98291dd3a717604436af2e4.md) | 137 | `result-track:a98291dd3a717604436af2e4cc40a29aa1f497e13784b0b4937bb872f4c65746` |
| 17 | `theorem` | [PolishExamples.parse_leftNestedNand](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-parse-leftnestednand--b2beca1143ca72c8353e3f94.md) | 142 | `result-track:b2beca1143ca72c8353e3f949644efa70d039eb9a65207e7cddfd27bf9c705fc` |
| 18 | `theorem` | [PolishExamples.parse_rightNestedNand](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-parse-rightnestednand--960e517c57152a5eb851bace.md) | 148 | `result-track:960e517c57152a5eb851bace5c3225d944eddcf754c528f1cd26dc8b341f9e0e` |
| 19 | `theorem` | [PolishExamples.nand_nesting_distinct](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-nand-nesting-distinct--fb7cb2ba8df57e47675c4804.md) | 154 | `result-track:fb7cb2ba8df57e47675c4804e85323f5be7338c33f7188c3a86d35bfce3fa8a1` |
| 20 | `theorem` | [PolishExamples.flatAnd_toTree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-flatand-totree--21fc5b6a503a5a3a48410a03.md) | 159 | `result-track:21fc5b6a503a5a3a48410a0327eeebc5db4c195150e787c1a019b776f42d1cb9` |
| 21 | `theorem` | [PolishExamples.flatAnd_toStrictPolish](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variantf50ca98d43d1e45c8523e65d890800dbb9ac5e290bfbe60b3adc9e7b4fbad56e.lean/declarations/polishexamples-flatand-tostrictpolish--a00149b922ead74c867b757c.md) | 170 | `result-track:a00149b922ead74c867b757c2902f3cb5663a8511b1553a1f6f9fc894b1427f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
