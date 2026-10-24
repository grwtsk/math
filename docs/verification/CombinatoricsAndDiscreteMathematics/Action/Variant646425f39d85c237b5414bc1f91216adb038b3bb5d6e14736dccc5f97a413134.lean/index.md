# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Action.Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91933dc82460c72d4f53a50b41140dd5d4fdf9dd",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91933dc82460c72d4f53a50b41140dd5d4fdf9dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Multiset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Action.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [List.smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/list-smul-sum--9a1605869f54812fc5556d5d.md) | 32 | `result-track:9a1605869f54812fc5556d5d56f3807760ad4db541068e648d61f741474ebbb8` |
| 2 | `theorem` | [List.smul_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/list-smul-prod--ba208c87c08221b972901081.md) | 41 | `result-track:ba208c87c08221b9729010814a993456345d2b9d6c225ccd64b0b21f999cb076` |
| 3 | `theorem` | [Multiset.smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/multiset-smul-sum--58870588090fb826c5927de0.md) | 50 | `result-track:58870588090fb826c5927de09f9224fd77437adc5bc65d62634dcea7253c6d82` |
| 4 | `theorem` | [Finset.smul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/finset-smul-sum--bb6398421d337d0724402ea3.md) | 53 | `result-track:bb6398421d337d0724402ea388f1c3feab71d6cd388d56e10904e75fcc8ed12c` |
| 5 | `theorem` | [smul_finsum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/smul-finsum-mem--f47bc9297e286b113dbb8a40.md) | 57 | `result-track:f47bc9297e286b113dbb8a40432a15e0c521814642f0ebf67881919c66d56217` |
| 6 | `theorem` | [Multiset.smul_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/multiset-smul-prod--7db7b012e89bcbad648fc939.md) | 67 | `result-track:7db7b012e89bcbad648fc93944d0178c1c7dd3c0a040bdb12162ba138e49afd1` |
| 7 | `theorem` | [Finset.smul_prod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/finset-smul-prod--3f6fded00dad7e2ef87583e7.md) | 70 | `result-track:3f6fded00dad7e2ef87583e7a20e48bd2b3812f75b50cc22389d9c83ec15a896` |
| 8 | `theorem` | [smul_finprod'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/smul-finprod--af0b21dc356390c9853f4a19.md) | 74 | `result-track:af0b21dc356390c9853f4a19ad7ccc3ad3c9f90a23bd8b1b703a5cc9d661aa86` |
| 9 | `theorem` | [Finset.smul_prod_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/finset-smul-prod-perm--7ee8b421fe4e114b41cba0ee.md) | 82 | `result-track:7ee8b421fe4e114b41cba0ee1862d3b055232b84f51d876a8bfd54aefb4dd9b7` |
| 10 | `theorem` | [smul_finprod_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/smul-finprod-perm--948f6b796ea64bbcb93daf93.md) | 87 | `result-track:948f6b796ea64bbcb93daf9346a40ceec536bba5b48f4ba80ddfc294b390fedb` |
| 11 | `theorem` | [smul_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/smul-prod--87e3555220fbf1ea329be85a.md) | 97 | `result-track:87e3555220fbf1ea329be85ae9d87247017cc742f32f75939c7e1291c7f163d3` |
| 12 | `theorem` | [smul_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/smul-prod--b1d9fbd3469253f9cca011fc.md) | 109 | `result-track:b1d9fbd3469253f9cca011fc0aa64436ea03d8da8175c385899d721880929fff` |
| 13 | `theorem` | [smul_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/smul-prod--37a2522420aff8a289bd25b8.md) | 118 | `result-track:37a2522420aff8a289bd25b84db54cc23456541dbb93ed50fc69bddb1c8165f3` |
| 14 | `theorem` | [prod_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Action/Variant646425f39d85c237b5414bc1f91216adb038b3bb5d6e14736dccc5f97a413134.lean/declarations/prod-smul--82c5f230d07cbcc614394f69.md) | 127 | `result-track:82c5f230d07cbcc614394f69aeee21098e5eb60820cdd871c75fbf7d26e7a9a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
