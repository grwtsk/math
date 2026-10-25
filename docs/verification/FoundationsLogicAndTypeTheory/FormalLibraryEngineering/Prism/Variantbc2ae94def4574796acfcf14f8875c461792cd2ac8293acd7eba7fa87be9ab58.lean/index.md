# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prism.Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d7f7dd9afeda4aea217707c1d163a83bac050f4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d7f7dd9afeda4aea217707c1d163a83bac050f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.CellComplex` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PrismCellKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean/declarations/prismcellkind--727f7a799f0ebd18b30790ee.md) | 22 | `declaration-track:727f7a799f0ebd18b30790ee33b19693fb6a70f54d9ea20e1d3a9f18cf30ddee` |
| 2 | `structure` | [NPrismDescriptor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean/declarations/nprismdescriptor--1aec40a76dd7f56a124b27f4.md) | 31 | `declaration-track:1aec40a76dd7f56a124b27f4284618ab33101a8da9fdfb812363ef618a9b049d` |
| 3 | `structure` | [NPrismComplex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean/declarations/nprismcomplex--49f1185b4b6105bec8ffc05e.md) | 42 | `declaration-track:49f1185b4b6105bec8ffc05ee3ebe614e63a4f5e297929da6b580abc9203d990` |
| 4 | `structure` | [PrismBoundarySphere](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean/declarations/prismboundarysphere--d65e3e4b0febf1de48b63f0f.md) | 50 | `declaration-track:d65e3e4b0febf1de48b63f0f58429d512e1f3597bb7303ce5c5b04139777fb0b` |
| 5 | `theorem` | [prism_boundary_sphere_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Prism/Variantbc2ae94def4574796acfcf14f8875c461792cd2ac8293acd7eba7fa87be9ab58.lean/declarations/prism-boundary-sphere-sound--b996aeb6723981a23d361687.md) | 62 | `result-track:b996aeb6723981a23d36168767596549c34af9a912d42b11b5a2773c1f06a282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
