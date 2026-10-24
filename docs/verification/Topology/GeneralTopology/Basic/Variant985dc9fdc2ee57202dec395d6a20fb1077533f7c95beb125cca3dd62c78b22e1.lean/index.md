# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "224ec367aa4398676df74b95028dbff5a26b2d0b",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `224ec367aa4398676df74b95028dbff5a26b2d0b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Colimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.ModuleTopology` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TopModuleCat](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/topmodulecat--a67fc938e9e08fcc0e50a2f9.md) | 44 | `declaration-track:a67fc938e9e08fcc0e50a2f99c4fbc26bc9273d3698d496400cbad1c8855b84a` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--fd5ed327334f540dee072121.md) | 52 | `declaration-track:fd5ed327334f540dee0721210fd550cae790549e70f4c085f614c485e2e66905` |
| 3 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/of--5934ae80109831bbd06dd62e.md) | 57 | `declaration-track:5934ae80109831bbd06dd62ef795520bdf462f2ff6b3a90a17c1c1b305657a4d` |
| 4 | `lemma` | [coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/coe-of--729eb6e392af23d92820bf96.md) | 63 | `result-track:729eb6e392af23d92820bf9691c604003c02d1d3e05769d3500846ba3438776c` |
| 5 | `structure` | [Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom--b5e721303e027ac6510e20de.md) | 68 | `declaration-track:b5e721303e027ac6510e20de9f3f0604d1fb77fcb60d0ec1fb3a66661a8e0f05` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--0b4a5b1ff10c618fe3f3a926.md) | 74 | `declaration-track:0b4a5b1ff10c618fe3f3a92642d79809c7c87bd0acd4b804a3aa7deea4e16364` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--6f0ff83757d8427dd6e72111.md) | 79 | `declaration-track:6f0ff83757d8427dd6e72111b56702942c8c56e4308b168765df517bbe9a65f3` |
| 8 | `abbrev` | [Hom.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-hom--1c4a3975d9673bb1f2300142.md) | 85 | `declaration-track:1c4a3975d9673bb1f230014263f802beba35dd941ce2e6ab3657afa380063a4e` |
| 9 | `abbrev` | [ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/ofhom--2cb5faebefe3af0735bc957c.md) | 90 | `declaration-track:2cb5faebefe3af0735bc957c34e724fae2de85923c3d2e73456decde252b5095` |
| 10 | `lemma` | [hom_ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-ofhom--a9e6010834b149de8fffb256.md) | 96 | `result-track:a9e6010834b149de8fffb25680711c616b2fd87cf19e2950d382c69e50bddf70` |
| 11 | `lemma` | [ofHom_hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/ofhom-hom--43665326aa6331d3be121461.md) | 102 | `result-track:43665326aa6331d3be1214618d703bb8ce9764b534c57513ae5eac59f169842f` |
| 12 | `lemma` | [hom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-comp--76b96643894a162a70b8d384.md) | 105 | `result-track:76b96643894a162a70b8d3845ea26cf51515c841ecb3846440896964d8eabd3d` |
| 13 | `lemma` | [hom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-id--8e6c7b98741dad4aadda4d1e.md) | 108 | `result-track:8e6c7b98741dad4aadda4d1ec0498332687378e6abb618f8e05e2541ccae87c0` |
| 14 | `def` | [Hom.Simps.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-simps-hom--75e436f7ee24fa872bc6d9ae.md) | 112 | `declaration-track:75e436f7ee24fa872bc6d9aea83c7ec7e18d3f942364be27b7ebec6f1f28f374` |
| 15 | `def` | [ofIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/ofiso--a53e9ef9cca7977ba6b3c646.md) | 119 | `declaration-track:a53e9ef9cca7977ba6b3c6464e2e572314270c4a3f613a14bcb7475d345fe224` |
| 16 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.TopModuleCat.Variantf0553b078c193c7ddebc5b43e7a516e19e4430e0baa95c104eaa86f62df4bf4c.CategoryTheory.Iso.toContinuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/root-grwtsk-topology-generaltopology-topmodulecat-variantf0553b078c193c7--995643216a54b2e0f12966d3.md) | 125 | `declaration-track:995643216a54b2e0f12966d3fc95c9f9e798da8906e873df6599b365c4b3cb6c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--fa0eeb56afff18eb6ce84132.md) | 132 | `declaration-track:fa0eeb56afff18eb6ce84132fd5d25e3f80c459ef0165cb44cbe757421fe3be8` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--d42807c367ca158a2e39b300.md) | 137 | `declaration-track:d42807c367ca158a2e39b300fdb863e7da66af6fd5512420a95f579155953a9c` |
| 19 | `lemma` | [hom_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-zero--af2e4d355abba98505afeacd.md) | 145 | `result-track:af2e4d355abba98505afeacdb733310dc2078239b06b5f132dd53ec9b05dfd97` |
| 20 | `lemma` | [hom_zero_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-zero-apply--5d3f693f69d8967e27bad365.md) | 146 | `result-track:5d3f693f69d8967e27bad365f7cb0c66bb437769fb6e83bfb517e8c6a2f31b7b` |
| 21 | `lemma` | [hom_add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-add--cd8db381e3edfc54020049f5.md) | 147 | `result-track:cd8db381e3edfc54020049f5290bff90964fc5f490b000927b14d86706949101` |
| 22 | `lemma` | [hom_neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-neg--0461b6c67dee8e275cf97f02.md) | 148 | `result-track:0461b6c67dee8e275cf97f02c01eb26afc00dc85296579f0bc7045b089dab11c` |
| 23 | `lemma` | [hom_sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-sub--ddc7e315fbd7847b3421ff2d.md) | 149 | `result-track:ddc7e315fbd7847b3421ff2d1663c01116733c94ef265f87f30745ee1f4c068b` |
| 24 | `lemma` | [hom_nsmul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-nsmul--c81a16f31a9599b459b44b88.md) | 150 | `result-track:c81a16f31a9599b459b44b88175dfda065db62dcb739b14e5b2b7913f04e2232` |
| 25 | `lemma` | [hom_zsmul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-zsmul--525982334218ca6ffa01bfd4.md) | 151 | `result-track:525982334218ca6ffa01bfd4d9402b639c59c49245da43e3a848efa31013bd4f` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--665852c79fbab12d34428835.md) | 159 | `declaration-track:665852c79fbab12d3442883514c5f359b686983a397844660c9fd369fe1ec8bf` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--5ecc80d5e784a288c4d474c0.md) | 163 | `declaration-track:5ecc80d5e784a288c4d474c07d429bdc58076e5f702d938fdca011ea421a2a05` |
| 28 | `lemma` | [hom_smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-smul--7f94a98d89537577d316ed82.md) | 168 | `result-track:7f94a98d89537577d316ed82ae2e4204f617ce02f3a380b531d05892d5bff0f0` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--cd422cfc082c3c02c69351ab.md) | 173 | `declaration-track:cd422cfc082c3c02c69351ab540982e2d3639cf8511a17c1468fc0ca4b01e9a0` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--4634a82000f4dd65858eae53.md) | 174 | `declaration-track:4634a82000f4dd65858eae5349ff73ae5fee927901d4adefed1c1a5207ef3351` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--1d28b721177b9baec71a86de.md) | 176 | `declaration-track:1d28b721177b9baec71a86de7d6355b28584d42921537b702522a9d937380a0b` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--0cb42de2ef0d98a7fab05c8a.md) | 181 | `declaration-track:0cb42de2ef0d98a7fab05c8a46cdb35ce73276cd7b8b986e8c61c02bf5936805` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--6c9ad94e359529761086888e.md) | 186 | `declaration-track:6c9ad94e359529761086888e986560c90bafe6ce248426b5fbc6b768d57ff15c` |
| 34 | `lemma` | [hom_forget₂_TopCat_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/hom-forget-topcat-map--6f42d7167455d41b5b6d7034.md) | 194 | `result-track:6f42d7167455d41b5b6d70345fcdcbc89b7ed7a2e4f8e0258145da650f4c264c` |
| 35 | `lemma` | [forget₂_TopCat_obj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/forget-topcat-obj--bb7632243aa47c2d0b45f917.md) | 198 | `result-track:bb7632243aa47c2d0b45f917183d39d2b8bcbc3a521061b48e218afdf83af0b6` |
| 36 | `def` | [coinduced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/coinduced--c21ca7b4a67b90535f0a3e5d.md) | 210 | `declaration-track:c21ca7b4a67b90535f0a3e5d8acc738d28219aa2ad0a7344810ebfde9188e240` |
| 37 | `def` | [toCoinduced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/tocoinduced--8f95a24b4626a26bbcc6f898.md) | 218 | `declaration-track:8f95a24b4626a26bbcc6f898ea3dab749595ca9f29d9bd761c90e1127e5379b4` |
| 38 | `def` | [ofCocone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/ofcocone--4aa4a7c74070f9ec8473ff96.md) | 224 | `declaration-track:4aa4a7c74070f9ec8473ff9667b199a04e722a099f19a8ce5c04740db27e7041` |
| 39 | `def` | [isColimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/iscolimit--d15f5b5f45ad047a31cc9eed.md) | 233 | `declaration-track:d15f5b5f45ad047a31cc9eed95bad168eee901e6328789b9e0e30e5c1193b158` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--5bce067ded63e152f1599f49.md) | 252 | `declaration-track:5bce067ded63e152f1599f49afded3c394cd76035aa31a7dafd612ac8bba99b5` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--d11023625966c1fc1c20e10c.md) | 256 | `declaration-track:d11023625966c1fc1c20e10cf649c4c3d852e6cfcaf2ed6191163d8a7a4b0c1b` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--20aa7a683339277194cff1b2.md) | 259 | `declaration-track:20aa7a683339277194cff1b26c1c020d27b748c330e23d0d5bdfdf7892bd7df3` |
| 43 | `def` | [induced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/induced--3d80367f046b8993fd6a4644.md) | 271 | `declaration-track:3d80367f046b8993fd6a4644caae38163d846c4887a80df4cbf956b53f9c7840` |
| 44 | `def` | [fromInduced](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/frominduced--90fcff705634ecb77be6d956.md) | 278 | `declaration-track:90fcff705634ecb77be6d9565e3d34a48c0e43e14671d87a345a2589e22f3499` |
| 45 | `def` | [ofCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/ofcone--7451befb725ea2f68296962d.md) | 285 | `declaration-track:7451befb725ea2f68296962da8763e4fadb17c2e93e33eb35bef18b6539f2fde` |
| 46 | `def` | [isLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/islimit--d98cd591cfc202c039e9e9c5.md) | 294 | `declaration-track:d98cd591cfc202c039e9e9c54cd265b0499a05dc72ff5c5a22d89f19f6f4ebbc` |
| 47 | `instance` | [hasLimit_of_hasLimit_forget₂](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/haslimit-of-haslimit-forget--ece4d4d3bd2941cdf9e501b8.md) | 312 | `declaration-track:ece4d4d3bd2941cdf9e501b8aa039db7ef8ceecfe74603569ee683113336c5af` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--371575c5288fe43dcc194643.md) | 316 | `declaration-track:371575c5288fe43dcc19464396928cee55f1ce13a858544f747103b8191c9e5d` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--3f3153d82c024e34d6f57743.md) | 320 | `declaration-track:3f3153d82c024e34d6f5774343a84c24d5d621143e24fb708879dedfb844b4b3` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--d73da0b388af6f5013407675.md) | 323 | `declaration-track:d73da0b388af6f5013407675fa00ced953277a6f38975f532e712bbb2cccebfd` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--78e006c7d46c9b21462e4650.md) | 332 | `declaration-track:78e006c7d46c9b21462e46508c522071bfbb2b45c08ba1d658c7a0df47540ee3` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--ad645e64b53dd88514912ec0.md) | 337 | `declaration-track:ad645e64b53dd88514912ec01afc1e2e9d0e21eda78bc6fc4b343b22915f9eb5` |
| 53 | `def` | [withModuleTopology](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/withmoduletopology--d77a4dae318f8a9e3fa43f49.md) | 345 | `declaration-track:d77a4dae318f8a9e3fa43f49a7448eaf73efe16ba6c01018a4d1ea5256596d6d` |
| 54 | `def` | [withModuleTopologyAdj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/withmoduletopologyadj--2925cf3b458558770218a7e3.md) | 357 | `declaration-track:2925cf3b458558770218a7e3c629077e62df7f187444a703182cfb6698cb439a` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--1f94317fafa9c6b6f09e5e5c.md) | 363 | `declaration-track:1f94317fafa9c6b6f09e5e5cbdde657c9fbc4b0a0f3707b7a1823505c4c4444f` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--3c839075b68830285436e856.md) | 364 | `declaration-track:3c839075b68830285436e856a1acb76e3adc92e27ed8ef662d0ce4ab875087de` |
| 57 | `def` | [indiscrete](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/indiscrete--e39ea4b689dac796893ac3aa.md) | 368 | `declaration-track:e39ea4b689dac796893ac3aa210adf536b041d6b4f6a571e5a6b5581364b3c14` |
| 58 | `def` | [indiscreteAdj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/indiscreteadj--771aa934e79c328892f9113a.md) | 381 | `declaration-track:771aa934e79c328892f9113ad2139d4f79e276851aa99a4fda5c956ebf6db364` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--9c14b97c51969e6655778c9b.md) | 386 | `declaration-track:9c14b97c51969e6655778c9b8a83c276f7c17e3b534f61dd4013798a8783ffa8` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--e67888e37644e1f3e6012848.md) | 387 | `declaration-track:e67888e37644e1f3e60128484bcece1d24dc9f907f43a9e44d672260c119ecdd` |
| 61 | `def` | [freeObj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/freeobj--028a6b2311760b65e84c7d82.md) | 391 | `declaration-track:028a6b2311760b65e84c7d82bf9f855e3d0daa45f3733b737c6d5037d98aeac2` |
| 62 | `lemma` | [coe_freeObj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/coe-freeobj--d307928ba3ffb760c8209b18.md) | 399 | `result-track:d307928ba3ffb760c8209b1880a91ea0d67d648d3c312ea4fdf42a831f813739` |
| 63 | `def` | [freeMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/freemap--276c79b7d15d35576043e05f.md) | 403 | `declaration-track:276c79b7d15d35576043e05f61f38cf7fd17aa7884fa74eeb9fb806fe6a83068` |
| 64 | `lemma` | [freeMap_map](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/freemap-map--4fc28d0d14bc825a768820ed.md) | 418 | `result-track:4fc28d0d14bc825a768820edcd3ec98c9c2c563609d8916f85aa9e0110b1bbbb` |
| 65 | `def` | [free](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/free--062427402234ad5269ba8278.md) | 424 | `declaration-track:062427402234ad5269ba827838c7dc2780ada9b75c621fddbb27f7fe6e92279f` |
| 66 | `def` | [freeAdj](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/freeadj--a37ffeb29ec65ac8ce097797.md) | 432 | `declaration-track:a37ffeb29ec65ac8ce097797a13e76a5ce25fe49f9f39dcc294c7a07e8c1cb8a` |
| 67 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--0bfb76872ef1d1beecc36afa.md) | 461 | `declaration-track:0bfb76872ef1d1beecc36afa11a773d80cf5d4934a1f3cb9869124316876e9f8` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant985dc9fdc2ee57202dec395d6a20fb1077533f7c95beb125cca3dd62c78b22e1.lean/declarations/instance--d36ced7119e6cc4eafc61ab8.md) | 462 | `declaration-track:d36ced7119e6cc4eafc61ab856d0b44cc3e4aab73e8d98a93790942b84af0c9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
