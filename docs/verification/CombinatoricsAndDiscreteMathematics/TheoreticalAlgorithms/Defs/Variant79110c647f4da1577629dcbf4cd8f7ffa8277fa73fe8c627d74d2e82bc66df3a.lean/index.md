# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Defs.Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0688e48b710a5f87dd7221d48005f8b10b731c4",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0688e48b710a5f87dd7221d48005f8b10b731c4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.DList.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.WSeq.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [length](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/length--37048367aa828f7bf53dbe33.md) | 25 | `declaration-track:37048367aa828f7bf53dbe33c3fdd2d815f444d14c5ddf99c708b83ac969ef84` |
| 2 | `class` | [IsFinite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/isfinite--1fff8e64aea95bf645f9bfaa.md) | 36 | `declaration-track:1fff8e64aea95bf645f9bfaa8dd5b9fcb07ef1d09d7fbfd590056813ea3538fb` |
| 3 | `instance` | [toList_terminates](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/tolist-terminates--a6432a488c8b65863da7438a.md) | 39 | `declaration-track:a6432a488c8b65863da7438ad7dcead3227ada47d689a38a360c18223ea63a68` |
| 4 | `def` | [get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/get--31be44c1ebd0657d506cf756.md) | 43 | `declaration-track:31be44c1ebd0657d506cf756bc12d48f2e03a31b8f6e0e009945106c2a0873b7` |
| 5 | `def` | [updateNth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/updatenth--f508851a286afbc0b81746e5.md) | 47 | `declaration-track:f508851a286afbc0b81746e534b47d979048e6a4003095c63fcf207f582b8259` |
| 6 | `def` | [removeNth](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/removenth--b36afbbd3f3f4060ca791ef8.md) | 59 | `declaration-track:b36afbbd3f3f4060ca791ef89c7178edef5a3e08065eb290aa5c6a4517d85634` |
| 7 | `def` | [filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/filtermap--bf59568191fc102b884edf9e.md) | 71 | `declaration-track:bf59568191fc102b884edf9ec7d78e6f1a7170647f1a7b6437ce604fa190bb0c` |
| 8 | `def` | [filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/filter--29f8dd0632a892cc39a3200d.md) | 79 | `declaration-track:29f8dd0632a892cc39a3200d3778ccf1c88aa60053bd10b4b400c7733912a7ce` |
| 9 | `def` | [find](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/find--3571701ada1a586baa9cf480.md) | 84 | `declaration-track:3571701ada1a586baa9cf480f3f37ccc092181ffec58bf96b9d749e5fc9f258b` |
| 10 | `def` | [zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/zipwith--4d23f94efb8e9d4b7a101af2.md) | 88 | `declaration-track:4d23f94efb8e9d4b7a101af24374917403ee318e4d5ad94b24cf5933022cd72b` |
| 11 | `def` | [zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/zip--d6d15a6df7aa3e0a6ea9c398.md) | 100 | `declaration-track:d6d15a6df7aa3e0a6ea9c3984d19f7c0b58c10be18ca268b9704994d4f8a0e24` |
| 12 | `def` | [findIndexes](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/findindexes--8f46363590c313388b94f5e7.md) | 104 | `declaration-track:8f46363590c313388b94f5e7dd64bfcfcfeaf1cce7664cb9e49abb29ae896735` |
| 13 | `def` | [findIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/findindex--282f6b12de252a9d5caf0849.md) | 108 | `declaration-track:282f6b12de252a9d5caf0849985ddfac70297d81b54288a4180ac01949cafed2` |
| 14 | `def` | [indexOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/indexof--68cef2889919b1ad1dbdb7b5.md) | 112 | `declaration-track:68cef2889919b1ad1dbdb7b59fb1268df590aeb55ac6affbf96a5eeeb44b6be5` |
| 15 | `def` | [indexesOf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/indexesof--ba8d8ae2c688b760d1ff9ebb.md) | 116 | `declaration-track:ba8d8ae2c688b760d1ff9ebb5e5ab2b134dd25116e914ed38793a4c234809605` |
| 16 | `def` | [union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/union--b87053c9d51f59843eded8e1.md) | 121 | `declaration-track:b87053c9d51f59843eded8e11651fbf4eb0747a5b0679023033573ffb97791c1` |
| 17 | `def` | [isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/isempty--ca4f3c307bf67d31a198d9d0.md) | 135 | `declaration-track:ca4f3c307bf67d31a198d9d091f3bdb6258295030189240880fa0e8bcb742ac4` |
| 18 | `def` | [compute](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/compute--146c5bc0761557b620d05d0f.md) | 139 | `declaration-track:146c5bc0761557b620d05d0ff84883e6b1e6e7905c0db2d3c14b2fce19e09f5e` |
| 19 | `def` | [take](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/take--6fbd4f03bd84649892f06c5d.md) | 145 | `declaration-track:6fbd4f03bd84649892f06c5d4ad51498648c0dc5c1e2b2b178ce03ed3bf864c0` |
| 20 | `def` | [splitAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/splitat--843af4d896835e019f1fd392.md) | 157 | `declaration-track:843af4d896835e019f1fd3929ee0e2f1487551a27f0f91081b62bc7f2e73dc79` |
| 21 | `def` | [any](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/any--d06fbbf2adc25d53d47e5987.md) | 168 | `declaration-track:d06fbbf2adc25d53d47e5987cd84c64a5bbbc903aec0cb643f5b6a44864597a7` |
| 22 | `def` | [all](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/all--a10fd86aec17e941238c13df.md) | 178 | `declaration-track:a10fd86aec17e941238c13df20596c55dc6e32e1b6f2c6e5c54af4707ba4d879` |
| 23 | `def` | [scanl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/scanl--923be9237a55e7d5f718c313.md) | 190 | `declaration-track:923be9237a55e7d5f718c313c227c4afe6ee6e02676af6f6a126fb9883526b5c` |
| 24 | `def` | [inits](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/inits--a769a4f3562803b1837f7cfe.md) | 203 | `declaration-track:a769a4f3562803b1837f7cfea5a9d6d2da00f4d54695866cb047518429b63f56` |
| 25 | `def` | [collect](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/collect--1e27162d9203d2328cdeee6b.md) | 217 | `declaration-track:1e27162d9203d2328cdeee6bee1f102cc8b2ccd240a7d2a44ca0455d4e6c6a5f` |
| 26 | `theorem` | [length_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant79110c647f4da1577629dcbf4cd8f7ffa8277fa73fe8c627d74d2e82bc66df3a.lean/declarations/length-eq-map--f540d912bd427cf4a751fd58.md) | 220 | `result-track:f540d912bd427cf4a751fd5813b7a2a0625caa1d45b68825f4329260fc39e8a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
