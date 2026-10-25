# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clean.Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab74cb423e0dabcda7b48155525670e5b334309c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab74cb423e0dabcda7b48155525670e5b334309c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.SyntheticMVars` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cleanConsts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean/declarations/cleanconsts--49af9323e6aa6740edd9d9d3.md) | 30 | `declaration-track:49af9323e6aa6740edd9d9d3766494a225c817f6b4c877f91d828ec15c549a9b` |
| 2 | `def` | [clean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean/declarations/clean--e0c0403111eedbdda21c12d0.md) | 35 | `declaration-track:e0c0403111eedbdda21c12d01e17fcf53d62f7e14131fd96cbe5d2b093346088` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean/declarations/syntax--b95954e1c72c8a8d992196f6.md) | 66 | `declaration-track:b95954e1c72c8a8d992196f6cc85930b1d3cf8b8d99f218e13e6009b5a0199a3` |
| 4 | `def` | [elabClean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean/declarations/elabclean--18d4ea26e7321d09a920918e.md) | 69 | `declaration-track:18d4ea26e7321d09a920918e87004d6640435fa4f02069136bd8c4566ece47d1` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clean/Variantfea38a226fdbd0a588b9c71bd8e6533a628ed4c9688e80316c5aa17c9ab17ff9.lean/declarations/macro--7b2e1e6694f7144514e778ca.md) | 77 | `declaration-track:7b2e1e6694f7144514e778ca5db0f8e00e85eb91fd3456431c105fbeac43c866` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
