# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Set.Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03bc2ffa6a3e1e23da6b4041ed6a8993e8701b12",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03bc2ffa6a3e1e23da6b4041ed6a8993e8701b12`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConvexSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset--18c00e85a9ee3cbe52e01eac.md) | 51 | `declaration-track:18c00e85a9ee3cbe52e01eac582d77c97c62419975c93e5db26c220247730101` |
| 2 | `lemma` | [IsConvexSet.of_sConvexComb_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-of-sconvexcomb-mem--2b500a291c978985a6fb8cce.md) | 53 | `result-track:2b500a291c978985a6fb8cce2e9b36262622481eb398015fbe2072fcf23d2246` |
| 3 | `lemma` | [IsConvexSet.sConvexComb_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-sconvexcomb-mem--e92e6dfbcf9e4954a5e61473.md) | 57 | `result-track:e92e6dfbcf9e4954a5e61473cc42f42a1b7f8d6ec31c2edf43ce8e350796fbc8` |
| 4 | `lemma` | [IsConvexSet.iConvexComb_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-iconvexcomb-mem--b0bf3fef0d67bc291cec7df8.md) | 60 | `result-track:b0bf3fef0d67bc291cec7df835e433a5423b9b8bd4223ce92c24b0f62dc1e45d` |
| 5 | `lemma` | [IsConvexSet.convexCombPair_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-convexcombpair-mem--ded27c0369fbd1b32d4f9645.md) | 67 | `result-track:ded27c0369fbd1b32d4f96459bf5296e3f895fd53f0c64c12602853ee627df12` |
| 6 | `lemma` | [IsConvexSet.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-empty--bae95addb27ed06ce42698e9.md) | 74 | `result-track:bae95addb27ed06ce42698e92e21ce422c0fff0361782f368739426e1899189e` |
| 7 | `lemma` | [IsConvexSet.univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-univ--d228ca57f5fae9eabaf453e8.md) | 75 | `result-track:d228ca57f5fae9eabaf453e81c601a36a92c9cef8c1fd6b059996546b0ce7da2` |
| 8 | `lemma` | [IsConvexSet.singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-singleton--ebd113b96e1cfc83b2fce4a2.md) | 77 | `result-track:ebd113b96e1cfc83b2fce4a26134efabdf501e4607bf48d93ce1dee40467625b` |
| 9 | `lemma` | [IsConvexSet.of_subsingleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-of-subsingleton--be030a62e4ad89d99e5d8ba6.md) | 80 | `result-track:be030a62e4ad89d99e5d8ba66cf6435e26bfcaf811a97518170dad7d4bbe4cb4` |
| 10 | `lemma` | [IsConvexSet.inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-inter--673dd7b2f504d30de389da1d.md) | 83 | `result-track:673dd7b2f504d30de389da1d41050a356ff9d4f7b886d91e4572ec1f29355b70` |
| 11 | `lemma` | [IsConvexSet.sInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-sinter--325c0e5b1af3070881f58488.md) | 87 | `result-track:325c0e5b1af3070881f58488abac1900c55daa485209aca5ca04f3a5e858e4bc` |
| 12 | `lemma` | [IsConvexSet.iInter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-iinter--0dd058b639fe2e6dc4f6b89b.md) | 90 | `result-track:0dd058b639fe2e6dc4f6b89bf882fc43ffe8f8e17b444f855871e2515c4b6896` |
| 13 | `lemma` | [IsConvexSet.iInter₂](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-iinter--6b8f2b774d3904ef4d9164db.md) | 93 | `result-track:6b8f2b774d3904ef4d9164dbf449bf6dbf5f2db1eec9ff281b62464463021763` |
| 14 | `lemma` | [IsConvexSet.sUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-sunion--f42cb6258056ed4af36aa474.md) | 97 | `result-track:f42cb6258056ed4af36aa474125c2d8abf8eb8f031760f7be592397d0c0f75dc` |
| 15 | `lemma` | [IsConvexSet.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-iunion--9043efe92a313008612a0222.md) | 106 | `result-track:9043efe92a313008612a0222e9eb09a0eaa8c093092a0b25b1c2223af8e5a550` |
| 16 | `lemma` | [IsConvexSet.preimage](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-preimage--aebf2743070c836af9408505.md) | 110 | `result-track:aebf2743070c836af9408505e5606d7a80b32bc0f73bc3adad709b88f473022e` |
| 17 | `lemma` | [IsConvexSet.image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-image--11c93625eafc7bd491ea3fff.md) | 116 | `result-track:11c93625eafc7bd491ea3fff6b2e52f0ce5c9ba38bd9dee068c073ede7ffe97b` |
| 18 | `def` | [ConvexSpace.subtype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/convexspace-subtype--ec0172299a44d254d438a805.md) | 143 | `declaration-track:ec0172299a44d254d438a805eb4cbf573999d89879a648de505afa01b13a95f5` |
| 19 | `lemma` | [isAffineMap_subtypeVal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isaffinemap-subtypeval--c640a8225aeeed0bc5512a6c.md) | 148 | `result-track:c640a8225aeeed0bc5512a6c295bfbf01c96dda07e803541bff6de8ebffa4219` |
| 20 | `lemma` | [subtypeVal_sConvexComb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/subtypeval-sconvexcomb--61d3c085ab1d2a15252cd0a1.md) | 155 | `result-track:61d3c085ab1d2a15252cd0a14535e559bb41bfe411628f4810029719a69ceaf7` |
| 21 | `lemma` | [subtypeVal_iConvexComb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/subtypeval-iconvexcomb--03ad1d1127578829fb06a767.md) | 160 | `result-track:03ad1d1127578829fb06a7673380922f005c4dc7dbf7ec789e858a6f0051294c` |
| 22 | `lemma` | [subtypeVal_convexCombPair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/subtypeval-convexcombpair--529f4d5f5673072ba2099a29.md) | 167 | `result-track:529f4d5f5673072ba2099a29b010d4419d632997c3459f4ba222e9611c788d07` |
| 23 | `lemma` | [IsConvexSet.prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-prod--d2f10debb1cd5fce27e9a4ef.md) | 173 | `result-track:d2f10debb1cd5fce27e9a4efb93aad94b13f06c7137d9d50e7d3727e850bcd2b` |
| 24 | `lemma` | [IsConvexSet.pi](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-pi--e7e479df0090132b5c72543d.md) | 181 | `result-track:e7e479df0090132b5c72543de2715b9164002fc885185113c05be2fcf78b34e5` |
| 25 | `lemma` | [IsConvexSet.of_convexCombPair_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Set/Variant0ed76efaec68bd0ebd38dfb75233b460536cf87d1c99ea2b8bcbbcc75383e9bc.lean/declarations/isconvexset-of-convexcombpair-mem--110f4dbd54b4ebd3a63bfad8.md) | 195 | `result-track:110f4dbd54b4ebd3a63bfad8b6261573a5c5f0086bca8ec629c1fdba69c7d927` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
