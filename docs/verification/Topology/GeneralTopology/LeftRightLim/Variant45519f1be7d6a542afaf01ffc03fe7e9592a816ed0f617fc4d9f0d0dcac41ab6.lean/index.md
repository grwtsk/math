# Verification target: GRWTSK.Topology.GeneralTopology.LeftRightLim.Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6eb9ab16b5fe09600feb6b7f40a646c52714eff",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6eb9ab16b5fe09600feb6b7f40a646c52714eff`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LeftRight` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Function.leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/function-leftlim--2da71ef288e4eddf9a00ffbf.md) | 48 | `declaration-track:2da71ef288e4eddf9a00ffbfdbeb14afc5a01c59561b7f15dae498956453f61d` |
| 2 | `def` | [Function.rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/function-rightlim--3b187d661ad4a8a3a4f55dcb.md) | 59 | `declaration-track:3b187d661ad4a8a3a4f55dcb4cb309e25920c5382a6be6de18b590ce4a988c61` |
| 3 | `theorem` | [leftLim_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim-eq-of-tendsto--9100f31e0f87b7e5f9f68dd4.md) | 65 | `result-track:9100f31e0f87b7e5f9f68dd4529b67c08f85a335b1bea76f3a52ef6a0cb39955` |
| 4 | `theorem` | [leftLim_eq_of_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim-eq-of-eq-bot--fcd41bcfed44c9218a4b0f39.md) | 75 | `result-track:fcd41bcfed44c9218a4b0f39a184340c9f5cc909dde99fcec536d085591ae21e` |
| 5 | `theorem` | [rightLim_eq_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim-eq-of-tendsto--ac637c02123075bdd193a3aa.md) | 81 | `result-track:ac637c02123075bdd193a3aa159feb928d04869ac7d1c866d13ab8f8b3d73d13` |
| 6 | `theorem` | [rightLim_eq_of_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim-eq-of-eq-bot--889db265f43ebe7c822e9aa1.md) | 87 | `result-track:889db265f43ebe7c822e9aa14c84bdbbda5af56bfb98efacd5c2a710bba01bbe` |
| 7 | `theorem` | [leftLim_eq_sSup](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim-eq-ssup--cbe45d858286f8632c9472e6.md) | 100 | `result-track:cbe45d858286f8632c9472e6ca3dff37b312d074e6f7448869af0a9f6d8898bf` |
| 8 | `theorem` | [rightLim_eq_sInf](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim-eq-sinf--59188dc5bd60607bb46da9ad.md) | 105 | `result-track:59188dc5bd60607bb46da9adaaf91e024e020261eafa46cb647604888cbbccf0` |
| 9 | `theorem` | [leftLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim-le--bea3e0e013bc4018350cfdde.md) | 110 | `result-track:bea3e0e013bc4018350cfdde0c9c37839397dbbe9c376c565ceb33709efb00e7` |
| 10 | `theorem` | [le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/le-leftlim--d5aba8b7f6e9c124bcf7d6b1.md) | 125 | `result-track:d5aba8b7f6e9c124bcf7d6b15fb976294622af6c33ea6f02221fdde5b31e55bf` |
| 11 | `theorem` | [leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim--8f3a7216b4dead9fca74cb60.md) | 140 | `result-track:8f3a7216b4dead9fca74cb609c40f1471c38d0c29ff9b325e5ed0cb3267ba4d1` |
| 12 | `theorem` | [le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/le-rightlim--d08ee3b390645ff08497ed02.md) | 147 | `result-track:d08ee3b390645ff08497ed0216ab8f66bbca6104827e1f7a01cec456bb2dcea5` |
| 13 | `theorem` | [rightLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim-le--9ae2c75ad986c36f62a93946.md) | 151 | `result-track:9ae2c75ad986c36f62a9394605d3c09be3f8ad92b3603f435f5bcc42d43034fc` |
| 14 | `theorem` | [rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim--e494127c2cf0087c5422acf3.md) | 156 | `result-track:e494127c2cf0087c5422acf353a078d0457bae5b9e62245819693d4cc02268ad` |
| 15 | `theorem` | [leftLim_le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim-le-rightlim--83fdaf77a2611595f8d1cf1f.md) | 159 | `result-track:83fdaf77a2611595f8d1cf1f541149961c7b0dde00ad88be2b8ad15a520182c3` |
| 16 | `theorem` | [rightLim_le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim-le-leftlim--3cfb2a63c612111221cd415d.md) | 163 | `result-track:3cfb2a63c612111221cd415d94200b73f91db14b60d1f348d6fa2f46978a406f` |
| 17 | `theorem` | [tendsto_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/tendsto-leftlim--c323ff121fb8958af2278cde.md) | 179 | `result-track:c323ff121fb8958af2278cde260f1fb8c5571bf89740f8ad961da1fe25d300e1` |
| 18 | `theorem` | [tendsto_leftLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/tendsto-leftlim-within--2b4bffe40034206ab2cffbb8.md) | 186 | `result-track:2b4bffe40034206ab2cffbb851daa8f44db3e9504717b76e361cbbfa050d4171` |
| 19 | `theorem` | [tendsto_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/tendsto-rightlim--9e6808f41bb0ba1589ed8904.md) | 191 | `result-track:9e6808f41bb0ba1589ed890499c209b71da84865caf2244f03eed290352c9416` |
| 20 | `theorem` | [tendsto_rightLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/tendsto-rightlim-within--845a2ef91a5890fe3a09d29a.md) | 195 | `result-track:845a2ef91a5890fe3a09d29a74a96059d09e3ced0d55e27780be4ff1785cbce0` |
| 21 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/continuouswithinat-iio-iff-leftlim-eq--bef7a21926e001757d7ea349.md) | 201 | `result-track:bef7a21926e001757d7ea349e21173e6f9fba519f7cec98a5d4036728c91da21` |
| 22 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq--35630aaf3abe6cb18494d45e.md) | 213 | `result-track:35630aaf3abe6cb18494d45e3c4190c242d32421919448e127d0d0e0d938040e` |
| 23 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/continuousat-iff-leftlim-eq-rightlim--139eaa2c428aac1876156cbf.md) | 220 | `result-track:139eaa2c428aac1876156cbf858da1fd6531a88022214f4a5bc94faf922c19b8` |
| 24 | `theorem` | [countable_not_continuousWithinAt_Ioi](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/countable-not-continuouswithinat-ioi--6497e2bc82c8d992a6e01ec3.md) | 240 | `result-track:6497e2bc82c8d992a6e01ec3864b22222fd94501a34e6be0e8c3871a33d7b95f` |
| 25 | `theorem` | [countable_not_continuousWithinAt_Iio](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/countable-not-continuouswithinat-iio--093e4525f14948141c82f725.md) | 287 | `result-track:093e4525f14948141c82f725df0f424bb02c6289672a50c812e814a28556cb2a` |
| 26 | `theorem` | [countable_not_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/countable-not-continuousat--0dc8dcdc29a652c41652208c.md) | 294 | `result-track:0dc8dcdc29a652c41652208c8e798ef66f8ecb69d9586ad9ed26e40cb8b51ee3` |
| 27 | `theorem` | [le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/le-leftlim--f94d81d043af0cf36a97962c.md) | 313 | `result-track:f94d81d043af0cf36a97962c05f5150098c3fa057def7333f6bf753e8dc34629` |
| 28 | `theorem` | [leftLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim-le--a144ec6fe32aab08f9d4fb4e.md) | 317 | `result-track:a144ec6fe32aab08f9d4fb4eaa4a3899d7d0c56c49b8b7f0494beb16171e1112` |
| 29 | `theorem` | [leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim--f2d9ac0c05a3e9a911294aa3.md) | 322 | `result-track:f2d9ac0c05a3e9a911294aa379efe6cbe966892f849bff434e9c9c40b7faa3e0` |
| 30 | `theorem` | [rightLim_le](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim-le--a2235990048bebd6def8cfe5.md) | 326 | `result-track:a2235990048bebd6def8cfe5047a681822d2bd12e3afa397c8ab4e66dbe62715` |
| 31 | `theorem` | [le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/le-rightlim--f9fc144f8bb1260e56ddd198.md) | 330 | `result-track:f9fc144f8bb1260e56ddd19882dfe76c4bcf7884016afa4644ac407ab7405ebe` |
| 32 | `theorem` | [rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim--a89a661412ab37d78e3eed3a.md) | 335 | `result-track:a89a661412ab37d78e3eed3a6d2d3cc14a51b5990908cb6fb206aa75beaaa61e` |
| 33 | `theorem` | [rightLim_le_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/rightlim-le-leftlim--179d0309c115951705274cc4.md) | 339 | `result-track:179d0309c115951705274cc433eea9e8abf61a4c4da71a1fdd0d71a827734cb1` |
| 34 | `theorem` | [leftLim_le_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/leftlim-le-rightlim--ea04dd9bd3e3a17ef91e70bb.md) | 343 | `result-track:ea04dd9bd3e3a17ef91e70bb3a78527c0bd5cf8d3b9a828703b72d778502a84e` |
| 35 | `theorem` | [tendsto_leftLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/tendsto-leftlim--bb8e1da7e562a71f5a06b18b.md) | 349 | `result-track:bb8e1da7e562a71f5a06b18b497652ea3b291ead5968df96e00b9cf4f1256b7f` |
| 36 | `theorem` | [tendsto_leftLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/tendsto-leftlim-within--a6dcf685be412bc7c75800dc.md) | 353 | `result-track:a6dcf685be412bc7c75800dc287e8e751c1de2fdad93386f3af28e07d41b6c55` |
| 37 | `theorem` | [tendsto_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/tendsto-rightlim--801406ce954fcf64ac64be76.md) | 357 | `result-track:801406ce954fcf64ac64be7661254e69a73ba42b9eca51c6ef5a62c7da30df3e` |
| 38 | `theorem` | [tendsto_rightLim_within](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/tendsto-rightlim-within--2c682d84cda892d92926deab.md) | 361 | `result-track:2c682d84cda892d92926deab1e17b188bd28d0e2dcbcff8af78d23f1360c2c65` |
| 39 | `theorem` | [continuousWithinAt_Iio_iff_leftLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/continuouswithinat-iio-iff-leftlim-eq--75a5e50c2da91d19a77a9cff.md) | 367 | `result-track:75a5e50c2da91d19a77a9cff6f76a439c7bf9806b21fcdc032cec96d6560c954` |
| 40 | `theorem` | [continuousWithinAt_Ioi_iff_rightLim_eq](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/continuouswithinat-ioi-iff-rightlim-eq--9c0bdb3774624c5c38eaf464.md) | 374 | `result-track:9c0bdb3774624c5c38eaf4646c5d33b74f5e672ffcb0f74ee03854e70db7eb0d` |
| 41 | `theorem` | [continuousAt_iff_leftLim_eq_rightLim](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/continuousat-iff-leftlim-eq-rightlim--7056fb13a1f1216c0a77dd53.md) | 381 | `result-track:7056fb13a1f1216c0a77dd537ec65d545db3c125d60ee2efeb91ab4b55d194c7` |
| 42 | `theorem` | [countable_not_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LeftRightLim/Variant45519f1be7d6a542afaf01ffc03fe7e9592a816ed0f617fc4d9f0d0dcac41ab6.lean/declarations/countable-not-continuousat--9e4f370184592b71854050ae.md) | 387 | `result-track:9e4f370184592b71854050ae6965c63aaf602af3cc22f684e09a8adf68d44a5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
