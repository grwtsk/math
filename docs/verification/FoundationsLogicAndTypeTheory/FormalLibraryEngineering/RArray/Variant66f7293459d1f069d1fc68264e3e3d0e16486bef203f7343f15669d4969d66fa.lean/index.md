# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RArray.Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae549aa70d24125b4fda0026b0f13895a3f78bb5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae549aa70d24125b4fda0026b0f13895a3f78bb5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RArray.ofFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean/declarations/rarray-offn--c55a12caf7b316dbb74b394f.md) | 32 | `declaration-track:c55a12caf7b316dbb74b394f379c8363925bc8b5cef145188bbf12a20395509d` |
| 2 | `def` | [RArray.ofArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean/declarations/rarray-ofarray--65bf6f625a39d4474ce62849.md) | 42 | `declaration-track:65bf6f625a39d4474ce62849a6cba636fef2479daa5358d6ad05b76807048fc7` |
| 3 | `theorem` | [RArray.get_ofFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean/declarations/rarray-get-offn--bf4a0473e4b65c4f049c5035.md) | 46 | `result-track:bf4a0473e4b65c4f049c503527be26e9f69fc7e76eb81906237fac27ded08ac7` |
| 4 | `theorem` | [RArray.size_ofFn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean/declarations/rarray-size-offn--68ae657e0d2c3c592becd489.md) | 63 | `result-track:68ae657e0d2c3c592becd489d5bea7104ec59e0aa2bb2be21a5cf202d4cb8397` |
| 5 | `def` | [RArray.toExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RArray/Variant66f7293459d1f069d1fc68264e3e3d0e16486bef203f7343f15669d4969d66fa.lean/declarations/rarray-toexpr--01a0f02a7db28ab9ad1ded62.md) | 73 | `declaration-track:01a0f02a7db28ab9ad1ded62c68410c2afc924d953626c74ade18fc4ac2a9080` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
