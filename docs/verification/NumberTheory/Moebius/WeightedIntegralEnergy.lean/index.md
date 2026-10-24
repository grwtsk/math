# Verification target: GRWTSK.NumberTheory.Moebius.WeightedIntegralEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8bd8170dea9989588a3d99911fc7af58652d4c2",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8bd8170dea9989588a3d99911fc7af58652d4c2`.

Source path: `GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/WeightedIntegralEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.WeightedSummatoryIntegral`](../../../../mathematics/NumberTheory/Moebius/WeightedSummatoryIntegral.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inventory](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/inventory--8d0e360d9e8caf1836f6f1de.md) | 28 | `declaration-track:8d0e360d9e8caf1836f6f1de5211a3ffe22ee9f8e103a478aeb6447f28c39858` |
| 2 | `def` | [responseKernel](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/responsekernel--db66e1af12ba0a27e4b2e778.md) | 31 | `declaration-track:db66e1af12ba0a27e4b2e77884b8e09002e225f5c754f146afd524418929376d` |
| 3 | `def` | [response](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/response--533ebdad10def574da8124b5.md) | 35 | `declaration-track:533ebdad10def574da8124b572a8ae3e249ee500e1d4e49dc1901387a025f8e3` |
| 4 | `def` | [gram](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/gram--9efbfebb14ce7c40ae85c471.md) | 39 | `declaration-track:9efbfebb14ce7c40ae85c47184c874883bb14313ace63db02024f2288bd0c79e` |
| 5 | `def` | [energy](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/energy--a57466f43c649d0895ca16a3.md) | 43 | `declaration-track:a57466f43c649d0895ca16a3f6af365bea8b2fd0956dea7338494a37a35ad82b` |
| 6 | `def` | [diagonal](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/diagonal--00601d2c395a7bf173e35d2e.md) | 46 | `declaration-track:00601d2c395a7bf173e35d2e160234324a864e42fed60a30ab52ac18a4a9c08b` |
| 7 | `def` | [cross](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/cross--595dc8e3b6d0c86f67373fef.md) | 50 | `declaration-track:595dc8e3b6d0c86f67373feff59138fb02a3c625973bfe1ed1a0dc74957b66c1` |
| 8 | `def` | [fullGram](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/fullgram--25ad86273eb6212b97f5d766.md) | 55 | `declaration-track:25ad86273eb6212b97f5d7661c3530c652b6e17012ec953624275a2aec0a982c` |
| 9 | `theorem` | [inventory_mono](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/inventory-mono--d6c855b2e024d765795557ce.md) | 59 | `result-track:d6c855b2e024d765795557ce15c8b0b33b3582562182695d383860a8b91b184d` |
| 10 | `theorem` | [admitted_iff_arrived](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/admitted-iff-arrived--8aded3d4f5b1c11af183f67d.md) | 66 | `result-track:8aded3d4f5b1c11af183f67dc61692bc561834089b6b844e87d5274a625371ef` |
| 11 | `theorem` | [response_of_arrived](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/response-of-arrived--8277ada5033641fab51d5f5d.md) | 76 | `result-track:8277ada5033641fab51d5f5d7b9a6eeb11dde0e394654a010a24e62061c439b9` |
| 12 | `theorem` | [response_of_not_arrived](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/response-of-not-arrived--d0b550e99fa8b7a2c28ad0a9.md) | 80 | `result-track:d0b550e99fa8b7a2c28ad0a9fda8cf7cbd2944631e260afc422c23ce00e63fce` |
| 13 | `theorem` | [response_touching_atom_zero](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/response-touching-atom-zero--dc4abcf8e3b1940de5219f58.md) | 85 | `result-track:dc4abcf8e3b1940de5219f58a799c4fe1e684c57c33d4e755b01ec4d2107fb20` |
| 14 | `theorem` | [actual_waveform_on_inventory](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/actual-waveform-on-inventory--665d4595f8405034c48cf942.md) | 97 | `result-track:665d4595f8405034c48cf942183585e533c6327f459c88acdd05bf974c3ca45e` |
| 15 | `theorem` | [response_window_bound](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/response-window-bound--452210986e4a9ee4b7929edb.md) | 123 | `result-track:452210986e4a9ee4b7929edb16630ff69fb96251389918ac72a4cfbea4fb532c` |
| 16 | `def` | [finiteWindowBound](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/finitewindowbound--9b03b0ef5f314db79c7362f7.md) | 145 | `declaration-track:9b03b0ef5f314db79c7362f701d930dbc79e2747eaaafe563fa35156992040af` |
| 17 | `theorem` | [pickup_window_bound](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/pickup-window-bound--dd9fbeaec01d2ec86b59f816.md) | 150 | `result-track:dd9fbeaec01d2ec86b59f8161da65b0345e35c4a96a0f26adcf196d69d5f39ea` |
| 18 | `theorem` | [pickup_image_bdd_above](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/pickup-image-bdd-above--eb820a1e6f65ecc443b1a02a.md) | 164 | `result-track:eb820a1e6f65ecc443b1a02a3668b575f49e3b0aca3e3ffc9ec8c9565ffca0a3` |
| 19 | `theorem` | [pickup_image_bdd_below](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/pickup-image-bdd-below--98df88cf5bae40f200db67f6.md) | 169 | `result-track:98df88cf5bae40f200db67f67c04215840d8e999a04b6a1052c9e38e5c50a41b` |
| 20 | `theorem` | [response_kernel_continuous](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/response-kernel-continuous--549f4058f5817eab3efd8736.md) | 174 | `result-track:549f4058f5817eab3efd87368b923a375bee580fea349609910c26c493f0be72` |
| 21 | `theorem` | [response_product_integrable](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/response-product-integrable--f7d17a99c6027f233c8b89fa.md) | 181 | `result-track:f7d17a99c6027f233c8b89fac8363162eb47c1594b65412daf0e7b7ccfbc7eb8` |
| 22 | `theorem` | [weighted_product_integrable](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/weighted-product-integrable--8bd5d00411d5f1ac76c609bb.md) | 202 | `result-track:8bd5d00411d5f1ac76c609bba6d7041283d7c4572039f46bf7af6165d39a9102` |
| 23 | `theorem` | [row_integrable](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/row-integrable--7c6780fefaf27635046d37db.md) | 207 | `result-track:7c6780fefaf27635046d37db3279fae3732748d324f1439b3e478c3e88a0b27c` |
| 24 | `theorem` | [signed_sum_square](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/signed-sum-square--84d0bc1e25adc068fc5e3423.md) | 213 | `result-track:84d0bc1e25adc068fc5e342330cedc6a59651ab8a28e71482428f89000671d8f` |
| 25 | `theorem` | [pickup_square_integrable](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/pickup-square-integrable--152689ba0cd347c0421b4ced.md) | 226 | `result-track:152689ba0cd347c0421b4cedc81dcceb247f5f872c08b8f0e162001348f71f79` |
| 26 | `theorem` | [energy_eq_full_gram](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/energy-eq-full-gram--10bc88cd4e287ec0388fd633.md) | 240 | `result-track:10bc88cd4e287ec0388fd63331c0557ffe17ad4458ec37b6af56a4bce7577430` |
| 27 | `theorem` | [full_gram_eq_diagonal_add_cross](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/full-gram-eq-diagonal-add-cross--675c891d3cde51fbabd10984.md) | 267 | `result-track:675c891d3cde51fbabd10984bf1d4ca78f2a5521579d5527893101f131e4bf4f` |
| 28 | `theorem` | [energy_eq_diagonal_add_cross](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/energy-eq-diagonal-add-cross--5ea0c86b132546f462ad12ef.md) | 285 | `result-track:5ea0c86b132546f462ad12ef19325fb5a62db9fca9c8edc67397f959eb4b0ffa` |
| 29 | `def` | [CrossPoly](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/crosspoly--fcebe17cd6eab8f6703c6c84.md) | 289 | `declaration-track:fcebe17cd6eab8f6703c6c84cecdda8b374268ef628d1150ff124dd43bbf7ab2` |
| 30 | `def` | [AmplitudeReturnPoly](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/amplitudereturnpoly--a3f9fb87e1aaf211887b4d47.md) | 294 | `declaration-track:a3f9fb87e1aaf211887b4d477a89563b86d7011d8e39de0b2c7dcae568d084c8` |
| 31 | `def` | [PickupEnergyBudgets](../../../../mathematics/NumberTheory/Moebius/WeightedIntegralEnergy.lean/declarations/pickupenergybudgets--7db8b27ea3dce10f769a1c15.md) | 300 | `declaration-track:7db8b27ea3dce10f769a1c152b625ad1f5fc5b0b302846828ea4561bad5cea62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
