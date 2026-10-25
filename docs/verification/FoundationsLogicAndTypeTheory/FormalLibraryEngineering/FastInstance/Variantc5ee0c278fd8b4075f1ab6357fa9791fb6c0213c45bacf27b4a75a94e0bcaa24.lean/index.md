# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FastInstance.Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "057cb7080e159b4799a59f23aca2081896dc703a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `057cb7080e159b4799a59f23aca2081896dc703a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.SyntheticMVars` — import line 12; external provider; requires a separately pinned dependency.
- `Lean` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/declarations/initialize--0efca1878fae2a0f21263439.md) | 26 | `declaration-track:0efca1878fae2a0f21263439799242d729f3a2192f0b3a6510f5d4096f2e92fa` |
| 2 | `def` | [error](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/declarations/error--96724c8d8a158c43f636b74a.md) | 33 | `declaration-track:96724c8d8a158c43f636b74aa181ebf27a70b203ee88cf256e22c20585bc927d` |
| 3 | `def` | [makeFastInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/declarations/makefastinstance--aba0c1311130c5c9fac7793d.md) | 50 | `declaration-track:aba0c1311130c5c9fac7793d62b0cd4a4851c68acde5b98414db5da37223bbd6` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/declarations/syntax--e3d93f6568b940bafedb6042.md) | 126 | `declaration-track:e3d93f6568b940bafedb6042aabb65cdc51ee997fb086a8b19e0988f7e4d28b6` |
| 5 | `def` | [elabFastInstance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FastInstance/Variantc5ee0c278fd8b4075f1ab6357fa9791fb6c0213c45bacf27b4a75a94e0bcaa24.lean/declarations/elabfastinstance--ebb00b7c6d5fa2bfe6d3e93f.md) | 129 | `declaration-track:ebb00b7c6d5fa2bfe6d3e93fe87616adeaa647ef15745551f3f0cca71bf27dc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
