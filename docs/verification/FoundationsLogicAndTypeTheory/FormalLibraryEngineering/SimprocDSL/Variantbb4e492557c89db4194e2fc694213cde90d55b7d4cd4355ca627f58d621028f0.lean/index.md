# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimprocDSL.Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a6b27e6d9b48bd7c267e8c5a42b970a49bc746a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a6b27e6d9b48bd7c267e8c5a42b970a49bc746a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Sym.Simp.SimprocDSL` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SymSimprocElab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean/declarations/symsimprocelab--cba036127e9e56467b01d9ff.md) | 16 | `declaration-track:cba036127e9e56467b01d9ff33731fb5e9a2b70f59ab4c8828ce8be65a7891ea` |
| 2 | `abbrev` | [SymDischargerElab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean/declarations/symdischargerelab--a6f3141143a7423ca3e1ddd0.md) | 19 | `declaration-track:a6f3141143a7423ca3e1ddd0d6d76187308a788418c3cbe655536dd285a7eeb8` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean/declarations/builtin-initialize--a50dfb86bae8f94c6b78f108.md) | 21 | `declaration-track:a50dfb86bae8f94c6b78f10825bf1c973172fe10148303e67ec0044c3b927108` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean/declarations/builtin-initialize--13faefbacdf284ddc4915714.md) | 25 | `declaration-track:13faefbacdf284ddc4915714d0eec0b1370cd36e7b4eb9fded251d7bb4d7bf9e` |
| 5 | `def` | [elabSymSimproc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean/declarations/elabsymsimproc--cc70589cfb04bbe7b457b9de.md) | 30 | `declaration-track:cc70589cfb04bbe7b457b9def25365bcda55c93b14761003bb1a50244ba0929a` |
| 6 | `def` | [elabSymDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimprocDSL/Variantbb4e492557c89db4194e2fc694213cde90d55b7d4cd4355ca627f58d621028f0.lean/declarations/elabsymdischarger--f984884a23fb7c90e973d155.md) | 44 | `declaration-track:f984884a23fb7c90e973d155fe1a8732a1ca411d3376045eb68c9d7887b7c464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
