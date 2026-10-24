# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee7d2be152e0a98236de32759f80dc32363e90b1",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee7d2be152e0a98236de32759f80dc32363e90b1`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ExtremallyDisconnected` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHaus.Projective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Stonean](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/stonean--ab8cce10d4828fba8bb272b3.md) | 46 | `declaration-track:ab8cce10d4828fba8bb272b399251a59d3c90f530c7456aa703c8ba5bae3495c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/instance--55e93d5b3ca402344d5bc1e1.md) | 51 | `declaration-track:55e93d5b3ca402344d5bc1e1623fc9d2abc1755ad3ccb610c98ddc72ff3dce25` |
| 3 | `def` | [toStonean](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/tostonean--3e65da4e5ace5e615e9d2935.md) | 69 | `declaration-track:3e65da4e5ace5e615e9d2935ab8aab9df04a6003a4bc705b528a3a71659c1bbb` |
| 4 | `abbrev` | [toCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/tocomphaus--53cc6f460d533a860cd215c6.md) | 79 | `declaration-track:53cc6f460d533a860cd215c616a7cb1c3d4b36a760139882bfcdaae92016c7ea` |
| 5 | `abbrev` | [fullyFaithfulToCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/fullyfaithfultocomphaus--b95851723b9834f0c370e008.md) | 83 | `declaration-track:b95851723b9834f0c370e008a8406b59e76defd52361ba753c97bc4ed8613ac1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/instance--6503eb3e4cfd643df51929f1.md) | 88 | `declaration-track:6503eb3e4cfd643df51929f169cccfe79d98fc7184a050420946a06d38296925` |
| 7 | `abbrev` | [of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/of--f6889b799a4ebd9c8c393c62.md) | 95 | `declaration-track:f6889b799a4ebd9c8c393c62e72249717734daf99055c5e437e9278454e60d0e` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/instance--ff93e9c005bf19cd52d87d49.md) | 98 | `declaration-track:ff93e9c005bf19cd52d87d49fb75c8e5f6aec5d8921fe348da5db174449a0dba` |
| 9 | `abbrev` | [toProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/toprofinite--758b744b0bbfe69c0623a59a.md) | 101 | `declaration-track:758b744b0bbfe69c0623a59a90a68c668741f924365f5f1039e6f47b7444a3ee` |
| 10 | `def` | [mkFinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/mkfinite--9ec762618a18633637e4dd8e.md) | 107 | `declaration-track:9ec762618a18633637e4dd8e66807e81da55186df9021b9eca0f519e01c8fe49` |
| 11 | `lemma` | [epi_iff_surjective](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/epi-iff-surjective--fa06d36bd7caa082412741c7.md) | 118 | `result-track:fa06d36bd7caa082412741c70cb59df49566d29800a7d85528b51662915f3e4e` |
| 12 | `instance` | [instProjectiveCompHausCompHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/instprojectivecomphauscomphaus--4210eec168a3adc791bf8af0.md) | 149 | `declaration-track:4210eec168a3adc791bf8af0112c9d2b39044a8536e1fba0dd5af15d424ec4b9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/instance--35614bdeb563608687ebdc1f.md) | 161 | `declaration-track:35614bdeb563608687ebdc1fa982a346b042ab23f9e31b8bd866457c387817a6` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/instance--3b34c73ef984aeb85ca9953f.md) | 173 | `declaration-track:3b34c73ef984aeb85ca9953f1cb2ff4ac369e443257b914241a12e552a2bd325` |
| 15 | `def` | [presentation](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/presentation--6e09c7e2f04ce150760796ef.md) | 192 | `declaration-track:6e09c7e2f04ce150760796efdcfc1a090c3a7c7fc6de84ab1d83346b948cf1a6` |
| 16 | `def` | [presentation.π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/presentation--982ffaa7a335513c9458b27b.md) | 207 | `declaration-track:982ffaa7a335513c9458b27b8184418fd7bcb8deb85b8c4f871de02836dd85f0` |
| 17 | `instance` | [presentation.epi_π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/presentation-epi--80b6b36fcd12b409a6bb307b.md) | 212 | `declaration-track:80b6b36fcd12b409a6bb307b1ccce7b2a9f8e79423c2ce8c8604d8fa644baecc` |
| 18 | `abbrev` | [_root_.Stonean.compHaus](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/root-stonean-comphaus--f62ba49acda0150192cbe75f.md) | 216 | `declaration-track:f62ba49acda0150192cbe75fbfec389f3e851c3ec80814e3876e891a9cb94841` |
| 19 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/lift--560191fbadbcfbd178579e7b.md) | 232 | `declaration-track:560191fbadbcfbd178579e7b797a021e0b79a73f3c9e44dc3e8cf2e2b1b33037` |
| 20 | `lemma` | [lift_lifts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/lift-lifts--b3c2340ce096d291089c0b73.md) | 237 | `result-track:b3c2340ce096d291089c0b73c9e069bd9ad2faca5418e98ffd34588ea8bf7a23` |
| 21 | `lemma` | [Gleason](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/gleason--880fb95bdce9070ed3ffae2d.md) | 240 | `result-track:880fb95bdce9070ed3ffae2dcd429b5a22222b1571009cfbee06774131505725` |
| 22 | `def` | [presentation](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/presentation--a57103a0add042a92b403826.md) | 258 | `declaration-track:a57103a0add042a92b403826d760cc2607cf90344be0b3ba3f6a0b13877ced1c` |
| 23 | `def` | [presentation.π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/presentation--4880388fe131e4757c22272e.md) | 264 | `declaration-track:4880388fe131e4757c22272e622af5a985c7a31f07d71ceee95660e1414b1354` |
| 24 | `instance` | [presentation.epi_π](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/presentation-epi--c40fecfb5b6bf80af9d75e03.md) | 269 | `declaration-track:c40fecfb5b6bf80af9d75e0344b1a958b90e7361554ade27b5dacbaec81ecade` |
| 25 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/lift--95656ad6e47e3464e318ab63.md) | 289 | `declaration-track:95656ad6e47e3464e318ab63651a5f92af19e47a057a1ac90fdec5216c76fbfb` |
| 26 | `lemma` | [lift_lifts](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/lift-lifts--fcb4467055b5d7838937b2b2.md) | 293 | `result-track:fcb4467055b5d7838937b2b263abcbf9f50cf603ab2fbfaa49f35333000cc838` |
| 27 | `lemma` | [projective_of_extrDisc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant66be7e153d0032cbecd7f33113376c123925154d68e71c5aaf29df8abd7d4dc8.lean/declarations/projective-of-extrdisc--647d95ae65bb0baa21e55ce3.md) | 296 | `result-track:647d95ae65bb0baa21e55ce32d9e2f6131c34df6897ae95a70910abda1c1e3d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
