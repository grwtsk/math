# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LOption.Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf1fd9411d853947ecb6e618354a39a44f77ee03",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf1fd9411d853947ecb6e618354a39a44f77ee03`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean.json)

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
| 1 | `inductive` | [LOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean/declarations/loption--e20a836bf4f86babb40da903.md) | 18 | `declaration-track:e20a836bf4f86babb40da903ab556ad255c7040ad030fb8af281a8f0068ee133` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean/declarations/instance--d4961a9489564f7a32f1eaaf.md) | 24 | `declaration-track:d4961a9489564f7a32f1eaaf9894c2774d5d9969895f83ebf8ffd5861c7ce468` |
| 3 | `def` | [LOption.toOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean/declarations/loption-tooption--c406523a4d11bca9491c250f.md) | 30 | `declaration-track:c406523a4d11bca9491c250ffd5f91738793d92a87244ca4ebd28c76793a238f` |
| 4 | `def` | [Option.toLOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean/declarations/option-toloption--930c7792c37f8a69715a53ab.md) | 34 | `declaration-track:930c7792c37f8a69715a53ab7df180bf485aedc2b4b084fec193f4da1a78216f` |
| 5 | `def` | [toLOptionM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LOption/Variant25217f9032365fe46dfb504012678d6dd903dcd36433038c9dc7e9e1995e50dd.lean/declarations/toloptionm--a8688fa78c66c93e6913fe6b.md) | 38 | `declaration-track:a8688fa78c66c93e6913fe6b66e5f896e2a22701a05cfc769cc1255187aa7bfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
