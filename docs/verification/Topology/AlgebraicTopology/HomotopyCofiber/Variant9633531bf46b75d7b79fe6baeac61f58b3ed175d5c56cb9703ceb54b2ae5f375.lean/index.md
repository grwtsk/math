# Verification target: GRWTSK.Topology.AlgebraicTopology.HomotopyCofiber.Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c09675a4982fcb4365bd9b0114b0bcf328126d16",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c09675a4982fcb4365bd9b0114b0bcf328126d16`.

Source path: `GRWTSK/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplexBiprod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Homotopy` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.IsInvertedBy` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasHomotopyCofiber](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/hashomotopycofiber--6fd346ad52327d03b5d9fc9d.md) | 48 | `declaration-track:6fd346ad52327d03b5d9fc9d93d571ac5e31bc0197a6a84692c9553cbf2ebb2d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/instance--d4761810ffdd7818322a68c3.md) | 51 | `declaration-track:d4761810ffdd7818322a68c3e33e8f57dc8994102d5759a0b6ff9a545f3d2a34` |
| 3 | `def` | [X](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/x--21da19ca5caef6186e1f39fe.md) | 59 | `declaration-track:21da19ca5caef6186e1f39fe02ed2c982fdea88f0337e512e75c23db14aaedcf` |
| 4 | `def` | [XIsoBiprod](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/xisobiprod--d459401ee5114cc3cbf83c06.md) | 67 | `declaration-track:d459401ee5114cc3cbf83c0603addb8dfa1ec45d64e6e8bbd99503dc89517497` |
| 5 | `def` | [XIso](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/xiso--9dc549f94606dc90cf2dc186.md) | 74 | `declaration-track:9dc549f94606dc90cf2dc18697ed736f1711f184a33cf9708421c1f63fc4962b` |
| 6 | `def` | [sndX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/sndx--7b20e90600ccf703db04681f.md) | 79 | `declaration-track:7b20e90600ccf703db04681f85636f0760db69385e7950e47aa88c38561df611` |
| 7 | `def` | [inrX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrx--363c61be37411ddd8c1506ee.md) | 88 | `declaration-track:363c61be37411ddd8c1506eeb52e75cc463303860d07bc563bd7eafbd46178bb` |
| 8 | `lemma` | [inrX_sndX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrx-sndx--7c0c8c610b4ccd8a0acde11d.md) | 97 | `result-track:7c0c8c610b4ccd8a0acde11dcb43edf5564e79c3e80d62fd8b2c73edc8038d74` |
| 9 | `lemma` | [sndX_inrX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/sndx-inrx--7b14aa411fe2dd8f395a9100.md) | 102 | `result-track:7b14aa411fe2dd8f395a910095940882651eaaef9ef0dad8eef5c0200be46c32` |
| 10 | `def` | [fstX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/fstx--28ad27aa6ebac9b519484553.md) | 108 | `declaration-track:28ad27aa6ebac9b519484553a2cf641b9aa410c36dcb1f0803e20c36ef7709af` |
| 11 | `def` | [inlX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx--91e4abbdce74e03548d3ae34.md) | 113 | `declaration-track:91e4abbdce74e03548d3ae348ab2ad2df4aa911e5adf059c73f34ba15f38a06b` |
| 12 | `lemma` | [inlX_fstX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx-fstx--ca4ea89ec3093f0c2d4f3371.md) | 118 | `result-track:ca4ea89ec3093f0c2d4f3371b9606d44a81b27b2eebd7e6dacaa40aa1bafeb0f` |
| 13 | `lemma` | [inlX_sndX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx-sndx--5ae02a9dda96ef77d0c6fa04.md) | 123 | `result-track:5ae02a9dda96ef77d0c6fa049dc1be8e06390f4e81dd7c685f86bcc3421bff62` |
| 14 | `lemma` | [inrX_fstX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrx-fstx--ca3ec548130fe9b16fa75a90.md) | 129 | `result-track:ca3ec548130fe9b16fa75a90731e5c9472993e76e2aea5bd8b58ed8954e75567` |
| 15 | `def` | [d](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/d--66508930e78491424a1a3c2e.md) | 135 | `declaration-track:66508930e78491424a1a3c2e448897a5aaf0a7b46da6c274de1837f843c1dfef` |
| 16 | `lemma` | [ext_to_X](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/ext-to-x--3b3d1dffa3f74055f35c6fe3.md) | 143 | `result-track:3b3d1dffa3f74055f35c6fe37ca46acd58222952b6a6f8613ce76af13e71f956` |
| 17 | `lemma` | [ext_to_X'](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/ext-to-x--f5bf3c511d9f89474580c3b7.md) | 153 | `result-track:f5bf3c511d9f89474580c3b771c5ed9713074c7b3533695740ab077459e31174` |
| 18 | `lemma` | [ext_from_X](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/ext-from-x--7f74627c71aaacb6e25e186b.md) | 158 | `result-track:7f74627c71aaacb6e25e186b541622b67263a8523e692f88945df96d33ee1388` |
| 19 | `lemma` | [ext_from_X'](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/ext-from-x--99fae62d522d2c34ea7234e9.md) | 168 | `result-track:99fae62d522d2c34ea7234e9b20dfe8b23bc8d93d255097aceb17562865c9814` |
| 20 | `lemma` | [d_fstX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/d-fstx--bef57b65fa89ef78120a69af.md) | 174 | `result-track:bef57b65fa89ef78120a69af9a9bc85f5324ed960ebf21b340daafca026a05e8` |
| 21 | `lemma` | [d_sndX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/d-sndx--c5dd9122a170004742cd760e.md) | 180 | `result-track:c5dd9122a170004742cd760e5cbdfc529e77984033869037853a75c392b42e3d` |
| 22 | `lemma` | [inlX_d](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx-d--45bb3c9753e1dbe934f0af31.md) | 186 | `result-track:45bb3c9753e1dbe934f0af3136685aae1752fd9ae250f86858ac2da86803ce59` |
| 23 | `lemma` | [inlX_d'](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx-d--8d902c291f11d90877aeda18.md) | 194 | `result-track:8d902c291f11d90877aeda18643d09be54ad7008885762f3308db9e1a074947f` |
| 24 | `lemma` | [shape](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/shape--59d89af2eb442195a329646f.md) | 199 | `result-track:59d89af2eb442195a329646f3c992111e7271d6af480a403ebd43d404eb0eae7` |
| 25 | `lemma` | [inrX_d](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrx-d--34ad7f31619284b59546ffa9.md) | 204 | `result-track:34ad7f31619284b59546ffa95bf5387744493a4231f478226f94416d8930f3d1` |
| 26 | `def` | [homotopyCofiber](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/homotopycofiber--30feb298daa0a3967811f43e.md) | 220 | `declaration-track:30feb298daa0a3967811f43e2b1222f938ee65d377c3fdad4a197b07a886f66c` |
| 27 | `def` | [inr](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inr--7ebe441279c922ba42667c3c.md) | 238 | `declaration-track:7ebe441279c922ba42667c3c275d34e9cf42865273d833c39e70f680e2fc5571` |
| 28 | `def` | [inrCompHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrcomphomotopy--bc682e6a3948d5bdb67d624e.md) | 244 | `declaration-track:bc682e6a3948d5bdb67d624e69b312b950806dddbfe0d4f2821fba514a6b1536` |
| 29 | `lemma` | [inrCompHomotopy_hom](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrcomphomotopy-hom--888cb0992e76f10640107398.md) | 261 | `result-track:888cb0992e76f106401073983371629c0d7543d5e2b0eb0d13a1850a3c2de50f` |
| 30 | `lemma` | [inrCompHomotopy_hom_eq_zero](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrcomphomotopy-hom-eq-zero--ce5cd33f65d8ec4d6b272734.md) | 264 | `result-track:ce5cd33f65d8ec4d6b272734276492754118b89d538dd162a3456d6c9dc317db` |
| 31 | `def` | [desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/desc--7f9ef8b23e78860f1298f347.md) | 275 | `declaration-track:7f9ef8b23e78860f1298f3470d0ce310168830585f9b24f2b7ee89a4ba612449` |
| 32 | `lemma` | [desc_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/desc-f--3b4a065a1c4c0004b088c26d.md) | 294 | `result-track:3b4a065a1c4c0004b088c26dcbf65fc92de8bbca2b087b479fdb30a8e9ece519` |
| 33 | `lemma` | [desc_f'](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/desc-f--2016ae57f38220adf1bcdb86.md) | 299 | `result-track:2016ae57f38220adf1bcdb866232635a3a075b856da9120580dcd1544c73a3ce` |
| 34 | `lemma` | [inlX_desc_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx-desc-f--df1e98d1ef261d5dafce41c2.md) | 304 | `result-track:df1e98d1ef261d5dafce41c29cf76ed19ec6b99dc46ca86fb8ce458e8785429e` |
| 35 | `lemma` | [inrX_desc_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrx-desc-f--bfbe401add0cb5dd1126d734.md) | 311 | `result-track:bfbe401add0cb5dd1126d734bcb80c9d9f71ff4c4d9bbee998127a5654ba4e4c` |
| 36 | `lemma` | [inr_desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inr-desc--0084eb6c834cda65c8fb546d.md) | 317 | `result-track:0084eb6c834cda65c8fb546dc679a02b30acb5ec1ba6e626950f7a3cbe36fb8d` |
| 37 | `lemma` | [inrCompHomotopy_hom_desc_hom](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrcomphomotopy-hom-desc-hom--cebb744a49e39c00c16eb37e.md) | 321 | `result-track:cebb744a49e39c00c16eb37e8a638dd07580f7e2a0e156d7fedfb63fbd583347` |
| 38 | `lemma` | [eq_desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/eq-desc--ce503033c396fbff085c3b17.md) | 329 | `result-track:ce503033c396fbff085c3b176bab1f20cb1b8955b7c0861a75b0dc8623341309` |
| 39 | `lemma` | [descSigma_ext_iff](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/descsigma-ext-iff--a512ae133000977b1857e5c7.md) | 342 | `result-track:a512ae133000977b1857e5c7c3d3841b9075134e6e9490412525a72ecc30ed8c` |
| 40 | `def` | [descEquiv](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/descequiv--66e9b53210bd5aa84025c666.md) | 359 | `declaration-track:66e9b53210bd5aa84025c66618efe2232d6ff44680f9309243c8e8995c470096` |
| 41 | `abbrev` | [cylinder](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/cylinder--9d3d754b70a9fe9bf757e6e7.md) | 379 | `declaration-track:9d3d754b70a9fe9bf757e6e7a2eba4a26390ecfbcf9e3ddc93ca62d75412c766` |
| 42 | `def` | [ι₀](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/anonymous--ba3c2c40bdab28b0450543b8.md) | 384 | `declaration-track:ba3c2c40bdab28b0450543b867d93d80c2ea858a92e95ea22b83383de2d4ad17` |
| 43 | `def` | [ι₁](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/anonymous--79b8323191c2547f1ec7e822.md) | 387 | `declaration-track:79b8323191c2547f1ec7e82246883eb7e6c255b719265f1c4a1f3e769ffe93bf` |
| 44 | `def` | [desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/desc--d0b6999931ad4e1124c4c2ca.md) | 397 | `declaration-track:d0b6999931ad4e1124c4c2ca7ab13f945fed8e7204e5ed4574e5f82093cfa57d` |
| 45 | `lemma` | [ι₀_desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/desc--cf52812ebd97b05d3ef81b63.md) | 404 | `result-track:cf52812ebd97b05d3ef81b6372b5ee46864207844721e17744bae8486d000b06` |
| 46 | `lemma` | [ι₁_desc](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/desc--cd6a9324b29268c870150479.md) | 407 | `result-track:cd6a9324b29268c870150479ec98ab28b1b920a13ebfe79d2787b45d6a4adba5` |
| 47 | `def` | [π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/anonymous--03ebee945fd4fa9c45aeca38.md) | 414 | `declaration-track:03ebee945fd4fa9c45aeca38eb24f9fd8d3ff9f861444ea146564d3178d53a9f` |
| 48 | `lemma` | [ι₀_π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/anonymous--7ac8228ba784b8619c255a52.md) | 417 | `result-track:7ac8228ba784b8619c255a52163e060daf12d3c090f5d23e092ad646acc0ee0e` |
| 49 | `lemma` | [ι₁_π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/anonymous--51f001a1fdeb73a5d4ff1f0a.md) | 420 | `result-track:51f001a1fdeb73a5d4ff1f0a88c4275da439ac352de5be17660e18171f2d31cc` |
| 50 | `abbrev` | [inlX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx--060ae0495931a6e336c9f979.md) | 423 | `declaration-track:060ae0495931a6e336c9f9792a42286071f26b4a85f9301dba83232222fe9280` |
| 51 | `abbrev` | [inrX](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrx--17d27f062936a0f5950e64a2.md) | 427 | `declaration-track:17d27f062936a0f5950e64a24d540d5c2ffe5f04c8d9841a53bb2a8843b7f7eb` |
| 52 | `lemma` | [inlX_π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx--00c273e26aa365ac3f797406.md) | 431 | `result-track:00c273e26aa365ac3f797406851202861ea28e71b7968f068779736359bf2b19` |
| 53 | `lemma` | [inrX_π](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrx--0a0f14c03da4b38451b87de6.md) | 437 | `result-track:0a0f14c03da4b38451b87de6b14acaf10c9632f36bc26f9ad495af35239f652f` |
| 54 | `def` | [nullHomotopicMap](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/nullhomotopicmap--73a3870f98e2c54a5ed0a4fa.md) | 449 | `declaration-track:73a3870f98e2c54a5ed0a4fa8d9f3a48061b7eda7f2a6f34c2702b1e3eb5c00b` |
| 55 | `def` | [nullHomotopy](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/nullhomotopy--1501a58c123ac83f2dfcd9d9.md) | 455 | `declaration-track:1501a58c123ac83f2dfcd9d93537808e26331d00764227287e6249400d71be10` |
| 56 | `lemma` | [inlX_nullHomotopy_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inlx-nullhomotopy-f--8bf21105eb5ec2323d532dfe.md) | 458 | `result-track:8bf21105eb5ec2323d532dfe68a668ea6a3f89344e9285b47852d5d5208b4d59` |
| 57 | `lemma` | [inrX_nullHomotopy_f](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/inrx-nullhomotopy-f--b21ae0dc7b7a2539b8b88663.md) | 479 | `result-track:b21ae0dc7b7a2539b8b88663489bb7f6757e9dc73eec40e274f46effb1e11dc0` |
| 58 | `lemma` | [nullHomotopicMap_eq](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/nullhomotopicmap-eq--e53792b2df2eddd782dda698.md) | 508 | `result-track:e53792b2df2eddd782dda698d6d7ca145d83e7a91e87cc6d3f62fdae5f42df6a` |
| 59 | `def` | [πCompι₀Homotopy](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/comp-homotopy--a808e392588497841e993404.md) | 518 | `declaration-track:a808e392588497841e993404805ae14f2d14d57ffb3ff2385559d4f63fa92d71` |
| 60 | `def` | [homotopyEquiv](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/homotopyequiv--c5fb3fb448b3599a6543b125.md) | 524 | `declaration-track:c5fb3fb448b3599a6543b1254aeb310ea110e8e687eb29ba51e4b62028661e34` |
| 61 | `def` | [homotopy₀₁](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/homotopy--44c5cd1c2de309b8c8231839.md) | 531 | `declaration-track:44c5cd1c2de309b8c8231839e7869ac93a137c9797727bc1e612f0f9c8ba9a5a` |
| 62 | `lemma` | [map_ι₀_eq_map_ι₁](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/map-eq-map--2c333729be4909cf73a0a838.md) | 536 | `result-track:2c333729be4909cf73a0a8381ced185e60d321908103a54a26474d59364227c0` |
| 63 | `lemma` | [_root_.Homotopy.map_eq_of_inverts_homotopyEquivalences](../../../../../mathematics/Topology/AlgebraicTopology/HomotopyCofiber/Variant9633531bf46b75d7b79fe6baeac61f58b3ed175d5c56cb9703ceb54b2ae5f375.lean/declarations/root-homotopy-map-eq-of-inverts-homotopyequivalences--1c7f32e7aabbbac3ede9614b.md) | 547 | `result-track:1c7f32e7aabbbac3ede9614b01884d49a68dd2c95bb41c8a36ae481a8b362151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
