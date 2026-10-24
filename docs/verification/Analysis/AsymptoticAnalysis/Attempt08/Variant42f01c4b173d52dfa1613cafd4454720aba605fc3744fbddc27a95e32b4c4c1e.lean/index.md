# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Attempt08.Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b707217c722b21314360f23a9bfa1e6e915395c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b707217c722b21314360f23a9bfa1e6e915395c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [outerWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/outerweight--997f461a67dcc00a854963a3.md) | 18 | `declaration-track:997f461a67dcc00a854963a304fdb9eb10528de782b3799b7a1d460b63abc526` |
| 2 | `def` | [exponentWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/exponentweight--a52c7d946fa043e6092dc657.md) | 20 | `declaration-track:a52c7d946fa043e6092dc6570e24d040d69b0c5f016c21f5062db6df672765de` |
| 3 | `def` | [momentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/momentatom--c779dbcba8078a26a42a43ee.md) | 22 | `declaration-track:c779dbcba8078a26a42a43ee0ac640c95ee183c907c7b0385548b491829a5d9f` |
| 4 | `def` | [primeMomentAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/primemomentatom--049ba70fcd56aee97e9c3a59.md) | 25 | `declaration-track:049ba70fcd56aee97e9c3a59bb144c83709400544e531719ece898cf84f99205` |
| 5 | `def` | [properPowerMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/properpowermoment--bf67a99d812e45d487cc5f64.md) | 27 | `declaration-track:bf67a99d812e45d487cc5f64aaf3cbc213bd773c108a9b4171059bed55ff0cba` |
| 6 | `def` | [properPowerB1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/properpowerb1--f824f8234ff2e6579020826f.md) | 29 | `declaration-track:f824f8234ff2e6579020826f0f4770d31e98f2fd449f695bd5bff4809689058a` |
| 7 | `def` | [properPowerB2](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/properpowerb2--8e0b2d97340de0f9767395af.md) | 31 | `declaration-track:8e0b2d97340de0f9767395afaaf0b8ce47f171386b539f04fee8704568fc6c94` |
| 8 | `theorem` | [outerWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/outerweight-nonneg--8e171b6f48b34a14cefecc82.md) | 33 | `result-track:8e171b6f48b34a14cefecc823400f857fb31b7284c369bcdd5aec46667b96be3` |
| 9 | `theorem` | [exponentWeight_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/exponentweight-nonneg--5a6f215d4ae5f98579199d86.md) | 41 | `result-track:5a6f215d4ae5f98579199d86e1056445fad5a5934b6bce832b5cc971cfcd2dc9` |
| 10 | `theorem` | [momentAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/momentatom-nonneg--48da8cb846225c93d97204c8.md) | 45 | `result-track:48da8cb846225c93d97204c8ab02e73d98701d2b70a8e8f108b26df75b88ee17` |
| 11 | `theorem` | [outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/outerweight-summable--8f9578c4a86208b019076010.md) | 53 | `result-track:8f9578c4a86208b019076010ee1e838b02c0dcb24d017c8424da59b9a443cae1` |
| 12 | `theorem` | [exponentWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/exponentweight-summable--694d95d0d732f4ce4c1a9d51.md) | 83 | `result-track:694d95d0d732f4ce4c1a9d518055013d972907acc4681bf5202529fc1f1fd9ee` |
| 13 | `theorem` | [momentAtom_le_product](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/momentatom-le-product--a9f75e17b5e6796f34b07697.md) | 92 | `result-track:a9f75e17b5e6796f34b0769791f63469971250c2d0b8dcf4361e52c534f330ba` |
| 14 | `theorem` | [prime_outerWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/prime-outerweight-summable--74a77b514547bebcb634e9ae.md) | 113 | `result-track:74a77b514547bebcb634e9ae852fb05cc51bc8dfa4dcf1a99819a52d013cae75` |
| 15 | `theorem` | [primeMomentAtom_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/primemomentatom-summable--fd31bb3d2475bdd17b3b5baf.md) | 117 | `result-track:fd31bb3d2475bdd17b3b5bafee28b5d1e8695f24bd26ca987f17c1a013e86dd1` |
| 16 | `theorem` | [primeMomentAtom_inner_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/primemomentatom-inner-summable--3fb114851e478fd043ba1fbd.md) | 124 | `result-track:3fb114851e478fd043ba1fbd2335a35dc7d8f3041a6eac3ba7bbc22e51b57564` |
| 17 | `theorem` | [primeMomentAtom_outer_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/primemomentatom-outer-summable--ca605ab8fa7dcfa1ba99355c.md) | 129 | `result-track:ca605ab8fa7dcfa1ba99355cf5b90dc1eb5d9cda065b8143f885fb27fbbb4cb4` |
| 18 | `theorem` | [properPowerMoment_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/properpowermoment-nonneg--bf4d6495df006bffb90ddc7a.md) | 134 | `result-track:bf4d6495df006bffb90ddc7a2afbb54f143aa0a9529779b5c55fa520d3ef8fbd` |
| 19 | `theorem` | [finiteProperPowerMoment_le_B1](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/finiteproperpowermoment-le-b1--24135ac5824a5225740c9c3b.md) | 137 | `result-track:24135ac5824a5225740c9c3b6b1098c4fac78a487c724e07f0b03f77b6483f22` |
| 20 | `theorem` | [properPowerB1_gt_nine_quarters](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/properpowerb1-gt-nine-quarters--ccb7c8e544e77bc2dc4631d0.md) | 166 | `result-track:ccb7c8e544e77bc2dc4631d0e18ec81973122705d44f1600b5ecf5da2efa943a` |
| 21 | `theorem` | [arithmeticConstant_gt_one_five_hundred](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/arithmeticconstant-gt-one-five-hundred--b8de62dde1521ac4889e69ab.md) | 169 | `result-track:b8de62dde1521ac4889e69ab037644e0a50d0ceb92fcc6b05395f4c96be71e72` |
| 22 | `def` | [omittedOnsetAtom](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsetatom--3dbacd8764c1967c57e1bca4.md) | 175 | `declaration-track:3dbacd8764c1967c57e1bca46e83792b08a7a1d82d55b5fee17a2fb4079f2517` |
| 23 | `def` | [omittedOnsetTail](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsettail--b15c1d61e1661e3cc5a04a40.md) | 179 | `declaration-track:b15c1d61e1661e3cc5a04a40fbae203e989afe288ad1d3b5e9bfc98ff24a8879` |
| 24 | `theorem` | [properPowerMoment_eq_joint_sum](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/properpowermoment-eq-joint-sum--4bd43fe1f88ea1e622037304.md) | 182 | `result-track:4bd43fe1f88ea1e622037304e199bc4f393598a919578d822b231130c471e80a` |
| 25 | `theorem` | [omittedOnsetAtom_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsetatom-nonneg--5c0029e3ae5468dfe2a0e013.md) | 186 | `result-track:5c0029e3ae5468dfe2a0e0134d01cf1dda3490841486c0c6c577f825761bbbab` |
| 26 | `theorem` | [omittedOnsetAtom_le_zeroMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsetatom-le-zeromoment--c37d057b5692801c2e7178d3.md) | 192 | `result-track:c37d057b5692801c2e7178d345d362d728a0cd91a77f72c0a20f9b1661bb7865` |
| 27 | `theorem` | [omittedOnsetTail_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsettail-summable--b517e070e99d030f0dcd45b9.md) | 199 | `result-track:b517e070e99d030f0dcd45b921418a75bc51bf77f6f46df4fd74bdf2a3225e7e` |
| 28 | `theorem` | [omittedOnsetTail_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsettail-nonneg--eff8e25677c372e3e7efc931.md) | 204 | `result-track:eff8e25677c372e3e7efc93189c3c72700c381d532af4526de69d22a67ac4986` |
| 29 | `theorem` | [omittedOnsetTail_eq_iterated](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsettail-eq-iterated--839374d863b047dc31c3591a.md) | 207 | `result-track:839374d863b047dc31c3591a4c4b84dac615bb8a4bcb2f4be6faefed109c82ef` |
| 30 | `theorem` | [omittedOnsetAtom_secondMoment](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsetatom-secondmoment--c5b5d2b67212e9afa8fb3793.md) | 211 | `result-track:c5b5d2b67212e9afa8fb379354e0f658a2205e69db992779d4be1ea6f0fb78de` |
| 31 | `theorem` | [omittedOnsetTail_le_B2_div_square](../../../../../mathematics/Analysis/AsymptoticAnalysis/Attempt08/Variant42f01c4b173d52dfa1613cafd4454720aba605fc3744fbddc27a95e32b4c4c1e.lean/declarations/omittedonsettail-le-b2-div-square--942c90e831b4cae67ddc9a4e.md) | 226 | `result-track:942c90e831b4cae67ddc9a4ee52fb912a5ad3bb15eddc736c9f7c6db094601a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
