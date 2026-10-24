# Verification target: GRWTSK.NumberTheory.Moebius.CriticalEndpointDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46e1eead76aacda6818a266dc3399c9fae01743b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46e1eead76aacda6818a266dc3399c9fae01743b`.

Source path: `GRWTSK/NumberTheory/Moebius/CriticalEndpointDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CriticalEndpointDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CriticalIntervalBlockGrowth`](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlockGrowth.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [criticalEndpointDefect](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdefect--fabb614afc3629734546bc28.md) | 30 | `declaration-track:fabb614afc3629734546bc285f2568a479b42303adddd393d80c4edf996efcf3` |
| 2 | `theorem` | [criticalEndpointDefect_eq_half_wholePickup](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdefect-eq-half-wholepickup--b19ef7f13ef582187c469d98.md) | 36 | `result-track:b19ef7f13ef582187c469d986fe9e3b518875e484476938f6e17c5f6f1b645d5` |
| 3 | `theorem` | [prefixFlux_eq_endpointDefect_add_drift](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/prefixflux-eq-endpointdefect-add-drift--eaf7d88ae5da4f5b4176e07a.md) | 44 | `result-track:eaf7d88ae5da4f5b4176e07a3d1ae0128cec215aed215de37d9128a92d5676f1` |
| 4 | `def` | [criticalEndpointDrift](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdrift--94d9f2c2e3f8e7252b965599.md) | 53 | `declaration-track:94d9f2c2e3f8e7252b965599df716603652a465fccf1605e67c6d4ec05d21047` |
| 5 | `def` | [criticalEndpointGap](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointgap--d46326abf629034f0aa474e6.md) | 59 | `declaration-track:d46326abf629034f0aa474e6383d053bfce50252ba63114b0ea1a02da157938d` |
| 6 | `theorem` | [criticalEndpointDrift_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdrift-nonneg--835baf87a7ddcee88def51a3.md) | 63 | `result-track:835baf87a7ddcee88def51a31cd0efc751392e43f3f4337449cd198a212db490` |
| 7 | `theorem` | [endpointCoefficient_drift_le_gap](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/endpointcoefficient-drift-le-gap--dcdeb9e047b37ec0418f20eb.md) | 73 | `result-track:dcdeb9e047b37ec0418f20eb15df88bd4812a3fb404621cf25ec6d03e2d3e18b` |
| 8 | `theorem` | [criticalEndpointDrift_le_gap_sq_mul_drop](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdrift-le-gap-sq-mul-drop--2112cea286116ccf136dc61d.md) | 92 | `result-track:2112cea286116ccf136dc61d8fb2be6c787c20a117303a1190df5e1a216b7cbb` |
| 9 | `theorem` | [criticalEndpointGap_le](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointgap-le--570c685b81c3e3775d0cd4ce.md) | 131 | `result-track:570c685b81c3e3775d0cd4ce2a3a39086e0005d668764e8a3177ebb3bfcfcdba` |
| 10 | `theorem` | [criticalEndpointGap_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointgap-nonneg--4528ca8a792f683a31883997.md) | 173 | `result-track:4528ca8a792f683a3188399773ec6e429d4a305627223c03eaba69398186866b` |
| 11 | `theorem` | [criticalEndpointGap_sq_le](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointgap-sq-le--22576d20997b26b2d44f36f8.md) | 185 | `result-track:22576d20997b26b2d44f36f8472b6d863ecfe8294a51fe40e83f7b5e27c5d03a` |
| 12 | `theorem` | [exponentialLogDrop_one_le_inv_sq](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/exponentiallogdrop-one-le-inv-sq--685a024b0b83fe8a092e4256.md) | 201 | `result-track:685a024b0b83fe8a092e42563999cb6bdc9a1d6b839d436cd95a16792c986b12` |
| 13 | `theorem` | [mertens_drift_error_le_inv_cube](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/mertens-drift-error-le-inv-cube--c712e3273d6e5a2aa27a24d2.md) | 215 | `result-track:c712e3273d6e5a2aa27a24d25b0b80d5aae4df12399f64c225845ed772d2bf18` |
| 14 | `def` | [criticalEndpointDefectEnergy](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdefectenergy--97f350df7c1995ea4ddaff0f.md) | 245 | `declaration-track:97f350df7c1995ea4ddaff0fd796425e3305f494219a1bf9617f752910eda40b` |
| 15 | `theorem` | [exponentialLogDrop_one_eq_inv_mul_succ](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/exponentiallogdrop-one-eq-inv-mul-succ--2253b7cf9146636656fb93da.md) | 249 | `result-track:2253b7cf9146636656fb93da070fcdc54163e4e02fae30b506b09ce3659b26ca` |
| 16 | `def` | [criticalEndpointDefectMajorant](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdefectmajorant--b47d8247f1340b48d537eac9.md) | 262 | `declaration-track:b47d8247f1340b48d537eac93c13d86cf69cac7ecafbb40dde75b50e67d58245` |
| 17 | `theorem` | [criticalEndpointDefectMajorant_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdefectmajorant-nonneg--220f489de7e9c7f858d3bb78.md) | 266 | `result-track:220f489de7e9c7f858d3bb78af0106fa12400e82e243e7e3b4eca1b05ca749fa` |
| 18 | `def` | [CriticalEndpointDefectSummable](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdefectsummable--cb3166b03fd17560f7069846.md) | 283 | `declaration-track:cb3166b03fd17560f70698464d8cf24251e0e794225dd8d3b7e56fafb92236c8` |
| 19 | `theorem` | [summable_mertens_drift_error](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/summable-mertens-drift-error--be6e8f470c798cc9e9e3723a.md) | 288 | `result-track:be6e8f470c798cc9e9e3723ae851e71c4d9acc064b9333ad3ccd51d2f49eda4a` |
| 20 | `theorem` | [summable_endpointDefectMajorant](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/summable-endpointdefectmajorant--e3d2bbfd60676fa93330324a.md) | 317 | `result-track:e3d2bbfd60676fa93330324ad5e015eac6aee4b34a45b150e4c736ff9b9cbc7a` |
| 21 | `theorem` | [criticalIntervalBlock_le_endpointDefect_add_drift](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalintervalblock-le-endpointdefect-add-drift--282980cb6b25f6ec220bd248.md) | 326 | `result-track:282980cb6b25f6ec220bd248ecf10d9b28222aaa7b4d3d8a82a596c295d8ca91` |
| 22 | `theorem` | [criticalEndpointDefectEnergy_le_block_add_drift](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdefectenergy-le-block-add-drift--25c40feef6024ce2c1d2e003.md) | 394 | `result-track:25c40feef6024ce2c1d2e0039d91e01358d2e907b53177151124022fdfa97470` |
| 23 | `theorem` | [criticalIntervalBlock_nonneg_all](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalintervalblock-nonneg-all--4f22e173704828a05ca3cb80.md) | 475 | `result-track:4f22e173704828a05ca3cb801c6ccc8e9803ab80def80de0503680b4fac49446` |
| 24 | `theorem` | [sum_range_succ_criticalIntervalBlock](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/sum-range-succ-criticalintervalblock--089f21ebf4613c3d8cce6b8c.md) | 484 | `result-track:089f21ebf4613c3d8cce6b8ca34520389821169341eff8f1292157b4402b1d7b` |
| 25 | `theorem` | [summable_criticalIntervalBlock_of_uniform](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/summable-criticalintervalblock-of-uniform--d81cadf1485149106e6ed05f.md) | 500 | `result-track:d81cadf1485149106e6ed05f9298b662c12623f01c24e2980110a1956ce6d20e` |
| 26 | `theorem` | [criticalEndpointDefectEnergy_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalendpointdefectenergy-nonneg--9267cfbc7a625d7a4b2987ad.md) | 512 | `result-track:9267cfbc7a625d7a4b2987ad362f9ea26dfca9669e1dcd59cf5c4c615d1ddae3` |
| 27 | `theorem` | [endpointDefectSummable_of_criticalBoundary](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/endpointdefectsummable-of-criticalboundary--bf10d1eb6fb98b47bed3c4b8.md) | 519 | `result-track:bf10d1eb6fb98b47bed3c4b89839a6d4d3e1ab02f8755b834c87ddaf6962215f` |
| 28 | `theorem` | [criticalIntervalBlock_le_endpointDefectMajorant](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalintervalblock-le-endpointdefectmajorant--076f394b5b2682cff5114645.md) | 551 | `result-track:076f394b5b2682cff5114645b62e4c322f1baa2eebf3234529dc80c32c1dfc48` |
| 29 | `theorem` | [criticalBoundary_of_endpointDefectSummable](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalboundary-of-endpointdefectsummable--64a3aea3ccc0deec11aa8718.md) | 566 | `result-track:64a3aea3ccc0deec11aa8718063ba21c7fd8b53f3e412121b78c63a679abd646` |
| 30 | `theorem` | [criticalBoundary_iff_endpointDefectSummable](../../../../mathematics/NumberTheory/Moebius/CriticalEndpointDefect.lean/declarations/criticalboundary-iff-endpointdefectsummable--26e1537fce707d6a68928c97.md) | 587 | `result-track:26e1537fce707d6a68928c97bdf48b36909e90272356bfbee8523b78007971de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
