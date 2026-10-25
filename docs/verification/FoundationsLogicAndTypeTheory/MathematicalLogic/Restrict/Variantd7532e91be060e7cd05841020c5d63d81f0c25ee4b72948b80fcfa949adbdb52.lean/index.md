# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Restrict.Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b4cc804649d38a2eb2636797a7df91ee8c9c8bb",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b4cc804649d38a2eb2636797a7df91ee8c9c8bb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict--58d96e3d213775056d126fc3.md) | 36 | `declaration-track:58d96e3d213775056d126fc3e3f5f00037ed5043267c25a12557af623bc333e4` |
| 2 | `theorem` | [restrict_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-def--6b437ee2527601fde3a7e364.md) | 38 | `result-track:6b437ee2527601fde3a7e3648da331e9d1244268219c0bb606a0ba3db42eb374` |
| 3 | `theorem` | [restrict_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-eq--af0b0ca4ff28239f04eb2ea0.md) | 40 | `result-track:af0b0ca4ff28239f04eb2ea0550094aee2452e7a85efc8ade0f10a4a31a80d1d` |
| 4 | `lemma` | [restrict_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-id--4e171dc2dd892b51fa558a3e.md) | 43 | `result-track:4e171dc2dd892b51fa558a3ee0c578fb31ee4f2dd8be7ac5dc73e665fefc0a0b` |
| 5 | `theorem` | [restrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-apply--fd639c122f6d94a09cd1a518.md) | 46 | `result-track:fd639c122f6d94a09cd1a518064cc83412cfcb43582b5f0a0a4f071c254d7428` |
| 6 | `theorem` | [restrict_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-eq-iff--61ad99d56fdb49d38f79d423.md) | 49 | `result-track:61ad99d56fdb49d38f79d4233a53c394dd8830482c448298b4b87e55e6fe201e` |
| 7 | `theorem` | [eq_restrict_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/eq-restrict-iff--48595d9940dd34af2153ac41.md) | 53 | `result-track:48595d9940dd34af2153ac41c326ea96e317a298c156b71d1141e6003d4562df` |
| 8 | `theorem` | [range_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/range-restrict--14634c7aa8e73c8af9b26f34.md) | 58 | `result-track:14634c7aa8e73c8af9b26f347e31410930f2864f74c033444b251b9e8a461ffc` |
| 9 | `theorem` | [image_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/image-restrict--b7b3bbddd371dfa61398acdc.md) | 61 | `result-track:b7b3bbddd371dfa61398acdcf42985a7b13752b5f2b0646e4a48e3d00a2dba11` |
| 10 | `theorem` | [restrict_dite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-dite--1fe868daff31c28cd08577ef.md) | 66 | `result-track:1fe868daff31c28cd08577ef2a4f2e46c18977bda187ae539a53617024fc56d3` |
| 11 | `theorem` | [restrict_dite_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-dite-compl--081f38a6fdc6c47a506943d8.md) | 72 | `result-track:081f38a6fdc6c47a506943d8205e24a925853856dd1a81dc79cd7e7ee75011db` |
| 12 | `theorem` | [restrict_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-ite--7a722305b6e7b01636ee202b.md) | 78 | `result-track:7a722305b6e7b01636ee202b0f625fca4ca8bda5fae0b3c9ccfe8190e58845fb` |
| 13 | `theorem` | [restrict_ite_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-ite-compl--3626510a5624cd2adc8f0615.md) | 83 | `result-track:3626510a5624cd2adc8f0615de985e7b0e575ea401ff749ed3a43ccd48f20562` |
| 14 | `theorem` | [restrict_piecewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-piecewise--0d3c79c7af712f194f0dac81.md) | 88 | `result-track:0d3c79c7af712f194f0dac813cfb8fe64ab70a951efc3b629d13f9ff817c5989` |
| 15 | `theorem` | [restrict_piecewise_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-piecewise-compl--faaab66833e26bfe2ac3b526.md) | 93 | `result-track:faaab66833e26bfe2ac3b5267039f3d759de621a3aae99926178d65ad00b873b` |
| 16 | `theorem` | [restrict_extend_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-extend-range--9763d6923229f90d6896b989.md) | 97 | `result-track:9763d6923229f90d6896b9895d0bcd853041a1c13be5bbea7d22ad05b7255f16` |
| 17 | `theorem` | [restrict_extend_compl_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-extend-compl-range--4fa150513b222bc7cdc49ec4.md) | 103 | `result-track:4fa150513b222bc7cdc49ec44803ed2d0304780df63ab8eed2d97e2015ffbbdc` |
| 18 | `def` | [restrict₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict--a838028e6a9245780d7af4ef.md) | 110 | `declaration-track:a838028e6a9245780d7af4efd5c0b437fc2d5515e7a0033f10df0e0ab5bea6df` |
| 19 | `theorem` | [restrict₂_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-def--dd7e713eb049733a03d76c1a.md) | 113 | `result-track:dd7e713eb049733a03d76c1a0123c963886e065ff15ed401f71f5eda1084a99f` |
| 20 | `theorem` | [restrict₂_comp_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-comp-restrict--6bac3ba8ef310018de933b17.md) | 116 | `result-track:6bac3ba8ef310018de933b1766375a09aef3c793129e27419f4ffb18217132f8` |
| 21 | `theorem` | [restrict₂_comp_restrict₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-comp-restrict--a5577989f28eb4570874bb87.md) | 119 | `result-track:a5577989f28eb4570874bb87df948d3071e0d606c1246a8ace65206cf5b15693` |
| 22 | `theorem` | [range_extend_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/range-extend-subset--af002288081f86c6f47c46ad.md) | 122 | `result-track:af002288081f86c6f47c46adb989ceb1f2f601fbb1fadbae276a85aa410a1351` |
| 23 | `theorem` | [range_extend](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/range-extend--9cf0314881e6a50cf7705b1f.md) | 130 | `result-track:9cf0314881e6a50cf7705b1f7ea27c9b9c1d78e1fecece3f084b86514e38af1a` |
| 24 | `def` | [codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/codrestrict--3e0603476ce8db571f715edd.md) | 138 | `declaration-track:3e0603476ce8db571f715edd394d280cd5342cd1b77bb9b59e0b2ce92d234fd9` |
| 25 | `theorem` | [val_codRestrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/val-codrestrict-apply--75cacddc96781d2d5d9f820e.md) | 141 | `result-track:75cacddc96781d2d5d9f820ee9a94bed902bd82a5c46de6482ea57a327872ea9` |
| 26 | `theorem` | [restrict_comp_codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-comp-codrestrict--e18c94e991a8cba69b5cfc9a.md) | 146 | `result-track:e18c94e991a8cba69b5cfc9a3c7f97949663b4aa116a900aa7af6378eb8e9c64` |
| 27 | `theorem` | [injective_codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/injective-codrestrict--8327dc44b99881bf21b5ad0c.md) | 151 | `result-track:8327dc44b99881bf21b5ad0c1589e16b03ec543b1bca48900a8c7e5ba49972d8` |
| 28 | `theorem` | [restrict_eq_restrict_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrict-eq-restrict-iff--3e968ed6b97df63745d50229.md) | 160 | `result-track:3e968ed6b97df63745d50229c90f47ca5d1ebe936983d6722aa56f5320940f7f` |
| 29 | `theorem` | [MapsTo.restrict_commutes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-restrict-commutes--8e4211035e7c6584292105eb.md) | 170 | `result-track:8e4211035e7c6584292105ebbd58b5b99482dcc6638c8cd30c1087eb90d63d8b` |
| 30 | `theorem` | [MapsTo.val_restrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-val-restrict-apply--1778fc6db6e4d0c7db2c126a.md) | 175 | `result-track:1778fc6db6e4d0c7db2c126af2ae152e73850e87e3dcaa8a4b143224f9cc4c5a` |
| 31 | `theorem` | [MapsTo.coe_iterate_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-coe-iterate-restrict--ffeb88bef2e42aaf4f2c05da.md) | 178 | `result-track:ffeb88bef2e42aaf4f2c05da481b432986054b0eb2c66a0bdfb4829754a0ad88` |
| 32 | `theorem` | [codRestrict_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/codrestrict-restrict--1840fff53e827858257516ea.md) | 186 | `result-track:1840fff53e827858257516ea4c3ad4527a61188c9699fc30cbb39079b5cf9dec` |
| 33 | `theorem` | [MapsTo.restrict_eq_codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-restrict-eq-codrestrict--26a95334b0bfd1498baf0800.md) | 191 | `result-track:26a95334b0bfd1498baf080021048b1987b1f7b8afc0773876547e6f05505e9b` |
| 34 | `theorem` | [MapsTo.coe_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-coe-restrict--d24268d34d9d6711d089d0c0.md) | 195 | `result-track:d24268d34d9d6711d089d0c0f6f172fd954bde5989fae1f997bcb1f295f8e456` |
| 35 | `theorem` | [MapsTo.range_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-range-restrict--6a4296016d6c0f5f1f39bfbd.md) | 199 | `result-track:6a4296016d6c0f5f1f39bfbd53437bc0d13d2fda19fdb031b12b5a68b525b393` |
| 36 | `theorem` | [mapsTo_iff_exists_map_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-iff-exists-map-subtype--1b59cc6418a1379d39265f6b.md) | 203 | `result-track:1b59cc6418a1379d39265f6b857708af95cb1de0a7f4a990ec2cf5d5d79b918a` |
| 37 | `theorem` | [surjective_mapsTo_image_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/surjective-mapsto-image-restrict--2b59b2ace0b52e418277820a.md) | 208 | `result-track:2b59b2ace0b52e418277820aff408fc3375540c839df4af60e1bc06bf7c9885f` |
| 38 | `theorem` | [image_restrictPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/image-restrictpreimage--611f41953c6221ad7034479c.md) | 220 | `result-track:611f41953c6221ad7034479c932212166a726853b1cb64ecf727d9a8cc6e24d5` |
| 39 | `theorem` | [range_restrictPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/range-restrictpreimage--7557a48cd0bf78ae313de60c.md) | 227 | `result-track:7557a48cd0bf78ae313de60c9d37495acf48a61f90dccdc4561071221d646006` |
| 40 | `theorem` | [restrictPreimage_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrictpreimage-mk--c4e3b3961f679d6a473d3c51.md) | 231 | `result-track:c4e3b3961f679d6a473d3c511910b4683b722fb12076e63c30f1661fee61ca5d` |
| 41 | `theorem` | [image_val_preimage_restrictPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/image-val-preimage-restrictpreimage--0c602f1b94196a0e138cddb1.md) | 233 | `result-track:0c602f1b94196a0e138cddb1975c38b355c3f81fe10834bfdf93d9a2bc27942f` |
| 42 | `theorem` | [preimage_restrictPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/preimage-restrictpreimage--9a6c6e09362ccd36641bf853.md) | 238 | `result-track:9a6c6e09362ccd36641bf853a0ca523c5abe205480542989e43c915d5f3818c8` |
| 43 | `lemma` | [restrictPreimage_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrictpreimage-injective--e5ef1a21114f6ab04e55852a.md) | 243 | `result-track:e5ef1a21114f6ab04e55852a40268a82cd677e154cbad6f451d6369f9699c66b` |
| 44 | `lemma` | [restrictPreimage_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrictpreimage-surjective--0053fdaa25fadbccdd145552.md) | 246 | `result-track:0053fdaa25fadbccdd14555258ba6ae9bdd808b65486065e1640faae7fae1b7b` |
| 45 | `lemma` | [restrictPreimage_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/restrictpreimage-bijective--e33896c7abb6dc290aeb53fe.md) | 249 | `result-track:e33896c7abb6dc290aeb53fe764a2ee8ad33a8fdc26976848b453d1895d989da` |
| 46 | `theorem` | [injOn_iff_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/injon-iff-injective--645be14e2bdf288588519a9b.md) | 261 | `result-track:645be14e2bdf288588519a9bb03fd8573793435eaa1a99dc66b15a416136a5d1` |
| 47 | `theorem` | [MapsTo.restrict_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-restrict-inj--bec589ee163512d3174464e8.md) | 267 | `result-track:bec589ee163512d3174464e84c8574b859dd7a06d897443247101acc76bd65be` |
| 48 | `theorem` | [surjOn_iff_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/surjon-iff-surjective--1c29022eb1f611a232ee57dd.md) | 275 | `result-track:1c29022eb1f611a232ee57ddff1988b851532777e9e4eb2f69e21507e3b828f8` |
| 49 | `theorem` | [MapsTo.restrict_surjective_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variantd7532e91be060e7cd05841020c5d63d81f0c25ee4b72948b80fcfa949adbdb52.lean/declarations/mapsto-restrict-surjective-iff--8a4d9adf902e7905d2ee14e1.md) | 284 | `result-track:8a4d9adf902e7905d2ee14e166c991c756d58276c1672db5edff41bfadb69c52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
