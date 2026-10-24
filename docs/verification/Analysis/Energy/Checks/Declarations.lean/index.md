# Verification target: GRWTSK.Analysis.Energy.Checks.Declarations

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2b3928b9cad0eef651bbc9088659541eeec9f65",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Energy/Checks/Declarations.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/index.md) · [Full source](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2b3928b9cad0eef651bbc9088659541eeec9f65`.

Source path: `GRWTSK/Analysis/Energy/Checks/Declarations.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Energy/Checks/Declarations.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.AlmostMathieu`](../../../../../mathematics/Algebra/LinearAlgebra/AlmostMathieu__SourceOccurrence949d7a3b1820b6d16fa59c41.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.ExponentialThreshold`](../../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/ExponentialThreshold.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.LinearAlgebra.Determinant.RankOneQuadraticForm`](../../../../../mathematics/Algebra/LinearAlgebra/Determinant/RankOneQuadraticForm__SourceOccurrence4ddf3c1526e7b64c3ef823c8.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.ComparisonEnergy`](../../../../../mathematics/NumberTheory/Moebius/ComparisonEnergy.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.IntegerSampleGrowth`](../../../../../mathematics/NumberTheory/Moebius/IntegerSampleGrowth.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound`](../../../../../mathematics/NumberTheory/Moebius/UnsignedEnergyBound.lean/index.md) — import line 7; pinned internal source present.
- `Lean` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--42555bb381c3b4caafd85fce.md) | 14 | `declaration-track:42555bb381c3b4caafd85fce8d7ce139084380c72472370d72e635f980525556` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--8b657315247267c764a68c00.md) | 16 | `declaration-track:8b657315247267c764a68c001939a60358909e0b10d0b980676aa2cb20e71038` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--5d5c7137714c500f7092c990.md) | 18 | `declaration-track:5d5c7137714c500f7092c990b86ee572aff967a3520594f4fb86cfcb9a0590d5` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--5ca0d9f93c8190bb251d4bc7.md) | 19 | `declaration-track:5ca0d9f93c8190bb251d4bc7208fac297c682e7019acc0a464e1fac1657bc296` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--0dbed6ccce63fc02ed401b9a.md) | 22 | `declaration-track:0dbed6ccce63fc02ed401b9abccf6ffa36bf0fdfef365b39cca0739c52bdb06f` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--0bc7d903929e5c5c172488ee.md) | 26 | `declaration-track:0bc7d903929e5c5c172488eea65ad2f205d583e367e46772e35fe74d58193d5a` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--7908d43e741ee4c7f8aafdd0.md) | 28 | `declaration-track:7908d43e741ee4c7f8aafdd0e2c62ec2cea82e68bc09252f5ae4b9d8f29f10de` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--8866df9900922a6783e557f0.md) | 33 | `declaration-track:8866df9900922a6783e557f0281a61f0a1733efa911fba76d5a0efe2b012d8ac` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--24be39f5289228408a8fb649.md) | 35 | `declaration-track:24be39f5289228408a8fb649b1ab7352e0e467941acf923374d7d08258136f56` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--54760bd17da1892c72c18be5.md) | 38 | `declaration-track:54760bd17da1892c72c18be5a89b66c22406a248fbbd3bb3557971718355d8a3` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--b81cc7883ab5ceb01b919780.md) | 42 | `declaration-track:b81cc7883ab5ceb01b9197805ad72b68f28fc7e6db00028c6c11c97b96dcc0fa` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--c9bda6560df6a8ccd277897f.md) | 44 | `declaration-track:c9bda6560df6a8ccd277897f711a51fd6ee1bcbe2d5e6bb65d18550de0d3791b` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--aaa671fe44035c7f45e55642.md) | 46 | `declaration-track:aaa671fe44035c7f45e556422be4fdb409578bb36131a3c0c41c698e199794f8` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--9e1e80a5684bda2b3b66fb9a.md) | 48 | `declaration-track:9e1e80a5684bda2b3b66fb9a970d1e9dbb3c31c7182f9a32ac42e3716323a309` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--e9e718b488d228b48228d5f3.md) | 49 | `declaration-track:e9e718b488d228b48228d5f3da4f548bff809ef10e27af26d4f831aec9b40995` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--0b4cc1ef9c90e8fd434e15ef.md) | 50 | `declaration-track:0b4cc1ef9c90e8fd434e15ef00c1d96d084fafc9d1c4c4a0225c919286337615` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--aa3a304cfb56883e2df32eb6.md) | 51 | `declaration-track:aa3a304cfb56883e2df32eb6293ad431a7b69ac13c11070489f44d32f190832a` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--a60085f807d6aa6859c267b8.md) | 52 | `declaration-track:a60085f807d6aa6859c267b8526cf134d94337fac9b96df11102929da3f3dc30` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--f8f230b07a8c0326cfc93f3e.md) | 54 | `declaration-track:f8f230b07a8c0326cfc93f3e236b3ed0cb8da537200bfb43aceb1a486afd6d8a` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--83b089dc0350a13f3ee5deba.md) | 56 | `declaration-track:83b089dc0350a13f3ee5debacf90bde7891ccb9ff84bb42110ecedbf61e5281f` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--c5d2a09973bacdd4720f1ec2.md) | 57 | `declaration-track:c5d2a09973bacdd4720f1ec2b04ac28bda10cf01031c207c8d9446f72e05b593` |
| 22 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--0ef7697cb4526acf8598fe53.md) | 59 | `declaration-track:0ef7697cb4526acf8598fe536e62a487b80705dcb500d705beed33f2773cf4ec` |
| 23 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--c342e7ec6d855e7edd50d145.md) | 61 | `declaration-track:c342e7ec6d855e7edd50d1456581a691e47e9fbe7dd858cb348f602f2b2981db` |
| 24 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--cc918f9514ce1a733e7acfd5.md) | 63 | `declaration-track:cc918f9514ce1a733e7acfd586c38b7e90364313978558f1040bcda5b157c6fa` |
| 25 | `example` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/example--5bd3869e584d6628493c4f7f.md) | 67 | `declaration-track:5bd3869e584d6628493c4f7f0c96e20900f8157db0289c25e88d773ad354f46a` |
| 26 | `elab` | [(anonymous)](../../../../../mathematics/Analysis/Energy/Checks/Declarations.lean/declarations/elab--4f17ac3da73c689c5187b5eb.md) | 72 | `declaration-track:4f17ac3da73c689c5187b5ebd9b19ddead5dc8a85832fb67c39662b3d1347320` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
