# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Notion.Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ed057a81bba02fe113fc9ed044d48ed13876bc0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ed057a81bba02fe113fc9ed044d48ed13876bc0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ObservationPolicy](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/observationpolicy--8ec10ccb7566567ff98e0571.md) | 23 | `declaration-track:8ec10ccb7566567ff98e05715bdc73232c89376568fe38ffc2dbd018c5063215` |
| 2 | `def` | [ObservationallyEquivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/observationallyequivalent--98e2d37297dac93d922942c2.md) | 30 | `declaration-track:98e2d37297dac93d922942c28e307d787bc9976b00ac394fa9cd93d5bab568ba` |
| 3 | `def` | [notionSetoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/notionsetoid--429b6da1e7c0a2596ee9428b.md) | 35 | `declaration-track:429b6da1e7c0a2596ee9428b749aefc84340f2f6bcf929775cf52c87abaa5885` |
| 4 | `def` | [notionQuotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/notionquotient--d53255be219086b93f9932c0.md) | 42 | `declaration-track:d53255be219086b93f9932c0f089f5acb2494d92e42174b213df009e7a0fb082` |
| 5 | `theorem` | [observationallyEquivalent_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/observationallyequivalent-of-budget-le--62ad9f25aa4c363fc2bfeb0c.md) | 47 | `result-track:62ad9f25aa4c363fc2bfeb0c62ebdc1664af6d1c08d0deb156f4936fa51fc2a2` |
| 6 | `structure` | [FiniteNotion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/finitenotion--8355656451a02c58bd1682ac.md) | 54 | `declaration-track:8355656451a02c58bd1682ac447609a87437c7f40157aafa8b179ecfc887357f` |
| 7 | `def` | [FiniteNotion.Equivalent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/finitenotion-equivalent--d83436055021828969353626.md) | 63 | `declaration-track:d834360550218289693536260ac2cba80454364cba0df3f7240c40042b34a0c0` |
| 8 | `def` | [FiniteNotion.setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/finitenotion-setoid--321c234da34af42536207253.md) | 69 | `declaration-track:321c234da34af4253620725328f110900e0d0ba40aadf1b926d529780001661b` |
| 9 | `def` | [FiniteNotion.compare](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/finitenotion-compare--0f660b2540692eddfac71ee9.md) | 76 | `declaration-track:0f660b2540692eddfac71ee9927d5756a45c5a5ec70e7e1e795431fe0debb9ea` |
| 10 | `theorem` | [FiniteNotion.compare_eq_true](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/finitenotion-compare-eq-true--518517f503d4f85a7d41fb82.md) | 82 | `result-track:518517f503d4f85a7d41fb8277331f0de0cfcf4227a05431f180de35d92495b6` |
| 11 | `theorem` | [FiniteNotion.equivalent_of_budget_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/finitenotion-equivalent-of-budget-le--505eeab305968b1d98593ecc.md) | 89 | `result-track:505eeab305968b1d98593eccf16bb7aa800899124b19d1d2d4ce91fc13173372` |
| 12 | `theorem` | [FiniteNotion.equivalent_of_semantic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Notion/Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc.lean/declarations/finitenotion-equivalent-of-semantic--fcd6aebd7a691fc8ac9872ef.md) | 96 | `result-track:fcd6aebd7a691fc8ac9872efdbe351441fb80eca3631dc8ae4ef99d08f36201c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
