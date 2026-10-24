# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Shatter.Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cafd67ff2bf5ba7f0c6eef4adf2013408a19d2a6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.Compression.Down` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Shatters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters--afd01332013683cdcafe15b1.md) | 36 | `declaration-track:afd01332013683cdcafe15b1b128e2b137494bdf576ea34beef19700b177a7ef` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/instance--b1420ce3d037edc50b9bd8f2.md) | 38 | `declaration-track:b1420ce3d037edc50b9bd8f2c8681b717514bc6e9f71f9cda4b11c7204eaa24b` |
| 3 | `lemma` | [Shatters.exists_inter_eq_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-exists-inter-eq-singleton--394eb57790b5f207fdaea5f5.md) | 40 | `result-track:394eb57790b5f207fdaea5f5862bb28dcb18806f296774789cd00e02b35b8d52` |
| 4 | `lemma` | [Shatters.mono_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-mono-left--c2bb78615abd3d977275fd34.md) | 43 | `result-track:c2bb78615abd3d977275fd3409315d22f8966802c8adb3cfc6b0e5e36314588e` |
| 5 | `lemma` | [Shatters.mono_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-mono-right--aaafc229454abedc9bccbc6c.md) | 46 | `result-track:aaafc229454abedc9bccbc6ce95d0bc7fb2e14cb8fe9274e60df049db046be18` |
| 6 | `lemma` | [Shatters.exists_superset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-exists-superset--9c41ff3a6d0dce9d67829dc2.md) | 49 | `result-track:9c41ff3a6d0dce9d67829dc2d65def3f4d9953c0396b35195ec614f54206923d` |
| 7 | `lemma` | [shatters_of_forall_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-of-forall-subset--47c323eeb3fd91fce48e2d3f.md) | 52 | `result-track:47c323eeb3fd91fce48e2d3f5719b7fe7057fa2d6e9c5286ecc896f30516d380` |
| 8 | `lemma` | [Shatters.nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-nonempty--452e36d0c926e06fbeaf83fd.md) | 55 | `result-track:452e36d0c926e06fbeaf83fd4b98895dd95689671750e074716f775fa27a077a` |
| 9 | `lemma` | [shatters_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-empty--1e5708b729092fe8807e76fd.md) | 58 | `result-track:1e5708b729092fe8807e76fd8683bafa770aa5a8139421db19451cb21ce279f6` |
| 10 | `lemma` | [Shatters.subset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-subset-iff--6a1c1d782b24531c9facc5da.md) | 61 | `result-track:6a1c1d782b24531c9facc5da0a21361a1ed6ca264b570d5c7695857a3daea874` |
| 11 | `lemma` | [shatters_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-iff--b0d2112fcce40daa986f8a80.md) | 64 | `result-track:b0d2112fcce40daa986f8a802e7e96ad401f9412fef85f68dd542d0130df6523` |
| 12 | `lemma` | [univ_shatters](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/univ-shatters--9523578b52d2b2ba01c7887f.md) | 68 | `result-track:9523578b52d2b2ba01c7887fb8fcd7200c9b3563e0c960e137388655a19ef463` |
| 13 | `lemma` | [shatters_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-univ--00069dc52b8df18cb7d6d469.md) | 71 | `result-track:00069dc52b8df18cb7d6d469c2b08c45f9bd34389aaed2672f0a693477f55d40` |
| 14 | `def` | [shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatterer--72cd058614c856c7a3aef7eb.md) | 75 | `declaration-track:72cd058614c856c7a3aef7eb1ded1cd399db8ea00219a07f31592bc90ae5e0b7` |
| 15 | `lemma` | [mem_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/mem-shatterer--94d65639551dca5bba13f7f2.md) | 78 | `result-track:94d65639551dca5bba13f7f248f6848a88fa35dd3724e44fcce70b52cee5ea45` |
| 16 | `lemma` | [shatterer_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatterer-mono--e280f3f5703a5eb9d69e5681.md) | 83 | `result-track:e280f3f5703a5eb9d69e56817157b4a970ab07b52d3df7b6a28bb800128434c5` |
| 17 | `lemma` | [subset_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/subset-shatterer--175704b3471f83f0890aefc2.md) | 86 | `result-track:175704b3471f83f0890aefc234a098112db1e7a92c903e01fd596934835dcc33` |
| 18 | `lemma` | [isLowerSet_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/islowerset-shatterer--518a334426d39469c1411b33.md) | 89 | `result-track:518a334426d39469c1411b33605c30d15bb7b15571343363d2533fab62c5a782` |
| 19 | `lemma` | [shatterer_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatterer-eq--b603363f41f07d04632b3218.md) | 92 | `result-track:b603363f41f07d04632b321832c0bb8aa9ecb405f07a32a6047179b28060225c` |
| 20 | `lemma` | [shatterer_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatterer-idem--67ea063e24aa586dc4dc34c6.md) | 99 | `result-track:67ea063e24aa586dc4dc34c6d6372145e4c189cba56a3018ae4ace7f6ca74158` |
| 21 | `lemma` | [shatters_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-shatterer--03a3771dee16ef9451c4bbd1.md) | 101 | `result-track:03a3771dee16ef9451c4bbd1664769c903aae03bf100598ca01d2d49043d1ace` |
| 22 | `lemma` | [aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/aux--86b87134229163d4614bf915.md) | 106 | `result-track:86b87134229163d4614bf915b889539cc45996ea019460dfd20cae8040b59439` |
| 23 | `lemma` | [card_le_card_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/card-le-card-shatterer--810284cb242210d09d568982.md) | 110 | `result-track:810284cb242210d09d5689828ed1b58aaabe11c5deef7173ab4ec87304d629f1` |
| 24 | `lemma` | [Shatters.of_compression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-of-compression--79cba5d6cc6c980d8fcb72c1.md) | 153 | `result-track:79cba5d6cc6c980d8fcb72c1dd661317454207a162c43e1ee4853da0d29c4997` |
| 25 | `lemma` | [shatterer_compress_subset_shatterer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatterer-compress-subset-shatterer--77c5578479a4dfc17a222375.md) | 175 | `result-track:77c5578479a4dfc17a222375c6c0d60d7c24e61c8ca32a716d75b78724046db1` |
| 26 | `def` | [vcDim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/vcdim--c147344f565d0ab93f5313c6.md) | 182 | `declaration-track:c147344f565d0ab93f5313c6e57b7183a08a5ddc0b8cf8f6a56a86507fd9261f` |
| 27 | `lemma` | [vcDim_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/vcdim-mono--4b9d71c8aade016fc57a0482.md) | 184 | `result-track:4b9d71c8aade016fc57a0482dc2d7f64d445023a5de88a40d10468cf93524ed8` |
| 28 | `lemma` | [Shatters.card_le_vcDim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/shatters-card-le-vcdim--7a898780cb94967829110086.md) | 186 | `result-track:7a898780cb9496782911008679b9c7e54ee37a81b08b02b7c82c95c7b98f386b` |
| 29 | `lemma` | [vcDim_compress_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/vcdim-compress-le--37416326c6460edf080154ff.md) | 189 | `result-track:37416326c6460edf080154ff630f718dc0d5e4d8542a83779f5ce503db748c5a` |
| 30 | `lemma` | [card_shatterer_le_sum_vcDim](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Shatter/Varianteac7b268597803271931ef2b20fbc269f7e7bf71bfa4688098ac4fcde24cf03b.lean/declarations/card-shatterer-le-sum-vcdim--6f97f6ba9f90e89952a0193d.md) | 193 | `result-track:6f97f6ba9f90e89952a0193d48344cba59f31473dbc675211083d5f78d06197c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
