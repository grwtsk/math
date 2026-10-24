# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Zip.Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b9bbe136cb117d6c4f99ce304e467b2e953096",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b9bbe136cb117d6c4f99ce304e467b2e953096`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Zip` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zipWith_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-comm--966f91a4623aa0737f6a9dee.md) | 33 | `result-track:966f91a4623aa0737f6a9deed81310c36bd517536d609552792be08e37efe6f0` |
| 2 | `theorem` | [zipWith_comm_of_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-comm-of-comm--2406bc00ac481b8a18c4ca0c.md) | 39 | `result-track:2406bc00ac481b8a18c4ca0c0bc45e05f3a5e084444b97b0c4aab7c722bae9c8` |
| 3 | `theorem` | [zipWith_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-self--0733c84d9f2d19412f9ecdfa.md) | 45 | `result-track:0733c84d9f2d19412f9ecdfacd086ad8aff17d5fd43dabc20d031e4503fb64fc` |
| 4 | `theorem` | [getElem?_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/getelem-zipwith--a6c4b4a1d4110c71ce01aa69.md) | 54 | `result-track:a6c4b4a1d4110c71ce01aa69c340f119d7f5e0875ea303fc6568220710e9b673` |
| 5 | `theorem` | [getElem?_zipWith'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/getelem-zipwith--d03997813d646322960cfd36.md) | 63 | `result-track:d03997813d646322960cfd365e38f020a2472d5529b79d73cac395bce4a710f6` |
| 6 | `theorem` | [getElem?_zipWith_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/getelem-zipwith-eq-some--08faa259cbea2c783c19fb7d.md) | 69 | `result-track:08faa259cbea2c783c19fb7dd04595b306c0a37aa14ce0ccca63597e169aecf3` |
| 7 | `theorem` | [getElem?_zip_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/getelem-zip-eq-some--d8fc32146248d2bb4ede72ba.md) | 76 | `result-track:d8fc32146248d2bb4ede72baf25d4f46dbfb9deac8899024b187eb0f2ceeafcb` |
| 8 | `theorem` | [zipWith_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-map--73952e8414f8060517f8f1b3.md) | 83 | `result-track:73952e8414f8060517f8f1b3677d67fb3db4388bf4530331a9bd813c01ad02e2` |
| 9 | `theorem` | [zipWith_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-map-left--0b93e877df09ec7e04dd7457.md) | 90 | `result-track:0b93e877df09ec7e04dd745758e565c445e0356dd727a21e533912cd1351b0a2` |
| 10 | `theorem` | [zipWith_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-map-right--890b708c2bb3bb2545d2b4e5.md) | 97 | `result-track:890b708c2bb3bb2545d2b4e52d086296fcfcde1d0c61f14d5bb852f604b1d2f9` |
| 11 | `theorem` | [zipWith_foldr_eq_zip_foldr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-foldr-eq-zip-foldr--35d96cdafe4a390ec90fc36f.md) | 104 | `result-track:35d96cdafe4a390ec90fc36fc38f6cad6f4aba4e68cff9c7d1498166ed0db605` |
| 12 | `theorem` | [zipWith_foldl_eq_zip_foldl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-foldl-eq-zip-foldl--00eb2ee84e74cabe7a04bdd8.md) | 111 | `result-track:00eb2ee84e74cabe7a04bdd8b8ed87e81a36794af01ef87c30cd6479a16da489` |
| 13 | `theorem` | [map_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/map-zipwith--f8762e76fded35ba4d45c647.md) | 118 | `result-track:f8762e76fded35ba4d45c647fb4460f24b756447103cc5f614f83b8d441839a0` |
| 14 | `theorem` | [take_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/take-zipwith--9621359d2cf4e01ca40e80fc.md) | 125 | `result-track:9621359d2cf4e01ca40e80fc96b58d28f1dd2527a5fd889ad4e6acc341cdc08c` |
| 15 | `theorem` | [extract_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/extract-zipwith--f85e978a505c8ac899afb37d.md) | 131 | `result-track:f85e978a505c8ac899afb37d65a3167ae1ecf1e4502587ddd1b4d2b05957d361` |
| 16 | `theorem` | [zipWith_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-append--dbd28d47d95afbb7b4bf0982.md) | 137 | `result-track:dbd28d47d95afbb7b4bf09823d3eb695e770688a6454ef0bb58c260bd1a8e23d` |
| 17 | `theorem` | [zipWith_eq_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-eq-append-iff--cb99f1bd318eb3f8bb6e34ce.md) | 146 | `result-track:cb99f1bd318eb3f8bb6e34ce610dc1cef832bf8cc57a4e8a1ce1abdf89665ffb` |
| 18 | `theorem` | [zipWith_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zipwith-replicate--316b69b891a50b7b4d0d06c0.md) | 164 | `result-track:316b69b891a50b7b4d0d06c029fa7c5f4133425d09aed84b603b3230be14358e` |
| 19 | `theorem` | [map_uncurry_zip_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/map-uncurry-zip-eq-zipwith--cef041e43d8d974723390b04.md) | 169 | `result-track:cef041e43d8d974723390b045c1273be2b216d4e567208cd28cad7e9a1badc71` |
| 20 | `theorem` | [map_zip_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/map-zip-eq-zipwith--3aafc4a85e9274669d38c391.md) | 175 | `result-track:3aafc4a85e9274669d38c391446619ab9552e9a5308e3b8bdab16c830937c513` |
| 21 | `theorem` | [reverse_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/reverse-zipwith--d0190d47bb281e97e7558b85.md) | 182 | `result-track:d0190d47bb281e97e7558b8522d8d44f025aa57b2b8b5b0c617561dd504db88e` |
| 22 | `theorem` | [getElem_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/getelem-zip--e5e99ba3047f2ac59ee3eb13.md) | 191 | `result-track:e5e99ba3047f2ac59ee3eb13a5b0312be5da0be32ed615577a6a8e0631a275e0` |
| 23 | `theorem` | [zip_eq_zipWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-eq-zipwith--a2b278d63a15b62276555270.md) | 195 | `result-track:a2b278d63a15b622765552701bf957dc0005f372607022c5b986705d418f03cb` |
| 24 | `theorem` | [zip_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-map--0cfa7266774745458ce90a95.md) | 201 | `result-track:0cfa7266774745458ce90a95c654a73e2e8aba3c35f4d792e4a54ba4d698916c` |
| 25 | `theorem` | [zip_map_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-map-left--51e34b8a1e8efbe93c36268e.md) | 207 | `result-track:51e34b8a1e8efbe93c36268e53d1c46f010b774fb4a08635373357f5ea90ac47` |
| 26 | `theorem` | [zip_map_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-map-right--68c58881a540c30afb40f975.md) | 210 | `result-track:68c58881a540c30afb40f975093dacb71c0946bc017292e479abd63c65c885ee` |
| 27 | `theorem` | [zip_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-append--f6d3856d76f110f29a03d1b2.md) | 214 | `result-track:f6d3856d76f110f29a03d1b21f2138025ca270dd7f0335ad4975ae79ec06120c` |
| 28 | `theorem` | [zip_map'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-map--8b5f11e8b89a784fdf8f6c77.md) | 223 | `result-track:8b5f11e8b89a784fdf8f6c77ba50fc3efc7671a53d6285ab7b9ad6ccc8af25f1` |
| 29 | `theorem` | [of_mem_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/of-mem-zip--fac4b93b1a9bc3c0d9e18073.md) | 228 | `result-track:fac4b93b1a9bc3c0d9e1807370ad1b8f3eab17ca3b1fad1c01246017c21a2e2d` |
| 30 | `theorem` | [map_fst_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/map-fst-zip--eacc833b6343a3f476ed2246.md) | 234 | `result-track:eacc833b6343a3f476ed2246b4347fff1368c54e768d2bdff32caf5056dbb7a7` |
| 31 | `theorem` | [map_snd_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/map-snd-zip--256de15ee7d9cddd52189889.md) | 241 | `result-track:256de15ee7d9cddd52189889e92e1e4e02dcbf6fa257dd54afc8bd2c32729072` |
| 32 | `theorem` | [map_prod_left_eq_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/map-prod-left-eq-zip--ec82cc99b4c6ca6b7c43dfe3.md) | 247 | `result-track:ec82cc99b4c6ca6b7c43dfe3946730f154925c859c1e2e5f20e937c1f42ba143` |
| 33 | `theorem` | [map_prod_right_eq_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/map-prod-right-eq-zip--79555245f21e4384c421e5d7.md) | 254 | `result-track:79555245f21e4384c421e5d76e82cdc8b39bab6bfb0673026805ff74da1a5868` |
| 34 | `theorem` | [zip_eq_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-eq-append-iff--d4207cc4ca71c7587a09680a.md) | 261 | `result-track:d4207cc4ca71c7587a09680acc00ac584f3ba94068de0da519f496907201eea1` |
| 35 | `theorem` | [zip_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-replicate--4f7caabb9c9268170949ed2e.md) | 267 | `result-track:4f7caabb9c9268170949ed2e1da187d01d543a7a89addddd49e367d7961b19ec` |
| 36 | `theorem` | [unzip_fst](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/unzip-fst--b94379027a99de6156f90bc3.md) | 274 | `result-track:b94379027a99de6156f90bc38d90261562c1ee99945d57b32fce4f9a44a27de7` |
| 37 | `theorem` | [unzip_snd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/unzip-snd--7150954e06dbf52791b349d7.md) | 279 | `result-track:7150954e06dbf52791b349d7ff56c03b9028a6ff68ca8fc260d321836f71ff9d` |
| 38 | `theorem` | [unzip_eq_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/unzip-eq-map--d2e22d91d31e48d4827613b8.md) | 284 | `result-track:d2e22d91d31e48d4827613b8ce611f2fd2a141e541ed5bde7924f53ea6ab597e` |
| 39 | `theorem` | [zip_unzip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-unzip--212984eff4d564e7e1d8ccf0.md) | 289 | `result-track:212984eff4d564e7e1d8ccf04a0dece7937b172c03fd9efb0ab842397eaaeacb` |
| 40 | `theorem` | [unzip_zip_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/unzip-zip-left--aa3d2e0860b2652d28c257d2.md) | 293 | `result-track:aa3d2e0860b2652d28c257d28224b645bbda65d7990edf790c220c3ef505bd64` |
| 41 | `theorem` | [unzip_zip_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/unzip-zip-right--9b5df565ce9b63cc6793389b.md) | 299 | `result-track:9b5df565ce9b63cc6793389b7ff77f3819b07812a394e910725c5d97101b3f23` |
| 42 | `theorem` | [unzip_zip](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/unzip-zip--cf9d14c7a9a7f51aa704ff7b.md) | 305 | `result-track:cf9d14c7a9a7f51aa704ff7b55b7d5bded41463470d8cf87367fe8594f0e99f8` |
| 43 | `theorem` | [zip_of_prod](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/zip-of-prod--2c39bdd920dfec3261ad6abc.md) | 311 | `result-track:2c39bdd920dfec3261ad6abc0904f55b3cc358582c69621d3f690bb075ea3d0d` |
| 44 | `theorem` | [unzip_replicate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Variantc4bc5c9227a82476a7f3e0581a3fbd99ad5958fd48e9d39faae9480d94f3a2f0.lean/declarations/unzip-replicate--94f9c930d35f561a5aac572e.md) | 316 | `result-track:94f9c930d35f561a5aac572ea24f9ff57a3ebda8c5bf252c2f4092a5b22b249b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
