# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reaction.Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "830db30fafa058e475125e51dd52fcfad747f0a6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `830db30fafa058e475125e51dd52fcfad747f0a6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Fabric.Simplicial` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Reaction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/declarations/reaction--132cd1735b2af5788e68d24d.md) | 9 | `declaration-track:132cd1735b2af5788e68d24d05fc1f84ad15334d8c16ebaacb564363965f0bc1` |
| 2 | `def` | [identity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/declarations/identity--343f579d15abd09551b8aadc.md) | 14 | `declaration-track:343f579d15abd09551b8aadc8b00612e9b72fc44cf247cdb7e7f871f0ecc8809` |
| 3 | `def` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/declarations/comp--5af20b7ce9f21fbc2d3e0326.md) | 16 | `declaration-track:5af20b7ce9f21fbc2d3e03260390d73c0e260336a08b4f537b6f46595026a5bf` |
| 4 | `theorem` | [id_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/declarations/id-comp--96dce2a71d52c9bbfe57f3b5.md) | 19 | `result-track:96dce2a71d52c9bbfe57f3b5f95e2887080390e9c0a2acb4448a6df7d8976d16` |
| 5 | `theorem` | [comp_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/declarations/comp-id--ae6063237f10dd8efb80fe43.md) | 24 | `result-track:ae6063237f10dd8efb80fe435f28cf30d972ec48a2d71cdee4598a1da8494a58` |
| 6 | `theorem` | [comp_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/declarations/comp-assoc--d8bea56a51ae0e77e2d86707.md) | 29 | `result-track:d8bea56a51ae0e77e2d8670714696c0e73cd82ac7080ad12e24501f2cb33fbd1` |
| 7 | `structure` | [LocalPatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reaction/Variantb764ceeed38da5acd82455e9977d176aac84bab23f5221de9e7e78d483c3aa3b.lean/declarations/localpatch--8642f65d5405b723c6ee69b0.md) | 39 | `declaration-track:8642f65d5405b723c6ee69b045cd7878da62f0cbfc1b580d5dbf1110984ced2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
