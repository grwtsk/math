# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Unfold.Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76fa6127a2c544568a4bafeae5f10385ed8dc55f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76fa6127a2c544568a4bafeae5f10385ed8dc55f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Delta` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.WHNF` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkUnfoldSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/declarations/mkunfoldsimpcontext--751f8ffe7a1a13808320e3eb.md) | 29 | `declaration-track:751f8ffe7a1a13808320e3eb09c8869f3630d72b237d0cc4238b8ba56e697c2d` |
| 2 | `def` | [unfoldManyCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/declarations/unfoldmanycore--a000bb6d20b9aafbe361657b.md) | 33 | `declaration-track:a000bb6d20b9aafbe361657ba062d6955a1cfc7cda5641be2bf627215521ea70` |
| 3 | `def` | [unfoldMany](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/declarations/unfoldmany--7f282736e1d15b46de679de5.md) | 75 | `declaration-track:7f282736e1d15b46de679de5023a485d5668f75fbca8159b1c5802c8a51a5490` |
| 4 | `def` | [unfoldManyTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/declarations/unfoldmanytarget--a133e2b5fbb4b744d57031f3.md) | 84 | `declaration-track:a133e2b5fbb4b744d57031f3a71dba1a4ff93f58338ed362a87c6a27ade01cef` |
| 5 | `def` | [unfoldManyAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/declarations/unfoldmanyat--55a62af5e93af6f73ed9b65c.md) | 94 | `declaration-track:55a62af5e93af6f73ed9b65ca51fde57617ebfdc4f7e278c404fd8250d9c4e7a` |
| 6 | `def` | [unfoldManyStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variantefbf23f246e3d83782e24972289f8ec2642ff148f85729e058acc50554c25788.lean/declarations/unfoldmanystar--5df9896c1d25ca34f1ed0af1.md) | 107 | `declaration-track:5df9896c1d25ca34f1ed0af181f23a6ec1188e540d89e35d2f992ab9695c70db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
