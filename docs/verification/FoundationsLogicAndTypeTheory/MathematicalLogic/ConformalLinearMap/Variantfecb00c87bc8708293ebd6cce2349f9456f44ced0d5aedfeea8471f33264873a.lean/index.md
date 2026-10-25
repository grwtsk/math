# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ConformalLinearMap.Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "799da36e071981923776a36221a4c9ec1b8f3e10",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `799da36e071981923776a36221a4c9ec1b8f3e10`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basis.VectorSpace` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsConformalMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/isconformalmap--98ecba4843dab55b9fbce78a.md) | 56 | `declaration-track:98ecba4843dab55b9fbce78ae5098c0bd769c71679d64749575f704c308648f7` |
| 2 | `theorem` | [isConformalMap_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/isconformalmap-id--2f42e25cec8e03691c93baa1.md) | 64 | `result-track:2f42e25cec8e03691c93baa1e16d18397b1bc42c539fdad883b838d49bab7825` |
| 3 | `theorem` | [IsConformalMap.smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/isconformalmap-smul--46b586d0dd332a3a59bc16d6.md) | 67 | `result-track:46b586d0dd332a3a59bc16d66164647e26daed9d660273e1bb8b6f074f49c5f7` |
| 4 | `theorem` | [isConformalMap_const_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/isconformalmap-const-smul--ae3fe8d257b93604470b5654.md) | 72 | `result-track:ae3fe8d257b93604470b5654a86434ced3a3ea07c1914c1f064aa960a38cc3f3` |
| 5 | `theorem` | [LinearIsometry.isConformalMap](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/linearisometry-isconformalmap--d0c8c56ea610a90ba8d44f1f.md) | 75 | `result-track:d0c8c56ea610a90ba8d44f1fc845917cd2fc23fe9b5802569030bfb540870851` |
| 6 | `theorem` | [isConformalMap_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/isconformalmap-of-subsingleton--108e97cf4252d4be4b933129.md) | 80 | `result-track:108e97cf4252d4be4b933129c709e2d6879371145d93c466616c6b8c0149546f` |
| 7 | `theorem` | [comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/comp--c6ea385aa816e3ff70c957da.md) | 85 | `result-track:c6ea385aa816e3ff70c957da95f8206ef0094f6e2825b1b5d80073362477be91` |
| 8 | `theorem` | [injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/injective--a97db1e854419ca990f5d9c6.md) | 92 | `result-track:a97db1e854419ca990f5d9c6c7e2356c931914fcec1e32494baec601ae53e208` |
| 9 | `theorem` | [ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/ConformalLinearMap/Variantfecb00c87bc8708293ebd6cce2349f9456f44ced0d5aedfeea8471f33264873a.lean/declarations/ne-zero--f0161556eb22b8f4760f8097.md) | 96 | `result-track:f0161556eb22b8f4760f809793e377ebf38b441182dc1e0cf31a58b7428249a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
