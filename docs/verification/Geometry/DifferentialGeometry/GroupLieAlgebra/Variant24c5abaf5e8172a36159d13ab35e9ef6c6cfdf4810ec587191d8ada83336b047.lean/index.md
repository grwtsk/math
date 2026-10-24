# Verification target: GRWTSK.Geometry.DifferentialGeometry.GroupLieAlgebra.Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4207a03f5c1f05d00f15cf6d3d8ce202a30c680",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4207a03f5c1f05d00f15cf6d3d8ce202a30c680`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean.json)

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
| 1 | `abbrev` | [GroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/groupliealgebra--bc2595f215e01faf88c40dd7.md) | 64 | `declaration-track:bc2595f215e01faf88c40dd7fc63f64c15095d2d6fee9a2fe1397da8c9b4fb4f` |
| 2 | `def` | [mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/mulinvariantvectorfield--8e53a2eb2c176520a4802c05.md) | 70 | `declaration-track:8e53a2eb2c176520a4802c052168db35d9ebddd1cb29a04098fd007286fcf9c5` |
| 3 | `lemma` | [mulInvariantVectorField_add](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/mulinvariantvectorfield-add--dc820ebedce08548895fd7e6.md) | 75 | `result-track:dc820ebedce08548895fd7e6f31e33147df8971ef052fd407a59185a51591c74` |
| 4 | `lemma` | [addInvariantVectorField_smul](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/addinvariantvectorfield-smul--b4bdb8b849f28e14825e8cf9.md) | 83 | `result-track:b4bdb8b849f28e14825e8cf9dc46c793f86156a0e90a237a22be5c61f2bf8434` |
| 5 | `lemma` | [mulInvariantVectorField_smul](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/mulinvariantvectorfield-smul--0873c45b7a066185b3706890.md) | 90 | `result-track:0873c45b7a066185b3706890e621bc7241772d34cf68fb9cbb0b58b09b88a8d9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/instance--34b0cd20883f8e2c87ca718a.md) | 101 | `declaration-track:34b0cd20883f8e2c87ca718a0eb51b261558f1c87bd1849a41a096d8d17b20f4` |
| 7 | `lemma` | [GroupLieAlgebra.bracket_def](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/groupliealgebra-bracket-def--e651847fc00817de6f0df6de.md) | 105 | `result-track:e651847fc00817de6f0df6de86ff5375c78ffd549a9182e1039515feb58fd75c` |
| 8 | `lemma` | [inverse_mfderiv_mul_left](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/inverse-mfderiv-mul-left--a4685d0ea5784116cbcdc7fb.md) | 111 | `result-track:a4685d0ea5784116cbcdc7fb2989c85e8a562432d3b1dc23882c92dd3cdc8f8c` |
| 9 | `lemma` | [mpullback_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/mpullback-mulinvariantvectorfield--f0eccb619a4fc755492bfd85.md) | 130 | `result-track:f0eccb619a4fc755492bfd8516cc23647fb278b897f116dda6086418f46b1701` |
| 10 | `lemma` | [mulInvariantVectorField_eq_mpullback](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/mulinvariantvectorfield-eq-mpullback--2e87fa6df67b43dfa84927f7.md) | 145 | `result-track:2e87fa6df67b43dfa84927f7894609509c11fd0e768788c8aa51cadf660a02db` |
| 11 | `theorem` | [contMDiff_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/contmdiff-mulinvariantvectorfield--13e1fe08cabad1408fd9800e.md) | 155 | `result-track:13e1fe08cabad1408fd9800ef407ef1d8f97be1ab6305e116e3d665a334b569f` |
| 12 | `theorem` | [contMDiffAt_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/contmdiffat-mulinvariantvectorfield--19d47d05343a6dc061b2717c.md) | 196 | `result-track:19d47d05343a6dc061b2717c2095afa294dbbe3fb79c2982d536ab1fb69d42fc` |
| 13 | `theorem` | [mdifferentiable_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/mdifferentiable-mulinvariantvectorfield--a472e7a377ae9dc2f5bbce81.md) | 202 | `result-track:a472e7a377ae9dc2f5bbce81e4201438bb75205cf99ca8df3d67858aee46072d` |
| 14 | `theorem` | [mdifferentiableAt_mulInvariantVectorField](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/mdifferentiableat-mulinvariantvectorfield--71d6d38d03051b40641cbee4.md) | 208 | `result-track:71d6d38d03051b40641cbee448ba6c3f20af36fd4b4fa09c798bedf5562e1569` |
| 15 | `lemma` | [mulInvariantVector_mlieBracket](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/mulinvariantvector-mliebracket--15d28d86d99ea2c0eaf3895e.md) | 222 | `result-track:15d28d86d99ea2c0eaf3895e6729662e74400784bdd46caf5344f7f78e4cd785` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/instance--7df1588b35bad93fcd4054d3.md) | 238 | `declaration-track:7df1588b35bad93fcd4054d3da44cfbf76e83eda447d932025d0583e308adf17` |
| 17 | `instance` | [instLieAlgebraAddGroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/instliealgebraaddgroupliealgebra--e550ba8ab2571a65261d5c53.md) | 260 | `declaration-track:e550ba8ab2571a65261d5c53f59a0389d692c764ea5fbe5096bbb0981ececbfb` |
| 18 | `instance` | [instLieAlgebraGroupLieAlgebra](../../../../../mathematics/Geometry/DifferentialGeometry/GroupLieAlgebra/Variant24c5abaf5e8172a36159d13ab35e9ef6c6cfdf4810ec587191d8ada83336b047.lean/declarations/instliealgebragroupliealgebra--6e5d7ac335489f0430d6f609.md) | 270 | `declaration-track:6e5d7ac335489f0430d6f6098105249b5bb7d96cdccda8df5f5cdc1866e52dec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
