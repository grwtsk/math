# Verification target: GRWTSK.Algebra.LinearDisjoint.Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b21c2ede7cb426821bfb942a8f1415ae13fe9e66",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/index.md) · [Full source](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b21c2ede7cb426821bfb942a8f1415ae13fe9e66`.

Source path: `GRWTSK/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AlgebraicIndependent.RankAndCardinality` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LinearDisjoint` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [LinearDisjoint](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lineardisjoint--405898f8adfa70f4ead89932.md) | 161 | `declaration-track:405898f8adfa70f4ead89932368859e965a79cda01cd82d21bab1ec2918e450a` |
| 2 | `theorem` | [linearDisjoint_iff](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lineardisjoint-iff--3f4cfef77b0695c3cdd5347e.md) | 164 | `result-track:3f4cfef77b0695c3cdd5347e95f6aaffc5f13d2f12066a2edd8f8ac06fca059b` |
| 3 | `theorem` | [linearDisjoint_iff'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lineardisjoint-iff--5da9a8902e71eedfa622a48c.md) | 172 | `result-track:5da9a8902e71eedfa622a48cbb754f73b6e620a7106ee2c0278efeddee462b86` |
| 4 | `theorem` | [LinearDisjoint.symm](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lineardisjoint-symm--1a266a189d91477fe72ec0cb.md) | 179 | `result-track:1a266a189d91477fe72ec0cbc3238344df5c04e1cca776e74c95a6ba3beab778` |
| 5 | `theorem` | [linearDisjoint_comm](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lineardisjoint-comm--eafb7303024341dac6214b0b.md) | 183 | `result-track:eafb7303024341dac6214b0b5227490eda3483dad663de593a104e31f22ee9b6` |
| 6 | `theorem` | [LinearDisjoint.symm'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lineardisjoint-symm--d0ac12daf3fc60002ba67664.md) | 191 | `result-track:d0ac12daf3fc60002ba676645f54f005bacdd8beb91d1092b51f9c5b63893ada` |
| 7 | `theorem` | [linearDisjoint_comm'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lineardisjoint-comm--e00a4f4edd4dc7f68036fffc.md) | 196 | `result-track:e00a4f4edd4dc7f68036fffc73d08559506057226e9c1bf07fc470f2b5f6868c` |
| 8 | `theorem` | [map](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/map--7ab5f4c1bcb6f821aba5df69.md) | 206 | `result-track:7ab5f4c1bcb6f821aba5df69549b5ee422f8e98dea0f5afb59ab71e8ac3e3265` |
| 9 | `theorem` | [map'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/map--37db9e58dd39e0c642bbe73e.md) | 212 | `result-track:37db9e58dd39e0c642bbe73e590da7d8f539bae216764fc8ec0a08eaed6338cd` |
| 10 | `theorem` | [map''](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/map--f0104eb81f836c94f9cd9927.md) | 222 | `result-track:f0104eb81f836c94f9cd99276dbea50a6eb20b45fc660be806b1ec8f9ac942e9` |
| 11 | `theorem` | [self_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/self-right--b3af30ca7ed6327451bfc3a6.md) | 235 | `result-track:b3af30ca7ed6327451bfc3a66ef870529561b5356a9ae9f4d024d7ec6f67ae6c` |
| 12 | `theorem` | [bot_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/bot-right--5051d2bc99022a7f0eb92f99.md) | 238 | `result-track:5051d2bc99022a7f0eb92f99047ef38d0369c1e08b91ddac119f215619decf5c` |
| 13 | `theorem` | [bot_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/bot-left--909a7226a412a0edaa8e4526.md) | 242 | `result-track:909a7226a412a0edaa8e45263af56ab3d8868296874879cf2f341ecca0e200ee` |
| 14 | `theorem` | [linearIndependent_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/linearindependent-left--3c7d3ed960de36a8e50232e5.md) | 247 | `result-track:3c7d3ed960de36a8e50232e5e6fbe522d16c4d56061e9749216c793b00e3ced1` |
| 15 | `theorem` | [of_basis_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-basis-left--d5a85869150e2d5fdaf40985.md) | 255 | `result-track:d5a85869150e2d5fdaf409854503d182ff2c5ba48a6a2f509be9ba358a2a7323` |
| 16 | `theorem` | [linearIndependent_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/linearindependent-right--22fbc8b9f1dd933829627316.md) | 263 | `result-track:22fbc8b9f1dd9338296273162253471b1ae5e9aab09945be43bb51d65518c5ca` |
| 17 | `theorem` | [of_basis_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-basis-right--44dda43aa4785c1f722d388e.md) | 269 | `result-track:44dda43aa4785c1f722d388ec4bc6232d285cfd85fc6daf3a0fd8c5e4c179bd8` |
| 18 | `theorem` | [linearIndependent_right'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/linearindependent-right--f766958790d1136a92de6007.md) | 275 | `result-track:f766958790d1136a92de60079ca1b0cedffc691579b2974e7bf90de485347e64` |
| 19 | `theorem` | [of_basis_right'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-basis-right--34a315ff31b5486161588e51.md) | 282 | `result-track:34a315ff31b5486161588e5131f6f95b3a366f089f7b5dd99c2612b7ceba7932` |
| 20 | `theorem` | [linearIndependent_mul](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/linearindependent-mul--8033e34e59e1918c3d3825e8.md) | 290 | `result-track:8033e34e59e1918c3d3825e882bb06b35cab61d2055fabc0ea7227b453c3e605` |
| 21 | `theorem` | [linearIndependent_mul'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/linearindependent-mul--cc98d843dc1d7b187c14aa7a.md) | 298 | `result-track:cc98d843dc1d7b187c14aa7a3981f448a1b77677486bd8017a8298b0e964acf7` |
| 22 | `theorem` | [of_basis_mul](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-basis-mul--4b780644efc64f1102386d18.md) | 306 | `result-track:4b780644efc64f1102386d181a953233148434e074619468321a68b3cd6be683` |
| 23 | `theorem` | [of_basis_mul'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-basis-mul--303a7146da8425af8f596e01.md) | 312 | `result-track:303a7146da8425af8f596e01002bccbbf245ae666c87ae7a8ba952e02f479bad` |
| 24 | `theorem` | [of_le_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-le-left--547c921d27a953cd7319028f.md) | 318 | `result-track:547c921d27a953cd7319028f65c5ac249116c518d16a565e65a5af4763e1bd2e` |
| 25 | `theorem` | [of_le_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-le-right--96935d8bf271cb5b81a92b0e.md) | 322 | `result-track:96935d8bf271cb5b81a92b0eb804f50b01986d315fff2f50a4f4483aa0e1d763` |
| 26 | `theorem` | [of_le_right'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-le-right--36058fa265cb3cb213a92080.md) | 327 | `result-track:36058fa265cb3cb213a9208023bf7990ef7ad1cdabe012c026e6dcbb16009422` |
| 27 | `theorem` | [of_le](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-le--f15901bccd8b49135368b3e1.md) | 336 | `result-track:f15901bccd8b49135368b3e1beded0c545ee6ad86698feb979d4ed028879c550` |
| 28 | `theorem` | [of_le'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-le--3a2f6acf2344c77338edd3bb.md) | 341 | `result-track:3a2f6acf2344c77338edd3bb0ed7784f733da4c37160b89a961a3a1c8963cc29` |
| 29 | `theorem` | [inf_eq_bot](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/inf-eq-bot--8efaea51b030627cf024f4f7.md) | 348 | `result-track:8efaea51b030627cf024f4f73b00966130ac45c3583a1328a364eb5ca617fcf6` |
| 30 | `theorem` | [eq_bot_of_self](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/eq-bot-of-self--9c65e3dbcd5c6a1dd3fdbef9.md) | 352 | `result-track:9c65e3dbcd5c6a1dd3fdbef981051fc6b5a9ffe6c10cabf64d954f745aadfcf4` |
| 31 | `theorem` | [rank_sup](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/rank-sup--37fec0414c563ffa21340eaf.md) | 357 | `result-track:37fec0414c563ffa21340eaf6846a1689616816c1b1a4dd689ba2f219d07518f` |
| 32 | `theorem` | [finrank_sup](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/finrank-sup--02e52e416c06f6959b27c42f.md) | 366 | `result-track:02e52e416c06f6959b27c42fdfdb5a223091576a1f2a4111429d327e86bcbab4` |
| 33 | `theorem` | [of_finrank_sup](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-finrank-sup--193d2a5673e0ebee09b4a4f9.md) | 372 | `result-track:193d2a5673e0ebee09b4a4f95b8726ef6fc6c66583614111e5b7985d8f03d465` |
| 34 | `theorem` | [adjoin_rank_eq_rank_left_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/adjoin-rank-eq-rank-left-of-isalgebraic--78acd8ad59e5da8969d3108d.md) | 378 | `result-track:78acd8ad59e5da8969d3108df28d875292d35130615b98cfd7f650ff3e14389b` |
| 35 | `theorem` | [adjoin_rank_eq_rank_left_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/adjoin-rank-eq-rank-left-of-isalgebraic-left--25396fa6a06596657c2d1c13.md) | 398 | `result-track:25396fa6a06596657c2d1c139f57390ee62d9ab561c4a7689894c85adbb9fbf7` |
| 36 | `theorem` | [adjoin_rank_eq_rank_left_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/adjoin-rank-eq-rank-left-of-isalgebraic-right--cf7dec2fe765437dbb80cd61.md) | 402 | `result-track:cf7dec2fe765437dbb80cd615f6403e2721621070fcaac6fec9700739d07216c` |
| 37 | `theorem` | [lift_adjoin_rank_eq_lift_rank_right_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lift-adjoin-rank-eq-lift-rank-right-of-isalgebraic--9f941f09ff2399e606d24180.md) | 409 | `result-track:9f941f09ff2399e606d24180f10b6c42fa2832c01a61108923e1b7e08326276a` |
| 38 | `theorem` | [lift_adjoin_rank_eq_lift_rank_right_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lift-adjoin-rank-eq-lift-rank-right-of-isalgebraic-left--355f0131cc949a539ef92572.md) | 430 | `result-track:355f0131cc949a539ef92572fbdb4c98b0697d4ec781560e3cedf6f50eab8a17` |
| 39 | `theorem` | [lift_adjoin_rank_eq_lift_rank_right_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lift-adjoin-rank-eq-lift-rank-right-of-isalgebraic-right--e72caa501e0f02d47a2df9e0.md) | 437 | `result-track:e72caa501e0f02d47a2df9e0b3fa13f90b1f2fd3b40d6a531add361f3d0e98f3` |
| 40 | `theorem` | [lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lift-rank-right-mul-lift-adjoin-rank-eq-of-isalgebraic--a789945ac28a6063dbb0bd13.md) | 447 | `result-track:a789945ac28a6063dbb0bd138c275b9a775b30cefb9aca2fa2c0e69abd529c09` |
| 41 | `theorem` | [lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lift-rank-right-mul-lift-adjoin-rank-eq-of-isalgebraic-left--343d95377390c89dae225741.md) | 456 | `result-track:343d95377390c89dae2257414fbcfd86dcab8df48d3af4f71c9f1dc755b34969` |
| 42 | `theorem` | [lift_rank_right_mul_lift_adjoin_rank_eq_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/lift-rank-right-mul-lift-adjoin-rank-eq-of-isalgebraic-right--4e8e3777434857e5deba1047.md) | 462 | `result-track:4e8e3777434857e5deba1047cc49fe6f58548416e628a17e261ecb5e2590dc3c` |
| 43 | `theorem` | [adjoin_rank_eq_rank_right_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/adjoin-rank-eq-rank-right-of-isalgebraic--5d82803e91b55915a7729865.md) | 474 | `result-track:5d82803e91b55915a772986536b0bcd43fa463f49a9f707b148cc8ccd80d5d80` |
| 44 | `theorem` | [adjoin_rank_eq_rank_right_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/adjoin-rank-eq-rank-right-of-isalgebraic-left--c857756e2517faee20ab4307.md) | 480 | `result-track:c857756e2517faee20ab4307229c7ef5c526b4b5b67d902ca82e6f879bdfc2d0` |
| 45 | `theorem` | [adjoin_rank_eq_rank_right_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/adjoin-rank-eq-rank-right-of-isalgebraic-right--d787b95f6cc6cfb117a81031.md) | 486 | `result-track:d787b95f6cc6cfb117a810311f01b31c6f92e43c4ecb19a81dfc0533682d15e5` |
| 46 | `theorem` | [rank_right_mul_adjoin_rank_eq_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/rank-right-mul-adjoin-rank-eq-of-isalgebraic--004cda40f7bd199729abbe13.md) | 494 | `result-track:004cda40f7bd199729abbe13c7d5f76253faa8a6b1d1d5922b125c45abd8eafa` |
| 47 | `theorem` | [rank_right_mul_adjoin_rank_eq_of_isAlgebraic_left](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/rank-right-mul-adjoin-rank-eq-of-isalgebraic-left--4676121ad6c1f0a75da8c73e.md) | 499 | `result-track:4676121ad6c1f0a75da8c73eb04d3c587d6d1b9ce2ad63db5cf2352b1acc6e47` |
| 48 | `theorem` | [rank_right_mul_adjoin_rank_eq_of_isAlgebraic_right](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/rank-right-mul-adjoin-rank-eq-of-isalgebraic-right--6cba34d3c1f58330dfbdb6aa.md) | 504 | `result-track:6cba34d3c1f58330dfbdb6aaf3bf9cd752cd920a8eabd1585d609e65817838ea` |
| 49 | `theorem` | [of_finrank_coprime](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-finrank-coprime--953df1d2fa87834e1554529c.md) | 512 | `result-track:953df1d2fa87834e1554529c8a9469e2a9b3b59b1dbc9337b59c3650ec553bee` |
| 50 | `theorem` | [isDomain](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/isdomain--94c53d80e9b4470450aa3784.md) | 520 | `result-track:94c53d80e9b4470450aa37841f7c90e2eba02298d6337afe3993463f3222a388` |
| 51 | `theorem` | [isDomain'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/isdomain--b425c4b037051a303afe1e44.md) | 527 | `result-track:b425c4b037051a303afe1e44086a3cf04b6c02c476a6c867205bb770ece8d1b1` |
| 52 | `theorem` | [of_isField](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-isfield--04f6fc5776a7a42cd5a83dee.md) | 534 | `result-track:04f6fc5776a7a42cd5a83deecf55f593769ecefbe2bba0e084916fe752b3fe34` |
| 53 | `theorem` | [of_isField'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/of-isfield--2196c5b9ea758c5c86e79436.md) | 548 | `result-track:2196c5b9ea758c5c86e79436313952adef1ea3bb8bc84b6ff74f45d647e11832` |
| 54 | `theorem` | [exists_field_of_isDomain](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/exists-field-of-isdomain--574d5679998403d8a55480a0.md) | 560 | `result-track:574d5679998403d8a55480a085ba3e4e6793d20da21ef0d01f571abbf9a60381` |
| 55 | `theorem` | [isField_of_forall](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/isfield-of-forall--8fe2926423c9b49e8cfc7671.md) | 573 | `result-track:8fe2926423c9b49e8cfc76711af1b950401bfd82d3e0a7e8c0f2ad4b7f8326df` |
| 56 | `theorem` | [_root_.GRWTSK.Algebra.LinearDisjoint.Variant39980cde348113f914cff8ec8e33eecfebcbc837098300d9b6dc8ed09947f1c2.Algebra.TensorProduct.isField_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/root-grwtsk-algebra-lineardisjoint-variant39980cde348113f914cff8ec8e33ee--a5a07197024b118fe4d367bc.md) | 602 | `result-track:a5a07197024b118fe4d367bc96ceefed416a31291b4658353bd3d9da3d816ec8` |
| 57 | `theorem` | [isField_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/isfield-of-isalgebraic--4ce6dccfe1b5e34e61cc247e.md) | 619 | `result-track:4ce6dccfe1b5e34e61cc247e46bdfa404c6330ea5e32a0767f82eda0680421ca` |
| 58 | `theorem` | [isField_of_isAlgebraic'](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/isfield-of-isalgebraic--99605867ce8934fd56585ebb.md) | 627 | `result-track:99605867ce8934fd56585ebbc3b6e0409e502041ff53875c240828d24ae7d78c` |
| 59 | `theorem` | [algEquiv_of_isAlgebraic](../../../../mathematics/Algebra/LinearDisjoint/Variantc6b7ae4eb70a7393ae9c36d3171c235674cdca56a3df7576dbf0f7f4343f4f94.lean/declarations/algequiv-of-isalgebraic--6c1294bc751f3d2190f26805.md) | 635 | `result-track:6c1294bc751f3d2190f268058903d946c4d0f2e574132e75ba8b9548a3795893` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
