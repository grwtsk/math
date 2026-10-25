# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CyclicGraphWitness.Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "340fb8c9cfbc624762205b2e31b01b6ca49c8046",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `340fb8c9cfbc624762205b2e31b01b6ca49c8046`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.CyclicRepresentation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.FiniteLatticeArithmetic.GraphCriterion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicGroupAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/declarations/cyclicgroupalgebra--c34936778be0182c2d61ca76.md) | 31 | `declaration-track:c34936778be0182c2d61ca762b126c2eb5cc86c0f4cdce61f0cfe70f58dd1b64` |
| 2 | `def` | [groupAlgebraCongruenceOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/declarations/groupalgebracongruenceorderiso--7575a5bca8a0888be5728ca9.md) | 39 | `declaration-track:7575a5bca8a0888be5728ca9225db074fcb415ce9f2bd6a0206dc91fbdd75eef` |
| 3 | `def` | [subgroupNormalOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/declarations/subgroupnormalorderiso--c843c5cf9d9ca6f3431ff67a.md) | 63 | `declaration-track:c843c5cf9d9ca6f3431ff67ac6bf4ddeed4690e778f2499fb5c59cc90750646f` |
| 4 | `def` | [cyclicGroupCongruenceOrderIso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/declarations/cyclicgroupcongruenceorderiso--0940ca0df7deb0eafff5d902.md) | 72 | `declaration-track:0940ca0df7deb0eafff5d902713c2745df584e1d232af8f236c0a7b34d51a669` |
| 5 | `theorem` | [cyclicGroupCongruence_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/declarations/cyclicgroupcongruence-apply--18d039dacee36db9555dd1db.md) | 79 | `result-track:18d039dacee36db9555dd1db243517bbaf96d542c64db4fbe680dccb4f40e158` |
| 6 | `theorem` | [cyclicColor_eq_principalColor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/declarations/cycliccolor-eq-principalcolor--2bbd9f311f6b9b953dd88caf.md) | 88 | `result-track:2bbd9f311f6b9b953dd88caf9a11f24c4f5f99676111506cd454ea588b51c094` |
| 7 | `theorem` | [cyclicColor_isGraphWitness](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/declarations/cycliccolor-isgraphwitness--7a90854637e3954d72beec97.md) | 97 | `result-track:7a90854637e3954d72beec97a280016c2e6ac57ebcce24abaa8fcd1b6674f9f2` |
| 8 | `theorem` | [cyclicColor_saturation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CyclicGraphWitness/Variant72eb9ffd4dc7400491036e328b1c440e7a160cf79a280f2305b00e357d08a08a.lean/declarations/cycliccolor-saturation--07016e263bfb78efc37c226a.md) | 104 | `result-track:07016e263bfb78efc37c226af1ef57d00b96ac42f85f7a3486a35b29e02df9e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
