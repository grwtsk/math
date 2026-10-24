# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullback.Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a14df9f9175de7407c773096b4fa7040ac29cc7d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a14df9f9175de7407c773096b4fa7040ac29cc7d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean.json)

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
| 1 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/pullback--819641492a5f83215bb7b73c.md) | 69 | `declaration-track:819641492a5f83215bb7b73c4d4f46958c946a89622e668f297d2112faaa33ff` |
| 2 | `def` | [mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/mappullbackadj--b8dfdba809fe297b7418dbfb.md) | 80 | `declaration-track:b8dfdba809fe297b7418dbfba8fc5dd1afadfa3511e3f86c3432f65c51280d39` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/instance--da8a947e5f681ef38f582f20.md) | 96 | `declaration-track:da8a947e5f681ef38f582f206cdb68f24cd8af6923a3ff7bc81321da5a345926` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/instance--563dda90df58855e94ae8334.md) | 99 | `declaration-track:563dda90df58855e94ae8334cebee64d8019a5bd42b522e04e7d9fd7dfc3f5a2` |
| 5 | `instance` | [faithful_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/faithful-pullback--932821ef01c9196cf29cb1f5.md) | 109 | `declaration-track:932821ef01c9196cf29cb1f5601e7db1f753e517fa916ed4c7a77bfbdfb513a0` |
| 6 | `def` | [pullbackId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/pullbackid--f313e4b2c7297f07fa6e12e4.md) | 116 | `declaration-track:f313e4b2c7297f07fa6e12e4840c0389fb921650174ecd4d207893c713c79efb` |
| 7 | `def` | [pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/pullbackcomp--2e3d11acbd6ccae4520bc27c.md) | 120 | `declaration-track:2e3d11acbd6ccae4520bc27c62ad6d49559c4eff8e44d2e296acdd6b2128c832` |
| 8 | `instance` | [pullbackIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/pullbackisrightadjoint--ccf3cc0ac911f01796c29a2c.md) | 125 | `declaration-track:ccf3cc0ac911f01796c29a2c7c8925aa108557124e9bfd7b2b40f47b9edf5dfa` |
| 9 | `def` | [postAdjunctionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/postadjunctionleft--a51fa93be2b2ca26be4bb370.md) | 137 | `declaration-track:a51fa93be2b2ca26be4bb370d5743e0584d05690e46916efa04edc04c7890f97` |
| 10 | `instance` | [isLeftAdjoint_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/isleftadjoint-post--caae3e54d66b6f150a3bd60e.md) | 142 | `declaration-track:caae3e54d66b6f150a3bd60e7657e74e7b5a3b9d368f0c3ee54caf53561417f6` |
| 11 | `def` | [forgetMapTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/forgetmapterminal--898c0c2342c6fd9da3f9bf1b.md) | 151 | `declaration-track:898c0c2342c6fd9da3f9bf1b1d12b866bd84fdbd14962f2a82865a5b553956a9` |
| 12 | `def` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/star--c809b0fd95be79a3ef9379fa.md) | 162 | `declaration-track:c809b0fd95be79a3ef9379faf4f9ac4a722135c64164be9499423dd5c3a8b022` |
| 13 | `def` | [forgetAdjStar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/forgetadjstar--a97e75635983bf774c312896.md) | 169 | `declaration-track:a97e75635983bf774c312896c3f33de44f651d178b40ced4a500f67b256109b1` |
| 14 | `lemma` | [forgetAdjStar_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/forgetadjstar-counit-app--89f42542e2bae8e8675d2b07.md) | 174 | `result-track:89f42542e2bae8e8675d2b0792c7173a7b3575c5303f99817a60b3981cb9ddd5` |
| 15 | `lemma` | [forgetAdjStar_unit_app_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/forgetadjstar-unit-app-left--3c9de15d328197040954d2b6.md) | 180 | `result-track:3c9de15d328197040954d2b67055f7eb6291e9e0266f2426375b6640b46d5eab` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/instance--83e54bdfc01cd1f89c73ec40.md) | 184 | `declaration-track:83e54bdfc01cd1f89c73ec40d6bb64093836a84d2b11062e2c3dee210ebc7d23` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/instance--c8e2cedd4d732c698a941c33.md) | 188 | `declaration-track:c8e2cedd4d732c698a941c331dd7749d10de4938ae719d89b354779efae1798f` |
| 18 | `def` | [starPullbackIsoStar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/starpullbackisostar--0ba30e195dedb0de90f48224.md) | 193 | `declaration-track:0ba30e195dedb0de90f482246f66983d6cc39af2a76c5c640806235018743ddd` |
| 19 | `def` | [pushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/pushout--076dde6ec793e20e81d23374.md) | 212 | `declaration-track:076dde6ec793e20e81d233747521cc0bcd6d80a56ac02e4c0d4c03357871a60a` |
| 20 | `def` | [mapPushoutAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/mappushoutadj--30c1f6a7ec1be3c424a2ec0b.md) | 222 | `declaration-track:30c1f6a7ec1be3c424a2ec0bc65b1bcc94050ba55dc5313aa8931b07020bafd8` |
| 21 | `instance` | [faithful_pushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/faithful-pushout--ffd8475dd5f34125b781478f.md) | 250 | `declaration-track:ffd8475dd5f34125b781478f17e38a5a8c6a9e9b987056d4a70612fff5e4a97a` |
| 22 | `def` | [pushoutId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/pushoutid--6cfd221900e8f78e63863540.md) | 257 | `declaration-track:6cfd221900e8f78e638635405cfccd7b9cefaf532fc00fa0648ef7a59b77fd88` |
| 23 | `def` | [pushoutComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/pushoutcomp--1522cd448fcd9efe8f87fb20.md) | 262 | `declaration-track:1522cd448fcd9efe8f87fb206207eb4f63318d5b5798d8d644853bb4686b2dfd` |
| 24 | `instance` | [pushoutIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/pushoutisleftadjoint--19ae035faf9f63bde1403755.md) | 268 | `declaration-track:19ae035faf9f63bde1403755b9e0136f241710f278ac6fd2968198f6992c5d12` |
| 25 | `def` | [postAdjunctionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/postadjunctionright--f94c8602d0c4b0a6db60866c.md) | 280 | `declaration-track:f94c8602d0c4b0a6db60866c465ea39d70f79ab2829a588ad99803881ac12446` |
| 26 | `instance` | [isRightAdjoint_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/isrightadjoint-post--e62773febbd5186ad38c5a99.md) | 286 | `declaration-track:e62773febbd5186ad38c5a990ccc68405282fab418b6d10eb6752d582e42b8cd` |
| 27 | `def` | [forgetMapInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/forgetmapinitial--4694bcca071b2fbc130afa52.md) | 292 | `declaration-track:4694bcca071b2fbc130afa5213e972f357fc14f88aa1b41b0e38641a89d3e85a` |
| 28 | `def` | [costar](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/costar--e96d97f3402ef6caca3d4863.md) | 301 | `declaration-track:e96d97f3402ef6caca3d4863ef87a1d6546aa14110f23b23b528ee1b1befd2ce` |
| 29 | `def` | [costarAdjForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/costaradjforget--72367b1d70e1fa4003dea6ce.md) | 307 | `declaration-track:72367b1d70e1fa4003dea6ce90f77d694cec44b6bd9ed7eadc533feec6c470ee` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/instance--47d512dad7a57737d1b59513.md) | 309 | `declaration-track:47d512dad7a57737d1b595135f198a8f23932413a5e5e81bc853571d7d350122` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullback/Variant2138f3467db7d9811f60630519fd1d1c32cdffb939caee9e795aa2835e63f8f2.lean/declarations/instance--8b79bdc682f52321e3b50cad.md) | 313 | `declaration-track:8b79bdc682f52321e3b50cad686556d448472bc2fef3c5d363c76c56cb04706c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
