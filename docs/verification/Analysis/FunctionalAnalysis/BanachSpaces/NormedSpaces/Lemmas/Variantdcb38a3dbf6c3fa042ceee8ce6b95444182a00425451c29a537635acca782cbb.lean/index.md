# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Lemmas.Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f6cb09997ca5b2597c8a9297046a5d3e4d25e5c",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f6cb09997ca5b2597c8a9297046a5d3e4d25e5c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Field.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Rat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.DilationEquiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DilationEquiv.mulLeft](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/dilationequiv-mulleft--1303cf82439ad78be5dfe036.md) | 37 | `declaration-track:1303cf82439ad78be5dfe0364db83bb50db40201260cc196d213691665d6cad0` |
| 2 | `def` | [DilationEquiv.mulRight](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/dilationequiv-mulright--f8dccefcaf0930816a345919.md) | 44 | `declaration-track:f8dccefcaf0930816a345919b68c8d09f2248c16b2f8d82163c6cac6599b1318` |
| 3 | `lemma` | [map_mul_left_cobounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/map-mul-left-cobounded--108ee5fc1cd0e3302540bf8e.md) | 51 | `result-track:108ee5fc1cd0e3302540bf8e0b942e76a0a5f132ee5962a03b605f8ab26452f4` |
| 4 | `lemma` | [map_mul_right_cobounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/map-mul-right-cobounded--8a3f0b2559b25d37c46a69d5.md) | 56 | `result-track:8a3f0b2559b25d37c46a69d5e7ef06c146a9bd6e98c91dbb40fa81ebaae322a0` |
| 5 | `theorem` | [tendsto_mul_left_cobounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/tendsto-mul-left-cobounded--c2c653c2d4179c9661561c66.md) | 62 | `result-track:c2c653c2d4179c9661561c665f38f83d42f2d352fb3c9d53937052aad5751e25` |
| 6 | `theorem` | [tendsto_mul_right_cobounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/tendsto-mul-right-cobounded--1c21e7727e086ebb9a5d351a.md) | 68 | `result-track:1c21e7727e086ebb9a5d351a44ca027ca9c429b16433b95e0698ac8290d00d90` |
| 7 | `lemma` | [inv_cobounded₀](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/inv-cobounded--d58646965c404c2f13def6d9.md) | 73 | `result-track:d58646965c404c2f13def6d9ba74e5abffdf81cebc40e406b11c68d084443973` |
| 8 | `lemma` | [inv_nhdsWithin_ne_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/inv-nhdswithin-ne-zero--8ea579fcfb63cd711d53cf81.md) | 79 | `result-track:8ea579fcfb63cd711d53cf8158423ab240a270136a724c68dcf46ad1c7cb6929` |
| 9 | `lemma` | [tendsto_inv₀_cobounded'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/tendsto-inv-cobounded--69f1952a6be93131ab5b9ae8.md) | 82 | `result-track:69f1952a6be93131ab5b9ae8f8ed966798481372e58bd1a41c68881fd0907860` |
| 10 | `theorem` | [tendsto_inv₀_cobounded](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/tendsto-inv-cobounded--4881b9925ebcb57200cbfb80.md) | 85 | `result-track:4881b9925ebcb57200cbfb807617727c1191ea1e0040a0b83ba19a5c61650431` |
| 11 | `lemma` | [tendsto_inv₀_nhdsWithin_ne_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/tendsto-inv-nhdswithin-ne-zero--1dd8fe2643f937e84f78b098.md) | 88 | `result-track:1dd8fe2643f937e84f78b09870aee5c6d5318921f68b2a7919fa6635297ef4a3` |
| 12 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/instance--c876641dbbf0376c4130dcd6.md) | 94 | `declaration-track:c876641dbbf0376c4130dcd673a7f41bf9ef5db3e28da87be8874a7cbdddcd2b` |
| 13 | `instance` | [(anonymous)](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/instance--5552227d23bbf870b9217aa7.md) | 113 | `declaration-track:5552227d23bbf870b9217aa7420fbea178708b57dac88fbc5a462a1f7fbf3184` |
| 14 | `lemma` | [NormedField.tendsto_norm_inv_nhdsNE_zero_atTop](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/normedfield-tendsto-norm-inv-nhdsne-zero-attop--7ffc41a56ecf5e0d6249a2da.md) | 119 | `result-track:7ffc41a56ecf5e0d6249a2da1d0962c0d9abab0218cd51da1ea917c4923cf937` |
| 15 | `lemma` | [NormedField.tendsto_norm_zpow_nhdsNE_zero_atTop](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/normedfield-tendsto-norm-zpow-nhdsne-zero-attop--2b9ae38340090b7591ce174f.md) | 126 | `result-track:2b9ae38340090b7591ce174fa3f5f7c2f41aaf7be54073d4cb08cac69ac5ec70` |
| 16 | `lemma` | [discreteTopology_or_nontriviallyNormedField](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/discretetopology-or-nontriviallynormedfield--2bd287d4e3d7e63643335864.md) | 148 | `result-track:2bd287d4e3d7e63643335864a319c0dd66ef5d5e2d7ac5872a0a5ccd0788a312` |
| 17 | `lemma` | [discreteTopology_of_bddAbove_range_norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/discretetopology-of-bddabove-range-norm--1d18a791d7435fe5be772462.md) | 160 | `result-track:1d18a791d7435fe5be772462667daca05bc7b215b0a101bfcdd5e43b0d60bd36` |
| 18 | `theorem` | [denseRange_nnnorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/denserange-nnnorm--56de9564dbc3054d084c0e71.md) | 173 | `result-track:56de9564dbc3054d084c0e716802606ed4141bf23b3e139ffca6fb5b034d7ac7` |
| 19 | `lemma` | [continuousAt_zpow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/continuousat-zpow--32fcb7737f77e33b201b1498.md) | 184 | `result-track:32fcb7737f77e33b201b1498c1456e9b589c73ad608afd7f1d7dcc35074cf072` |
| 20 | `lemma` | [continuousAt_inv](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/continuousat-inv--7edfffd89c29d951c26ed328.md) | 192 | `result-track:7edfffd89c29d951c26ed328c235adce1e41e5db3583f5b6b6afe45cc43dc541` |
| 21 | `instance` | [Rat.instNormedField](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/rat-instnormedfield--accb39df0ee0fc8ba97d72e7.md) | 198 | `declaration-track:accb39df0ee0fc8ba97d72e72ae117cff19109b835f4ce7c448fddcadc39b696` |
| 22 | `instance` | [Rat.instDenselyNormedField](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/rat-instdenselynormedfield--7d3b68f17a90a12f3697b27e.md) | 203 | `declaration-track:7d3b68f17a90a12f3697b27ee55bab2f20e87f0d0dcabe7a1a30573ee388961a` |
| 23 | `lemma` | [NormedField.completeSpace_iff_isComplete_closedBall](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Lemmas/Variantdcb38a3dbf6c3fa042ceee8ce6b95444182a00425451c29a537635acca782cbb.lean/declarations/normedfield-completespace-iff-iscomplete-closedball--509a8534b45a289427413cdf.md) | 210 | `result-track:509a8534b45a289427413cdfd60915ca62ac27ccbe4617277ad89cfbba06a65b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
