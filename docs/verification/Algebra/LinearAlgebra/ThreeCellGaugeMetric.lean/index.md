# Verification target: GRWTSK.Analysis.LinearAlgebra.ThreeCellGaugeMetric

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450657419f5f489b567d1dd63a31bfcc3c56cf41",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450657419f5f489b567d1dd63a31bfcc3c56cf41`.

Source path: `GRWTSK/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/LinearAlgebra/ThreeCellGaugeMetric.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LinearAlgebra.ThreeCellHodgeGauge`](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellHodgeGauge.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reduction](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reduction--8804718b735054ca1587d2bc.md) | 29 | `declaration-track:8804718b735054ca1587d2bc16ef5ba87a63f328f7ba2c8b04179cced7d25736` |
| 2 | `abbrev` | [GaugeQuotient](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/gaugequotient--b79d85ecff1bf154188b6a54.md) | 43 | `declaration-track:b79d85ecff1bf154188b6a54bfa364e06850ed2520f194341c58693bf40b0bee` |
| 3 | `def` | [classOf](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/classof--077dc980770708ec0673ccd0.md) | 45 | `declaration-track:077dc980770708ec0673ccd03055ec595dc7699abe4ce6852ec06583a2dfc793` |
| 4 | `def` | [quotientEquiv](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientequiv--2a9c23690052d585be39bf22.md) | 48 | `declaration-track:2a9c23690052d585be39bf22e48247449d2680127937bd5c44159df39a638987` |
| 5 | `theorem` | [quotientEquiv_classOf](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientequiv-classof--964fb97218dffe4e890ed39a.md) | 51 | `result-track:964fb97218dffe4e890ed39a76f5414385ff6147aeee94e3f9ab64d68bc5af17` |
| 6 | `theorem` | [classOf_eq_iff_reduced](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/classof-eq-iff-reduced--7940e6fb5a01c13fbe20934c.md) | 54 | `result-track:7940e6fb5a01c13fbe20934c194b4129b3fdbee10c9887236da9dc374ec067d3` |
| 7 | `theorem` | [classOf_eq_iff_gauge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/classof-eq-iff-gauge--5ce46b2804799a6e732a043e.md) | 64 | `result-track:5ce46b2804799a6e732a043ec68d018c9be1917d932cc1ac6d3de5ccf9f299d6` |
| 8 | `def` | [minimumRep](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/minimumrep--1c39e9c5ecc67ee3cde59283.md) | 70 | `declaration-track:1c39e9c5ecc67ee3cde59283e478f6939386eb440c02c27ae6148b981baa2e7a` |
| 9 | `theorem` | [reduced_minimumRep](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reduced-minimumrep--177e2941d9eb58da3b35d759.md) | 74 | `result-track:177e2941d9eb58da3b35d759c12155a83a0464e7064713c882c40f7b476ac65e` |
| 10 | `def` | [normalForm](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/normalform--84f63bc86c18f94a0c791a94.md) | 82 | `declaration-track:84f63bc86c18f94a0c791a942a11f7f2fd086d98b5c5eec92fe9da0d13dcacc1` |
| 11 | `theorem` | [reduced_normalForm](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reduced-normalform--5f1100ca5f854b3ed57a407d.md) | 84 | `result-track:5f1100ca5f854b3ed57a407ddeb90aac418f4409e93cb32435c78ef576879892` |
| 12 | `theorem` | [normalForm_idempotent](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/normalform-idempotent--b999d40dc58d7e63f7179d85.md) | 87 | `result-track:b999d40dc58d7e63f7179d852c42f04debe124af53983e4c6bdc949ef99d75d8` |
| 13 | `def` | [gaugeRemainder](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/gaugeremainder--3b31767b88bce04ab95e4bc4.md) | 92 | `declaration-track:3b31767b88bce04ab95e4bc492a41781156927ce2e762b9f8f19069563e1254b` |
| 14 | `theorem` | [gaugeRemainder_mean](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/gaugeremainder-mean--95c99cb8d94dfdc86de1c7bb.md) | 94 | `result-track:95c99cb8d94dfdc86de1c7bba413503df7ec48b01c28c56f26106f2a0a3976f5` |
| 15 | `theorem` | [normal_decomposition](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/normal-decomposition--d8cb95407b3a5a314cbcf511.md) | 99 | `result-track:d8cb95407b3a5a314cbcf511ae35d53d7e7e6861991619b332e72277b1da271e` |
| 16 | `def` | [representative](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/representative--2d6da07d60df67e5e3c18fb5.md) | 107 | `declaration-track:2d6da07d60df67e5e3c18fb5991193816fdf9642bae5f4ad2a21458298b4e0ad` |
| 17 | `theorem` | [classOf_representative](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/classof-representative--350291703256f31088325686.md) | 110 | `result-track:350291703256f31088325686b0df079f05c43ed0b9f6f7c9822462bdcbc1901e` |
| 18 | `theorem` | [representative_classOf](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/representative-classof--1811bfc569237393f16a26f3.md) | 115 | `result-track:1811bfc569237393f16a26f370c409e06da4fa58693ff2513897fd1ef05c5678` |
| 19 | `def` | [quotientRelax](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientrelax--b31a1646454021987b5e0008.md) | 118 | `declaration-track:b31a1646454021987b5e00087f0afd2e53a775d607551774d1967fb2ed1c0c41` |
| 20 | `theorem` | [quotientRelax_classOf_hodge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientrelax-classof-hodge--934a060fbe413703a344127a.md) | 121 | `result-track:934a060fbe413703a344127a2f8631a1acacbe8a2fc113dbd958981c4ec62950` |
| 21 | `theorem` | [quotientRelax_classOf_tree](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientrelax-classof-tree--794013df59cd32d6e93b8598.md) | 126 | `result-track:794013df59cd32d6e93b8598068661b005a49f92f1dfefd1179959fcbe58e534` |
| 22 | `theorem` | [normalForm_hodge](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/normalform-hodge--f588d4ac807d8ddbff9ae4e3.md) | 132 | `result-track:f588d4ac807d8ddbff9ae4e342ebe5c135f927414149112e9badd793b880b419` |
| 23 | `theorem` | [normalForm_tree](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/normalform-tree--0d283b3d11dfe5ecc6e5123e.md) | 138 | `result-track:0d283b3d11dfe5ecc6e5123eca9b1611c9a3781e50c37eb47b265cfbde5f32ec` |
| 24 | `theorem` | [reduced_map](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reduced-map--75c11f5d55e415be2dd43a1d.md) | 145 | `result-track:75c11f5d55e415be2dd43a1d8fde18dc2ebfc95ed9f3d0df9b3e148860a99048` |
| 25 | `theorem` | [normalForm_clear12](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/normalform-clear12--9cb54de2071908c785506dca.md) | 154 | `result-track:9cb54de2071908c785506dca6eb4e71c31108f50b9b447d129ab252259555190` |
| 26 | `theorem` | [normalForm_map](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/normalform-map--ba45422d8069adf1678c0880.md) | 165 | `result-track:ba45422d8069adf1678c0880dc63e8f0f465f407c1b47686d4c8f658829e2254` |
| 27 | `def` | [reducedEnergy](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reducedenergy--98c3298ea1cd15bba099fc8e.md) | 174 | `declaration-track:98c3298ea1cd15bba099fc8e688b1874277bd71ed3a946c4c1a39279a3a46f06` |
| 28 | `def` | [quotientEnergy](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientenergy--b1b785977e9de0380625756f.md) | 177 | `declaration-track:b1b785977e9de0380625756f1c394c739ef36b094b241a9c5c9b561325145e25` |
| 29 | `theorem` | [dot3_self_nonneg](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/dot3-self-nonneg--54aa148fffef9093e813a4db.md) | 180 | `result-track:54aa148fffef9093e813a4db0f0dd24d739a3886f9da7bdc28cab3531156a8a9` |
| 30 | `theorem` | [dot3_self_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/dot3-self-zero-iff--e7ddffca49d16f73dd6e1b7e.md) | 183 | `result-track:e7ddffca49d16f73dd6e1b7e0db25f5c7e62f60bb15e675f5e3fb9375e370711` |
| 31 | `theorem` | [pythagorean](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/pythagorean--f75a1b5e221f90e6e26c7006.md) | 196 | `result-track:f75a1b5e221f90e6e26c700611442fca175b389571a2f04e824726b929477bff` |
| 32 | `theorem` | [minimumRep_energy](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/minimumrep-energy--95d2d6b98a78e35a8bd43b5a.md) | 204 | `result-track:95d2d6b98a78e35a8bd43b5a93fd438fe700fc6f8e0b757ae91498dba4a8afd4` |
| 33 | `theorem` | [minimumRep_unique](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/minimumrep-unique--45b2d048c91530f872139fe7.md) | 211 | `result-track:45b2d048c91530f872139fe7fce5bafac9fdd6f9c3c80f0290cb197eab16667a` |
| 34 | `theorem` | [minimumRep_le](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/minimumrep-le--59da615463d904580d016b58.md) | 228 | `result-track:59da615463d904580d016b58e9e11f1fdafcd8b68a0dbe4d44f42e9868ff6408` |
| 35 | `theorem` | [reducedEnergy_nonneg](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reducedenergy-nonneg--d371833d32f016b3e8fab9c9.md) | 233 | `result-track:d371833d32f016b3e8fab9c9f40eb837457325326896ff3bf98b98932bb7a9de` |
| 36 | `theorem` | [reducedEnergy_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reducedenergy-zero-iff--31494208d0b284a386f50f93.md) | 239 | `result-track:31494208d0b284a386f50f9311242e9e4afc29294214471e0f92d949b58164a7` |
| 37 | `theorem` | [quotientEnergy_zero_iff](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientenergy-zero-iff--60b4a44046157a3c1e09bdcc.md) | 251 | `result-track:60b4a44046157a3c1e09bdcccfc1723353ccefb3f3f2c5602d1c357ce14aaa2d` |
| 38 | `theorem` | [reducedEnergy_bounds](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reducedenergy-bounds--40ab5a2be6482715c48294cb.md) | 265 | `result-track:40ab5a2be6482715c48294cbee4517e20caa0371af2d298688f675a7085021c6` |
| 39 | `theorem` | [quotientEnergy_minimum](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientenergy-minimum--9c41bd307cca3f83d4485762.md) | 275 | `result-track:9c41bd307cca3f83d44857624600f8b32a66e5c7cf6ff215d09b10bd528c135e` |
| 40 | `theorem` | [reducedEnergy_attenuation](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/reducedenergy-attenuation--102b011db18b3f21449eb4b6.md) | 287 | `result-track:102b011db18b3f21449eb4b6669e77d792f4585fcbc74b1948681840c3ccf047` |
| 41 | `theorem` | [quotientEnergy_contraction](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/quotientenergy-contraction--ca1b762679e5a0793465cd64.md) | 293 | `result-track:ca1b762679e5a0793465cd648271a31155d6bf695fd771c7e6ea481d4ffb46de` |
| 42 | `theorem` | [unit_vertex_normalForm](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/unit-vertex-normalform--7847cdcc1dece1cc37e8b083.md) | 307 | `result-track:7847cdcc1dece1cc37e8b083189128ec94e4285960b7748ec02526228b1b6aef` |
| 43 | `theorem` | [nonzero_gauge_zero_class](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/nonzero-gauge-zero-class--3e2396de1cfb2ae4307272e1.md) | 318 | `result-track:3e2396de1cfb2ae4307272e16cdf19f80bf9272362bb75a2c803732a10c5a852` |
| 44 | `theorem` | [sharp_reduced_weights](../../../../mathematics/Algebra/LinearAlgebra/ThreeCellGaugeMetric.lean/declarations/sharp-reduced-weights--9dcca02e94b734e61a8febf1.md) | 329 | `result-track:9dcca02e94b734e61a8febf1a203195faf3aac1da2205157c983f77e3899f7c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
