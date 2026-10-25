# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PrintPrefix.Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e586672e268881628802a6e040dc2abf72c989b",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e586672e268881628802a6e040dc2abf72c989b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.PrintPrefix` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/declarations/tempty--129edd3cb9d60e1e23b8a98b.md) | 3 | `declaration-track:129edd3cb9d60e1e23b8a98bf977cb15a1eecab343f90f2da879d5ac899138e2` |
| 2 | `def` | [foo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/declarations/foo--5cac9ba105881f722f343408.md) | 34 | `declaration-track:5cac9ba105881f722f343408ed4cdfacdc63ada0a042c0e290e30f55f09749e9` |
| 3 | `structure` | [TestStruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/declarations/teststruct--b0539475a0ff846dc0b0332a.md) | 43 | `declaration-track:b0539475a0ff846dc0b0332afeda0c8ed4ef9b63da98973a179dabc9c61b4f5e` |
| 4 | `def` | [testMatchProof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/declarations/testmatchproof--e317f7a93427c070db3a00c3.md) | 131 | `declaration-track:e317f7a93427c070db3a00c3b2244477f9d65145b838fb8cd3a4fccc09b5f10a` |
| 5 | `inductive` | [TestInd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintPrefix/Variant630f9255be4a7f84417b5d659e545fc68adf318700f31ac7365402d1ae6f8fda.lean/declarations/testind--6e2715a38c279467efefe319.md) | 152 | `declaration-track:6e2715a38c279467efefe31978d1ec71ccdfb0e1f19b980ed10cdbb7d6e75205` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
