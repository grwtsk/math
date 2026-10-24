# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab431d86c48f7fe7a53b6a53304981ab7a2dbb51",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab431d86c48f7fe7a53b6a53304981ab7a2dbb51`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ModuleTopology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TopModuleCat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/topmodulecat--e45f3cf56ebdb1f1810ec016.md) | 36 | `declaration-track:e45f3cf56ebdb1f1810ec0161fab72d6e5c250e99894e94317fa3ca802a38227` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--97cf1872291a75c322acb262.md) | 44 | `declaration-track:97cf1872291a75c322acb2627ff1c46e4d7067d2ccebf826e5123b84a007308c` |
| 3 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/of--ad5e0ae33e06611c4d0419b2.md) | 49 | `declaration-track:ad5e0ae33e06611c4d0419b27577b412f67e046c6dc0a9488a5fe8184a45f3f1` |
| 4 | `lemma` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/coe-of--b1c6fe6e6873e04971f2e6a4.md) | 55 | `result-track:b1c6fe6e6873e04971f2e6a43dd4806badbfe18d321ca590434bc8673ddd9bdb` |
| 5 | `structure` | [Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom--9f275934ebdc4bf9d7b0a648.md) | 60 | `declaration-track:9f275934ebdc4bf9d7b0a6487156aab785f83e4bb4a126cb33eefdaf1d3abf65` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--04ec4b2d35d2c21aa39a9d50.md) | 66 | `declaration-track:04ec4b2d35d2c21aa39a9d50005a9ac94c7c705755485048466bb098e6018281` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--14984a0c677f46d4614ffba8.md) | 71 | `declaration-track:14984a0c677f46d4614ffba836c9d8a7f28eeebfe03898fe6a4ad8d26ec58eb6` |
| 8 | `abbrev` | [Hom.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-hom--47a284b0f86ad3e582223984.md) | 77 | `declaration-track:47a284b0f86ad3e5822239849f682037b15b9002e82490400db13b50062100da` |
| 9 | `abbrev` | [ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/ofhom--9d46871f9b0f97b1f3faa4bc.md) | 82 | `declaration-track:9d46871f9b0f97b1f3faa4bc6f80619130222a6fad79e90e9b457b0ef3a4f99e` |
| 10 | `lemma` | [hom_ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-ofhom--bab09a8e6a24a9038add182f.md) | 88 | `result-track:bab09a8e6a24a9038add182f50ccd7484a6e262a867ced32194026cc77b13bc2` |
| 11 | `lemma` | [ofHom_hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/ofhom-hom--432f8b0ed0787b5daef319f6.md) | 94 | `result-track:432f8b0ed0787b5daef319f6e0eaed40fc8ad921f92ce61e7e78c88313b60b8d` |
| 12 | `lemma` | [hom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-comp--a2e5e5113d879fe09c9fb2f2.md) | 97 | `result-track:a2e5e5113d879fe09c9fb2f224767c7e13dedfba8bd6369715ed4774c42b3643` |
| 13 | `lemma` | [hom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-id--85d1a9af7629603aeddc1926.md) | 100 | `result-track:85d1a9af7629603aeddc192601163ad3f9afcac4dd726315f8e83e75b46a6b50` |
| 14 | `def` | [Hom.Simps.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-simps-hom--5a74f93065da5b297423b0b4.md) | 104 | `declaration-track:5a74f93065da5b297423b0b4d6a3eaa8f55828dabbf0b5c92dc49a3db2cf971a` |
| 15 | `def` | [ofIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/ofiso--495bf177f6092aaef12263f0.md) | 111 | `declaration-track:495bf177f6092aaef12263f0bc3e0abffd4877710689933f3bf9dd3e30f07c9a` |
| 16 | `def` | [_root_.CategoryTheory.Iso.toContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/root-categorytheory-iso-tocontinuouslinearequiv--b74eb20519d73f96023e0d81.md) | 117 | `declaration-track:b74eb20519d73f96023e0d81a23a65d29af66232b78bf8b79c01e8d5f3cc1c00` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--5d294c072237885384b35019.md) | 124 | `declaration-track:5d294c072237885384b350198d1a18a7cb712ab5c5cc37ae09d334ba5e9b63ff` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--5bc4a7d134dc6900f468c950.md) | 129 | `declaration-track:5bc4a7d134dc6900f468c9502cb153645952dace44379f54ee920bdd1a490cf2` |
| 19 | `lemma` | [hom_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-zero--ead734fcefa0e57fc6a064b1.md) | 137 | `result-track:ead734fcefa0e57fc6a064b1210037933b724669e12a99779fcd12f1cf0c9f22` |
| 20 | `lemma` | [hom_zero_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-zero-apply--cd44a1486886a34508943885.md) | 138 | `result-track:cd44a1486886a345089438854c755319ceda0dc1c138aa3baabc9810a034b03c` |
| 21 | `lemma` | [hom_add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-add--446b16e88a22ca13e845365a.md) | 139 | `result-track:446b16e88a22ca13e845365a54a3313dd59d45472dd20b91f8f6139a32bc78e5` |
| 22 | `lemma` | [hom_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-neg--b9bb7e9b448a3f8e1487eddb.md) | 140 | `result-track:b9bb7e9b448a3f8e1487eddb344cde98daa4bf73f1dfe24f4bc344a73b250f8d` |
| 23 | `lemma` | [hom_sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-sub--c4f026a02620089f139f99ee.md) | 141 | `result-track:c4f026a02620089f139f99ee88cfa51700402b1c6c1f74e6278784f42b99cd38` |
| 24 | `lemma` | [hom_nsmul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-nsmul--8457f4f55aac13ebf006cff5.md) | 142 | `result-track:8457f4f55aac13ebf006cff57e4ba019ad5b9b369ce78a15412b3204e0391d2b` |
| 25 | `lemma` | [hom_zsmul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-zsmul--4f1f02724fabc6d05e9793f1.md) | 143 | `result-track:4f1f02724fabc6d05e9793f1b7c30e72abec0e724867c70acbca7d31414b631b` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--0cda9444530f438ad1d2e13d.md) | 151 | `declaration-track:0cda9444530f438ad1d2e13dee1da34b5d6473c7da34e9fd97020254cb5ba6ae` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--6fc141c6448ba216f953f1cd.md) | 155 | `declaration-track:6fc141c6448ba216f953f1cd4725e409e3863239c12cb27908bc136cbf06aee1` |
| 28 | `lemma` | [hom_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-smul--08a192eeb4750521dfcc361b.md) | 160 | `result-track:08a192eeb4750521dfcc361b209ae5e6678611fddd50b4e626f344c3d9e14007` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--62b9c24b48275430359bcacd.md) | 165 | `declaration-track:62b9c24b48275430359bcacd8869dce943c063dfa9dc0d1be85b684b25db4a73` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--37a44129365983b5923b6917.md) | 166 | `declaration-track:37a44129365983b5923b6917b851b67bc54b58e46bc1a261d4cf35ebc75e5e78` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--7ec42e4ffb1fcdb5d7ac8ee3.md) | 168 | `declaration-track:7ec42e4ffb1fcdb5d7ac8ee350e5df101db731f293034182128a1a403e6a3a63` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--c83b2f296907ce70834a5cf9.md) | 173 | `declaration-track:c83b2f296907ce70834a5cf94f4a1076aef691c2347fad6a909c35962f0c5930` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--f21540364561353ba59745b5.md) | 178 | `declaration-track:f21540364561353ba59745b5b0b34403cafc52d3a5b530d61a0cf88d5a03eb77` |
| 34 | `lemma` | [hom_forget₂_TopCat_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/hom-forget-topcat-map--ca27a3f8c2a080cad4b3c6b0.md) | 186 | `result-track:ca27a3f8c2a080cad4b3c6b0ba4b19d39329e4e5529b54573d5ebdb1c6ae3e0d` |
| 35 | `lemma` | [forget₂_TopCat_obj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/forget-topcat-obj--70e9b96b00720714b2af0d2a.md) | 190 | `result-track:70e9b96b00720714b2af0d2ac45d9a1dd89a95448b1935fb926496284d640f91` |
| 36 | `def` | [coinduced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/coinduced--3c7648e00170985905faa80e.md) | 202 | `declaration-track:3c7648e00170985905faa80e19711c8b586d48b9a4c2807bb16d0b0eed4f0fb5` |
| 37 | `def` | [toCoinduced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/tocoinduced--a36662a36abda9b446e83e3d.md) | 210 | `declaration-track:a36662a36abda9b446e83e3d4f988bf2b7f46e50d4138ebc7d632b6d91f9f131` |
| 38 | `def` | [ofCocone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/ofcocone--632995b587c329cc601d4d94.md) | 216 | `declaration-track:632995b587c329cc601d4d94798b4184cc216446a95e47274be9570491e62a4a` |
| 39 | `def` | [isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/iscolimit--75e3fbaa063757c228f037db.md) | 225 | `declaration-track:75e3fbaa063757c228f037dbb5259e5ba423f96a96c508b6c6b2f251b9feeb0a` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--42e26003f41d801bd20b5f7b.md) | 244 | `declaration-track:42e26003f41d801bd20b5f7be024b93d75f7ab52506e179dfc49290205856b7e` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--bd1cbb40ca8d4f2ef5dc29a8.md) | 248 | `declaration-track:bd1cbb40ca8d4f2ef5dc29a89520a745c40f6ed58893a1671fb932adfbb33b65` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--861a201a2ffaf4d7b67ee399.md) | 251 | `declaration-track:861a201a2ffaf4d7b67ee399952414f4b183c0dc8ce6cef336da8dc05d9f36c0` |
| 43 | `def` | [induced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/induced--98f0ac66f54b4c37ddee346b.md) | 263 | `declaration-track:98f0ac66f54b4c37ddee346b2ccf16a76f00c36dfa8cef6b634ccbe4cb1b3e1a` |
| 44 | `def` | [fromInduced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/frominduced--77323133090e261ccd8286ed.md) | 270 | `declaration-track:77323133090e261ccd8286ede641416f26c94ae3f638a1c65214f66ca26cebe7` |
| 45 | `def` | [ofCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/ofcone--99505fddd26607858c27c21f.md) | 277 | `declaration-track:99505fddd26607858c27c21ff9a00faaeaf9fefd289a270dfa52967dcc7f0419` |
| 46 | `def` | [isLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/islimit--90a37c26478d1dbfd66374f0.md) | 286 | `declaration-track:90a37c26478d1dbfd66374f05b2c1a5fef2894f87de5bd48f6fa673130e20d73` |
| 47 | `instance` | [hasLimit_of_hasLimit_forget₂](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/haslimit-of-haslimit-forget--6c8fcdac6011087c7923b5ea.md) | 304 | `declaration-track:6c8fcdac6011087c7923b5ea4bf104ed2713af36f1a1aea014d8f595a5e44b1b` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--a8f27a7760700275676a16c9.md) | 308 | `declaration-track:a8f27a7760700275676a16c93860520d3b6d9ab93d8be576f6515773e2362d29` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--c347eee2e100265ffc43dd83.md) | 312 | `declaration-track:c347eee2e100265ffc43dd83fbc36f0a8943824755036512b3f2645210a78b08` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--4aab1baf46b23042f66026d6.md) | 315 | `declaration-track:4aab1baf46b23042f66026d6c47e0a8a51ad8d421b4385db76a8a40d605842e3` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--932a4d6e5b00b6d0d1cf7944.md) | 324 | `declaration-track:932a4d6e5b00b6d0d1cf7944988ad902b1558065655d1016ee686d2e0e99464a` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--7d530b45682dee87189f28c6.md) | 329 | `declaration-track:7d530b45682dee87189f28c6cfd2bee3684d7024790ad362655aad9ccca9d9c4` |
| 53 | `def` | [withModuleTopology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/withmoduletopology--a1675251e5d1b0f64b635b0f.md) | 337 | `declaration-track:a1675251e5d1b0f64b635b0fdea7bbaa3aa955c503e946ba9ff9afa85a29974e` |
| 54 | `def` | [withModuleTopologyAdj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/withmoduletopologyadj--2241e99b4614cf4f53057d8d.md) | 349 | `declaration-track:2241e99b4614cf4f53057d8d8120128142c09ffde31dde41cf56dbf7d347d843` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--fe2b56972c2af239def1ecdd.md) | 355 | `declaration-track:fe2b56972c2af239def1ecddc931b54151ff968bd53892ad3feae3c93d4fa310` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--e9faa2f5d7b936d671ac89fb.md) | 356 | `declaration-track:e9faa2f5d7b936d671ac89fbf90144fa2d0c378ede0406a4ae142a8e6b5f2107` |
| 57 | `def` | [indiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/indiscrete--9d4efd4d4e55df2339f7b59c.md) | 360 | `declaration-track:9d4efd4d4e55df2339f7b59cc99ae719f5fefea8ac256e6b0f8a1b25b18247eb` |
| 58 | `def` | [indiscreteAdj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/indiscreteadj--45e14e89c180b3fd113c54e7.md) | 373 | `declaration-track:45e14e89c180b3fd113c54e757ddd608a6c1639b5f21f8e93243122e7e158391` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--c463f761d52bf64ca4956699.md) | 378 | `declaration-track:c463f761d52bf64ca4956699de4f45a6482d9b73a283db2a70751230b84b8e44` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--70f29d1ab0cd4a17e49d23e8.md) | 379 | `declaration-track:70f29d1ab0cd4a17e49d23e8ffc04682e7b37066215f96bc5dd3236d21e69dc8` |
| 61 | `def` | [freeObj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/freeobj--41f2ef224f91b26bed0e94bc.md) | 383 | `declaration-track:41f2ef224f91b26bed0e94bc09ca1fe77b4bd5324847c9473ce5d5729634c675` |
| 62 | `lemma` | [coe_freeObj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/coe-freeobj--72d5e4c3b68fa29889f39f02.md) | 391 | `result-track:72d5e4c3b68fa29889f39f024ecb46f380165e56e01c1d251d3a956f5faa2075` |
| 63 | `def` | [freeMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/freemap--b5a613c9400b9bbe5874e43d.md) | 395 | `declaration-track:b5a613c9400b9bbe5874e43debe2d7d8804f4f408b0fc9dca9a5f906e3d33487` |
| 64 | `lemma` | [freeMap_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/freemap-map--141ef7750637f0862671ebd0.md) | 410 | `result-track:141ef7750637f0862671ebd08bfa72096aef478333fd97cac28a3c19c961e465` |
| 65 | `def` | [free](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/free--13ce693a7d873125ce04e945.md) | 416 | `declaration-track:13ce693a7d873125ce04e94520ad4b526d6c357c54f64c937cf305adc742e38c` |
| 66 | `def` | [freeAdj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/freeadj--95ba3bb72b283183eef29175.md) | 424 | `declaration-track:95ba3bb72b283183eef291756a6ace0adf4c3015fbee062333607be76561f580` |
| 67 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--488c80e7871fa4050775ec9f.md) | 453 | `declaration-track:488c80e7871fa4050775ec9f044aa7d741b2e46bdabba850a2c1daf6a4259d94` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.lean/declarations/instance--f1ed23a3c64d5e1980cc6c6a.md) | 454 | `declaration-track:f1ed23a3c64d5e1980cc6c6a79045a8e5d75b90968fa105f7e9ba3fb55e2d777` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
