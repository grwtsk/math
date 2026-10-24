# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Elementwise.Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7cc06309d601d34365bb273114cfce44574bc499",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7cc06309d601d34365bb273114cfce44574bc499`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ex1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/ex1--208b5b98305c2435d71635a9.md) | 24 | `result-track:208b5b98305c2435d71635a99a6084deba94a5321a2b1df110112d8b80056282` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--9ecdbcb1b6875600d9c974d3.md) | 28 | `declaration-track:9ecdbcb1b6875600d9c974d3686cfea1bdd1d9f56d8752d30d566ec088225c6c` |
| 3 | `theorem` | [ex2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/ex2--f16752f32a0e663aa51cbe88.md) | 32 | `result-track:f16752f32a0e663aa51cbe889ebfdcbedd4654452159a6dce9c53384de401ae5` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--f9d40f3e430eef0734a8694c.md) | 36 | `declaration-track:f9d40f3e430eef0734a8694cba52001f0391170fcf753753e7ad800b7d40cbfa` |
| 5 | `theorem` | [ex3](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/ex3--f21ca015debe0e4c947c5351.md) | 43 | `result-track:f21ca015debe0e4c947c5351322bce396f191bf8814eec0bee11bcc264653c13` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--1d950ba437b908d8a2106112.md) | 46 | `declaration-track:1d950ba437b908d8a2106112e7d4821f94286dc26204bb9deed941d0c10a1de6` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--97ec07cc88a1b076679bf17c.md) | 52 | `declaration-track:97ec07cc88a1b076679bf17c2fc8b2ea750d9bf43ad1455dbde87fd3d55e62a0` |
| 8 | `lemma` | [foo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/foo--193ef9ed9f37cdde0a21789f.md) | 58 | `result-track:193ef9ed9f37cdde0a21789faaad3bfea87c55e035d5e4b11b8d4e550cad7746` |
| 9 | `lemma` | [foo'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/foo--1983b4f9fe5df1a39a982c7f.md) | 63 | `result-track:1983b4f9fe5df1a39a982c7fed116b47148d4e565775431c80f374cf51ca0991` |
| 10 | `lemma` | [bar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/bar--177c46275c7bcff040a25fc1.md) | 67 | `result-track:177c46275c7bcff040a25fc15696e570a6e5df229851e1f657ce4117b82fa550` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--e232b2568318285735a28e30.md) | 72 | `declaration-track:e232b2568318285735a28e3071620b2999ef18b43a8214d226cc627c4616e6f7` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--98f6b1110ec547b53e8ccb07.md) | 78 | `declaration-track:98f6b1110ec547b53e8ccb0724c267e74f096b40e6c1d3641fb1d75b915d7d3c` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--782513bd210895a160765fb5.md) | 81 | `declaration-track:782513bd210895a160765fb5b3009ee7057ec8f4d226310d2cc40cd048272e59` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--900032b691c663a1fc0fd95e.md) | 92 | `declaration-track:900032b691c663a1fc0fd95e04fa7ab8056c4ce425e62d824594c1cf52de86ea` |
| 15 | `lemma` | [bar'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/bar--a73573ce6aebb0ef74f744c2.md) | 104 | `result-track:a73573ce6aebb0ef74f744c25edb604c9f2d00db1171c1ed318c86dfd4e9c371` |
| 16 | `lemma` | [bar''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/bar--2bef80063c6335d8a0662cbf.md) | 107 | `result-track:2bef80063c6335d8a0662cbfe0c286fcb3814680fe4d45f81d2a9ab58a96ceea` |
| 17 | `lemma` | [bar'''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/bar--f008cd2fae7387d14c31e11e.md) | 110 | `result-track:f008cd2fae7387d14c31e11ec4de1631c0a7ed7d03dd0cabd5e822f54073ed96` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--456b22559e1b40657260c6e1.md) | 113 | `declaration-track:456b22559e1b40657260c6e1dc431f3a78d6941e08c48758c44b48c756a5ce62` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--172eccbfe18cfced2a734bde.md) | 116 | `declaration-track:172eccbfe18cfced2a734bde1eaf51377fedd93c362fce1c3b56e7e124b084c8` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--16bb74e1a64bfce29f7c2790.md) | 123 | `declaration-track:16bb74e1a64bfce29f7c2790c9552fe7bf7a89bc190789758fbda192f7b5c650` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--38d72f75fe032400a3d064e9.md) | 129 | `declaration-track:38d72f75fe032400a3d064e920661405d559ba11312ba6003e855223aeabeccd` |
| 22 | `def` | [f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/f--09b7d6e85e9afb7f8bc0db8f.md) | 136 | `declaration-track:09b7d6e85e9afb7f8bc0db8ffc05fa6184379e60115f3d2b7fdf67210004e001` |
| 23 | `def` | [g](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/g--a50472e390c37873292d4c17.md) | 137 | `declaration-track:a50472e390c37873292d4c1750acceffbc2ccc9f52b06357067b043b1cbfdb0a` |
| 24 | `def` | [h](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/h--dd833bca424ddf98bde9edea.md) | 138 | `declaration-track:dd833bca424ddf98bde9edea1cf88bc978791d0b5cb276ddc4e48e8c3269520d` |
| 25 | `lemma` | [gh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/gh--5d416e4a85307a9145a9b9ec.md) | 140 | `result-track:5d416e4a85307a9145a9b9ec9504c5d5dfb86e855c93d9e767f55bc6901cef99` |
| 26 | `theorem` | [fh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/fh--62e77e1102f1c7387e4c9aa0.md) | 143 | `result-track:62e77e1102f1c7387e4c9aa0bb6dbb0d89a08d20e9e14c0e6b1356b958e07177` |
| 27 | `theorem` | [ex1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/ex1--53abafeb38fa3443f81cf7da.md) | 166 | `result-track:53abafeb38fa3443f81cf7da3e90de31f645d7f65844f323f19db8cb5bdac1c9` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--21f7410329b8efe412ddd025.md) | 170 | `declaration-track:21f7410329b8efe412ddd025701f2ab26afc9b2f54a092c0ce48821571ad9da9` |
| 29 | `lemma` | [foo](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/foo--4af5617846ed6af327c06f7e.md) | 174 | `result-track:4af5617846ed6af327c06f7e9f4202b877b323c7c1e3da3d793be602e0a23340` |
| 30 | `lemma` | [foo'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/foo--fd59e1994db10db9b257f229.md) | 179 | `result-track:fd59e1994db10db9b257f229c2c2af862ade14f7c64b87aa64ec687a7d02904c` |
| 31 | `lemma` | [bar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/bar--ab42d66392a0c155cea0448d.md) | 183 | `result-track:ab42d66392a0c155cea0448d0216845e75bcd58d6b51e01bcc91b9a283f296da` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--b1231b46f4845821963c0707.md) | 189 | `declaration-track:b1231b46f4845821963c07075f793662b90a10d50b860da1d104b1140ab9dadc` |
| 33 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--ea22993337d62f524395451b.md) | 195 | `declaration-track:ea22993337d62f524395451ba878efa1fceabaf1aa28c36527ab237ac648389d` |
| 34 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--e69d5c818fb2b958b0579ca9.md) | 198 | `declaration-track:e69d5c818fb2b958b0579ca9de818884d1e5f7aad2c312b6d386dfb7a70d7759` |
| 35 | `lemma` | [bar'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/bar--f257466361e7c34a44a4459c.md) | 208 | `result-track:f257466361e7c34a44a4459c2e52f32d927c275249921108727adf103604e1a7` |
| 36 | `lemma` | [bar''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/bar--cc15bcf6900125f024ad707d.md) | 211 | `result-track:cc15bcf6900125f024ad707dda6a2837dd5508f1ff79ec4bbc7fe4edd48149d5` |
| 37 | `lemma` | [bar'''](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/bar--7d484bc2bae1812ad87121ba.md) | 214 | `result-track:7d484bc2bae1812ad87121ba73b1dc6c3240d734473c3fc5c65e05abece323f3` |
| 38 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--43787582ed3b288d3c241556.md) | 217 | `declaration-track:43787582ed3b288d3c241556fe3df3bcf0f110530656a96e9873adc10f78f1c5` |
| 39 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--88bf4d67fc54acc09f5df6f5.md) | 220 | `declaration-track:88bf4d67fc54acc09f5df6f532f502f1d5aa101d27479122861695a340bcd8d9` |
| 40 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--5f587f3bfaf608db853ce0a2.md) | 227 | `declaration-track:5f587f3bfaf608db853ce0a240779800f7e7fe5b02beaa642387b1dd3098ee4b` |
| 41 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variant9c5c2770e8448a2771e43bc5e9406cbf46ee48ece2c54d64263071c3fd0c9e63.lean/declarations/example--12a84d3c5982ee513931f89d.md) | 233 | `declaration-track:12a84d3c5982ee513931f89dd3e706623ebfe3a7d5955b259fc2896e5c0afc05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
