# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDocBlame.Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b426acde4837436a2aa91d4e52cb12e666aa06dd",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b426acde4837436a2aa91d4e52cb12e666aa06dd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Tactic.Lint` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AtLeastThirtySeven](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean/declarations/atleastthirtyseven--c35c55c0235a4418c1a6e11e.md) | 10 | `declaration-track:c35c55c0235a4418c1a6e11e98d9a639a1b1ceed7431b0f27c39594f733284e1` |
| 2 | `theorem` | [AtLeastThirtySeven.lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean/declarations/atleastthirtyseven-lt--66496f4c4ceb198d7e44eb5c.md) | 17 | `result-track:66496f4c4ceb198d7e44eb5c15fba370dea279ee54badf6d403c04bcb46b2ebc` |
| 3 | `def` | [foo_bad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean/declarations/foo-bad--6ff7bcd734c95406e172dd85.md) | 19 | `declaration-track:6ff7bcd734c95406e172dd85c91ce1185648e66dbd1ad79647055a2f950812c9` |
| 4 | `def` | [foo_ok](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintDocBlame/Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0.lean/declarations/foo-ok--10afb8e447fd225056675ec1.md) | 20 | `declaration-track:10afb8e447fd225056675ec1ed4b228a52fc51ebe8c87970c1b56c93dbe14eb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
