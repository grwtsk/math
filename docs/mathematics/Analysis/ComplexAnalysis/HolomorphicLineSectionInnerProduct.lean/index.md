# GRWTSK.Analysis.Complex.HolomorphicLineSectionInnerProduct

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicLineSectionInnerProduct.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af29b543f7985cd7948ee77c96a4b814819f7c3f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineSectionInnerProduct.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [quotientAddCommGroup](declarations/quotientaddcommgroup--44eb17843086f2e5e084bcf3.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [quotientModule](declarations/quotientmodule--6dfdd560b6f5d59ca6e932bf.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [quotientInnerCore](declarations/quotientinnercore--1c0a6436ffadc201dac46dfe.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [quotientNormedAddCommGroup](declarations/quotientnormedaddcommgroup--cd7e605c3d295fb2b13958e5.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [quotientInnerProductSpace](declarations/quotientinnerproductspace--d6c6969ec5a0243e8198291e.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [zero_eq_operation](declarations/zero-eq-operation--466ce06f958632599210de1a.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [add_eq_operation](declarations/add-eq-operation--7b31010581e61f8470607f85.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [neg_eq_operation](declarations/neg-eq-operation--f1e26032125998e8ad355e61.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [smul_eq_operation](declarations/smul-eq-operation--602d929b12f0a9802cfd00b5.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sub_eq_operations](declarations/sub-eq-operations--bac569d737c6d011f444bae1.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [inner_eq_pairing](declarations/inner-eq-pairing--1cd154dcc9edbe7e4d83d240.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [inner_classOf](declarations/inner-classof--1c570b2a5e494ee0f81c738d.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [norm_eq_sqrt_energy](declarations/norm-eq-sqrt-energy--08c4246b8a3f0094f0dc2a14.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [norm_sq_eq_energy](declarations/norm-sq-eq-energy--38fffa5e77618136510688d4.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [ofReal_norm_sq_eq_energy](declarations/ofreal-norm-sq-eq-energy--4234061421d918f8fd177c37.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [norm_eq_zero_iff_class](declarations/norm-eq-zero-iff-class--77cffe8f1bb4dccf59aa0612.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [norm_classOf](declarations/norm-classof--7f55b6b1f8b6d8385a007d6c.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pairing_norm_le](declarations/pairing-norm-le--454feadff56d48e737b12267.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pairing_norm_le_energy](declarations/pairing-norm-le-energy--a7f88a0f31a7e4b1bf37d086.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [norm_add_le_sections](declarations/norm-add-le-sections--26dcc6527fc36ad6965625d3.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [norm_smul_sections](declarations/norm-smul-sections--70a680eecde14e8900b66a18.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [dist_eq_sqrt_energy_sub](declarations/dist-eq-sqrt-energy-sub--617de225c91a07b6e9d3eba2.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [gaugeLinearEquiv](declarations/gaugelinearequiv--fdc6a47172ab209cda53245f.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [gaugeLinearIsometryEquiv](declarations/gaugelinearisometryequiv--ffd23af942a79d7856276914.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [gaugeLinearIsometryEquiv_apply](declarations/gaugelinearisometryequiv-apply--64e46fe9d4db380fe6254a51.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [gaugeLinearIsometryEquiv_symm_apply](declarations/gaugelinearisometryequiv-symm-apply--896067a9cc414fe1cf711596.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [gaugeLinearIsometryEquiv_inner](declarations/gaugelinearisometryequiv-inner--06bcd7e5c1c9debc06c6bbaa.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [gaugeLinearIsometryEquiv_isometry](declarations/gaugelinearisometryequiv-isometry--b447693a7d0ded5bc74e5bf9.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [zeroMeasure_eq_zero](declarations/zeromeasure-eq-zero--ce0926d5fd19b3486ab276f9.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [equal_norm_distinct_classes](declarations/equal-norm-distinct-classes--841f1cb555f36244b331b4bb.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [bundled_imaginary_pairing](declarations/bundled-imaginary-pairing--575562bbe3ff97fd961615e9.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [bundled_reversed_imaginary_pairing](declarations/bundled-reversed-imaginary-pairing--7d703194fafb706005e33a73.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
