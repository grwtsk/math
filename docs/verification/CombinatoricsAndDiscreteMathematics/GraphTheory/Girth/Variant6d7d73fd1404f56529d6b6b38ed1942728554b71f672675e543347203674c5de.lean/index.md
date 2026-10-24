# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Girth.Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b703b503e1495dbd11cc33691689b08615146e3",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b703b503e1495dbd11cc33691689b08615146e3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean.json)

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
| 1 | `def` | [egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/egirth--012a884f9d1b7e5e3f17b8cc.md) | 39 | `declaration-track:012a884f9d1b7e5e3f17b8cc526c6c408ccee7ee26e4d5444479ac64ad7e5bbc` |
| 2 | `lemma` | [le_egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/le-egirth--4f3995724306fdc2d844e3da.md) | 43 | `result-track:4f3995724306fdc2d844e3da38ba1de0d20e54958ec761b62c3b0242b578195e` |
| 3 | `lemma` | [Walk.IsCycle.egirth_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/walk-iscycle-egirth-le-length--278f4fdfeb8ca3e94d9d1c5f.md) | 46 | `result-track:278f4fdfeb8ca3e94d9d1c5ffceed36ac2bc7a81bfa988ca276b7d211c7611cd` |
| 4 | `lemma` | [Walk.IsCircuit.egirth_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/walk-iscircuit-egirth-le-length--f13e384ab8a0798067723362.md) | 51 | `result-track:f13e384ab8a0798067723362c3f853df876a68d4aae3c289c3c808fd2c8eeb85` |
| 5 | `lemma` | [egirth_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/egirth-eq-top--627690e6afbe02ef31223b9d.md) | 63 | `result-track:627690e6afbe02ef31223b9d1b8a5a3b37c5fdd6bf64ad041c837bfa4519e21c` |
| 6 | `lemma` | [egirth_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/egirth-anti--2b4cb31bd91a98d8cf4b84ca.md) | 67 | `result-track:2b4cb31bd91a98d8cf4b84caf4469a1161c09d621287db9a286d5270d31a62f5` |
| 7 | `lemma` | [exists_egirth_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/exists-egirth-eq-length--60d0f5f7f8d58ee739c93fa1.md) | 70 | `result-track:60d0f5f7f8d58ee739c93fa13ca623ab7e9650d60fd7539cc97e2f4e16721d68` |
| 8 | `lemma` | [three_le_egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/three-le-egirth--e0a6b5f2a90b4af612c1eada.md) | 79 | `result-track:e0a6b5f2a90b4af612c1eadac13fe6439df3fc86f74c05d4ecff3e0aeef3e1d9` |
| 9 | `lemma` | [egirth_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/egirth-bot--2b56ccd32d7ec8c72354cd88.md) | 82 | `result-track:2b56ccd32d7ec8c72354cd8892b450652e50aca4f3f96c4c00fd4307d3c9739e` |
| 10 | `theorem` | [egirth_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/egirth-top--927d69166ec478b1c7035283.md) | 84 | `result-track:927d69166ec478b1c7035283af6913f443c65cc2481d42247b7faf1ee343ec25` |
| 11 | `lemma` | [egirth_le_two_mul_ediam_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/egirth-le-two-mul-ediam-add-one--b661c94ba840b8e72b60aa16.md) | 98 | `result-track:b661c94ba840b8e72b60aa167af173300dfdecb4d82cdc9afbde650373ca12d7` |
| 12 | `lemma` | [IsContained.egirth_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/iscontained-egirth-le--2502dbb09b0eec0cc9d92a9e.md) | 109 | `result-track:2502dbb09b0eec0cc9d92a9ecef260c37103ca2b63661ea38cd3770b30517a46` |
| 13 | `lemma` | [Iso.egirth_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/iso-egirth-eq--550ee95df786d4107d196cb0.md) | 117 | `result-track:550ee95df786d4107d196cb0e389e0b5fa67a6dc443858001a392fc96b1fbf28` |
| 14 | `def` | [girth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/girth--f78c99f2748af0cc63e9bfa5.md) | 129 | `declaration-track:f78c99f2748af0cc63e9bfa55c4d7c7d3de9970d788c965d1179eaf39e78e190` |
| 15 | `lemma` | [Walk.IsCycle.girth_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/walk-iscycle-girth-le-length--54df3f5a898f5caa8799cebd.md) | 132 | `result-track:54df3f5a898f5caa8799cebdb2cf58563fa602ea4da7930f65bde3d08b5de966` |
| 16 | `lemma` | [natCast_girth_le_egirth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/natcast-girth-le-egirth--1df47f06bd0bb241594f2791.md) | 137 | `result-track:1df47f06bd0bb241594f27917b8fa6d19ba576c04f3b940fa1eebb4cb8046160` |
| 17 | `lemma` | [three_le_girth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/three-le-girth--467583b1b2d89e9065b06edb.md) | 140 | `result-track:467583b1b2d89e9065b06edb8a91625af1811a2a2e17c93045f24eae4ab28e53` |
| 18 | `lemma` | [girth_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/girth-eq-zero--6c7de1147353b5ddf8476b26.md) | 143 | `result-track:6c7de1147353b5ddf8476b26c058c244c7aab183291187936c156d213c82d0a2` |
| 19 | `lemma` | [girth_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/girth-anti--c72c51986c940155df8eaad2.md) | 148 | `result-track:c72c51986c940155df8eaad226bda955c47c1ecb5173d848060377a99f1f83bb` |
| 20 | `lemma` | [Walk.IsCircuit.girth_le_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/walk-iscircuit-girth-le-length--ae50f636aa608f39a3ac501c.md) | 151 | `result-track:ae50f636aa608f39a3ac501cf83f47fcbc784688d63918360152d77d56954d7b` |
| 21 | `lemma` | [exists_girth_eq_length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/exists-girth-eq-length--9c77bdb795a7eab2dc825d28.md) | 155 | `result-track:9c77bdb795a7eab2dc825d2886cc3274adea81a1bcf1b3f951f9cd63aa0ead5c` |
| 22 | `lemma` | [girth_le_two_mul_ediam_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/girth-le-two-mul-ediam-add-one--f301d5bb5f5b8d13b0a228a2.md) | 162 | `result-track:f301d5bb5f5b8d13b0a228a27666bd6a0c6e86414a4c49a5ff224937ffb1a4d1` |
| 23 | `lemma` | [girth_le_two_mul_diam_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/girth-le-two-mul-diam-add-one--2540775393118b7fce8b67c9.md) | 167 | `result-track:2540775393118b7fce8b67c9d82f2119b1a66a7c20b67b5c11c9f6855daeb990` |
| 24 | `lemma` | [girth_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/girth-bot--4bbba48b3221ef55b4285fb8.md) | 170 | `result-track:4bbba48b3221ef55b4285fb8bf3754d7854b4e9d07d5c2c3a386b420e2ede7e4` |
| 25 | `theorem` | [girth_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/girth-top--feb2debac9c3bb918e593de2.md) | 173 | `result-track:feb2debac9c3bb918e593de2d52b480a39e514a82dc1bd6213663510de361f34` |
| 26 | `lemma` | [IsContained.girth_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/iscontained-girth-le--44034d6c1fb33274e5747ae2.md) | 176 | `result-track:44034d6c1fb33274e5747ae208404fcb3634fb57ef9f28475423d53b89b1c35f` |
| 27 | `lemma` | [Iso.girth_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Girth/Variant6d7d73fd1404f56529d6b6b38ed1942728554b71f672675e543347203674c5de.lean/declarations/iso-girth-eq--0877784ddef69345f2026af0.md) | 179 | `result-track:0877784ddef69345f2026af0bb42a39ca802ae5f50c44af0945d829bfa38640a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
