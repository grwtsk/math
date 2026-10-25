# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SparseCasesOn.Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83d5455a68d67cf311eb70ab2a007b459c7c00df",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83d5455a68d67cf311eb70ab2a007b459c7c00df`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.AddDecl` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.HasNotBit` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Transform` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SparseCasesOnKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/declarations/sparsecasesonkey--6ab644d92922e9ebbac39386.md) | 26 | `declaration-track:6ab644d92922e9ebbac39386117634ad9eeb0edf9c5268791d4f014515f21db3` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/declarations/builtin-initialize--65e59d296fd61c49107861e4.md) | 34 | `declaration-track:65e59d296fd61c49107861e424263a1cc40622e799ca5c576353c800434fac4f` |
| 3 | `structure` | [SparseCasesOnInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/declarations/sparsecasesoninfo--2a7cb6ae30e1d81b91f093ea.md) | 38 | `declaration-track:2a7cb6ae30e1d81b91f093ea430e869fd18a1381cafc6d540d42cb4ec1b5fc2b` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/declarations/builtin-initialize--232684b3bab9db74f3d6dafc.md) | 45 | `declaration-track:232684b3bab9db74f3d6dafc5985673597af8cfd74e6cce52c2267cf3aaa769c` |
| 5 | `def` | [mkSparseCasesOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/declarations/mksparsecaseson--01fdfb8a2a07d7412ab9edce.md) | 67 | `declaration-track:01fdfb8a2a07d7412ab9edce48fa090427967f4a49fb0884054c2919881fadfd` |
| 6 | `def` | [getSparseCasesOnInfoCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/declarations/getsparsecasesoninfocore--066ba6fb592d6bb20026eccb.md) | 156 | `declaration-track:066ba6fb592d6bb20026eccb78920efbb4bce0ab9c6d1dd4a80c93dbf3598c90` |
| 7 | `def` | [getSparseCasesOnInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SparseCasesOn/Variant9101725249967de796c7bb44c9ea09eb2427d30301bfc19f928833b9699a638b.lean/declarations/getsparsecasesoninfo--c7dfe8126551f2d6c42b1714.md) | 159 | `declaration-track:c7dfe8126551f2d6c42b1714a5856ab222e7ea022761f3dc2762c58811a97731` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
