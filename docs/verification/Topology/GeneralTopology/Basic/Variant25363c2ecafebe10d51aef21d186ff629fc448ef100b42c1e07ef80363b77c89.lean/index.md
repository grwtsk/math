# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6322586fa154d701fdcf57475c75f0974925b41",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6322586fa154d701fdcf57475c75f0974925b41`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.FiniteGrp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.ClosedSubgroup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Connected` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProfiniteGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/profinitegrp--c180d307e28d8b103bb52e2a.md) | 48 | `declaration-track:c180d307e28d8b103bb52e2a01890a38b8ec77c55b988c849d43b0003e3a45cb` |
| 2 | `structure` | [ProfiniteAddGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/profiniteaddgrp--058f6e4f1002caddcb5af623.md) | 61 | `declaration-track:058f6e4f1002caddcb5af623ad3a87a3d0b0c3cd96404994641988028b0fe934` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--8000ca32582cb58b51fb28b5.md) | 72 | `declaration-track:8000ca32582cb58b51fb28b5c150af387c2eea801750dbbf8060130564b164c0` |
| 4 | `abbrev` | [ProfiniteGrp.of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/profinitegrp-of--07695019ecae75f80b387b1a.md) | 86 | `declaration-track:07695019ecae75f80b387b1a6e2e92f1c35b25523de435a6bdc317fd777df314` |
| 5 | `lemma` | [ProfiniteGrp.coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/profinitegrp-coe-of--e074e4f5a5bba8f003113489.md) | 93 | `result-track:e074e4f5a5bba8f003113489c09ec2ba1f4ea667457ea85151ed4a983e7b2a35` |
| 6 | `structure` | [ProfiniteAddGrp.Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/profiniteaddgrp-hom--3676e6e918ef2b0e93eec1e7.md) | 99 | `declaration-track:3676e6e918ef2b0e93eec1e7cef9a5225ead1ad0f642b77230d11a20fd8048bf` |
| 7 | `structure` | [ProfiniteGrp.Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/profinitegrp-hom--afd8a57a5ace3e178665ef33.md) | 106 | `declaration-track:afd8a57a5ace3e178665ef3376e30a6d1ced0739cb9fc3c800f1e0e819423bb3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--9d74c9768468c456ced159ac.md) | 114 | `declaration-track:9d74c9768468c456ced159acb1c7846596dea7e7ae0c570c89bbe84842bbec94` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--55290dec68a1285e225f8d7b.md) | 120 | `declaration-track:55290dec68a1285e225f8d7b9af8f688ca3715a719b6874ae5570d251d40744d` |
| 10 | `abbrev` | [ProfiniteGrp.Hom.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/profinitegrp-hom-hom--de778c79217efd85e542fb3e.md) | 126 | `declaration-track:de778c79217efd85e542fb3e2bd08ccb98911996ca7999982923ece840216567` |
| 11 | `abbrev` | [ProfiniteGrp.ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/profinitegrp-ofhom--891abdea9ccab7aab96d5d73.md) | 132 | `declaration-track:891abdea9ccab7aab96d5d73f095044c9b1412376844375e1d0f46aebd7f99ed` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--ed0148af2d7ea5a8c13fe5cd.md) | 141 | `declaration-track:ed0148af2d7ea5a8c13fe5cde37e8d934965280e353c23a81020916867a31c99` |
| 13 | `lemma` | [hom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/hom-id--ae01b8a50a22832ba51190a0.md) | 145 | `result-track:ae01b8a50a22832ba51190a0942a08bdf382b6105a5d4f417ceca5fdb41a4dc1` |
| 14 | `lemma` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/id-apply--fec1d9a4fd58eb23f4341476.md) | 149 | `result-track:fec1d9a4fd58eb23f4341476453c032ced5bd5d65afc1ea9a436f8a6bb49a0c8` |
| 15 | `lemma` | [hom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/hom-comp--3d15253b439bac90ccd929df.md) | 153 | `result-track:3d15253b439bac90ccd929dffb95ca5682bb5c34f19f382a841906d083aaf351` |
| 16 | `lemma` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/comp-apply--3843ed85b6f45bc92e5a5749.md) | 158 | `result-track:3843ed85b6f45bc92e5a57493ece8e5a646f0999b0a4cd3d89756066f3238b87` |
| 17 | `lemma` | [hom_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/hom-ext--0270d11053b16c49b2b8e820.md) | 163 | `result-track:0270d11053b16c49b2b8e8208d2c4610398fbeb76dca958e67571efd347f3148` |
| 18 | `lemma` | [hom_ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/hom-ofhom--96c07e53491fbbc1e3907cde.md) | 172 | `result-track:96c07e53491fbbc1e3907cde6911bb71c39e2e83e3114de1321eab7be08e5306` |
| 19 | `lemma` | [ofHom_hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/ofhom-hom--c1dfd1e7912756080cc0a252.md) | 175 | `result-track:c1dfd1e7912756080cc0a252467ee9fe29d068f24c3994c2b8cc22055cc28369` |
| 20 | `lemma` | [ofHom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/ofhom-id--a29a3b032c4145ce8b724fe6.md) | 179 | `result-track:a29a3b032c4145ce8b724fe69401119b97e1c816e0b1187026f7cada5da5cdd1` |
| 21 | `lemma` | [ofHom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/ofhom-comp--c015840da5ed19cddc260891.md) | 182 | `result-track:c015840da5ed19cddc260891ed6e29dff7fd04e3d39cf01938c2117523badcac` |
| 22 | `lemma` | [ofHom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/ofhom-apply--e8bc863b0caff37e5263b64b.md) | 187 | `result-track:e8bc863b0caff37e5263b64b45dbbf317137a23f1de6d34bf5d75619a333ae87` |
| 23 | `lemma` | [inv_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/inv-hom-apply--32471ccc6cbbe04efd051581.md) | 190 | `result-track:32471ccc6cbbe04efd0515819413adcaf2b8babfa9ebb20e4170a45e82609303` |
| 24 | `lemma` | [hom_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/hom-inv-apply--82f14b9a51cfbe2cd5e2a4ea.md) | 194 | `result-track:82f14b9a51cfbe2cd5e2a4eaa9cddcda287ece57df0e7c0de3c549c869000217` |
| 25 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/coe-id--08fc041b86d82d33e5d950c1.md) | 198 | `result-track:08fc041b86d82d33e5d950c1482e26921a77cb27723f593e1ad48aaeb54a6877` |
| 26 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/coe-comp--449df6c4b8a0b8f3d2d6e3a1.md) | 202 | `result-track:449df6c4b8a0b8f3d2d6e3a12f9ae886a4d85e2d778aeaeab003e710522b5414` |
| 27 | `abbrev` | [ofProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/ofprofinite--d76ea4deeed5d33f6acac879.md) | 210 | `declaration-track:d76ea4deeed5d33f6acac879ea5623028d4f8c51935ccc380d4ada3823ec5ed6` |
| 28 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/pi--f025ccb2a8a3f81e1e259d7f.md) | 216 | `declaration-track:f025ccb2a8a3f81e1e259d7f8fba06d7de7b49436ed9e72437ed061dc48ec1f7` |
| 29 | `def` | [ofFiniteGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/offinitegrp--32c8169cb154e459b0cc0008.md) | 226 | `declaration-track:32c8169cb154e459b0cc0008d75ec14c50ae55f44b57302c2160e12c6e761d54` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--723e1856a6e95366b2154c86.md) | 233 | `declaration-track:723e1856a6e95366b2154c86c0a1c5bc199f454ee33162ff5ef0e137705892f8` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--d72a93c4c45c9c79f9db2b0a.md) | 239 | `declaration-track:d72a93c4c45c9c79f9db2b0a0be5dc5e7b94054ff75e95d7d5eb2e1b0f089adb` |
| 32 | `def` | [ofClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/ofclosedsubgroup--2fa4f285f7eb8d862ae591dc.md) | 245 | `declaration-track:2fa4f285f7eb8d862ae591dcd8088d4c32d3228dadbea78ce5e9e54d74383eee` |
| 33 | `def` | [ofContinuousMulEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/ofcontinuousmulequiv--e32ae35598da012b62b95f1d.md) | 252 | `declaration-track:e32ae35598da012b62b95f1d58a9add7e558602f5eb925d1e4d2a8cf2a9590e0` |
| 34 | `def` | [ContinuousMulEquiv.toProfiniteGrpIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/continuousmulequiv-toprofinitegrpiso--594aa81c771473836ba989cd.md) | 260 | `declaration-track:594aa81c771473836ba989cd1160ae11cfb11b5ee7f4c771443ad892dae07cdc` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--75da950106700e2d4bfbabb2.md) | 266 | `declaration-track:75da950106700e2d4bfbabb2e55c0934979d38df00df540bcd69fae6ae0e4649` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--ea7fe9bbc1ae3981419f41fd.md) | 272 | `declaration-track:ea7fe9bbc1ae3981419f41fde27e210aafb30afb87f7fcbaad83ea4b201e23a7` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--d7a9fc4ca99be7c630acb0a4.md) | 276 | `declaration-track:d7a9fc4ca99be7c630acb0a4e300f82e54715f912c7b793b97d52aef2559cfa8` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--37c9f5d710728cc8b593c70a.md) | 284 | `declaration-track:37c9f5d710728cc8b593c70acd02622e50fe067ae39c73b34a121353cbb8c2f2` |
| 39 | `def` | [limitConePtAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/limitconeptaux--c4ed244f800db9b38991d9d4.md) | 314 | `declaration-track:c4ed244f800db9b38991d9d4090be3e313a9f152e5c43823a138a26448d8d91d` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--f63046a963fd190760f6d84d.md) | 320 | `declaration-track:f63046a963fd190760f6d84d093f9c2ce8ee7cecd24bc648990ec825c54d23f4` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--22e8cf0bd7edf59032842e94.md) | 323 | `declaration-track:22e8cf0bd7edf59032842e94c5bf1232acc52b05a887ccb0ba82f6e675fab1c9` |
| 42 | `abbrev` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/limitcone--fd1925cbe363d44d2b283101.md) | 327 | `declaration-track:fd1925cbe363d44d2b2831010836164859871658be70dc486f0e5272e3640b51` |
| 43 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/limitconeislimit--722c4ba9a14e211abbc1dfc4.md) | 343 | `declaration-track:722c4ba9a14e211abbc1dfc45d48a5270441d1ca3675aecdc027b381a5fb9152` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--6488a97ed7c8ebaee6d71b31.md) | 357 | `declaration-track:6488a97ed7c8ebaee6d71b31ab86cf2f47b6fbae3f8017fed8cad12e755220dd` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--617fd6110458b63c559d3925.md) | 362 | `declaration-track:617fd6110458b63c559d3925eca2c8807aa88cdfbbef21e094fda6b551d46e42` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/instance--2704026a194f025625df240e.md) | 367 | `declaration-track:2704026a194f025625df240e8bd1ab15d6e8b69a5b6947d15f78803cda358d70` |
| 47 | `abbrev` | [limit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/limit--a94f38f1171920bfc24bb758.md) | 371 | `declaration-track:a94f38f1171920bfc24bb758f7431918f1a9805eaac9a45de4de8c4e8cc9f844` |
| 48 | `lemma` | [limit_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/limit-ext--98c11e3ab589ad5f5f25775a.md) | 374 | `result-track:98c11e3ab589ad5f5f25775acb93f4140b3e89fe6328cc818bfbb296d5cae721` |
| 49 | `lemma` | [limit_one_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/limit-one-val--4d6ddd5f482511ef2cc3f4eb.md) | 378 | `result-track:4d6ddd5f482511ef2cc3f4eb9694b3d934d95356822639133515539753982d2e` |
| 50 | `lemma` | [limit_mul_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant25363c2ecafebe10d51aef21d186ff629fc448ef100b42c1e07ef80363b77c89.lean/declarations/limit-mul-val--ebb14315c776f13466ab8190.md) | 382 | `result-track:ebb14315c776f13466ab81904f9eb8d623ecfba22f2882f92a566a6c9920b7f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
