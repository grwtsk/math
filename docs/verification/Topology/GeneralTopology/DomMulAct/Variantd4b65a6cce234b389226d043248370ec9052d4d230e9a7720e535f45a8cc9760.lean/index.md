# Verification target: GRWTSK.Topology.GeneralTopology.DomMulAct.Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "824415803e208ab1939de463f1fc97c79a38de52",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `824415803e208ab1939de463f1fc97c79a38de52`.

Source path: `GRWTSK/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Homeomorph.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.DomAct.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/insttopologicalspace--9b80dd5ace86febe90356415.md) | 31 | `declaration-track:9b80dd5ace86febe903564153a1aab2b6e617c592fbbf50032bdaef4150c7e9d` |
| 2 | `theorem` | [continuous_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/continuous-mk--eb8732139219cee86f597586.md) | 34 | `result-track:eb8732139219cee86f5975864f135bb8b1f03337997e5fe1f73c36fa6b6f3d8e` |
| 3 | `theorem` | [continuous_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/continuous-mk-symm--e5f9ef57f69f415b6b5a29da.md) | 37 | `result-track:e5f9ef57f69f415b6b5a29dafb167095452e98d8c637096eb0af5145971db827` |
| 4 | `def` | [mkHomeomorph](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/mkhomeomorph--84951a2a53dedac997021f2f.md) | 41 | `declaration-track:84951a2a53dedac997021f2fd7d10d941852eb329304e5d00741678a2b76bb77` |
| 5 | `theorem` | [coe_mkHomeomorph](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/coe-mkhomeomorph--44d660127452452359465117.md) | 44 | `result-track:44d660127452452359465117a6abe01ea76eba6a3557d490f48b6e67065d3590` |
| 6 | `theorem` | [coe_mkHomeomorph_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/coe-mkhomeomorph-symm--869c5c2bb84a2de5c2846c36.md) | 47 | `result-track:869c5c2bb84a2de5c2846c363e244f8b17d240c43a6b806319110d3f4d096128` |
| 7 | `theorem` | [isInducing_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isinducing-mk--57765027eef4cf3e643e5524.md) | 49 | `result-track:57765027eef4cf3e643e552488365bcebae7cea916116fd849ae48707ddce51a` |
| 8 | `theorem` | [isEmbedding_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isembedding-mk--811bc0cb6a99cab936dd4fa3.md) | 50 | `result-track:811bc0cb6a99cab936dd4fa3cb5e7b7e2de8999770f18fe1c98f67a95daa1b4b` |
| 9 | `theorem` | [isOpenEmbedding_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isopenembedding-mk--f9ecfd9f7e0617e3529bef95.md) | 51 | `result-track:f9ecfd9f7e0617e3529bef9534b7f76681ed65724118096e7d266fa56f020cc0` |
| 10 | `theorem` | [isClosedEmbedding_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isclosedembedding-mk--68652771b774c775a0588d0f.md) | 52 | `result-track:68652771b774c775a0588d0fb107c702127600ca685081f61651e1a3605d5498` |
| 11 | `theorem` | [isQuotientMap_mk](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isquotientmap-mk--3915de43f5ffe5007f503989.md) | 54 | `result-track:3915de43f5ffe5007f50398955c63dbaccbeb75ed96c8274d208c20dc76cdcdc` |
| 12 | `theorem` | [isInducing_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isinducing-mk-symm--7c9864d51451c10cecdb2875.md) | 64 | `result-track:7c9864d51451c10cecdb287514aabfc8854b046e46b5671460afb9dfe553d1e8` |
| 13 | `theorem` | [isEmbedding_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isembedding-mk-symm--d0b2c79b4a3c398da014967f.md) | 65 | `result-track:d0b2c79b4a3c398da014967fea031ae162bbcacef626fea49e42dab270d97bce` |
| 14 | `theorem` | [isOpenEmbedding_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isopenembedding-mk-symm--864831232f1f23e4d4e12327.md) | 74 | `result-track:864831232f1f23e4d4e12327bb30491535bca4b6df19def55c4c391aa8779ab5` |
| 15 | `theorem` | [isClosedEmbedding_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isclosedembedding-mk-symm--129787ed94c903d65c0ca1db.md) | 77 | `result-track:129787ed94c903d65c0ca1dbb673356fb09787a9d2dfb437325b345a527efe6e` |
| 16 | `theorem` | [isQuotientMap_mk_symm](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/isquotientmap-mk-symm--435b4dc0a6765b56c39896ff.md) | 81 | `result-track:435b4dc0a6765b56c39896ff26316db0f14c3449de71c067ec9e35b9d326fcbe` |
| 17 | `instance` | [instT0Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instt0space--97d0df98dd5b8379b18a8ab4.md) | 86 | `declaration-track:97d0df98dd5b8379b18a8ab4071f9f7415a6cc32328ad99f54e1a4a548582493` |
| 18 | `instance` | [instT1Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instt1space--583bafe037299f61b2d72c97.md) | 87 | `declaration-track:583bafe037299f61b2d72c97dd468be738edb52266b2ac6240629f08ed244ae1` |
| 19 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instt2space--71482c27689face32d164b02.md) | 88 | `declaration-track:71482c27689face32d164b026581fc37f59824d8863257cf5cde91f95eaedff4` |
| 20 | `instance` | [instT25Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instt25space--6a4a84e715e22b39d160c460.md) | 89 | `declaration-track:6a4a84e715e22b39d160c4608431d50d587198b8066238b3314f9eda1cc28c9e` |
| 21 | `instance` | [instT3Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instt3space--ec5a0bf54660ecf91190f6e4.md) | 90 | `declaration-track:ec5a0bf54660ecf91190f6e430c12715457571769a5f6c1ce92251ffe31de6b4` |
| 22 | `instance` | [instT4Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instt4space--bc908506626cb5b9eb4345c8.md) | 91 | `declaration-track:bc908506626cb5b9eb4345c8afdbfed8f8c29503a8be97ad4b18aa61d0d64ab2` |
| 23 | `instance` | [instT5Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instt5space--8b58e92bbcdbecb990bfb6e2.md) | 92 | `declaration-track:8b58e92bbcdbecb990bfb6e2646b7f3a311bb4a60fbd499f66c02fbb30f9be48` |
| 24 | `instance` | [instR0Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instr0space--8ca608a365a563e51a157716.md) | 94 | `declaration-track:8ca608a365a563e51a15771659813d42341a2ce86cf85dfe0210b8b45bf47026` |
| 25 | `instance` | [instR1Space](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instr1space--80169ceea9c684a5af032b64.md) | 95 | `declaration-track:80169ceea9c684a5af032b649d252a3e5f21f81e45782b0cc1275f0c02a51f21` |
| 26 | `instance` | [instRegularSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instregularspace--f89dace111ace32d80e59d9e.md) | 98 | `declaration-track:f89dace111ace32d80e59d9e7cd2fc6dddecdb5a21cbc7e013da4548fd203fdd` |
| 27 | `instance` | [instNormalSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instnormalspace--b0b5b79b921e9c8b099158ba.md) | 101 | `declaration-track:b0b5b79b921e9c8b099158bae38ede439675e598cfff8cd7966c339ce7a68b8a` |
| 28 | `instance` | [instCompletelyNormalSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instcompletelynormalspace--589adf888681cc3ebdbaf891.md) | 104 | `declaration-track:589adf888681cc3ebdbaf8913948cd2d008d66d2d678723ed712902426b1a4f0` |
| 29 | `instance` | [instDiscreteTopology](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instdiscretetopology--01a4ddc5c083aa4a542591eb.md) | 108 | `declaration-track:01a4ddc5c083aa4a542591eb5bc15a69bec71bc88c6e18aef2ea85a25cc476ac` |
| 30 | `instance` | [instSeparableSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instseparablespace--e42681fca3df164d9808df4f.md) | 112 | `declaration-track:e42681fca3df164d9808df4f7064a6585bd7e542a0fcbd269cd948505d8f0d4d` |
| 31 | `instance` | [instFirstCountableTopology](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instfirstcountabletopology--d85f0b8a6f4033de2c6468b5.md) | 116 | `declaration-track:d85f0b8a6f4033de2c6468b514b298563585540c878788496921448e65f6d155` |
| 32 | `instance` | [instSecondCountableTopology](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instsecondcountabletopology--46032cd1942cc41ddeb2fadb.md) | 120 | `declaration-track:46032cd1942cc41ddeb2fadbd634f71ef148b08304ade2f230d9b30a7e8a6a3b` |
| 33 | `instance` | [instCompactSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instcompactspace--d3fdb9feb28a03752a30fa72.md) | 124 | `declaration-track:d3fdb9feb28a03752a30fa72d21feb7fd73a8c234f92431a21b661710e0e370b` |
| 34 | `instance` | [instLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instlocallycompactspace--eb40760721700291c2abcbe9.md) | 128 | `declaration-track:eb40760721700291c2abcbe98b6cca297ec513ad364b24fd02d4309aad13860c` |
| 35 | `instance` | [instWeaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/instweaklylocallycompactspace--d8ef56ab620c74f9e7c928ef.md) | 132 | `declaration-track:d8ef56ab620c74f9e7c928efa4be4b94f10dd584237f1b9f997b9b50a645db19` |
| 36 | `theorem` | [map_mk_nhds](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/map-mk-nhds--4a09e1f351b6cc029a754437.md) | 137 | `result-track:4a09e1f351b6cc029a7544377b855ea2146f7700cf8b3ba99aa0c5bc308c97b1` |
| 37 | `theorem` | [map_mk_symm_nhds](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/map-mk-symm-nhds--8c93d05efc1f7634f4a1b877.md) | 141 | `result-track:8c93d05efc1f7634f4a1b877caf2c6e8cdae4b7f0d74fad883a288fe7f95eb08` |
| 38 | `theorem` | [comap_mk_nhds](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/comap-mk-nhds--b1720dafb2e4b4c6f4fddd4e.md) | 145 | `result-track:b1720dafb2e4b4c6f4fddd4eff7ad6b7fb1117b6c6cd881df6e55a3aa9d0e588` |
| 39 | `theorem` | [comap_mk.symm_nhds](../../../../../mathematics/Topology/GeneralTopology/DomMulAct/Variantd4b65a6cce234b389226d043248370ec9052d4d230e9a7720e535f45a8cc9760.lean/declarations/comap-mk-symm-nhds--2158a6726da18ed26aacd691.md) | 149 | `result-track:2158a6726da18ed26aacd6915970be4c161446a899b3e7909144244e9bd90b9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
