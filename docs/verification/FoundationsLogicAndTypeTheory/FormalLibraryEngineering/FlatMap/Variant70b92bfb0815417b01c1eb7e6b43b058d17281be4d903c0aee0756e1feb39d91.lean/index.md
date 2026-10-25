# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FlatMap.Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb8dd3798c412a0e204c7d0850e228138c3b7693",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb8dd3798c412a0e204c7d0850e228138c3b7693`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterators.Types.Flatten](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/iterators-types-flatten--e79876dc83c9f1136805e891.md) | 30 | `declaration-track:e79876dc83c9f1136805e891242472e63469cbeae143f3aca20fb9d4d9fc00d1` |
| 2 | `def` | [IterM.flattenAfter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/iterm-flattenafter--b4a21a15b5d8ca03e6db1940.md) | 38 | `declaration-track:b4a21a15b5d8ca03e6db194017274923c43b7a118a9bd60be82ba7c99f50bbe6` |
| 3 | `def` | [IterM.flatMapAfterM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/iterm-flatmapafterm--85508a0a70b9720183ad0b65.md) | 80 | `declaration-track:85508a0a70b9720183ad0b657398176138cebaa0a7e1b3c9f647340f1a8e18b3` |
| 4 | `def` | [IterM.flatMapM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/iterm-flatmapm--39ad9ccb17bec449680d734a.md) | 119 | `declaration-track:39ad9ccb17bec449680d734abb073b955027be16c24ed3f38fce9f70aa97a7d5` |
| 5 | `def` | [IterM.flatMapAfter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/iterm-flatmapafter--1f6c516c273be155d7941de9.md) | 161 | `declaration-track:1f6c516c273be155d7941de96de77b29b1ed2161c801b8661b1b0a22d84e140d` |
| 6 | `def` | [IterM.flatMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/iterm-flatmap--87fd8faba4be312e209edfff.md) | 200 | `declaration-track:87fd8faba4be312e209edfffb8af2564eb650c6bda4e99f7b887d2d82a380b60` |
| 7 | `inductive` | [Flatten.IsPlausibleStep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-isplausiblestep--579c54215d7cdcc984c1364c.md) | 210 | `declaration-track:579c54215d7cdcc984c1364c2c1ffd91d31f59f1c0d51136d1bb74f32256dca2` |
| 8 | `instance` | [Flatten.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-institerator--a864bf2ff5b275be5088494d.md) | 225 | `declaration-track:a864bf2ff5b275be5088494d75d70ee306c77abea441b85e1e684bfd6a5cb7d3` |
| 9 | `def` | [Flatten.Rel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-rel--c5da875b3455b489a97593e0.md) | 252 | `declaration-track:c5da875b3455b489a97593e09fcabd0ef5b60576ec5b6af336c2e03c5e95dd2b` |
| 10 | `theorem` | [Flatten.rel_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-rel-of-left--82d471d40e12b51f7d9209ed.md) | 260 | `result-track:82d471d40e12b51f7d9209ede38c954e29f5dc8c04a4bc24451310875d221af0` |
| 11 | `theorem` | [Flatten.rel_of_right₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-rel-of-right--f92c63d0e53fc3f734d37fd7.md) | 266 | `result-track:f92c63d0e53fc3f734d37fd757596d89f775ccc99463a8915d4d2b8b92126717` |
| 12 | `theorem` | [Flatten.rel_of_right₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-rel-of-right--8f6e36af4bda68fac2a20d1d.md) | 272 | `result-track:8f6e36af4bda68fac2a20d1deec563dbb4159852f833cf104f060d68a96e875e` |
| 13 | `def` | [Flatten.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-instfinitenessrelation--afdaf19f5dc628ec797c228f.md) | 277 | `declaration-track:afdaf19f5dc628ec797c228f0d366119af2415e4c92e3b7677d9b6271ed1a49b` |
| 14 | `instance` | [Flatten.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-instfinite--d7fb8d65d4ed79a618420ab3.md) | 304 | `declaration-track:d7fb8d65d4ed79a618420ab3cb7a2c2cfd6d9bb816131037ad724206f7119703` |
| 15 | `def` | [Flatten.ProductiveRel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-productiverel--bf2db8d1c3af2fae4e875cc6.md) | 315 | `declaration-track:bf2db8d1c3af2fae4e875cc65601ac70e2c6c29e0992d2c065960ddd9ecd74d5` |
| 16 | `theorem` | [Flatten.productiveRel_of_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-productiverel-of-left--de090f539cdeb55e2d0c44cd.md) | 324 | `result-track:de090f539cdeb55e2d0c44cd94743a833b83a110379621e8c16078a94385d5e7` |
| 17 | `theorem` | [Flatten.productiveRel_of_right₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-productiverel-of-right--61790fc7c77f8038dda5c1f6.md) | 330 | `result-track:61790fc7c77f8038dda5c1f6eb50384c30ff1911514d5a2b29e7f0a74770db50` |
| 18 | `theorem` | [Flatten.productiveRel_of_right₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-productiverel-of-right--ac1ee3d210b12d06c0805ff3.md) | 336 | `result-track:ac1ee3d210b12d06c0805ff3a8b4d0b112356c74e85346e5e5ff90cfcfc6a25c` |
| 19 | `def` | [Flatten.instProductivenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-instproductivenessrelation--6827414a9caad4e305999ef1.md) | 341 | `declaration-track:6827414a9caad4e305999ef18988abccec5b445a93f47ac21ea03f25a4380c36` |
| 20 | `theorem` | [Flatten.instProductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-instproductive--d3d195e8d09f5b584e995160.md) | 364 | `result-track:d3d195e8d09f5b584e99516058eae809c1439643599b9fccab4a4cc47343f317` |
| 21 | `instance` | [Flatten.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/declarations/flatten-institeratorloop--bea9777f5566396ee49953c8.md) | 370 | `declaration-track:bea9777f5566396ee49953c83324e4882006cce41e940d0d80fb7a104e8443d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
