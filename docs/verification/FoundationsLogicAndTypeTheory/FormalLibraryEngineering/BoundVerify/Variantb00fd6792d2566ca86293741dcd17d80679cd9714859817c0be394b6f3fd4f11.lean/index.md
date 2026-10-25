# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BoundVerify.Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "063041f9a13dbbb802987ada3c7e9e9a13976777",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `063041f9a13dbbb802987ada3c7e9e9a13976777`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.Optimization.Global` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoundVerifyConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/boundverifyconfig--e4272d6797475e3fffa495b6.md) | 57 | `declaration-track:e4272d6797475e3fffa495b678e5ec3f0aa5dccc59075fb5fd90b85cafd0912e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/instance--3a4b205aabf6da37558cbc67.md) | 68 | `declaration-track:3a4b205aabf6da37558cbc676d35a52192f7960c0acafe9c539945e3d8b41bb0` |
| 3 | `def` | [BoundVerifyConfig.toGlobalOptConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/boundverifyconfig-toglobaloptconfig--a92c5c3b65d4f0f7431ea26c.md) | 71 | `declaration-track:a92c5c3b65d4f0f7431ea26c09536c4d9a1bbdc3a30bb58380b9f4d362ac4356` |
| 4 | `structure` | [WitnessPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/witnesspoint--7590d8fc4201248abc9354a9.md) | 80 | `declaration-track:7590d8fc4201248abc9354a95a72f5be3c5d03f032a411eb28e06fa74f934e0a` |
| 5 | `structure` | [BoundVerifyResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/boundverifyresult--b3ac16878f9e3eebd7da2c44.md) | 88 | `declaration-track:b3ac16878f9e3eebd7da2c4417b5207723ad0c362e991235ebb4bcfda01e2f3d` |
| 6 | `def` | [Box.midpoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/box-midpoint--111bae5db386d64862a5ff05.md) | 102 | `declaration-track:111bae5db386d64862a5ff0525be6b40093f1d73023c3d82f464fd3630e0c686` |
| 7 | `def` | [Box.maxWidthQ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/box-maxwidthq--7fc513f65fd25c7226469dc1.md) | 106 | `declaration-track:7fc513f65fd25c7226469dc1082ede340227633e49f1423e14721bfbfe91454c` |
| 8 | `def` | [evalAtPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/evalatpoint--3f78e93cf92e0bd402b3b23d.md) | 110 | `declaration-track:3f78e93cf92e0bd402b3b23ddfe57327bb2453ca8c977e6853c2f855b69df7e5` |
| 9 | `def` | [verifyUpperBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifyupperbound--4960a544f429cba0e0efb7c2.md) | 121 | `declaration-track:4960a544f429cba0e0efb7c29bb5793f95902509916dfaf1f09d52ae8ef28fb7` |
| 10 | `def` | [verifyLowerBound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifylowerbound--aa515879c2943025d4150ded.md) | 128 | `declaration-track:aa515879c2943025d4150dedd7f2b08eab4192e0106bc771dd27645edf0f2123` |
| 11 | `def` | [verifyUpperBoundStrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifyupperboundstrict--f63d71da2663190e48652480.md) | 135 | `declaration-track:f63d71da2663190e486524806eeaf6bb3bf1975d90e2bead770cfef92ff7c642` |
| 12 | `def` | [verifyLowerBoundStrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifylowerboundstrict--93e2cb504394f7daf9833f9c.md) | 142 | `declaration-track:93e2cb504394f7daf9833f9cb4aaae0e68f87505d2a5825098d7b0b870a1b274` |
| 13 | `def` | [findMaxWithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/findmaxwithwitness--9cc396a07cb358c715f4d7c3.md) | 152 | `declaration-track:9cc396a07cb358c715f4d7c3d45de01cb2c4cc0aa992dacf6fa35caa0fb42a55` |
| 14 | `def` | [findMinWithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/findminwithwitness--22177e4befe5ab9d46070e0a.md) | 165 | `declaration-track:22177e4befe5ab9d46070e0aef10bdba0d19cebcb5c12ceb04479c27a2633612` |
| 15 | `def` | [verifyUpperBoundWithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifyupperboundwithwitness--34ac12c9bafe6291b5d87d1c.md) | 177 | `declaration-track:34ac12c9bafe6291b5d87d1cf7e57b4f01fe7dea3a95309a284c4741eb7eb446` |
| 16 | `def` | [verifyLowerBoundWithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifylowerboundwithwitness--443aed52d515745dbb55183a.md) | 190 | `declaration-track:443aed52d515745dbb55183aeacff93f2acf4e513d95404edad37b20dfda54c2` |
| 17 | `def` | [intervalToBox](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/intervaltobox--abbcae88278cdf8ffc6df61c.md) | 204 | `declaration-track:abbcae88278cdf8ffc6df61c3ac9e87f7cda3f811c6541dc8ff9da8745fa555e` |
| 18 | `def` | [verifyUpperBound1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifyupperbound1--c91b259a904f5d9e7f17f767.md) | 207 | `declaration-track:c91b259a904f5d9e7f17f76765bb1069fd7b0ef09c862dfdd4c1696b8c4d6742` |
| 19 | `def` | [verifyLowerBound1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifylowerbound1--fcfd654bb2b045284bde9896.md) | 212 | `declaration-track:fcfd654bb2b045284bde98964042435f27c335f1a2d2ae5389f3b83e7f70c885` |
| 20 | `def` | [verifyUpperBound1Strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifyupperbound1strict--8611bba0b09a68770e864bfa.md) | 217 | `declaration-track:8611bba0b09a68770e864bfaf67007c849f6127000e732e78dc43bfcd7236424` |
| 21 | `def` | [verifyLowerBound1Strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifylowerbound1strict--6cec14731d84472fbf55a602.md) | 222 | `declaration-track:6cec14731d84472fbf55a602db14f211dcae7bf01ea1cd3578ccb8a12a73d70a` |
| 22 | `def` | [findMax1WithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/findmax1withwitness--e91a0d03a82ff03fccd53160.md) | 227 | `declaration-track:e91a0d03a82ff03fccd531604a2eecf10d1c9da1c3d350c60f124fad9ca3f93e` |
| 23 | `def` | [findMin1WithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/findmin1withwitness--db778e1c7ab01a6b9828a426.md) | 231 | `declaration-track:db778e1c7ab01a6b9828a42622f752b644c3b60ed03643d12040248ed27ac475` |
| 24 | `def` | [verifyUpperBound1WithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifyupperbound1withwitness--b3bb1e2db64c4b845731a17d.md) | 235 | `declaration-track:b3bb1e2db64c4b845731a17d4bfb6b1678d4591e3925f8017dd6262dda91beaa` |
| 25 | `def` | [verifyLowerBound1WithWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifylowerbound1withwitness--104f9b3e761f6383110a0490.md) | 240 | `declaration-track:104f9b3e761f6383110a049067045341cc63e773be69e99eb2e91375912f419e` |
| 26 | `theorem` | [intervalToBox_envMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/intervaltobox-envmem--2bdd58528cde89d36c74f319.md) | 247 | `result-track:2bdd58528cde89d36c74f319187bed42a6c3dc2f83c7ad76088d023131505112` |
| 27 | `theorem` | [intervalToBox_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/intervaltobox-zero--14b6d768c0a17087f3a965d9.md) | 257 | `result-track:14b6d768c0a17087f3a965d9ba50698c06d2888500a21b96299116e713a93e55` |
| 28 | `theorem` | [verifyUpperBound_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifyupperbound-correct--c10ddd2ee082bd5017fd5203.md) | 264 | `result-track:c10ddd2ee082bd5017fd520354fcfe10e9e36e91da727f812bd0112dc9c8de58` |
| 29 | `theorem` | [verifyLowerBound_correct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/verifylowerbound-correct--53edeea56c9de45a7135ecf0.md) | 291 | `result-track:53edeea56c9de45a7135ecf07aa89e1c056a03af4e0f18f4f75faab787a60ac9` |
| 30 | `def` | [Expr.usesOnlyVar0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/expr-usesonlyvar0--4330b393d970ab0ea161c7b8.md) | 305 | `declaration-track:4330b393d970ab0ea161c7b8d82b5c8ff42e6702049ce8d694efd8616c42d85e` |
| 31 | `theorem` | [Expr.eval_usesOnlyVar0](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/expr-eval-usesonlyvar0--fec6331b4ebd5dd609cb8f1e.md) | 328 | `result-track:fec6331b4ebd5dd609cb8f1e45a1a1027b7d653e6aaea098de9257c6c8919583` |
| 32 | `theorem` | [adaptive_upper_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/adaptive-upper-bound--3267e50ed6ad92d81bc940f7.md) | 371 | `result-track:3267e50ed6ad92d81bc940f70af3aaa67a5ef520eb93ea4ccd363bcac2859725` |
| 33 | `theorem` | [adaptive_lower_bound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/adaptive-lower-bound--67f0f9e7b2040fed9be3b5fc.md) | 403 | `result-track:67f0f9e7b2040fed9be3b5fc2c7187037c353ba66b879ee7025fdc063a358a91` |
| 34 | `theorem` | [adaptive_upper_bound_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/adaptive-upper-bound-strict--8c2122038d7f4b3c354d49ff.md) | 432 | `result-track:8c2122038d7f4b3c354d49ff9311a4752d1d11d9656720a050e4aefa9a4a37ad` |
| 35 | `theorem` | [adaptive_lower_bound_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/adaptive-lower-bound-strict--1b20f9fbc46fdad66cf83201.md) | 472 | `result-track:1b20f9fbc46fdad66cf83201da2af2611ee45976152c923d54ffec4fef0ed57e` |
| 36 | `theorem` | [adaptive_upper_bound_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/adaptive-upper-bound-icc--bfbd3dbae7a1bcad029fc7b5.md) | 503 | `result-track:bfbd3dbae7a1bcad029fc7b559f502afe62ac281cefed6fd64b3d94a966072a5` |
| 37 | `theorem` | [adaptive_lower_bound_Icc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/adaptive-lower-bound-icc--e86514d0e0ea9d948ca53acc.md) | 515 | `result-track:e86514d0e0ea9d948ca53accd162298a680db11ee307be150fad13f42dd0eb85` |
| 38 | `theorem` | [adaptive_upper_bound_Icc_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/adaptive-upper-bound-icc-strict--63226a11792cccd24e05807b.md) | 527 | `result-track:63226a11792cccd24e05807ba1959978635e7ba1c07a6d4c0301f8d977e46716` |
| 39 | `theorem` | [adaptive_lower_bound_Icc_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundVerify/Variantb00fd6792d2566ca86293741dcd17d80679cd9714859817c0be394b6f3fd4f11.lean/declarations/adaptive-lower-bound-icc-strict--8ba1ebec1052c4e1cdbd1990.md) | 539 | `result-track:8ba1ebec1052c4e1cdbd19909b82cdcac198eabfc3cf260a2a398aa219e51c1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
