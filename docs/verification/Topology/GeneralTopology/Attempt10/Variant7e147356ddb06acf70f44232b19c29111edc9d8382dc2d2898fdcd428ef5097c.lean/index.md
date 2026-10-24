# Verification target: GRWTSK.Topology.GeneralTopology.Attempt10.Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b3c8aee50babf15d25b2af104683dfd3867293b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b3c8aee50babf15d25b2af104683dfd3867293b`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ComplexBoundaryAsymptotic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [errorPolynomial](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/errorpolynomial--08d20465e5e05a829b4773db.md) | 24 | `declaration-track:08d20465e5e05a829b4773db9533f37b5d9b2dd3dd3bf1cb51705bca6e189a53` |
| 2 | `def` | [normalizationRatio](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/normalizationratio--6426e172edb4839ccba26a2b.md) | 28 | `declaration-track:6426e172edb4839ccba26a2ba641dd44da1793915f8398a0f6f553d81fd844f3` |
| 3 | `def` | [positiveEndpoint](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/positiveendpoint--4f1570b88c96b7be4ec1c672.md) | 31 | `declaration-track:4f1570b88c96b7be4ec1c67208898f11bd1d5f5319fbe0ba66b3b41ff4768084` |
| 4 | `def` | [reflectedEndpoint](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/reflectedendpoint--f4cf094fbb808474f84c011d.md) | 35 | `declaration-track:f4cf094fbb808474f84c011d569c75355488f097b12b926d177e779781276598` |
| 5 | `theorem` | [errorPolynomial_nonneg](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/errorpolynomial-nonneg--f854b17939d05430421ca436.md) | 39 | `result-track:f854b17939d05430421ca436b86f7967a07235cba48a5567f4a687d27b92b531` |
| 6 | `theorem` | [normalization_bounds](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/normalization-bounds--6d15b18ecb872dcb8b71b21c.md) | 42 | `result-track:6d15b18ecb872dcb8b71b21c676e7a3200b6580d55908b49dfb34bd624821391` |
| 7 | `theorem` | [normalizationRatio_bounds](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/normalizationratio-bounds--9ad3f8008591e6a12076b5dd.md) | 66 | `result-track:9ad3f8008591e6a12076b5dddea71c6c912392ee85244a774f50a358b2b3efa2` |
| 8 | `theorem` | [normalizationRatio_deficit](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/normalizationratio-deficit--f01456a9a3dd5a91550ad81e.md) | 76 | `result-track:f01456a9a3dd5a91550ad81eaf19e03093323c9a6bfd8f7a498b437b5bf09868` |
| 9 | `theorem` | [source_ratio_exact](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/source-ratio-exact--1b74b711f5fd8f9979273694.md) | 107 | `result-track:1b74b711f5fd8f9979273694514921d5c51af997de06525471c8ffd2ab52f6bb` |
| 10 | `theorem` | [inverse_power_bound](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/inverse-power-bound--eb2d2c9d15ba3c32ffdfb690.md) | 125 | `result-track:eb2d2c9d15ba3c32ffdfb690fd795642dcd9eea6eb1f82d444ed3eded40ee4bb` |
| 11 | `theorem` | [positiveEndpoint_error](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/positiveendpoint-error--11ef4b6f98f70283b6970d77.md) | 141 | `result-track:11ef4b6f98f70283b6970d773b8ca5f6684e0e2d3fa13abb1b0cb5c6da5b68b7` |
| 12 | `theorem` | [reflectedEndpoint_bound](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/reflectedendpoint-bound--16e39a05f4761bca6a965d07.md) | 173 | `result-track:16e39a05f4761bca6a965d07fdc22764058511715e638e0f5b265414f7aed1f3` |
| 13 | `theorem` | [negative_endpoint_rate](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/negative-endpoint-rate--ecaa55e5687569b69d3dd7e3.md) | 212 | `result-track:ecaa55e5687569b69d3dd7e3383146e13e76e7e61727afd29377502e480fd251` |
| 14 | `def` | [rateConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/rateconstant--8b27d4b462d6f7d40785608a.md) | 233 | `declaration-track:8b27d4b462d6f7d40785608a973755b35c42dded414ac5562b33ea4aaa878551` |
| 15 | `theorem` | [rateConstant_nonneg](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/rateconstant-nonneg--a80c5b9b1e41609e1bab991c.md) | 237 | `result-track:a80c5b9b1e41609e1bab991c5b966229f96c9e0d7875b852af2f0f59eb5a9715` |
| 16 | `theorem` | [normalizationRatio_norm_deficit](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/normalizationratio-norm-deficit--f8564119cca08c2cdbc75f86.md) | 243 | `result-track:f8564119cca08c2cdbc75f86983b596786ef2b168782737dd61002ebb19cc5f5` |
| 17 | `theorem` | [uniform_source_ratio_rate](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/uniform-source-ratio-rate--02aefff89ae0865c3d62b7e9.md) | 250 | `result-track:02aefff89ae0865c3d62b7e9e343fb6746fca79df9e3d63721ce4d50783e9ab3` |
| 18 | `theorem` | [uniform_source_amplitude_rate](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/uniform-source-amplitude-rate--60fcba9e503e98684e2ae6cf.md) | 299 | `result-track:60fcba9e503e98684e2ae6cf2cfac6c4d91e1978c8b718a19a49e48d89ca40c8` |
| 19 | `theorem` | [filter_zero_amplitude](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/filter-zero-amplitude--97104b7d3642faaea92d7d90.md) | 314 | `result-track:97104b7d3642faaea92d7d903e494a297bae9930e72280134f7466efc75edb38` |
| 20 | `theorem` | [uniform_source_amplitude_rate_all](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/uniform-source-amplitude-rate-all--525f9e573853a58c517c0174.md) | 325 | `result-track:525f9e573853a58c517c0174ad866a74b7da9ca1a18cbdd1b44f7530d79dcf0b` |
| 21 | `def` | [coefficientBound](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/coefficientbound--79ea7889a57bf239a04c4044.md) | 336 | `declaration-track:79ea7889a57bf239a04c40442ed4614d61119c89e428240ddc24015800610e0b` |
| 22 | `theorem` | [leadingCoefficient_bound](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/leadingcoefficient-bound--eeab464b6fcb0ffb9c6cf37e.md) | 339 | `result-track:eeab464b6fcb0ffb9c6cf37ef7434594aee0a9510e048057082751196a2e9d85` |
| 23 | `theorem` | [compact_source_amplitude_rate](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/compact-source-amplitude-rate--00b90f5d4f4522a22538d4d7.md) | 355 | `result-track:00b90f5d4f4522a22538d4d7c06d947f71caf5aaf8b21a617d80c8888cb5680c` |
| 24 | `theorem` | [uniform_source_square_rate](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/uniform-source-square-rate--41d66559ce6baca7e613f614.md) | 368 | `result-track:41d66559ce6baca7e613f614d6c87787f0ea7435758205ab1f384070ffde4a34` |
| 25 | `theorem` | [uniform_source_square_rate_all](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/uniform-source-square-rate-all--e17836471bcb34b6bc2540f2.md) | 398 | `result-track:e17836471bcb34b6bc2540f2d7b624aa7dd348655914d72f17e0fd56d24e61d7` |
| 26 | `theorem` | [boundary_transform_rate](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/boundary-transform-rate--06516f13d988bcdd665bafd5.md) | 408 | `result-track:06516f13d988bcdd665bafd577c22d6bf2abae9c5248fc650d5653d328bfbc20` |
| 27 | `theorem` | [actual_complex_amplitude_rate](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/actual-complex-amplitude-rate--9e1ef36fc2920871f51418c5.md) | 426 | `result-track:9e1ef36fc2920871f51418c52b3b3b9288c7dab1cffc5342f40bcfbc68476f62` |
| 28 | `theorem` | [compact_boundary_transform_rate](../../../../../mathematics/Topology/GeneralTopology/Attempt10/Variant7e147356ddb06acf70f44232b19c29111edc9d8382dc2d2898fdcd428ef5097c.lean/declarations/compact-boundary-transform-rate--27b57a5d963761dc3cde90e2.md) | 434 | `result-track:27b57a5d963761dc3cde90e2cf29b2dc82275916b86d2ec3b2c7a70fba9651d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
