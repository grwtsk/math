# Verification target: GRWTSK.Algebra.LinearAlgebra.IsometryEquiv.Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b851ffdfb22f968d4a6f73aaf9cecc444da7ce31",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b851ffdfb22f968d4a6f73aaf9cecc444da7ce31`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean.json)

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
| 1 | `structure` | [IsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/isometryequiv--1af311253d19995166c70657.md) | 47 | `declaration-track:1af311253d19995166c7065782ac03728add6f6a7fe25b66e835b3c7b9854160` |
| 2 | `def` | [Equivalent](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/equivalent--0d3a2eda19b2e23c2ccceb6a.md) | 54 | `declaration-track:0d3a2eda19b2e23c2ccceb6a951ca96286bab92004e0b8baf5744f70e1165d3a` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/instance--98a2b579df683a5f1aaab23c.md) | 64 | `declaration-track:98a2b579df683a5f1aaab23cd569a22c965c304acdf18d1ba4db159e26cdec2a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/instance--822325e73c30793e66824862.md) | 71 | `declaration-track:822325e73c30793e66824862efcf502708787b8104cad81b79001045182c9073` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/instance--75bb1884948d450312d8f2ec.md) | 75 | `declaration-track:75bb1884948d450312d8f2ec71f4ad98ef08d14a6439330e4b0bca7f1f3d28eb` |
| 6 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/coe-tolinearequiv--17200bc8df479fe3b62f650e.md) | 79 | `result-track:17200bc8df479fe3b62f650ea5fd53259ec0eb250194f0fcf9091e9fab81476a` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/map-app--bc7caccf1892a840d6414d98.md) | 83 | `result-track:bc7caccf1892a840d6414d986c273714d837f8722d0a10327a66f236ad8dfd1d` |
| 8 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/refl--dc915c2215f1029785b467fc.md) | 88 | `declaration-track:dc915c2215f1029785b467fc2008c0b7f5d1a7aa10d34814c603f49177a86262` |
| 9 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/symm--5dc1b03a8d077a3a8b7539bd.md) | 93 | `declaration-track:5dc1b03a8d077a3a8b7539bdd0c1ba4bddf5f640de946b9860ff060cc1874289` |
| 10 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/trans--13f7c92602fa9f7996aa06c9.md) | 101 | `declaration-track:13f7c92602fa9f7996aa06c9303f141936e3e3457ccdbcf622a67b8cee8d0cf1` |
| 11 | `def` | [toIsometry](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/toisometry--2220bbed5d28888849062395.md) | 107 | `declaration-track:2220bbed5d2888884906239568b0d86b9f038729914314b9dd1f227041722cd0` |
| 12 | `theorem` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/refl--df3ed806a86f11bb62b0bd28.md) | 119 | `result-track:df3ed806a86f11bb62b0bd28b8e0cbafce35f1710e630adb6083cda7a9de89ca` |
| 13 | `theorem` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/symm--6e9f427effc5b249b60de4d9.md) | 123 | `result-track:6e9f427effc5b249b60de4d93988702535e291b578df5ffe93892ac4de43fb96` |
| 14 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/trans--43679b6bb7f0ced7a12098d6.md) | 127 | `result-track:43679b6bb7f0ced7a12098d61ffe92ebdc179389c303d7ad594dc718dab80370` |
| 15 | `def` | [isometryEquivOfCompLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant572d2f2ead9be636418c82efc7eb3bc7b03773991a39094e40f9fd70c70f41a7.lean/declarations/isometryequivofcomplinearequiv--7fc9036080d504ddecbe66d3.md) | 133 | `declaration-track:7fc9036080d504ddecbe66d3d58e3f9b0a0e563de99463c11e5b617c4321926c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
