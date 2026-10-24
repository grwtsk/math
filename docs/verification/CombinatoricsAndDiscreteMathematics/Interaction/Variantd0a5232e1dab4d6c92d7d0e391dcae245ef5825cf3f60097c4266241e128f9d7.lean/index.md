# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interaction.Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "355dd49b1de73b7376da0b0f0f66c1ab64545892",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `355dd49b1de73b7376da0b0f0f66c1ab64545892`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PacketAtom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/packetatom--2ec9ad0bea0cb142868d73fa.md) | 48 | `declaration-track:2ec9ad0bea0cb142868d73fae9a845abfa0e2472267a0b3ebc79170bf77a835a` |
| 2 | `instance` | [packetAtomFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/packetatomfintype--6842d13575c3c85fb044a1b5.md) | 50 | `declaration-track:6842d13575c3c85fb044a1b54c33671951376c5704c5ce8be3924e0b395840f0` |
| 3 | `def` | [atomEntryTime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/atomentrytime--7dcded5abad5724e154cd6b8.md) | 56 | `declaration-track:7dcded5abad5724e154cd6b8901ceacd86fef3ddae3dc734d0b844771e908888` |
| 4 | `theorem` | [atomEntryTime_eq_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/atomentrytime-eq-index--51d0a87f3e1778721d921371.md) | 60 | `result-track:51d0a87f3e1778721d9213710f266826e42f78e764c09161a8eef8661a971e49` |
| 5 | `theorem` | [atomEntryTime_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/atomentrytime-le--727711e9d00123083c7de88b.md) | 66 | `result-track:727711e9d00123083c7de88b3555d875ccc4adcc27c29a13eb885c92bd2af7ad` |
| 6 | `def` | [coefficientSection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/coefficientsection--be1497dbac64b10253b64811.md) | 72 | `declaration-track:be1497dbac64b10253b648113d09c6d3b262e70d47ee6b273ba0f60f368136b0` |
| 7 | `def` | [coefficientPrefix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/coefficientprefix--f41be5c7de53c8316e5083cf.md) | 77 | `declaration-track:f41be5c7de53c8316e5083cf8412b87352df1c346f239f5f84717f623e293c3c` |
| 8 | `structure` | [PacketRealization](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/packetrealization--a64e9921b5b2dd3ab647053d.md) | 91 | `declaration-track:a64e9921b5b2dd3ab647053daaeb0cc46a2a07103cf323df96627cb149b14eea` |
| 9 | `structure` | [GrainRefinementAdapter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/grainrefinementadapter--daf4dbc675b15c2c7cabdf5d.md) | 108 | `declaration-track:daf4dbc675b15c2c7cabdf5d3b208dc36b7a6ab7ed804e37a5adc5b378ae7e05` |
| 10 | `structure` | [FiniteInteractionComplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex--2ee5cb51fc9a58b272e67843.md) | 134 | `declaration-track:2ee5cb51fc9a58b272e67843a9dd16091bd5822faaba74dffb2c1b29293cf552` |
| 11 | `def` | [FiniteInteractionComplex.Interacts](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex-interacts--1984a14eaed16d87fb93afeb.md) | 150 | `declaration-track:1984a14eaed16d87fb93afebdf887dabd19bef4cc012a16969abcc8bf43b7d4c` |
| 12 | `theorem` | [FiniteInteractionComplex.angularScale_fixed_by_scaffold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex-angularscale-fixed-by-scaffold--90df7fc2b6c5a5469f9fe174.md) | 157 | `result-track:90df7fc2b6c5a5469f9fe174c57e85dff2f092dcbc72d8cde195da82f1df9a6d` |
| 13 | `theorem` | [FiniteInteractionComplex.interacts_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex-interacts-symm--355275c16edb07e5dddbb5f9.md) | 163 | `result-track:355275c16edb07e5dddbb5f90e9f4d2e4f27e550bed83694ef82e6e28066b4d3` |
| 14 | `theorem` | [FiniteInteractionComplex.not_interacts_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex-not-interacts-self--344a9d73fc5c7de7e47cb67f.md) | 172 | `result-track:344a9d73fc5c7de7e47cb67f003064b51a5d4f2e61271765cb244850ad89530b` |
| 15 | `structure` | [FiniteInteractionNerve](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractionnerve--b3aa5de5d051d7c947357a8d.md) | 185 | `declaration-track:b3aa5de5d051d7c947357a8d7f594c8b0189229d30a34c3b265567032ee7d95b` |
| 16 | `def` | [shadingIntersection](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/shadingintersection--077d6bb615489af926dd7814.md) | 196 | `declaration-track:077d6bb615489af926dd78141697c99250e274228d1c380a74d3c82b60b15083` |
| 17 | `def` | [RealizesShadingIntersectionNerve](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/realizesshadingintersectionnerve--a487e1b837bcd95c95d29eb9.md) | 209 | `declaration-track:a487e1b837bcd95c95d29eb94f50b6ed25cd2527f764a16172d4f8d5281e2a86` |
| 18 | `def` | [FiniteInteractionComplex.RealizesNerveOneSkeleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex-realizesnerveoneskeleton--9b427c58351f6e72c1b85c63.md) | 224 | `declaration-track:9b427c58351f6e72c1b85c636a1ef9d83336225397586fbd6c02e277ddd9f4a6` |
| 19 | `def` | [FiniteInteractionComplex.clusterWeight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex-clusterweight--0fbea8d902cd3fa45b2aaf35.md) | 234 | `declaration-track:0fbea8d902cd3fa45b2aaf35afa3b0011d8f32e96f0b4971054d6a98a7a85e54` |
| 20 | `theorem` | [FiniteInteractionComplex.clusterWeight_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex-clusterweight-nonneg--4c798d913aad9884747f3814.md) | 240 | `result-track:4c798d913aad9884747f3814b5cb42ee4fcc038871ee7300df554298e3dfc488` |
| 21 | `def` | [FiniteInteractionComplex.IsHighConcentrationCluster](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/finiteinteractioncomplex-ishighconcentrationcluster--d29ad037bad1c0cb4bac01ba.md) | 257 | `declaration-track:d29ad037bad1c0cb4bac01ba9a86d767c473652a88dd7af6d0c080e284346d65` |
| 22 | `def` | [coefficientPacketState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/coefficientpacketstate--10bac9aaab1bb42b6052da2f.md) | 268 | `declaration-track:10bac9aaab1bb42b6052da2f96a31e5e68bfe755303f17136ea1e7711734dd61` |
| 23 | `def` | [correlationEnergyAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/correlationenergyat--b9e87065bab9ad18d6d29bd9.md) | 278 | `declaration-track:b9e87065bab9ad18d6d29bd972a9e2a99911ee1be81d390f905d350f2d4a34d9` |
| 24 | `theorem` | [correlationEnergyAt_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/correlationenergyat-nonneg--5f972fc5142e2d4a5ffdeb47.md) | 284 | `result-track:5f972fc5142e2d4a5ffdeb47a77f55e7f1d0b464628c3fffa619810cc22a52c7` |
| 25 | `structure` | [CorrelationData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/correlationdata--f8cf1c9edb54c08c7b6f4100.md) | 292 | `declaration-track:f8cf1c9edb54c08c7b6f410099f6762b611921ab78c5a6452972470b539a4766` |
| 26 | `def` | [CorrelationData.potentialAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/correlationdata-potentialat--91efd929ef418370a079687e.md) | 302 | `declaration-track:91efd929ef418370a079687ee726f3bf456677cc29c9fbb480e02e7ae6f9df1b` |
| 27 | `theorem` | [CorrelationData.potentialAt_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/correlationdata-potentialat-nonneg--110806119e38b8ab6c6d5d9a.md) | 308 | `result-track:110806119e38b8ab6c6d5d9a1fbd0de08546759e44341c2f03d2bd0f23426fe3` |
| 28 | `def` | [CorrelationData.maxPotential](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/correlationdata-maxpotential--7ccf44dc6016553e8daac0a3.md) | 318 | `declaration-track:7ccf44dc6016553e8daac0a399c1d405c29d7d1a9d5b465372e0103f26a44e80` |
| 29 | `theorem` | [CorrelationData.potentialAt_le_maxPotential](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/correlationdata-potentialat-le-maxpotential--d40252d3897c37cea2fcf47f.md) | 323 | `result-track:d40252d3897c37cea2fcf47fee7f1e77f6b816252fee24230d86c7ae77138592` |
| 30 | `theorem` | [CorrelationData.maxPotential_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interaction/Variantd0a5232e1dab4d6c92d7d0e391dcae245ef5825cf3f60097c4266241e128f9d7.lean/declarations/correlationdata-maxpotential-nonneg--2b01c492931ebbb1d8a160b6.md) | 330 | `result-track:2b01c492931ebbb1d8a160b690587e151444b99277593f1c8ccd75a4fb6b0522` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
