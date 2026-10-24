# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PartOrd.Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2780cb6b0d87b578e10ab338686561ddf36d5ffa",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2780cb6b0d87b578e10ab338686561ddf36d5ffa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Antisymmetrization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.Preord` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/partord--273affe00882c3046a79c217.md) | 29 | `declaration-track:273affe00882c3046a79c217bfab7c11ed515eab795babca656237f85a3bf828` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/instance--8303739e01f66ffc651f4e82.md) | 40 | `declaration-track:8303739e01f66ffc651f4e82f0e5e7b29c5d8ba75242de64da731daaa1d29e98` |
| 3 | `abbrev` | [of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/of--778ec88b52a7e303a5abfa1b.md) | 46 | `declaration-track:778ec88b52a7e303a5abfa1bfd7588a3081f29d4906fa84651735f1717d6176f` |
| 4 | `structure` | [Hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hom--581da36429dbbfda0d416aec.md) | 50 | `declaration-track:581da36429dbbfda0d416aecc720da546f25c9e260cdf60d7b45995de1366c65` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/instance--2a9425e68ebc31a57ececc4d.md) | 55 | `declaration-track:2a9425e68ebc31a57ececc4d0de463e1243504223e5b31d4101b3b5ec22d5c13` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/instance--59ce466518177471bdb47f5b.md) | 60 | `declaration-track:59ce466518177471bdb47f5bd51c0c838b5be0b55857b7a6bbed246ca616d6a3` |
| 7 | `abbrev` | [Hom.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hom-hom--71a2239d329a1a9af7851d3a.md) | 65 | `declaration-track:71a2239d329a1a9af7851d3acc1de6845ad8676fe686e25116ccb7afee69ea79` |
| 8 | `abbrev` | [ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/ofhom--66abc4306f506cc736a1f1a3.md) | 69 | `declaration-track:66abc4306f506cc736a1f1a3624c64950965d60d1e814a6b5ab8a687af4b3d45` |
| 9 | `def` | [Hom.Simps.hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hom-simps-hom--6bf04d1e7c45d216cf143194.md) | 74 | `declaration-track:6bf04d1e7c45d216cf143194d3d4600277c73f7b9ec356b9256b625f7726bdf0` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/coe-id--151e70f25ffd710aa8ea4857.md) | 84 | `result-track:151e70f25ffd710aa8ea4857ea31dbeae491148c416fc7a96c3e38630fc2af00` |
| 11 | `lemma` | [coe_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/coe-comp--54815c8bbe9d636cdb6dca23.md) | 87 | `result-track:54815c8bbe9d636cdb6dca23b6411065117541199cd86a3440a48a256897c2fb` |
| 12 | `lemma` | [forget_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/forget-map--fb61ab7774202843ad1a9854.md) | 90 | `result-track:fb61ab7774202843ad1a98540b597b0200e278ac71b5f7085c3d401c7e39c0b8` |
| 13 | `lemma` | [ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/ext--31bb734f586fe74fe763578c.md) | 94 | `result-track:31bb734f586fe74fe763578c4229e796d48f7bf587b3b36a04b7ce90a8ba13ba` |
| 14 | `theorem` | [coe_of](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/coe-of--ec02f3cf7cbef559b5bfa9f4.md) | 98 | `result-track:ec02f3cf7cbef559b5bfa9f4a436b2f3332b156ad5e2728f254a3c5ddf840fab` |
| 15 | `lemma` | [hom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hom-id--525cf260e94257c67798896f.md) | 101 | `result-track:525cf260e94257c67798896f8492aadb30aab410aba677720b4c52fb39793f2e` |
| 16 | `lemma` | [id_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/id-apply--ec8edc2931f71a440a42c1f9.md) | 104 | `result-track:ec8edc2931f71a440a42c1f963e73a21fde76f5aa1f43cdb58155a182d3c6d6a` |
| 17 | `lemma` | [hom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hom-comp--ee223d97d25b2c93f6d30aa6.md) | 108 | `result-track:ee223d97d25b2c93f6d30aa6ab15dfe39b5619623df40d6d81d642f5a083275e` |
| 18 | `lemma` | [comp_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/comp-apply--7bc07934159c9c274236c4bf.md) | 112 | `result-track:7bc07934159c9c274236c4bfad7aa68f398a9b2e391a0b1f5114e43086988c14` |
| 19 | `lemma` | [hom_ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hom-ext--d9bac3ae0b45aeef9058d40d.md) | 116 | `result-track:d9bac3ae0b45aeef9058d40d0562eb043fd77bd4e4c16da2ff7594d0a23fe58d` |
| 20 | `lemma` | [hom_ofHom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hom-ofhom--b70c2ad167a5b229d7d40bbd.md) | 120 | `result-track:b70c2ad167a5b229d7d40bbd2753bfbfb470d6eb924aeadc2390a5a7063c042f` |
| 21 | `lemma` | [ofHom_hom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/ofhom-hom--7a937ec110ceab9326231577.md) | 124 | `result-track:7a937ec110ceab932623157737225446bdcd4b0099543d74e342ebea506b487d` |
| 22 | `lemma` | [ofHom_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/ofhom-id--0681a6d5781f3c484aca4c51.md) | 128 | `result-track:0681a6d5781f3c484aca4c51d2bc3527b27699caf4d24cd20e07637171761310` |
| 23 | `lemma` | [ofHom_comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/ofhom-comp--2995c546cb1591332ab82d99.md) | 131 | `result-track:2995c546cb1591332ab82d9938c4a6e38391e4a6c4ce656a970fdada9b2aa3d5` |
| 24 | `lemma` | [ofHom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/ofhom-apply--007462d4e1325a4a30559e9c.md) | 136 | `result-track:007462d4e1325a4a30559e9cc692b6e3864d5cb15a2891b38b7ad34434c9a669` |
| 25 | `lemma` | [inv_hom_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/inv-hom-apply--237fe84c647f09743cad9551.md) | 139 | `result-track:237fe84c647f09743cad9551aacf3b4ce8351853730358972d76b040b5d47655` |
| 26 | `lemma` | [hom_inv_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hom-inv-apply--40ac930b0eba150a680622ef.md) | 142 | `result-track:40ac930b0eba150a680622ef8693aca71584d1571c6c23234da98e1693ef0bdc` |
| 27 | `instance` | [hasForgetToPreord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/hasforgettopreord--95ed83b8ec131541c6e33dd3.md) | 145 | `declaration-track:95ed83b8ec131541c6e33dd3bc3713bab37a10a8781b040a8988e305e7f2188c` |
| 28 | `def` | [Iso.mk](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/iso-mk--87b58e1e73c5a115932c772f.md) | 151 | `declaration-track:87b58e1e73c5a115932c772f77ee2c840de000854f01288336daad75291905f2` |
| 29 | `def` | [dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/dual--a1a814afcb94de3be1db630c.md) | 157 | `declaration-track:a1a814afcb94de3be1db630cd10489ca92636225edb3466cc40a403a5b759160` |
| 30 | `def` | [dualEquiv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/dualequiv--907c88b7091cf692acca6aae.md) | 163 | `declaration-track:907c88b7091cf692acca6aae0417dfc6d4e83f640cfbe822be0815c090d78a06` |
| 31 | `theorem` | [partOrd_dual_comp_forget_to_preord](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/partord-dual-comp-forget-to-preord--e548ec5b477930baa9a5ce94.md) | 171 | `result-track:e548ec5b477930baa9a5ce94d11d259a83593a4a3b2bcc463a8d2263ad72e625` |
| 32 | `def` | [preordToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/preordtopartord--fac6137729102c19f05dad42.md) | 177 | `declaration-track:fac6137729102c19f05dad42d1dc1402d1911804e94718b5d90920032b795cb4` |
| 33 | `def` | [preordToPartOrdForgetAdjunction](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/preordtopartordforgetadjunction--c5995ee39a41635f75ec7a43.md) | 189 | `declaration-track:c5995ee39a41635f75ec7a43b182ae6b98e392bb3a2200357900bf9e3063f930` |
| 34 | `def` | [preordToPartOrdCompToDualIsoToDualCompPreordToPartOrd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/preordtopartordcomptodualisotodualcomppreordtopartord--19612679130dd4fa587575eb.md) | 207 | `declaration-track:19612679130dd4fa587575eb8f195c7f207abf7aa74d0a155ac27ede7b66cb8a` |
| 35 | `lemma` | [preordToPartOrdCompToDualIsoToDualCompPreordToPartOrd_inv_app_hom_coe'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PartOrd/Variant96b24dd7d2248d3043b66bf1659aeef2a32053cc2f130dff7b85dcb0d4039476.lean/declarations/preordtopartordcomptodualisotodualcomppreordtopartord-inv-app-hom-coe--77db4ef134571d8e73ab02db.md) | 214 | `result-track:77db4ef134571d8e73ab02dbb2d6c937d17fcee9c2548cc00eada2043ac62654` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
