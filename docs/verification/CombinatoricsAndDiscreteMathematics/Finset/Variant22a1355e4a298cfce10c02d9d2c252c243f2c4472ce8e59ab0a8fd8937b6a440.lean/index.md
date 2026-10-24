# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d73a7f50977ca043313f2ab6cd5666950d7670e7",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d73a7f50977ca043313f2ab6cd5666950d7670e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_finset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-finset-range--ce84b3ae13b9a79054ab681f.md) | 34 | `result-track:ce84b3ae13b9a79054ab681f98d231c79fc98f03ccf188d49e26d0db86baa41f` |
| 2 | `theorem` | [atTop_finset_eq_iInf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/attop-finset-eq-iinf--92ecbf1f3a6599e5d6081856.md) | 37 | `result-track:92ecbf1f3a6599e5d6081856decee6ed9902e666040555ae049414337d725a28` |
| 3 | `theorem` | [tendsto_atTop_finset_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-attop-finset-of-monotone--87bcca49042bf91484f29cc1.md) | 48 | `result-track:87bcca49042bf91484f29cc1cb2550b606f838cdd4052e282f768025e971a01e` |
| 4 | `theorem` | [tendsto_finset_image_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-finset-image-attop-attop--efc798cab12914e90d2831f7.md) | 57 | `result-track:efc798cab12914e90d2831f7f11e5c67fdc8257d58a15bbeb2dea8a3cfb601e8` |
| 5 | `theorem` | [tendsto_finset_preimage_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-finset-preimage-attop-attop--e4a1071bffb90564c19bbe0e.md) | 62 | `result-track:e4a1071bffb90564c19bbe0eb13b7bfee052f156bb95e8fad33e95149881d42f` |
| 6 | `lemma` | [tendsto_toLeft_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-toleft-attop--abb57b13fb150153f1ffd895.md) | 67 | `result-track:abb57b13fb150153f1ffd89569fb66877cc4be9eb9eac6c1cb8d00ea91f6e83d` |
| 7 | `lemma` | [tendsto_toRight_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-toright-attop--1300d5512f6e9a7323f36cec.md) | 74 | `result-track:1300d5512f6e9a7323f36cecc50fe32aa0eff0f7a98409e5c6d5551c33b29b67` |
| 8 | `theorem` | [tendsto_finset_powerset_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-finset-powerset-attop-attop--8ec65659528d654ac7201c9e.md) | 81 | `result-track:8ec65659528d654ac7201c9ebc473ad8facd4dd435a36e8f7de38bb93d95744e` |
| 9 | `theorem` | [tendsto_finset_Iic_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-finset-iic-attop-attop--fba19cb1f5f8898c108e9f9c.md) | 86 | `result-track:fba19cb1f5f8898c108e9f9c33875c7ca4231e2e87c48f27276124aaf928dcfd` |
| 10 | `theorem` | [tendsto_finset_Ici_atBot_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-finset-ici-atbot-attop--34030895db8df0344e549e2a.md) | 97 | `result-track:34030895db8df0344e549e2abdb220976a25245bc915ba501a8bd08fcc0d2267` |
| 11 | `lemma` | [eventually_finset_atTop_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/eventually-finset-attop-subset--6a7cfe95c97f96f8a5b6414e.md) | 104 | `result-track:6a7cfe95c97f96f8a5b6414e629702d0fb74e765ee88fafc98dc4a5a6df2e65c` |
| 12 | `lemma` | [eventually_finset_mem_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/eventually-finset-mem-attop--3b150422ee7ffb0157748c5b.md) | 108 | `result-track:3b150422ee7ffb0157748c5b5e113ea2dcca8e4120d5647bf9dc6de0b74d760d` |
| 13 | `lemma` | [map_card_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/map-card-attop--767836cd14f53e600e655e90.md) | 113 | `result-track:767836cd14f53e600e655e90cb7c7b3f8586aeebbcbdee1ba8f5fa2f0c3e38ba` |
| 14 | `lemma` | [map_card_atTop_of_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/map-card-attop-of-fintype--2bc7254cfc56eaf60385d0cc.md) | 123 | `result-track:2bc7254cfc56eaf60385d0cc172908a83378be0c3b6546ebfac93d03c78d524d` |
| 15 | `lemma` | [tendsto_card_atTop_atTop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-card-attop-attop--08a1d83938d04a2c4ad91db0.md) | 128 | `result-track:08a1d83938d04a2c4ad91db0188910e3c85d8ce9613e64e1d6ea70db0f7ae7f6` |
| 16 | `lemma` | [tendsto_card_atTop_pure_of_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-card-attop-pure-of-fintype--7041ecacca34b31a9c6e20d4.md) | 133 | `result-track:7041ecacca34b31a9c6e20d4989760a81ace7d11df2f60b93fd78ce27cf06b2a` |
| 17 | `lemma` | [tendsto_comp_card_atTop_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-comp-card-attop-iff--03f0ffff7fac2472e2c40c7e.md) | 139 | `result-track:03f0ffff7fac2472e2c40c7e2bef84d3208aea23a6bb75815ca5bbe2ef53b2b9` |
| 18 | `lemma` | [tendsto_comp_card_atTop_iff_of_fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant22a1355e4a298cfce10c02d9d2c252c243f2c4472ce8e59ab0a8fd8937b6a440.lean/declarations/tendsto-comp-card-attop-iff-of-fintype--c0973dd378bb4bb490f8a297.md) | 146 | `result-track:c0973dd378bb4bb490f8a2973731b8099bef9d5a0d7419701a3532f62b86cd30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
