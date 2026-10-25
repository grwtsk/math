# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Array.Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b5bab9b7c7e9db8f37ceb10c16e4d888199450d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b5bab9b7c7e9db8f37ceb10c16e4d888199450d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Equiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [arrayEquivList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean/declarations/arrayequivlist--55784d99ad279bf67517ddb9.md) | 50 | `declaration-track:55784d99ad279bf67517ddb997beb750a96d0f98b2df933b12263210fc303ea9` |
| 2 | `instance` | [Array.encodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean/declarations/array-encodable--efab8ea94af434c0c0191782.md) | 79 | `declaration-track:efab8ea94af434c0c019178242bca0981f33e9b00ce4999892cc66dab2337b4a` |
| 3 | `instance` | [Array.countable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Array/Variantf0abf28f6afe7fd2d19089432e68673dcb12da3e98df8bbadecb0f0401dc5fe2.lean/declarations/array-countable--9c7a855fde86fdbd879d82d1.md) | 84 | `declaration-track:9c7a855fde86fdbd879d82d1ff5c3accc7bffe764090265507fe9703facc74e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
