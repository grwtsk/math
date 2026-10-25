# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tarjan.Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f246085d4ce1f6bcf1f4dd8908dd0e1e7d6a4a4e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f246085d4ce1f6bcf1f4dd8908dd0e1e7d6a4a4e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Order.Graph.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TarjanState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/declarations/tarjanstate--34c5b4934c0e551e290ce618.md) | 18 | `declaration-track:34c5b4934c0e551e290ce618184990e4a9beb085c06aaa84d4ab1be2f9cc77ba` |
| 2 | `def` | [tarjanDFS](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/declarations/tarjandfs--c54eabed1f22814b72c4ad2b.md) | 33 | `declaration-track:c54eabed1f22814b72c4ad2be75fa90ba0d2be250ab016c6f7712f4797ebb8b7` |
| 3 | `def` | [findSCCsImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/declarations/findsccsimp--96b1b410f470ee909585cb39.md) | 68 | `declaration-track:96b1b410f470ee909585cb39a083075aecf08c6b730b5e8a4247bf1032e8896c` |
| 4 | `def` | [findSCCs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tarjan/Variant527a3d9a20d7cefd47585e30c1e3531077af01e37469013bdfef272eb9b1fa79.lean/declarations/findsccs--909fa9610427dce43d429a90.md) | 75 | `declaration-track:909fa9610427dce43d429a9078adde1b0361a7ef65fbcc2ea574b4cb88b886a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
