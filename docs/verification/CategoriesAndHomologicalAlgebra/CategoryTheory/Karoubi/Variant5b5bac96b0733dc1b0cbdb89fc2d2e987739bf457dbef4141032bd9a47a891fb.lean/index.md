# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Karoubi.Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cc9cf8739d5ff53cc7854a886468a8d99a16cee",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cc9cf8739d5ff53cc7854a886468a8d99a16cee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean.json)

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
| 1 | `structure` | [Karoubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/karoubi--515ac2ee9da7f244e3fb6313.md) | 52 | `declaration-track:515ac2ee9da7f244e3fb63136c88f28aeb39c337e1a9440ce2724472aa2e9fe5` |
| 2 | `theorem` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/ext--618e415e731f59403c54ed69.md) | 67 | `result-track:618e415e731f59403c54ed69478628dcd11ac65f64256be1ceb268e907f897a3` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/hom--de086942c1be5180b958ff36.md) | 80 | `declaration-track:de086942c1be5180b958ff36fca20c5eab6afbbfba570a50cf4fcda97ccf4a46` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--1d3d1f6fae9aabe8f28dd2ff.md) | 86 | `declaration-track:1d3d1f6fae9aabe8f28dd2ff52ccce101679506d2c45582085640d0ca033ef72` |
| 5 | `theorem` | [p_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/p-comp--375cd957338d2abfc9d2e55f.md) | 90 | `result-track:375cd957338d2abfc9d2e55f0180589b1694f575b2d018a365ff948c944f7e1f` |
| 6 | `theorem` | [comp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/comp-p--c7d323cd65c549e2094b3a41.md) | 94 | `result-track:c7d323cd65c549e2094b3a41b9ae2a047153e2d025723c89a1a921dd4e03e3c9` |
| 7 | `theorem` | [p_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/p-comm--8ad52aa822745b310249d8f8.md) | 98 | `result-track:8ad52aa822745b310249d8f81d9abe461c1061f95b724844f74ac7f14fcb33c3` |
| 8 | `theorem` | [comp_proof](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/comp-proof--e6294986f68a95df5d7af12c.md) | 100 | `result-track:e6294986f68a95df5d7af12c1daa4aef8da590fc190515ba685d8bd757f2371b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--f7d1e5657d5e4b190c929e20.md) | 104 | `declaration-track:f7d1e5657d5e4b190c929e20ef322e37407197c839f3ab9883f0f6d8e021514f` |
| 10 | `theorem` | [hom_ext_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/hom-ext-iff--b29afb76699dd23a330f5645.md) | 110 | `result-track:b29afb76699dd23a330f56455ec23f5b431b377f04d3072b399a6a87f95e919f` |
| 11 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/hom-ext--5b49aed64dc7ad1f4fc692d0.md) | 117 | `result-track:5b49aed64dc7ad1f4fc692d0177a3eb5845c176c120bfc4f6b9da75f7263f122` |
| 12 | `theorem` | [comp_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/comp-f--456df3a31a640868cc9ff59d.md) | 121 | `result-track:456df3a31a640868cc9ff59d81eba769613167cc287ed207fa9f7113222096ec` |
| 13 | `theorem` | [id_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/id-f--92f3f3ae91d25328b75bebdd.md) | 124 | `result-track:92f3f3ae91d25328b75bebdd63c941565e69847bdd629fe3481435f692a96296` |
| 14 | `instance` | [coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/coe--43acb30bff1ed811285a9948.md) | 128 | `declaration-track:43acb30bff1ed811285a99489e1ca4620cfc5251271c3f41cc7b5bb62c4dcc0d` |
| 15 | `theorem` | [coe_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/coe-x--061bbbf662b5956a3fb94e52.md) | 131 | `result-track:061bbbf662b5956a3fb94e525f09f2151cac9c35bc4d8afa8b1f76df36ff5345` |
| 16 | `theorem` | [coe_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/coe-p--d66843c1335ba317f7bfd95e.md) | 134 | `result-track:d66843c1335ba317f7bfd95e854afd41efb2efd0806aac80314aa8c3d45eff69` |
| 17 | `theorem` | [eqToHom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/eqtohom-f--6e20c405d7516fc2ad7754ac.md) | 137 | `result-track:6e20c405d7516fc2ad7754acc6b641484cab47651539c038320b7fe6a7fb12d7` |
| 18 | `def` | [toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/tokaroubi--4f2bd7d424764f336421e3a1.md) | 147 | `declaration-track:4f2bd7d424764f336421e3a178620dc7e22a69ae26d99f1e4059df26f6af35c0` |
| 19 | `def` | [fullyFaithfulToKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/fullyfaithfultokaroubi--136d24e54b55c4eec7ac5f13.md) | 152 | `declaration-track:136d24e54b55c4eec7ac5f13ab011cc26fb6e622472022ba18d11809774f45ba` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--16bff9c780a6bb0f202728f0.md) | 155 | `declaration-track:16bff9c780a6bb0f202728f0b778394ed0dd1f7c3b645e28690d410cc1246d2f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--c876d617f94b747f37e6938f.md) | 157 | `declaration-track:c876d617f94b747f37e6938ff12ef7459300d92b0af56ad3b009dfaa05a3eff9` |
| 22 | `instance` | [instAdd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instadd--5bc73e9fa9847dd74bc8fefa.md) | 162 | `declaration-track:5bc73e9fa9847dd74bc8fefa600b78d43f5d8c9ce664c1dfa2406d3a3c6e2871` |
| 23 | `instance` | [instNeg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instneg--12fb6801fb1f1dc7107404f3.md) | 166 | `declaration-track:12fb6801fb1f1dc7107404f3abcc059cf3bcadac9843ca1b4491bb86b4b230e6` |
| 24 | `instance` | [instZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instzero--1b7a212aa12a46f9ce834b0d.md) | 170 | `declaration-track:1b7a212aa12a46f9ce834b0d9dea715710a887f751f7134fa4553582237c7c96` |
| 25 | `instance` | [instAddCommGroupHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instaddcommgrouphom--81c51b4cb4b95e89e28811b6.md) | 173 | `declaration-track:81c51b4cb4b95e89e28811b6deb306b81fb43ab17f6fc88d38befdec021f9652` |
| 26 | `theorem` | [hom_eq_zero_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/hom-eq-zero-iff--d6915dca85929cce3b166f7e.md) | 194 | `result-track:d6915dca85929cce3b166f7e837187573d1cafe47722780b61d9d74a0c426068` |
| 27 | `def` | [inclusionHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/inclusionhom--6b85ce18967d0a43cb604a0e.md) | 199 | `declaration-track:6b85ce18967d0a43cb604a0e7ab78d82b26a63de2b7531c0c4effc27007c5616` |
| 28 | `theorem` | [sum_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/sum-hom--42fcc3cb031e270ba2fa2dbc.md) | 205 | `result-track:42fcc3cb031e270ba2fa2dbcd100f30512f4d1c15d34f6c92339af5221317124` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--466e58219964dd7c19736601.md) | 212 | `declaration-track:466e58219964dd7c19736601fb6f85508c3bb89c03285a36788f26adb8bdb8f8` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--1e21ad994088c0449aaded03.md) | 215 | `declaration-track:1e21ad994088c0449aaded03075d66b7fdc0e4bc0e515dc960bdcee05d3dc696` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--5d2fd66a670c0b35a0b65339.md) | 221 | `declaration-track:5d2fd66a670c0b35a0b65339d8c2037146c9af4d854044e490ec4768f9e9096d` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--389579a61381896ff3b116af.md) | 231 | `declaration-track:389579a61381896ff3b116af9d9a710fd85d94b2d90ca5f5dee2668486772867` |
| 33 | `instance` | [toKaroubi_isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/tokaroubi-isequivalence--0d54a93a62d3d3441327d17b.md) | 241 | `declaration-track:0d54a93a62d3d3441327d17b4e4da9dfb6bd78a3f3fc2de19c190ec701a4153d` |
| 34 | `def` | [toKaroubiEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/tokaroubiequivalence--846f877a8472291258969985.md) | 244 | `declaration-track:846f877a84722912589699859131218cba556b98ad39da8dc53496325f35ea8a` |
| 35 | `instance` | [toKaroubiEquivalence_functor_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/tokaroubiequivalence-functor-additive--c12dca8cd19cf38d9fc8ab23.md) | 247 | `declaration-track:c12dca8cd19cf38d9fc8ab230ab4fb7b35cc9cfd40a73843aa1ddbae432acd63` |
| 36 | `def` | [decompId_i](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/decompid-i--d98cb78cb4b7b3d457f4b7b5.md) | 257 | `declaration-track:d98cb78cb4b7b3d457f4b7b5769d2ab366716c0a58e867a42ba29e8da9a02755` |
| 37 | `def` | [decompId_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/decompid-p--ba787caffaf1b5b5e7ed1218.md) | 262 | `declaration-track:ba787caffaf1b5b5e7ed1218268c3bb6e7312abd1c8c8d65e37d4e3f898319da` |
| 38 | `theorem` | [decompId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/decompid--d51140b766d815279b5dbc78.md) | 268 | `result-track:d51140b766d815279b5dbc780c0dc9a9a956e163e59ce492696c26b4ca2af2ad` |
| 39 | `theorem` | [decomp_p](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/decomp-p--7c7dd24f4df14526f97810bf.md) | 272 | `result-track:7c7dd24f4df14526f97810bf2be4cd5442202a3c8fde042d1f6dbb7497467f94` |
| 40 | `theorem` | [decompId_i_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/decompid-i-tokaroubi--f9895df3a4d45c42aecb4df8.md) | 276 | `result-track:f9895df3a4d45c42aecb4df872cd5fbb1036497e3938f6cc931d2e8777953b3a` |
| 41 | `theorem` | [decompId_p_toKaroubi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/decompid-p-tokaroubi--6693edaeaa4a70e444e54538.md) | 279 | `result-track:6693edaeaa4a70e444e5453807763b2ffe49df5fa409d8a0e494a424ba52fac7` |
| 42 | `theorem` | [decompId_i_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/decompid-i-naturality--a5097219333a6e3b85a866bc.md) | 282 | `result-track:a5097219333a6e3b85a866bc57b9358510b2234d72fe20512fbeee6590334233` |
| 43 | `theorem` | [decompId_p_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/decompid-p-naturality--002cb4975858e04a72bdb63c.md) | 286 | `result-track:002cb4975858e04a72bdb63cf7617faf8b6df70a3e8cdff433a7f44139ec6f94` |
| 44 | `theorem` | [zsmul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/zsmul-hom--2ea906343815e41130818802.md) | 291 | `result-track:2ea906343815e41130818802b3959bd84d5493f1659eb8ab999b59bafcb16ba1` |
| 45 | `def` | [retract](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/retract--1f325949fbd52b8e0cc26bf0.md) | 297 | `declaration-track:1f325949fbd52b8e0cc26bf0fda04dc4240527d5da9f133b088ebdcfa55db76f` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--bd428a70f5426084d5616443.md) | 303 | `declaration-track:bd428a70f5426084d561644351f621bf706b356292f4fdc07946c23d797c507a` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Karoubi/Variant5b5bac96b0733dc1b0cbdb89fc2d2e987739bf457dbef4141032bd9a47a891fb.lean/declarations/instance--bad28d0e99bb2d6296fb4700.md) | 309 | `declaration-track:bad28d0e99bb2d6296fb4700c061b479725334a02f93f3362044b57ac72b719c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
