# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sections.Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc437d92ea1f3414ae80b40671ad69e779481dd2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc437d92ea1f3414ae80b40671ad69e779481dd2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Bind` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Sections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/declarations/sections--40a2bc001f3ed3b6c4a0b2c4.md) | 33 | `declaration-track:40a2bc001f3ed3b6c4a0b2c46cd4791e2b9ec6474647165e62e92b109e6c8f0f` |
| 2 | `theorem` | [sections_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/declarations/sections-zero--0e90c00e3e6064e930705b17.md) | 39 | `result-track:0e90c00e3e6064e930705b17181edccd8bdcbfb349b37f20221c776c2c8b2884` |
| 3 | `theorem` | [sections_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/declarations/sections-cons--8984ed9ccc619172793e32e0.md) | 44 | `result-track:8984ed9ccc619172793e32e0f9884df7211e0968e8fe73437a657e6534aad6a7` |
| 4 | `theorem` | [coe_sections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/declarations/coe-sections--100f233422a188528e1ce33c.md) | 49 | `result-track:100f233422a188528e1ce33c4587e8439fd53173b037b5c0b6ea3f87e6d35d53` |
| 5 | `theorem` | [sections_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/declarations/sections-add--ca22813de487d37812606e51.md) | 61 | `result-track:ca22813de487d37812606e51c7dd60c1c586a4c5394f48abfebf418413482a70` |
| 6 | `theorem` | [mem_sections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/declarations/mem-sections--64ec23e18f35964d08b07b7e.md) | 67 | `result-track:64ec23e18f35964d08b07b7eced1b9550f82cde9c7dc2b4e3553b45f8e5983ae` |
| 7 | `theorem` | [card_sections](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/declarations/card-sections--7b921ba66a19c2aae35f7838.md) | 74 | `result-track:7b921ba66a19c2aae35f7838f325af11bc6dafaaba52a268edce0b74ab5252b2` |
| 8 | `theorem` | [prod_map_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sections/Variantf1f074b3387a675df470bb92e9137e47738d12ac565b477909f9c60c581af658.lean/declarations/prod-map-sum--53551cc08e147ad5257bd6b1.md) | 78 | `result-track:53551cc08e147ad5257bd6b174bb047e1cd05eda47597a878878c0844a683ab8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
