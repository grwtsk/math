# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c2a188dd417fc45c8c07307e43fb745ba829a65",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c2a188dd417fc45c8c07307e43fb745ba829a65`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FreeAlgebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.RingQuot` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.TrivSqZeroExt` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Operations` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/rel--757140ce02c724ae95169ded.md) | 57 | `declaration-track:757140ce02c724ae95169dedea6a8c5912ed9336fd8a79e336c38a082553b034` |
| 2 | `def` | [TensorAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/tensoralgebra--facc1da352a8c83b8a138754.md) | 67 | `declaration-track:facc1da352a8c83b8a1387548c5b418574aed1bd08646ab570ee34cee99b5351` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/instance--c2b56a411b1b6f9f50b654be.md) | 72 | `declaration-track:c2b56a411b1b6f9f50b654be2470858ea2c561dc3cd70c7e1b8cafa46dd21b8c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/instance--9d64bad2ea880df4644c55aa.md) | 73 | `declaration-track:9d64bad2ea880df4644c55aa8625cbbb281d452eddabfae3e459d0aebe2b9dc7` |
| 5 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/instalgebra--9326cdf5240ea9c4c4fc7964.md) | 77 | `declaration-track:9326cdf5240ea9c4c4fc79649982b7749878bface5c5aff6fefa9cc5cb57b651` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/example--ecfe5b18f80a3209bf8b9436.md) | 85 | `declaration-track:ecfe5b18f80a3209bf8b9436284f2cd2cc8003926402523cc779732d55f08a1f` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/instance--8ac318485aa35aa0f2d32011.md) | 87 | `declaration-track:8ac318485aa35aa0f2d32011abeb552411cf603c3089e37e552f9211ea854de2` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/instance--09b4588a96188124f9749a9e.md) | 93 | `declaration-track:09b4588a96188124f9749a9eafa106ec30cc28af953e1735683770cff731d08d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/instance--e991a7a9a5120a960387f932.md) | 101 | `declaration-track:e991a7a9a5120a960387f932491e03d3d8d49d9787010d0efc19c7e43cd6c415` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/example--c08a2a1e19c45f174dd58477.md) | 107 | `declaration-track:c08a2a1e19c45f174dd584774e2c9332653b29f9e87a5d62de2e8db8c32786d5` |
| 11 | `theorem` | [ringQuot_mkAlgHom_freeAlgebra_ι_eq_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/ringquot-mkalghom-freealgebra-eq--9d39bd65f04f10ef890057f9.md) | 122 | `result-track:9d39bd65f04f10ef890057f9145bc947fe2998b83e988a36f26167e8de054153` |
| 12 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/lift--226366c0d589f62a1b8ea598.md) | 131 | `declaration-track:226366c0d589f62a1b8ea5982e9be262fd62be73d67ef6b4d0bd9da46c0d841f` |
| 13 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/comp-lift--0fae103ea7a90a6cbe4f7621.md) | 154 | `result-track:0fae103ea7a90a6cbe4f7621f5183de9548a93f69ac1369ade738576dd3b9d0a` |
| 14 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/lift-apply--de18ce03810e139d2723c6e7.md) | 159 | `result-track:de18ce03810e139d2723c6e750e8e1122d1af5371340a5ae54a878d2d3af65ce` |
| 15 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/lift-unique--be735158481124ff5e8a742d.md) | 165 | `result-track:be735158481124ff5e8a742d95488303b0b1befdbd28a4827d547539efaa3595` |
| 16 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/lift-comp--924b4e93fee7c1099acd16a8.md) | 174 | `result-track:924b4e93fee7c1099acd16a8a9ba2e6d029258b2013fb5787211f366cecf3942` |
| 17 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/hom-ext--e12b9c8009a01a14b0b45886.md) | 181 | `result-track:e12b9c8009a01a14b0b4588603513f90bb10ebf148fb09c97f9a01e24c96575c` |
| 18 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/induction--03dcf56002f89fadee92f32c.md) | 191 | `result-track:03dcf56002f89fadee92f32c4210a48a0db4129183ba01767ed173f21ce4bd15` |
| 19 | `def` | [algebraMapInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/algebramapinv--f2af6bc7e98fdf0f12772d21.md) | 214 | `declaration-track:f2af6bc7e98fdf0f12772d21508d49cc14496fdf5b138687a43fd139f1406f36` |
| 20 | `theorem` | [algebraMap_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/algebramap-leftinverse--2d1657fc6d07463e332d2b3b.md) | 219 | `result-track:2d1657fc6d07463e332d2b3bac6a79d01c0a4918b061b50908b156639ce77ac3` |
| 21 | `theorem` | [algebraMap_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/algebramap-inj--2c08bc05df575dc064b1cf0a.md) | 224 | `result-track:2c08bc05df575dc064b1cf0a1eb76f1f9788fb5edaf7377446735c617436b4e0` |
| 22 | `theorem` | [algebraMap_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/algebramap-eq-zero-iff--e3b35c7c16f8338c01fb49b7.md) | 229 | `result-track:e3b35c7c16f8338c01fb49b7b77efa111e62536b473debc606ecc4b630154793` |
| 23 | `theorem` | [algebraMap_eq_one_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/algebramap-eq-one-iff--1fe0cd49385e2f55e16b4fda.md) | 233 | `result-track:1fe0cd49385e2f55e16b4fda52bd2e4e93d4fc6d532a5ae787e2d10324575013` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/instance--a8e4efae6ce0e51c56dadcc0.md) | 237 | `declaration-track:a8e4efae6ce0e51c56dadcc00df8bfb31f115d80eb1cdb56f08ae9e4b3c49571` |
| 25 | `def` | [toTrivSqZeroExt](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/totrivsqzeroext--2e8f8fba042dfa997e8008e8.md) | 244 | `declaration-track:2e8f8fba042dfa997e8008e854c68cb6d3d5663febc23ed797629e8a30b7b7fb` |
| 26 | `theorem` | [toTrivSqZeroExt_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/totrivsqzeroext--831a29c3e817022e6c8f82a4.md) | 249 | `result-track:831a29c3e817022e6c8f82a4f500e18d1f6c98183fc37f9edcfc1ba828a20209` |
| 27 | `def` | [ιInv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/inv--4d77209c3b0460ea1c8bdb8b.md) | 257 | `declaration-track:4d77209c3b0460ea1c8bdb8bd145d83d2aa9ea4be7134a5c10561388e5659d0b` |
| 28 | `theorem` | [ι_leftInverse](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/leftinverse--c30fd2aceb59cefc99f0f20c.md) | 262 | `result-track:c30fd2aceb59cefc99f0f20ca51d4562b5a3f2ff2e303022b1b60471a5691e24` |
| 29 | `theorem` | [ι_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/inj--e05b911102fd6895e64149fe.md) | 268 | `result-track:e05b911102fd6895e64149fe439b9e4770ffc4ca6392d261f426e5469749db1d` |
| 30 | `theorem` | [ι_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/eq-zero-iff--ed920cee32a75593df5d0774.md) | 272 | `result-track:ed920cee32a75593df5d07744911e118de987df749379068a632981cab32aba5` |
| 31 | `theorem` | [ι_eq_algebraMap_iff](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/eq-algebramap-iff--15861c046a3101c5a100dd9d.md) | 277 | `result-track:15861c046a3101c5a100dd9dd31fc0fe677273302c9d45f3313affa2d3218d4c` |
| 32 | `theorem` | [ι_ne_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/ne-one--1c5ff9b09319bb9af09b159b.md) | 289 | `result-track:1c5ff9b09319bb9af09b159b7d3f059d254734b2b2b61ed91aa5dd34a39bb5ea` |
| 33 | `theorem` | [ι_range_disjoint_one](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/range-disjoint-one--965321653b023644095cf36f.md) | 294 | `result-track:965321653b023644095cf36fa35092069b0e17e537d51b74598e29a61f06e76d` |
| 34 | `def` | [tprod](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/tprod--31af30979eada45a1327294e.md) | 307 | `declaration-track:31af30979eada45a1327294ee7338ab619a7bbbbd6a63d3e68041fa82d47c801` |
| 35 | `theorem` | [tprod_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/tprod-apply--34be9c4670f1c6ea25897227.md) | 311 | `result-track:34be9c4670f1c6ea258972278c02a1db7718830cf09277d0322fe3bb7d41dfc6` |
| 36 | `def` | [toTensor](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/totensor--d208896a3a148a70fdbfba09.md) | 324 | `declaration-track:d208896a3a148a70fdbfba09b166c00ea60431dd937b4d10b947a8162e54244b` |
| 37 | `theorem` | [toTensor_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantc666c1395d4486de995d5d71cbe95887bc0af44f9449ba64f812763cda0368db.lean/declarations/totensor--df7d2026a91fd30a405ac4a3.md) | 328 | `result-track:df7d2026a91fd30a405ac4a34775f00b45e7ae7064fa1e05c6d487d33f3d6a7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
