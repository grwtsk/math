# Verification target: GRWTSK.Topology.GeneralTopology.LeftRightNhds.Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bb2599064b24260bbcb9b8119087d7c943c6ebc",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bb2599064b24260bbcb9b8119087d7c943c6ebc`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Pointwise.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.CompleteLattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Group` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TFAE_mem_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/tfae-mem-nhdsgt--6a2b5a27d6b6b8541a2c8d6f.md) | 41 | `result-track:6a2b5a27d6b6b8541a2c8d6fefb24a7b498d18cd99edccc0f84e32e23adb2679` |
| 2 | `theorem` | [mem_nhdsGT_iff_exists_mem_Ioc_Ioo_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsgt-iff-exists-mem-ioc-ioo-subset--979bef5bbc763d021d337069.md) | 64 | `result-track:979bef5bbc763d021d337069e703a9c8fb118f0ab22d8fd0dcb9a85194904c71` |
| 3 | `theorem` | [mem_nhdsGT_iff_exists_Ioo_subset'](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsgt-iff-exists-ioo-subset--783ab38ec74862ef6f305c30.md) | 73 | `result-track:783ab38ec74862ef6f305c30bcbbdec1072a95ee49e476102c5ff88f28c02c7e` |
| 4 | `theorem` | [nhdsGT_basis_of_exists_gt](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdsgt-basis-of-exists-gt--ed22ccefb77ca1df2da9905b.md) | 80 | `result-track:ed22ccefb77ca1df2da9905b8eef89a7ddfa3f84f07eed4766fa8df386ab20d8` |
| 5 | `lemma` | [nhdsGT_basis](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdsgt-basis--ce8b8c2bc0904a8dce4a3479.md) | 87 | `result-track:ce8b8c2bc0904a8dce4a3479120e8b199708cc26efb930694cd2604eca1dcab4` |
| 6 | `theorem` | [nhdsGT_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdsgt-eq-bot-iff--d3f668bdd54ccd7c49cf3e96.md) | 93 | `result-track:d3f668bdd54ccd7c49cf3e9630bcfd7b42981d987cb2ca650bd59c4ceace462c` |
| 7 | `theorem` | [mem_nhdsGT_iff_exists_Ioo_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsgt-iff-exists-ioo-subset--a404f45e25e657a606202a37.md) | 105 | `result-track:a404f45e25e657a606202a37eca4246cfc0978da3851b66786917527ac671113` |
| 8 | `theorem` | [countable_setOf_isolated_right](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/countable-setof-isolated-right--3b0cfd419cf44d6db5b4ce48.md) | 115 | `result-track:3b0cfd419cf44d6db5b4ce487bcb886aa48fce489124a43f2cb90ad638e2c551` |
| 9 | `theorem` | [countable_setOf_isolated_left](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/countable-setof-isolated-left--e2806f48360167b7812e47d7.md) | 122 | `result-track:e2806f48360167b7812e47d79a40a14b49277ac4791ff97c078bbcc7b85e4e31` |
| 10 | `theorem` | [mem_nhdsGT_iff_exists_Ioc_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsgt-iff-exists-ioc-subset--ed4900a105fee444ece3a7de.md) | 128 | `result-track:ed4900a105fee444ece3a7dee42a83799874a09319c814387ea291ae1fc4b8cc` |
| 11 | `theorem` | [TFAE_mem_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/tfae-mem-nhdslt--440ff876a3ddb2b0d0963219.md) | 149 | `result-track:440ff876a3ddb2b0d09632196c8ff41574e67868ea2284b79ee6597379282d46` |
| 12 | `theorem` | [mem_nhdsLT_iff_exists_mem_Ico_Ioo_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdslt-iff-exists-mem-ico-ioo-subset--603a5154dfd49ff9b44f7661.md) | 160 | `result-track:603a5154dfd49ff9b44f7661aed37f2b5c5b8196c68dfe27b819e5011c2ebb5e` |
| 13 | `theorem` | [mem_nhdsLT_iff_exists_Ioo_subset'](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdslt-iff-exists-ioo-subset--f1e6122ed6afd0c1f6d556c2.md) | 169 | `result-track:f1e6122ed6afd0c1f6d556c2545e4c38b0a2828e5eefbb0259bf6dd01cdb442a` |
| 14 | `theorem` | [mem_nhdsLT_iff_exists_Ioo_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdslt-iff-exists-ioo-subset--945dda92c4279778c7d61bdd.md) | 178 | `result-track:945dda92c4279778c7d61bdd1a952cb576121dd81d6ef7b9953e8c6656d3840f` |
| 15 | `theorem` | [mem_nhdsLT_iff_exists_Ico_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdslt-iff-exists-ico-subset--fc2e980111316471dec9c550.md) | 188 | `result-track:fc2e980111316471dec9c550f1b0b90bbf7a3df6eb8715ed815df30e9d1c3fc1` |
| 16 | `theorem` | [nhdsLT_basis_of_exists_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdslt-basis-of-exists-lt--e5123419da73be0d2278ddfe.md) | 196 | `result-track:e5123419da73be0d2278ddfe9ffe254dde745ee7b4d96a9adc203a77b33d7fb4` |
| 17 | `theorem` | [nhdsLT_basis](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdslt-basis--3492dd750a3390e1374adeaa.md) | 203 | `result-track:3492dd750a3390e1374adeaa2648c385f2f2b8a79209ef9bed730e7c1a7e311b` |
| 18 | `theorem` | [nhdsLT_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdslt-eq-bot-iff--1b8be5ff62a02a9bf6190820.md) | 209 | `result-track:1b8be5ff62a02a9bf61908208831d20b72d7cf92620e1f8c838c94a68771d6eb` |
| 19 | `theorem` | [TFAE_mem_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/tfae-mem-nhdsge--4a73b8091a1f520d073770f4.md) | 226 | `result-track:4a73b8091a1f520d073770f41de7084c88cf651f18d990148a4c2f38212f4897` |
| 20 | `theorem` | [mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsge-iff-exists-mem-ioc-ico-subset--bec6618f27ad32c8a560de73.md) | 246 | `result-track:bec6618f27ad32c8a560de7316c60860416986b603480dd912634298d70101f4` |
| 21 | `theorem` | [mem_nhdsGE_iff_exists_Ico_subset'](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsge-iff-exists-ico-subset--57c34c1358ce53517d4fb626.md) | 255 | `result-track:57c34c1358ce53517d4fb6266a6665f3f0558a88e063cbfc1f12f6d24453292d` |
| 22 | `theorem` | [mem_nhdsGE_iff_exists_Ico_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsge-iff-exists-ico-subset--c904788464d274888b61d1af.md) | 264 | `result-track:c904788464d274888b61d1afbec4eed1b4e65fcf82ff4a175813b7b8cad71971` |
| 23 | `theorem` | [nhdsGE_basis_Ico](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdsge-basis-ico--56a38ce9031897ffe910963c.md) | 272 | `result-track:56a38ce9031897ffe910963cf178d6c559ba0d163624cb6c9dd6e859808ba853` |
| 24 | `theorem` | [nhdsGE_basis_Icc](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdsge-basis-icc--9e05a1be4af5d2cb6732a75f.md) | 279 | `result-track:9e05a1be4af5d2cb6732a75ff10b8f016d0000a0c09ea3909948883b27082421` |
| 25 | `theorem` | [mem_nhdsGE_iff_exists_Icc_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsge-iff-exists-icc-subset--4e4a46b3272372623b3e51b6.md) | 290 | `result-track:4e4a46b3272372623b3e51b650b9ff0c60b0e1cf8154bafbe9bff084ce04a8f7` |
| 26 | `theorem` | [TFAE_mem_nhdsLE](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/tfae-mem-nhdsle--88f7d9bd31df3b89afe1e1c8.md) | 305 | `result-track:88f7d9bd31df3b89afe1e1c8f4d95954df61d05052eee307932322e05faf3b0f` |
| 27 | `theorem` | [mem_nhdsLE_iff_exists_mem_Ico_Ioc_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsle-iff-exists-mem-ico-ioc-subset--1295151b490a0555611cf1b5.md) | 316 | `result-track:1295151b490a0555611cf1b5ec4eeadcdd3d53bb702e47546af124fb157f9fcb` |
| 28 | `theorem` | [mem_nhdsLE_iff_exists_Ioc_subset'](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsle-iff-exists-ioc-subset--266974639366133f3249c314.md) | 325 | `result-track:266974639366133f3249c314e732393dbcb4050f63f5d59f589a8af4b3985c34` |
| 29 | `theorem` | [mem_nhdsLE_iff_exists_Ioc_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsle-iff-exists-ioc-subset--c857837d6b8fbfe782d02aae.md) | 334 | `result-track:c857837d6b8fbfe782d02aaedbff7002bc797da6bf51ae4c3943359ffb6e630b` |
| 30 | `theorem` | [mem_nhdsLE_iff_exists_Icc_subset](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsle-iff-exists-icc-subset--2ab6f87d565a266deb593bd8.md) | 344 | `result-track:2ab6f87d565a266deb593bd88d58b8ad09d68f7919489f61e7c1431988b7a98c` |
| 31 | `theorem` | [nhdsLE_basis_Icc](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhdsle-basis-icc--56e5750d0c02c417b008c089.md) | 355 | `result-track:56e5750d0c02c417b008c089d5bcd7d366a19e6191d944cfb8cf523ad039f57d` |
| 32 | `theorem` | [nhds_eq_iInf_mabs_div](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhds-eq-iinf-mabs-div--ecb9337f2c609462db5462c8.md) | 373 | `result-track:ecb9337f2c609462db5462c852f84e1274c8fbdf8f8bc3db120acb352d846381` |
| 33 | `theorem` | [orderTopology_of_nhds_mabs](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/ordertopology-of-nhds-mabs--7e484ee13fee1fba53fc308b.md) | 380 | `result-track:7e484ee13fee1fba53fc308b4cec87e86489e0e96dfe1933c7e3bc3bfff290d1` |
| 34 | `theorem` | [LinearOrderedCommGroup.tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/linearorderedcommgroup-tendsto-nhds--b2066a875117300ce10ead11.md) | 389 | `result-track:b2066a875117300ce10ead11a68daa901d31dd786c36b9450ed3fe39be323723` |
| 35 | `theorem` | [eventually_mabs_div_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/eventually-mabs-div-lt--60d98ebddfcfe7e32c52263d.md) | 394 | `result-track:60d98ebddfcfe7e32c52263d10f217c21d3277721363901fe44ecc11f45b985f` |
| 36 | `theorem` | [Filter.Tendsto.mul_atTop'](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/filter-tendsto-mul-attop--f3b0c84a3e7c4c212ca61380.md) | 402 | `result-track:f3b0c84a3e7c4c212ca613806fd87b34a678cc446c91eb1e0a1a68c7b4c1117a` |
| 37 | `theorem` | [Filter.Tendsto.mul_atBot'](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/filter-tendsto-mul-atbot--d40bc9e0978dcd2842163db3.md) | 413 | `result-track:d40bc9e0978dcd2842163db37c48b0a1a96ad26bfb27a99d8b00fd55a981989b` |
| 38 | `theorem` | [Filter.Tendsto.atTop_mul'](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/filter-tendsto-attop-mul--7387bf199f527e3e22866233.md) | 421 | `result-track:7387bf199f527e3e2286623359a7faddee5ba4258b6ee1f4ffefe76ec23def36` |
| 39 | `theorem` | [Filter.Tendsto.atBot_mul'](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/filter-tendsto-atbot-mul--aadbd376c23bfe6071bbdc7c.md) | 430 | `result-track:aadbd376c23bfe6071bbdc7ce1ade2487d3c81b818a8b06643cc01a9a0735b27` |
| 40 | `theorem` | [nhds_basis_mabs_div_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhds-basis-mabs-div-lt--c361885627816b8103c808e0.md) | 436 | `result-track:c361885627816b8103c808e0dfabf5a3046b8bf87b136edb95174853dfd58546` |
| 41 | `theorem` | [nhds_basis_Ioo_one_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhds-basis-ioo-one-lt--add2adbcdee3ae342e43051b.md) | 444 | `result-track:add2adbcdee3ae342e43051b71a4019d75210aa67798d940d29818f7e1b70270` |
| 42 | `theorem` | [nhds_basis_Icc_one_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhds-basis-icc-one-lt--37166effb5841bcfeecb4ec8.md) | 450 | `result-track:37166effb5841bcfeecb4ec83b48242a615483e48f6825a8db30b3d9d038c4b6` |
| 43 | `theorem` | [nhds_basis_one_mabs_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhds-basis-one-mabs-lt--0ef1473e471dc344a01beeaa.md) | 459 | `result-track:0ef1473e471dc344a01beeaaa3c335264b84f72b7d24c639e2c6693db46976b6` |
| 44 | `theorem` | [nhds_basis_Ioo_one_lt_of_one_lt](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/nhds-basis-ioo-one-lt-of-one-lt--e7c4e2fc6731ed6cf91dacfb.md) | 474 | `result-track:e7c4e2fc6731ed6cf91dacfb83b731dbe99407ed948ac781802145c96de56cd2` |
| 45 | `lemma` | [mem_nhdsGE](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsge--c63cd1e510541d59b5cd4f2a.md) | 489 | `result-track:c63cd1e510541d59b5cd4f2a955f82fcd3f31a31ce1394a2ee429e6b594fd65e` |
| 46 | `lemma` | [mem_nhdsGT](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsgt--eff1b54421af68269f84fe26.md) | 496 | `result-track:eff1b54421af68269f84fe26b34858e8745d0e4744017af2b9d9915f40929786` |
| 47 | `lemma` | [mem_nhdsLE](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdsle--994fb33d432cf15272b70a15.md) | 507 | `result-track:994fb33d432cf15272b70a15e08330884929e3f6a1eec65812711d9146b5bf70` |
| 48 | `lemma` | [mem_nhdsLT](../../../../../mathematics/Topology/GeneralTopology/LeftRightNhds/Varianta19eefcadff7d5eefc3e7992e9e0146aff1261eaa4e5e0ad8a9c568402416360.lean/declarations/mem-nhdslt--19306db2b670a9b81b8cd61f.md) | 514 | `result-track:19306db2b670a9b81b8cd61f392619b3cc33dc2b9a002c90b6e94551fc24d5a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
