# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Homogeneous.Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b25e34205da9092f778d5fdcf86f94fa1095309f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b25e34205da9092f778d5fdcf86f94fa1095309f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.Internal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMonoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.MvPolynomial.Variables` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/ishomogeneous--0205556fc9ea634010fe22b1.md) | 50 | `declaration-track:0205556fc9ea634010fe22b140aca0e0546afa847bd8afa2ce567d375f05931d` |
| 2 | `def` | [homogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneoussubmodule--84ba6b20a02068ec0e3ea4b9.md) | 57 | `declaration-track:84ba6b20a02068ec0e3ea4b949921f380cc2ced4b8dca2420884725ea1a26a95` |
| 3 | `theorem` | [mem_homogeneousSubmodule](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/mem-homogeneoussubmodule--00a4349337f58ba7f2de1d00.md) | 79 | `result-track:00a4349337f58ba7f2de1d0071cad9fa69ab0bc437fa8922bf2952602496d04a` |
| 4 | `theorem` | [homogeneousSubmodule_eq_finsupp_supported](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneoussubmodule-eq-finsupp-supported--9bf5f7cceb8ebf4b31c57480.md) | 86 | `result-track:9bf5f7cceb8ebf4b31c57480458cda6f9779401cd33dab858b42f14d6ee249b8` |
| 5 | `theorem` | [homogeneousSubmodule_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneoussubmodule-mul--63b14f2115b58bb07f9a81c1.md) | 96 | `result-track:63b14f2115b58bb07f9a81c18ccc44181b2d369fc379b1db5b73b0279964ca9a` |
| 6 | `theorem` | [isHomogeneous_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/ishomogeneous-monomial--43c0d55c50730634515070e3.md) | 123 | `result-track:43c0d55c50730634515070e35443822aeb22f12fe52c2a51a66c60b6733b9fa6` |
| 7 | `theorem` | [isHomogeneous_of_totalDegree_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/ishomogeneous-of-totaldegree-zero--eef4d5605766fc8bcfb191b1.md) | 136 | `result-track:eef4d5605766fc8bcfb191b116b8bf4d0847393646f782bf299520e5678577c9` |
| 8 | `theorem` | [isHomogeneous_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/ishomogeneous-c--d9b345385d8c4645c8046f02.md) | 144 | `result-track:d9b345385d8c4645c8046f028c7d5f76ce54cb8a6ab4f410e987055751d354ba` |
| 9 | `theorem` | [isHomogeneous_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/ishomogeneous-zero--f4ee989e7f4d06fa6722cc2f.md) | 152 | `result-track:f4ee989e7f4d06fa6722cc2f2259d410a3d3aad06e474f2641436c61c567dcda` |
| 10 | `theorem` | [isHomogeneous_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/ishomogeneous-one--4b7ac756dc8f3dddc2594c23.md) | 156 | `result-track:4b7ac756dc8f3dddc2594c2362ba7783f9dc63b292559c0552143c58bfdef919` |
| 11 | `theorem` | [isHomogeneous_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/ishomogeneous-x--bb28e3881e702f674d18468c.md) | 162 | `result-track:bb28e3881e702f674d18468cd96b02a73dde003c08e7e1d4402563445d8c877b` |
| 12 | `theorem` | [coeff_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/coeff-eq-zero--2f2c14b8b046e9c2836328ee.md) | 175 | `result-track:2f2c14b8b046e9c2836328eec3fe6d49b9b41da73e6d86ddf6fdf049a63d3afe` |
| 13 | `theorem` | [inj_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/inj-right--841e81252d5e57bfdb0d8ff7.md) | 182 | `result-track:841e81252d5e57bfdb0d8ff736d03a7cb46540b71d7139ea6a22fe052f6beac8` |
| 14 | `theorem` | [add](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/add--8d98af0603ef88f930cd478a.md) | 187 | `result-track:8d98af0603ef88f930cd478afd856ddd437a577b7826231959e21b12d59f666c` |
| 15 | `theorem` | [sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/sum--05527b0de60dfed7fa445ee0.md) | 191 | `result-track:05527b0de60dfed7fa445ee0dc35d34ad3f080f3762e4d05c4b6f2fbd8be3a4b` |
| 16 | `theorem` | [mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/mul--9f4a66eaa09a2aeb8d3c9fba.md) | 196 | `result-track:9f4a66eaa09a2aeb8d3c9fbaab8fe27da3036029074dbfab6cb50f08f52777d8` |
| 17 | `theorem` | [prod](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/prod--433492a071137cd5831d20bc.md) | 200 | `result-track:433492a071137cd5831d20bc8daa4f0d97beb4c27fec93603e0f1d6e309028f7` |
| 18 | `theorem` | [totalDegree](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/totaldegree--08c22fb9c2df1050fd71ef7a.md) | 214 | `result-track:08c22fb9c2df1050fd71ef7a2f6a08fd2413387a87f0b72fb3c9ca3db1dedd16` |
| 19 | `instance` | [HomogeneousSubmodule.gcommSemiring](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneoussubmodule-gcommsemiring--7ebf79754fe6e268b1854ef6.md) | 230 | `declaration-track:7ebf79754fe6e268b1854ef65b520c31646d5e198dd81006911f059b72cebbe8` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/example--9bec0933a3b7c2093cee9073.md) | 237 | `declaration-track:9bec0933a3b7c2093cee90733830c229e57bbd62481442775d596ca3ca8cd298` |
| 21 | `example` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/example--5ace08a70431ff1327aa395c.md) | 240 | `declaration-track:5ace08a70431ff1327aa395cea9c3876175e648d2b60fc763727efa0aae6fa0b` |
| 22 | `def` | [homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneouscomponent--c1bc769053d96b1f980d1ef7.md) | 252 | `declaration-track:c1bc769053d96b1f980d1ef75814c8d0c9583899c32c653be13133e3cfe3ca49` |
| 23 | `theorem` | [coeff_homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/coeff-homogeneouscomponent--77c5888997f479cbffd4586a.md) | 262 | `result-track:77c5888997f479cbffd4586ada03828af8c9d6d309ffd780984ecfda7d0a9fd2` |
| 24 | `theorem` | [homogeneousComponent_apply](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneouscomponent-apply--487b659a96f7f86ec1531a2e.md) | 267 | `result-track:487b659a96f7f86ec1531a2eef0991d28c0b52e28ec21ca0e62ccc25246c20d7` |
| 25 | `theorem` | [homogeneousComponent_isHomogeneous](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneouscomponent-ishomogeneous--e4d6bad4a4477c0a6b14c981.md) | 273 | `result-track:e4d6bad4a4477c0a6b14c98149f8c0171851391d0ad275ffe75c9e081900cd3c` |
| 26 | `theorem` | [homogeneousComponent_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneouscomponent-zero--0ef67935e8908681d10c2426.md) | 280 | `result-track:0ef67935e8908681d10c242647c162b9a330698cf1676903b733c759ced606b3` |
| 27 | `theorem` | [homogeneousComponent_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneouscomponent-c-mul--fd305f903ba76b5d3fef4f84.md) | 292 | `result-track:fd305f903ba76b5d3fef4f8484a175379a83fed6721f28ae90e1e8dd017cc619` |
| 28 | `theorem` | [homogeneousComponent_eq_zero'](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneouscomponent-eq-zero--e5c128ee5b310f038c073aec.md) | 298 | `result-track:e5c128ee5b310f038c073aeca6203e9e8f5e614ca716fdcf3fbdcca70e43468a` |
| 29 | `theorem` | [homogeneousComponent_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneouscomponent-eq-zero--48aee3f82898d25639cabb83.md) | 306 | `result-track:48aee3f82898d25639cabb83b3f826f69eecb0b64e8e875084e6b26e71ac1bb0` |
| 30 | `theorem` | [sum_homogeneousComponent](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/sum-homogeneouscomponent--e10d7440c887448c96d0e802.md) | 314 | `result-track:e10d7440c887448c96d0e802b1ce669038b1893c3df81ec1d77fc490d91c23c0` |
| 31 | `theorem` | [homogeneousComponent_homogeneous_polynomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Homogeneous/Variantbe3e56d84fd6bb5c27cc411979770d0c93eb760657885a9068ad4fbeb93acf83.lean/declarations/homogeneouscomponent-homogeneous-polynomial--fad67379a937c368554843f3.md) | 322 | `result-track:fad67379a937c368554843f3ae4e8cf21be9e64957bfa3f3b6599396482ca7fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
