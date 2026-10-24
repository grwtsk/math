# Verification target: GRWTSK.Algebra.Imo2015Q6.Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f41a433509c68b5617dde6a0c14f3f028f34a577",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/index.md) · [Full source](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f41a433509c68b5617dde6a0c14f3f028f34a577`.

Source path: `GRWTSK/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Int.Sum` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condition](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/condition--2a7c95a9f4f75d2c6bab35d3.md) | 64 | `declaration-track:2a7c95a9f4f75d2c6bab35d3f2398b3601a45e8ec5b9ecb4f9d152ce6391dd89` |
| 2 | `def` | [pool](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/pool--8b8ec3dcc1266cda078fcb43.md) | 67 | `declaration-track:8b8ec3dcc1266cda078fcb43224b2566ae22fb64aa345a6230ccf4087b10a817` |
| 3 | `lemma` | [exists_add_eq_of_mem_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/exists-add-eq-of-mem-pool--e60c7f71185787e768562e59.md) | 75 | `result-track:e60c7f71185787e768562e59505474d57f268f6cdd0abc1770d5d1aa495701ee` |
| 4 | `lemma` | [pool_subset_Icc](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/pool-subset-icc--121d6885e8f4b121662b9eb1.md) | 89 | `result-track:121d6885e8f4b121662b9eb1a1e3f023777229f654d96f14b00f8ff78cd087d2` |
| 5 | `lemma` | [notMem_pool_self](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/notmem-pool-self--0aa26e803d6c264c102c4f96.md) | 100 | `result-track:0aa26e803d6c264c102c4f968bc94faa45e3029e05e71f7b1d27a5a1d64c1c70` |
| 6 | `lemma` | [card_pool_succ](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/card-pool-succ--c725187f6c4196352d86b0b1.md) | 109 | `result-track:c725187f6c4196352d86b0b137c70a6cb14be7cb4a7ba1d16ce4f36d1317435a` |
| 7 | `lemma` | [monotone_card_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/monotone-card-pool--4dd57de0a4ed70c9d2af47af.md) | 117 | `result-track:4dd57de0a4ed70c9d2af47af6d2e7a645b35f33fced21d96292cbeb16a2d4a80` |
| 8 | `lemma` | [exists_max_card_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/exists-max-card-pool--c36454c7e891bbecbe27be23.md) | 123 | `result-track:c36454c7e891bbecbe27be232640c4a7f212d9cf103664fc58afea937e299b04` |
| 9 | `lemma` | [b_pos](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/b-pos--093279f3e1bf75030ccb7d90.md) | 135 | `result-track:093279f3e1bf75030ccb7d903ca6c30d80240ca7b9c9a02acd85d069fa45a8d6` |
| 10 | `lemma` | [zero_mem_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/zero-mem-pool--302217fdfeffee4591fdd347.md) | 147 | `result-track:302217fdfeffee4591fdd34798fb0692dd078b85635044862cf9cf3240508660` |
| 11 | `lemma` | [sum_sub_sum_eq_sub](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/sum-sub-sum-eq-sub--c0e2597e9bb5c6d3d1e2c645.md) | 154 | `result-track:c0e2597e9bb5c6d3d1e2c645ad06876b1bad1f5388eb08d7a0418f2b05154054` |
| 12 | `lemma` | [sum_telescope](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/sum-telescope--3fc45095b52d50b5b2768c65.md) | 163 | `result-track:3fc45095b52d50b5b2768c65c17da100c39c26e2236545cc891d16a264cc5827` |
| 13 | `lemma` | [le_sum_pool](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/le-sum-pool--2fb070971487563fe5396ab0.md) | 171 | `result-track:2fb070971487563fe5396ab0a2226f7bb48a871e9131ae5d2426994ed2564cb7` |
| 14 | `lemma` | [sum_pool_le](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/sum-pool-le--abdf5fe000beb71bd4deeed4.md) | 177 | `result-track:abdf5fe000beb71bd4deeed4e1aa35ef6b41003f579ac1028af5d58d966372b1` |
| 15 | `theorem` | [result](../../../../mathematics/Algebra/Imo2015Q6/Variantdcf34b91a459437d01c350146477d164f10336554b44899ab2beb10fe24906a9.lean/declarations/result--845e66c57679ce92926642d9.md) | 186 | `result-track:845e66c57679ce92926642d9ba41fbd8a4be76009ffa4281319c803d32393769` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
