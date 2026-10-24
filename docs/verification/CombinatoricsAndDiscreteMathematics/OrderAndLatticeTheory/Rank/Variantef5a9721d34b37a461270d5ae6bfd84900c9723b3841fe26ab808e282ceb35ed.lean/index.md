# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Rank.Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "601ad1f11509d9354702dc6628edba9d62a27683",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `601ad1f11509d9354702dc6628edba9d62a27683`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean.json)

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
| 1 | `structure` | [RankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/rankfunction--c1efcf1eb947842b4e37ae22.md) | 55 | `declaration-track:c1efcf1eb947842b4e37ae22c88dc7c0338c1310225e536c53670344777169c7` |
| 2 | `lemma` | [wf_ancestralRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/wf-ancestralrel--af3d30b7d07d959bb632b776.md) | 66 | `result-track:af3d30b7d07d959bb632b776742cbaee3e90fa8379ba73cd310c960888e513fb` |
| 3 | `lemma` | [isRegular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/isregular--a561b6f249e78b4862aa4515.md) | 71 | `result-track:a561b6f249e78b4862aa45158b3bbc07c33df84f0823c885742ab9f964fe88e9` |
| 4 | `structure` | [WeakRankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/weakrankfunction--4a7e20e6e6a9256c07a465ef.md) | 79 | `declaration-track:4a7e20e6e6a9256c07a465ef1492c526a6ce5fc90e70b7bc992ee2ec279a3c77` |
| 5 | `lemma` | [wf_ancestralRel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/wf-ancestralrel--941c7e10b0f490a06f4b066c.md) | 91 | `result-track:941c7e10b0f490a06f4b066c75027c10e0d8b88a31c4158735b678bec060124e` |
| 6 | `lemma` | [isRegular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/isregular--77bf8dd4c6754111288557bc.md) | 104 | `result-track:77bf8dd4c6754111288557bcabd18edc196b581fbdb17710259b70887fcaa55c` |
| 7 | `def` | [RankFunction.toWeakRankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/rankfunction-toweakrankfunction--d09b183090c9e5c34868d960.md) | 111 | `declaration-track:d09b183090c9e5c34868d9608887fc601e49c1df6c52ffc85dc8c040f7af2fa7` |
| 8 | `structure` | [RankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/rankfunction--934e9af2ca77238aee00e4f4.md) | 125 | `declaration-track:934e9af2ca77238aee00e4f45e2d1efb2f387dc8c6ee2233e2d3303b26d67372` |
| 9 | `structure` | [WeakRankFunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/weakrankfunction--95f82d30eb2a6d284ba8f124.md) | 133 | `declaration-track:95f82d30eb2a6d284ba8f124046588ba1a8fa174ca4a52868a6b5633bc60ade5` |
| 10 | `def` | [rankFunctionEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/rankfunctionequiv--c2d37ed2828b8e6d367a65be.md) | 140 | `declaration-track:c2d37ed2828b8e6d367a65beba946f1a44f0359eb6b353021605850f39f276a3` |
| 11 | `def` | [weakRankFunctionEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/weakrankfunctionequiv--01daba2f3c43a924053a434f.md) | 159 | `declaration-track:01daba2f3c43a924053a434f92640fb96f3f4f1808be2da9eecac032f35f9636` |
| 12 | `lemma` | [RankFunction.isRegular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/rankfunction-isregular--7193b4ed0b50401e41c2f3d8.md) | 178 | `result-track:7193b4ed0b50401e41c2f3d8299d30d9568cce6020f77f8367e8bbea69734852` |
| 13 | `lemma` | [WeakRankFunction.isRegular](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Rank/Variantef5a9721d34b37a461270d5ae6bfd84900c9723b3841fe26ab808e282ceb35ed.lean/declarations/weakrankfunction-isregular--32ebbd007846f11151272e05.md) | 182 | `result-track:32ebbd007846f11151272e055525356310ebade834ab4e44ccfddb41521db72d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
