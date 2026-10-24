# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40d5fbcf2fa6aed2482a06bd78656b7245562994",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40d5fbcf2fa6aed2482a06bd78656b7245562994`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Ker` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Congruence.Hom` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [con](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/con--ae83b256edec74b062fc06ac.md) | 42 | `declaration-track:ae83b256edec74b062fc06acd71d30249e3945400b32f2c90ee2f379ea75e0cd` |
| 2 | `instance` | [Quotient.group](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/quotient-group--f5a5dc1a368428557af77f44.md) | 53 | `declaration-track:f5a5dc1a368428557af77f44e9b9349942e0bfeb1afd3e4676bff8419bfdefd3` |
| 3 | `theorem` | [con_ker_eq_conKer](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/con-ker-eq-conker--fc33322e486fdaa3c57416e6.md) | 63 | `result-track:fc33322e486fdaa3c57416e641099350fbb6c2f996518d6d87918b8b68169eb0` |
| 4 | `def` | [mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk--7600e967290399b08dbbc4fe.md) | 69 | `declaration-track:7600e967290399b08dbbc4fe1426d1e8c0a8de3e276c4e5b05ef15164a0674c7` |
| 5 | `theorem` | [coe_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/coe-mk--42fd0fe68135b640154b3127.md) | 73 | `result-track:42fd0fe68135b640154b3127f9ffbf741ed843b4f3fd42086d6f3aecce17a436` |
| 6 | `theorem` | [mk'_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-apply--7620f844a241bf8c0ebe6806.md) | 77 | `result-track:7620f844a241bf8c0ebe6806ecd133fc1e081b103ef9d710e4be6f962b92d859` |
| 7 | `theorem` | [mk'_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-surjective--c44be4d006993d8081fdaa7f.md) | 81 | `result-track:c44be4d006993d8081fdaa7f77413dd0897fc96746deb2a9b522eebb98fd3fd8` |
| 8 | `theorem` | [mk'_eq_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-eq-mk--f82ae79d67949298f1f8c905.md) | 85 | `result-track:f82ae79d67949298f1f8c905a58abc2c9de279a4c4954b1a25d72a6df80aad84` |
| 9 | `theorem` | [monoidHom_ext](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/monoidhom-ext--14f1055d731f4d0c94e77777.md) | 97 | `result-track:14f1055d731f4d0c94e777779f3f91391553844ed81889bb3bbfdb8701f7a687` |
| 10 | `theorem` | [eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/eq-one-iff--1cb3870f5abca489f31932e8.md) | 101 | `result-track:1cb3870f5abca489f31932e8644925b98cd96ced51a015d5cf63952d3ec97df7` |
| 11 | `theorem` | [range_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/range-mk--cb1276eaba5a0a2cc380b07f.md) | 109 | `result-track:cb1276eaba5a0a2cc380b07f2bf411b949587313f12f31d4065ee3da15c4b039` |
| 12 | `theorem` | [ker_le_range_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/ker-le-range-iff--f22e42283be8f237ba649468.md) | 113 | `result-track:f22e42283be8f237ba6494684fda5be0535414c9d8336bbfe592fe1e5ba722ce` |
| 13 | `theorem` | [ker_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/ker-mk--0ae8c828eb2bd9a35e07216a.md) | 119 | `result-track:0ae8c828eb2bd9a35e07216a776c62116c95386827bf36430c8953677b0a42ba` |
| 14 | `theorem` | [eq_iff_div_mem](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/eq-iff-div-mem--9beb96be2152b2222c47e49b.md) | 124 | `result-track:9beb96be2152b2222c47e49be617c42f7489bdf5c7bee9f214c74ff8fb3fa810` |
| 15 | `instance` | [Quotient.commGroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/quotient-commgroup--ae3fe42224b09b6e4772e66e.md) | 132 | `declaration-track:ae3fe42224b09b6e4772e66e691e8da072bd39bbe405e7a770614eb9adc57e49` |
| 16 | `theorem` | [mk_one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-one--91ebf71363a42d185a19dd19.md) | 139 | `result-track:91ebf71363a42d185a19dd19653c846777649bcfb7edef69d2e6bad7c12aee1e` |
| 17 | `theorem` | [mk_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-mul--a2552659e688a50a5d529aac.md) | 143 | `result-track:a2552659e688a50a5d529aac1fcbaecd971ab942061a2903782ff3208e755bd0` |
| 18 | `theorem` | [mk_inv](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-inv--7c33715d2819133f6dcba4d5.md) | 147 | `result-track:7c33715d2819133f6dcba4d5508846dddb75a6e1f6d53a854b4bf036f3d865d6` |
| 19 | `theorem` | [mk_div](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-div--e534df8aa37bf4dd81db8045.md) | 151 | `result-track:e534df8aa37bf4dd81db80453bcdfc106a940701f2c154da01befe122fd3404a` |
| 20 | `theorem` | [mk_pow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-pow--9c45a2655315f2c9938d6e73.md) | 155 | `result-track:9c45a2655315f2c9938d6e73d8b36943324775549d80b4803494c9c9f11420f8` |
| 21 | `theorem` | [mk_zpow](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/mk-zpow--987f18d3189d0a6bebc08a1d.md) | 159 | `result-track:987f18d3189d0a6bebc08a1d2c8fdde5e558093bd999e131caeffb634ff129d7` |
| 22 | `lemma` | [map_mk'_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map-mk-self--737e59000ad451e516fcdc65.md) | 162 | `result-track:737e59000ad451e516fcdc65efefe5e8b535583781352cb9a9e7c337309a0d15` |
| 23 | `def` | [_root_.Con.subgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/root-con-subgroup--2e984e84310482c5046894fe.md) | 170 | `declaration-track:2e984e84310482c5046894fe667bed118f0ac6e808de5654ae50c05022c64072` |
| 24 | `theorem` | [_root_.Con.mem_subgroup_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/root-con-mem-subgroup-iff--a1cac2573554f14a8d559e3b.md) | 177 | `result-track:a1cac2573554f14a8d559e3b490667f6cb4854ec9a43c1e90e62f1fec27977eb` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/instance--d1246bdbdac7202994169d5a.md) | 181 | `declaration-track:d1246bdbdac7202994169d5a3025eded8de547ece15ea92ac2e45c29a10e76f1` |
| 26 | `theorem` | [_root_.Con.subgroup_quotientGroupCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/root-con-subgroup-quotientgroupcon--7218f42bd53f24cbd9774f15.md) | 185 | `result-track:7218f42bd53f24cbd9774f15289b081ef9b6341f1982d465bbcc0b6b059fddc0` |
| 27 | `theorem` | [con_subgroup](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/con-subgroup--ee8edff5a956941f9374f15f.md) | 191 | `result-track:ee8edff5a956941f9374f15f20b0a2fa3e32af0eeb6866b26165a2ac9d914615` |
| 28 | `def` | [_root_.Subgroup.orderIsoCon](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/root-subgroup-orderisocon--4d066fc05a9c0fea69b0cc28.md) | 203 | `declaration-track:4d066fc05a9c0fea69b0cc28066d90a712be7d5a8ff8f4d68d4b12c251a86447` |
| 29 | `lemma` | [con_le_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/con-le-iff--b191b7b54104e605170737d4.md) | 216 | `result-track:b191b7b54104e605170737d407ff876f2413eceb9eea026bd0a1838d5a3151d7` |
| 30 | `lemma` | [con_mono](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/con-mono--e6a185d88c851bdc53174c57.md) | 221 | `result-track:e6a185d88c851bdc53174c57aa34144d78bc424094ef8069d2333d0754a1b037` |
| 31 | `def` | [lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/lift--38e67577c1c652022c2ecb37.md) | 229 | `declaration-track:38e67577c1c652022c2ecb37cb89bbb784c233c109ea009efca3d81fc1a5f175` |
| 32 | `theorem` | [lift_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/lift-mk--e462dd3c4415d7d1831079a9.md) | 233 | `result-track:e462dd3c4415d7d1831079a9f797fd5ed85073870681e79af73475b000b517e4` |
| 33 | `theorem` | [lift_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/lift-mk--491e4a9a7462ffd1df868116.md) | 237 | `result-track:491e4a9a7462ffd1df86811662cd8d7c623d2b75fcbbdb593ead355ae70065d3` |
| 34 | `theorem` | [lift_comp_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/lift-comp-mk--2035c15115cc583068e25666.md) | 242 | `result-track:2035c15115cc583068e25666138ae534757666068f6e6c2cc9ca5198a74138f1` |
| 35 | `theorem` | [lift_quot_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/lift-quot-mk--91a995a91aa57ad20dd3a90c.md) | 247 | `result-track:91a995a91aa57ad20dd3a90ce69dc13b76653f7eac0ded75780432443a86fc40` |
| 36 | `theorem` | [lift_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/lift-surjective-of-surjective--593278deb5796a2bf316d0d0.md) | 252 | `result-track:593278deb5796a2bf316d0d0d314a884a6fd48819f2824393e120056a50a96d3` |
| 37 | `theorem` | [ker_lift](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/ker-lift--a0fa1a5a673d466c8d7cb10a.md) | 257 | `result-track:a0fa1a5a673d466c8d7cb10a12896b3e50dea13da5c69403e01a867fed510fe7` |
| 38 | `def` | [map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map--693f261489e1dd4b515a9475.md) | 265 | `declaration-track:693f261489e1dd4b515a9475e001695217b7fa8596a5deb3155516b7e884ff1c` |
| 39 | `theorem` | [map_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map-mk--8023ae47d811c9882632f17f.md) | 273 | `result-track:8023ae47d811c9882632f17f65fbc1821856908b701b670a62be016b508e639e` |
| 40 | `theorem` | [map_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map-mk--d173bebefd3b36082fda9a26.md) | 278 | `result-track:d173bebefd3b36082fda9a26eb5f948032af599fc39c616ed34ae4c6dc952661` |
| 41 | `theorem` | [map_surjective_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map-surjective-of-surjective--3fa6bde681965e20d23fe4dd.md) | 283 | `result-track:3fa6bde681965e20d23fe4ddf89c36075e62686f223b207c16c9da153f7a458f` |
| 42 | `theorem` | [ker_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/ker-map--f56c56853e0cd78010d9a915.md) | 289 | `result-track:f56c56853e0cd78010d9a9151162f96bfcd09fdee71ce415d64e8427ae51817f` |
| 43 | `theorem` | [map_id_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map-id-apply--04564e29f6e80b75c783efdb.md) | 295 | `result-track:04564e29f6e80b75c783efdbec0a546a840ebfaf1ed02fd54133883782630686` |
| 44 | `theorem` | [map_id](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map-id--84285ec3de081eeb97d64282.md) | 300 | `result-track:84285ec3de081eeb97d64282967f61d56118acc0975d7ca4a91dd25d981b3a5f` |
| 45 | `theorem` | [map_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map-map--9f10f7df930069bd9c622ce4.md) | 305 | `result-track:9f10f7df930069bd9c622ce446d31e91cb05b79553b8b6c8239ae0b41105ee53` |
| 46 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/map-comp-map--29c59340c67d47b3ea12b711.md) | 314 | `result-track:29c59340c67d47b3ea12b71187e4cd66aba88ef6257918cc7eac8faab5f91fc6` |
| 47 | `lemma` | [image_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/image-coe--8a5504cd1588fea08d06820e.md) | 324 | `result-track:8a5504cd1588fea08d06820e1cfe866a20d96198c0b4152d0ad8d3ccfe7f02ac` |
| 48 | `lemma` | [preimage_image_coe](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/preimage-image-coe--4933072a080b5aaf266fadf5.md) | 328 | `result-track:4933072a080b5aaf266fadf536e3c98ad8304f03b41c865fa13a9c7b056b7867` |
| 49 | `lemma` | [image_coe_inj](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/image-coe-inj--20de50b3ca88e9fa1a2462b0.md) | 339 | `result-track:20de50b3ca88e9fa1a2462b0b8184b889b6b8d27902b7992ad517ae70613b6e7` |
| 50 | `def` | [congr](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/congr--f2111a89b4bafe8939c87a4b.md) | 353 | `declaration-track:f2111a89b4bafe8939c87a4be0e867079b5bd690cc3854ee93fc406d35237b4f` |
| 51 | `theorem` | [congr_mk](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/congr-mk--bc4b79c0ab27d028f15a3c7d.md) | 369 | `result-track:bc4b79c0ab27d028f15a3c7df96d0cb058158dddfafdd59d258a3edab5fee5b6` |
| 52 | `theorem` | [congr_mk'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/congr-mk--f3fc6fdecb100753777d816e.md) | 372 | `result-track:f3fc6fdecb100753777d816e8763f0b1477ced394b378190145435d06abf0171` |
| 53 | `theorem` | [congr_apply](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/congr-apply--b4d74ce9101b3fe7ef2f19e0.md) | 377 | `result-track:b4d74ce9101b3fe7ef2f19e0076aad09d6573206546d5fa8f124d6ee9964dffe` |
| 54 | `theorem` | [congr_refl](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/congr-refl--9999cadbf86428ca01949bf5.md) | 382 | `result-track:9999cadbf86428ca01949bf5281de1ecc7ecb06a931a429e1756d48f41bb283b` |
| 55 | `theorem` | [congr_symm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variantff08a1fd5943e5feccdd218025ac73a7cbda668f8a7df28f9ab1e623a7b6d6de.lean/declarations/congr-symm--ddf20a4b5a5cda73b092ed1b.md) | 388 | `result-track:ddf20a4b5a5cda73b092ed1ba38d8ffc65b6e37853bcf355643489c89dc39979` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
