# Verification target: GRWTSK.Algebra.LinearAlgebra.DFinsupp.Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f2e5435502e6e766f7dd21a03b748287c68c504",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f2e5435502e6e766f7dd21a03b748287c68c504`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.ToDFinsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lmk](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lmk--6cdd1750b05fcb01dc6332b7.md) | 56 | `declaration-track:6cdd1750b05fcb01dc6332b7988fab01969f0872eade797396342320bb37aff5` |
| 2 | `def` | [lsingle](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lsingle--c91c56f706ef47363bd849f1.md) | 63 | `declaration-track:c91c56f706ef47363bd849f15b5bd95c7ad78f11fe9054b184a8c4b50c53ccc1` |
| 3 | `theorem` | [lhom_ext](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lhom-ext--46fe766c37f3e5a3bd6a3c60.md) | 70 | `result-track:46fe766c37f3e5a3bd6a3c60068d2c7c6b6d11712424b19f6c3a32549e74605c` |
| 4 | `theorem` | [lhom_ext'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lhom-ext--4ceb53f3f899b1f78b2d4c99.md) | 79 | `result-track:4ceb53f3f899b1f78b2d4c995a693ac3aee143e1c2f08ec9d0d14d78ccccccc5` |
| 5 | `def` | [lapply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lapply--f4d2788ebc4202c7a4f6fd63.md) | 85 | `declaration-track:f4d2788ebc4202c7a4f6fd6323fd6de431179b564054e185effb02e47b38288c` |
| 6 | `theorem` | [lmk_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lmk-apply--f689a18d25c5d06473120e53.md) | 92 | `result-track:f689a18d25c5d06473120e5356d39bb39f652f1c004225fb791b25716f61d14b` |
| 7 | `theorem` | [lsingle_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lsingle-apply--db9d9d6215ba72a55ad32c91.md) | 97 | `result-track:db9d9d6215ba72a55ad32c914e750b1b8e93778e207450e9c46d1483593cc243` |
| 8 | `theorem` | [lapply_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lapply-apply--f52e2836b269aa5381cd713d.md) | 102 | `result-track:f52e2836b269aa5381cd713d8af0a94b9e72e3be5272ca7eecf24d7b18d9c316` |
| 9 | `instance` | [addCommMonoidOfLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/addcommmonoidoflinearmap--c9b5fb51110237edd1312c07.md) | 112 | `declaration-track:c9b5fb51110237edd1312c076259ef1b482d9ce009ebc990735d083721675ee8` |
| 10 | `instance` | [moduleOfLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/moduleoflinearmap--966928b0fca8effbb162d248.md) | 122 | `declaration-track:966928b0fca8effbb162d24828220ee319698da778e5dee7eb4ea22cfa0240b9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/instance--b4879741fd7ad44bc21825e9.md) | 130 | `declaration-track:b4879741fd7ad44bc21825e991f6030f885aa09f7c9f6cf25f48f2314fc94588` |
| 12 | `def` | [lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lsum--984f559541552bde051a7c74.md) | 142 | `declaration-track:984f559541552bde051a7c7436d6d01c1b39d1d84c3404d3b9886e083e44e871` |
| 13 | `theorem` | [lsum_single](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lsum-single--2af0ca0f74e3fc22d835469d.md) | 176 | `result-track:2af0ca0f74e3fc22d835469de5481b738fdcebd90cd27d14008c6ef9f4bd34eb` |
| 14 | `theorem` | [mapRange_smul](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/maprange-smul--f785d6d81bcac4f8863b040e.md) | 197 | `result-track:f785d6d81bcac4f8863b040e2b66262f08eb34186194fc8885f9ced9d4efb049` |
| 15 | `def` | [mapRange.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/maprange-linearmap--fec50e83f96fcbbb500146d4.md) | 206 | `declaration-track:fec50e83f96fcbbb500146d497fda492507bd3cb18d3d0af1bd1d8c02c918ae1` |
| 16 | `theorem` | [mapRange.linearMap_id](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/maprange-linearmap-id--397ece6db11398f19a6e0a9d.md) | 213 | `result-track:397ece6db11398f19a6e0a9dd9155d3f6bf23d982728e65b3f32e447ceec1ea1` |
| 17 | `theorem` | [mapRange.linearMap_comp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/maprange-linearmap-comp--9e08f569a17013db1244d4f0.md) | 219 | `result-track:9e08f569a17013db1244d4f020bccc79d5cd107173a65f4edcc12abcc85546f2` |
| 18 | `theorem` | [sum_mapRange_index.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/sum-maprange-index-linearmap--b3f1da8bcd51c049aa0c2e68.md) | 226 | `result-track:b3f1da8bcd51c049aa0c2e68ad7c9133d191dae559210a273883e3118293f42b` |
| 19 | `def` | [mapRange.linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/maprange-linearequiv--387dbbef33faccd26e05aea4.md) | 237 | `declaration-track:387dbbef33faccd26e05aea4e39f65487bb65f9da6821f815f6dca430b42b0e1` |
| 20 | `theorem` | [mapRange.linearEquiv_refl](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/maprange-linearequiv-refl--633c597e54e18dc6a0ee4584.md) | 245 | `result-track:633c597e54e18dc6a0ee45840ae0a112addf9f543f2ed3f65ddf0a020734a6d1` |
| 21 | `theorem` | [mapRange.linearEquiv_trans](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/maprange-linearequiv-trans--ad8d041e8e798fc7a62d1df0.md) | 250 | `result-track:ad8d041e8e798fc7a62d1df0c6400856426edd13a9c08a9a011fe56b963e3808` |
| 22 | `theorem` | [mapRange.linearEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/maprange-linearequiv-symm--b86de4ea529867ef7d109176.md) | 258 | `result-track:b86de4ea529867ef7d109176e66a1e1b1204666003b05b6eb4ec5ce90d256110` |
| 23 | `def` | [coprodMap](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/coprodmap--60f4eb0dcf5f87ec0d551e06.md) | 273 | `declaration-track:60f4eb0dcf5f87ec0d551e0620017e479f2763acc1357f9a5d017d6625642991` |
| 24 | `theorem` | [coprodMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/coprodmap-apply--f269418ce76ba843d29d9a47.md) | 277 | `result-track:f269418ce76ba843d29d9a471067c756b35adcf8d351ef6d62b70ad9a67a5111` |
| 25 | `theorem` | [coprodMap_apply_single](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/coprodmap-apply-single--aa416d86debc53eb42cbd4c5.md) | 284 | `result-track:aa416d86debc53eb42cbd4c55e76c3faa75a575196ff0010b0e1ff1efbc7dee6` |
| 26 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/basis--83e8b8d8c7e2de139933eefe.md) | 295 | `declaration-track:83e8b8d8c7e2de139933eefe45fafd93c041204eddbe26fe6c2d548ef7b10cd3` |
| 27 | `theorem` | [dfinsupp_sum_mem](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/dfinsupp-sum-mem--96b36dd0ea81acef4e8ae71e.md) | 311 | `result-track:96b36dd0ea81acef4e8ae71ed0a2ef63376c0b19344418bd506555eb3be32254` |
| 28 | `theorem` | [dfinsupp_sumAddHom_mem](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/dfinsupp-sumaddhom-mem--ed20dce3d6e302e9e12c6b23.md) | 317 | `result-track:ed20dce3d6e302e9e12c6b23c8caa21a66c0b0f859805e8b916ec4ee6b92fb86` |
| 29 | `theorem` | [iSup_eq_range_dfinsupp_lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/isup-eq-range-dfinsupp-lsum--3f5ffd8dfd6c49cb85e30baf.md) | 326 | `result-track:3f5ffd8dfd6c49cb85e30bafb045dae92e4cbb0c2ee482dc892339675728ecb3` |
| 30 | `theorem` | [biSup_eq_range_dfinsupp_lsum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/bisup-eq-range-dfinsupp-lsum--d48add22bcfe58f69d3ba049.md) | 341 | `result-track:d48add22bcfe58f69d3ba049759fee1e7de089459f0fdf25bca19db270457843` |
| 31 | `theorem` | [mem_iSup_iff_exists_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/mem-isup-iff-exists-dfinsupp--16531c312a1eb383a35a55b7.md) | 359 | `result-track:16531c312a1eb383a35a55b74512b613740f7d2cc2cf69d37ac40925069902e2` |
| 32 | `theorem` | [mem_iSup_iff_exists_dfinsupp'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/mem-isup-iff-exists-dfinsupp--47c66387eebbb88ee3704040.md) | 366 | `result-track:47c66387eebbb88ee3704040d6e24bf94f974e1695341f7e350ba883614dfc71` |
| 33 | `theorem` | [mem_biSup_iff_exists_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/mem-bisup-iff-exists-dfinsupp--2fce38ba44c98736cecc1dd1.md) | 373 | `result-track:2fce38ba44c98736cecc1dd1503bacccf40290c729dfd04a773e6ab430db6ed9` |
| 34 | `theorem` | [mem_iSup_finset_iff_exists_sum](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/mem-isup-finset-iff-exists-sum--2df90288e2fffeef183da593.md) | 383 | `result-track:2df90288e2fffeef183da593cb6271be1de91f59389e16ce3f9a7cc140ea764f` |
| 35 | `theorem` | [independent_iff_forall_dfinsupp](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-iff-forall-dfinsupp--9ea6b8827aaef00b30d8af77.md) | 435 | `result-track:9ea6b8827aaef00b30d8af778432a4000f0e5ba695b572e06d7bf556f228485c` |
| 36 | `theorem` | [independent_of_dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-of-dfinsupp-lsum-injective--53c224eefc9e9b4cf8ffc9bc.md) | 447 | `result-track:53c224eefc9e9b4cf8ffc9bc644c7173d48b158dcd88c56f1b20e05d0e763d77` |
| 37 | `theorem` | [independent_of_dfinsupp_sumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-of-dfinsupp-sumaddhom-injective--21e9a8504b83cdaf6e58a43c.md) | 462 | `result-track:21e9a8504b83cdaf6e58a43c1e10b105a3d1422f1cce29508cd0fe93114ec9c6` |
| 38 | `theorem` | [lsum_comp_mapRange_toSpanSingleton](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/lsum-comp-maprange-tospansingleton--f2d941bdd640eeaf110dcbfa.md) | 469 | `result-track:f2d941bdd640eeaf110dcbfaca655ebaf68b9a1c49e188abfe9750468bb98d7c` |
| 39 | `theorem` | [independent_of_dfinsupp_sumAddHom_injective'](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-of-dfinsupp-sumaddhom-injective--7ff9c529beba3a948f7fd01b.md) | 488 | `result-track:7ff9c529beba3a948f7fd01b06560a93f3f1c794d9e572d72547a1e5a18886a7` |
| 40 | `theorem` | [Independent.dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-dfinsupp-lsum-injective--6a43a7fa27934134bc4b3456.md) | 501 | `result-track:6a43a7fa27934134bc4b3456574c3240cb6642566d3e873c2807762d58171772` |
| 41 | `theorem` | [Independent.dfinsupp_sumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-dfinsupp-sumaddhom-injective--9a20d5ba547eacba8ebc9863.md) | 522 | `result-track:9a20d5ba547eacba8ebc9863770e66d1536a5d0c83e81b9ac8d9e826f51238c4` |
| 42 | `theorem` | [independent_iff_dfinsupp_lsum_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-iff-dfinsupp-lsum-injective--300f5657bcdd15a003c11cc1.md) | 533 | `result-track:300f5657bcdd15a003c11cc1eb701048b731ba4afbbd02370c83cefdba475d93` |
| 43 | `theorem` | [independent_iff_dfinsupp_sumAddHom_injective](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-iff-dfinsupp-sumaddhom-injective--752a131544eaacdc250fadc4.md) | 540 | `result-track:752a131544eaacdc250fadc47f7e87ee07caade5137589fc504822a48b61e932` |
| 44 | `theorem` | [Independent.linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-linearindependent--86dcd380570019d30d2d15a6.md) | 549 | `result-track:86dcd380570019d30d2d15a6a988dc26f4707a9840067130f9de5df6e959d87d` |
| 45 | `theorem` | [independent_iff_linearIndependent_of_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/DFinsupp/Variant961b37bfcbf8c226cb4f406db2df91cb2b2b15f0df6a1ad15ec615c9b10c0ff0.lean/declarations/independent-iff-linearindependent-of-ne-zero--8d2b6106cff91be2feaab5a5.md) | 569 | `result-track:8d2b6106cff91be2feaab5a5eec3180a6537a021c934d6a70b5a55fee2ade4a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
