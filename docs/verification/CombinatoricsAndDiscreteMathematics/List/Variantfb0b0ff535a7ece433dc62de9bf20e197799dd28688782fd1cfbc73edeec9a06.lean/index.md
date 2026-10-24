# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.List.Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "471523d8a85208895f2add16a30795d576b81f07",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `471523d8a85208895f2add16a30795d576b81f07`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Powerset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Permutation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lists](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean/declarations/lists--378e7838e57a2eb98cb5282d.md) | 31 | `declaration-track:378e7838e57a2eb98cb5282d75fa04f9b90ac313d416f019b0899744a7938bb5` |
| 2 | `theorem` | [lists_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean/declarations/lists-coe--6a810885eca28aa832c59f00.md) | 38 | `result-track:6a810885eca28aa832c59f00d39ce1251db13b2fae3884b944970820f915f1fe` |
| 3 | `theorem` | [lists_nodup_finset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean/declarations/lists-nodup-finset--3fc93abfacc51aadc3630c82.md) | 42 | `result-track:3fc93abfacc51aadc3630c822a1327ed69b6c22672a5a05922c9eaf4b963e9b5` |
| 4 | `theorem` | [mem_lists_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean/declarations/mem-lists-iff--6f9926a62b34941062658afd.md) | 49 | `result-track:6f9926a62b34941062658afd79dcc556d0dfe5cd187ba0ae77d0e100e00c9f73` |
| 5 | `theorem` | [perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean/declarations/perm-tolist--8c803795f0d6d9aed5037f2c.md) | 56 | `result-track:8c803795f0d6d9aed5037f2c2a0eecac0f32eea89b00e9902a6f3aa0a3d003f9` |
| 6 | `instance` | [fintypeNodupList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/List/Variantfb0b0ff535a7ece433dc62de9bf20e197799dd28688782fd1cfbc73edeec9a06.lean/declarations/fintypenoduplist--75f71207d8c2434a166bca13.md) | 60 | `declaration-track:75f71207d8c2434a166bca13f621e29a2a4243f2094731adc3d2b813bda340a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
