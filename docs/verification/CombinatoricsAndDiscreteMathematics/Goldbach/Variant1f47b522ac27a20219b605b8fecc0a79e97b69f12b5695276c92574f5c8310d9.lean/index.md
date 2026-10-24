# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Goldbach.Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bbb036da106cf2916d9064566357bd5b0a27359",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bbb036da106cf2916d9064566357bd5b0a27359`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `PrimeNumberTheoremAnd.IEANTN.SecondarySummary` — import line 6; external provider; requires a separately pinned dependency.
- `PrimeNumberTheoremAnd.IEANTN.PrimeTables` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [even_conjecture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/even-conjecture--0737c9abbefc6220069edfc6.md) | 28 | `declaration-track:0737c9abbefc6220069edfc671db9e0bb67bb3a0798018a9283c4bd731903ddb` |
| 2 | `lemma` | [even_conjecture_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/even-conjecture-mono--db6e14ddf13db696ea608341.md) | 31 | `result-track:db6e14ddf13db696ea608341fedfda0a6c77b9d5dd91be0815549842ef63a70e` |
| 3 | `theorem` | [even_goldbach_test](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/even-goldbach-test--f5bfc4a6b144492cb54e9013.md) | 45 | `result-track:f5bfc4a6b144492cb54e9013881a56c2f2dc5edeb1414f1579358fc9c913b52f` |
| 4 | `def` | [odd_conjecture](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/odd-conjecture--81dda0f0259563255ca5b665.md) | 70 | `declaration-track:81dda0f0259563255ca5b665eb467c8376eec90e8de3cc01b050164c457d2830` |
| 5 | `lemma` | [odd_conjecture_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/odd-conjecture-mono--8268bfa8f05f131840168518.md) | 74 | `result-track:8268bfa8f05f1318401685180682b99fdc520cbf3ad5c9d5ef7640bb462f9178` |
| 6 | `theorem` | [even_to_odd_goldbach_triv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/even-to-odd-goldbach-triv--3a173078335cf6035a4a9a70.md) | 91 | `result-track:3a173078335cf6035a4a9a70e8ec45134b5a1f9a23940de46da9cee802fed81f` |
| 7 | `theorem` | [odd_goldbach_test](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/odd-goldbach-test--26e0883de3d633fe3dec8d78.md) | 98 | `result-track:26e0883de3d633fe3dec8d784ffad3ee5d1fc152a7eb7b9311d26992f47c4a98` |
| 8 | `theorem` | [even_to_odd_goldbach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/even-to-odd-goldbach--b48d8cad410583ce6788dfa0.md) | 114 | `result-track:b48d8cad410583ce6788dfa055aa5e3d8d15027924822a669d96f7809f05a9f2` |
| 9 | `theorem` | [richstein_goldbach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/richstein-goldbach--40170afb064117121f392590.md) | 163 | `result-track:40170afb064117121f392590b4fd8a3e901921526ede8adea074b058499655ef` |
| 10 | `theorem` | [ramare_saouter_odd_goldbach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/ramare-saouter-odd-goldbach--e9756166838fada9d0b8d147.md) | 174 | `result-track:e9756166838fada9d0b8d1476063a73bff0e7a3582aa739b0ab9193cd1980e45` |
| 11 | `theorem` | [e_silva_herzog_piranian_goldbach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/e-silva-herzog-piranian-goldbach--47fb3ae8cf65129384a0ce79.md) | 190 | `result-track:47fb3ae8cf65129384a0ce79cb8bb3383a0ef9ca3bfb5335ef79c1194d345489` |
| 12 | `theorem` | [helfgott_odd_goldbach_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/helfgott-odd-goldbach-finite--b01238780e3bab80c313e625.md) | 201 | `result-track:b01238780e3bab80c313e625b9bf862ca48e44a37fedd94e4edb50a592574113` |
| 13 | `theorem` | [e_silva_herzog_piranian_goldbach_ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/e-silva-herzog-piranian-goldbach-ext--4a0fc987b6c4855735e41ce6.md) | 222 | `result-track:4a0fc987b6c4855735e41ce6c07f08ea07c973222506083f3ae88711cf3d01a9` |
| 14 | `theorem` | [kadiri_lumley_odd_goldbach_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Goldbach/Variant1f47b522ac27a20219b605b8fecc0a79e97b69f12b5695276c92574f5c8310d9.lean/declarations/kadiri-lumley-odd-goldbach-finite--2eb5651175142b15361a0fdf.md) | 245 | `result-track:2eb5651175142b15361a0fdf364da867bbdc2eef8a6cb3da115e0ba6461d87d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
