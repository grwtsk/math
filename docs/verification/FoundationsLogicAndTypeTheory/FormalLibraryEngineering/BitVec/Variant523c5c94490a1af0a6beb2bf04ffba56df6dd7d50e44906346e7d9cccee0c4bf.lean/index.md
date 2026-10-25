# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitVec.Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8e0de255f12dde928f940d3a9a969af601740c5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8e0de255f12dde928f940d3a9a969af601740c5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.BitVec.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.LitValues` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.ToExpr` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkBVLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/mkbvlit--c0ed9c6b41116a20441f8708.md) | 43 | `declaration-track:c0ed9c6b41116a20441f8708e341ba5abb76446b471d085056595c08243eea22` |
| 2 | `def` | [mkBoolLit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/mkboollit--55a6bb8ff1df2f94e6f63b89.md) | 47 | `declaration-track:55a6bb8ff1df2f94e6f63b895a5c190be24242657e619c6e7adb7cc44f0eb1b0` |
| 3 | `def` | [getBV?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/getbv--f0ff96795d63e3d0208edfb8.md) | 51 | `declaration-track:f0ff96795d63e3d0208edfb818a609e238b5331a714294d3ebcc7e950ebb2ba2` |
| 4 | `def` | [unaryOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/unaryop--14902c14d328935ff0984196.md) | 58 | `declaration-track:14902c14d328935ff0984196386c609204c69f8a0af285830e05f59fc8eb2f7c` |
| 5 | `def` | [binOp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/binop--0ed99a71304d719361654275.md) | 72 | `declaration-track:0ed99a71304d7193616542754dc180d30aa663869b0c2488996383da4072d24e` |
| 6 | `def` | [unaryBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/unarybv--40e2ff74c3515c07f4cd4c60.md) | 85 | `declaration-track:40e2ff74c3515c07f4cd4c60e186c67dbcc3fa14a2af9d4c281ef5fb8c463ba1` |
| 7 | `def` | [extendBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/extendbv--7ad70e8679e549bad233428e.md) | 93 | `declaration-track:7ad70e8679e549bad233428eb313b17683f9171b189b3d2dba9d1f8df722dd22` |
| 8 | `def` | [extractBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/extractbv--7f7b29e905bd958b80b89cc0.md) | 102 | `declaration-track:7f7b29e905bd958b80b89cc0424a0d7e9c3143dd7795e81fb816237fd772b5c8` |
| 9 | `def` | [binBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/binbv--5f50280dee2479a0afc49a5a.md) | 113 | `declaration-track:5f50280dee2479a0afc49a5a32e6751176a42e760372f13b736efc27232077c5` |
| 10 | `def` | [shiftBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/shiftbv--c61889c8e830e06b5621e726.md) | 125 | `declaration-track:c61889c8e830e06b5621e726a0c63bcc5e700b5d027585b7062cfae3bb5241c8` |
| 11 | `def` | [getBitBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/getbitbv--73614e06a466a182a5086b40.md) | 134 | `declaration-track:73614e06a466a182a5086b409ba0d3fce42c8ce57b67a39eb2e229181c01f02c` |
| 12 | `def` | [hShiftBV](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BitVec/Variant523c5c94490a1af0a6beb2bf04ffba56df6dd7d50e44906346e7d9cccee0c4bf.lean/declarations/hshiftbv--5b743473a93550bd2c8be59a.md) | 220 | `declaration-track:5b743473a93550bd2c8be59ab9ac58c0281fba2553164292f0ce4d624185ddc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
