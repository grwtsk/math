# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WeakEqualizers.Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9852d34a954f19e03d52f3b74df61f1aa1255760",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9852d34a954f19e03d52f3b74df61f1aa1255760`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasWeakEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/hasweakequalizer--627cb718ad03093df1080fe0.md) | 42 | `declaration-track:627cb718ad03093df1080fe0d7389797d37682bb09114700bc16e42f7bcc80fd` |
| 2 | `abbrev` | [weakEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer--d6195fdd386446e288fe6607.md) | 49 | `declaration-track:d6195fdd386446e288fe660781b36a13f1c9ed0d79bafeb133a38b9d4fb9adb7` |
| 3 | `abbrev` | [weakEqualizer.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer--3f0f0005db95ff212e306cdd.md) | 54 | `declaration-track:3f0f0005db95ff212e306cddf3479f528ef9c9b8732142581d58b848bdee65f9` |
| 4 | `abbrev` | [weakEqualizer.fork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer-fork--7dd4afae2fb90a6070458555.md) | 58 | `declaration-track:7dd4afae2fb90a60704585559dd336aed9faf0e7bd44fc63ed6ca4c230338fd1` |
| 5 | `theorem` | [weakEqualizer.fork_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer-fork--9946d1c39b818134e48a97c6.md) | 62 | `result-track:9946d1c39b818134e48a97c6e95e38340881e59e7bdbd80c2c1f3d772d5fdb43` |
| 6 | `theorem` | [weakEqualizer.fork_π_app_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer-fork-app-zero--59b0f08649bcd30f8b184d1b.md) | 66 | `result-track:59b0f08649bcd30f8b184d1b9d3b01a4a440e181f82d146239772743c27be726` |
| 7 | `theorem` | [weakEqualizer.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer-condition--2012511090c64ae9155c7bba.md) | 71 | `result-track:2012511090c64ae9155c7bba7a1aec1386a92196569850e60cfe7ce8272f7fb5` |
| 8 | `def` | [weakEqualizerIsWeakEqualizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizerisweakequalizer--9ebc0311363542edc4810eaa.md) | 76 | `declaration-track:9ebc0311363542edc4810eaac5d8ff03ae908b84d2dcb698b712e9edee61f866` |
| 9 | `abbrev` | [weakEqualizer.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer-lift--f3598a70535e3ec08792d09c.md) | 84 | `declaration-track:f3598a70535e3ec08792d09ce912cbde7c264e9104ba4b9640b88929910f9722` |
| 10 | `theorem` | [weakEqualizer.lift_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer-lift--0b86c6ed0db1cc7e0c52533b.md) | 89 | `result-track:0b86c6ed0db1cc7e0c52533b97b69bbdd61e1e1813d473fce0c3ec0788803df0` |
| 11 | `def` | [weakEqualizer.lift'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/weakequalizer-lift--382972ba95bc07065414900c.md) | 95 | `declaration-track:382972ba95bc07065414900cb1c0b3ef392163bff1e2b67a819b3af19585868e` |
| 12 | `abbrev` | [HasWeakEqualizers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/hasweakequalizers--81f5a1c09be7acb24bb8a6bf.md) | 103 | `declaration-track:81f5a1c09be7acb24bb8a6bfd3a08350dc0e70201932b064643ff1ca88aca9c5` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/instance--e34cedffa5389003527fdd0a.md) | 107 | `declaration-track:e34cedffa5389003527fdd0af1649b4506a3eae6c750c599a6cf71be7a8c9fbf` |
| 14 | `theorem` | [hasWeakEqualizers_of_hasWeakLimit_parallelPair](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/hasweakequalizers-of-hasweaklimit-parallelpair--4264f016cb3f25df94c6b338.md) | 111 | `result-track:4264f016cb3f25df94c6b33883db79be483073acf8e90c85f548071e76ca2d14` |
| 15 | `def` | [Fork.IsWeakLimit.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/fork-isweaklimit-mk--cf4c8b77d495708613014061.md) | 120 | `declaration-track:cf4c8b77d495708613014061e2b0acb0a719bb905a9229ec7fc5ecc3c49ead4f` |
| 16 | `def` | [Fork.IsWeakLimit.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WeakEqualizers/Variant9c8456e5d85682944acfe51f9f9470b794f67bb40ee35bc44defdeef032d32f7.lean/declarations/fork-isweaklimit-mk--aa7fde2046bdda464cf4de11.md) | 130 | `declaration-track:aa7fde2046bdda464cf4de114944b8cb918f643f4f2c01f999bdc3743ace6486` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
