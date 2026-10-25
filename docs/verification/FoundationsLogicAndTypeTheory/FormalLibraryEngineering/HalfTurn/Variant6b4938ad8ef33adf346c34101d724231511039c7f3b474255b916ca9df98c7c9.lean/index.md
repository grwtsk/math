# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfTurn.Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b989a6e3439b99fd5a1f24696cea52fef3f4ae8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b989a6e3439b99fd5a1f24696cea52fef3f4ae8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Geometry.SquaredDistance` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [halfTurn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean/declarations/halfturn--16060c996a42585cc5ef82ae.md) | 21 | `declaration-track:16060c996a42585cc5ef82ae903f7ed070b9c26bf4be76a1b99749c6b964446e` |
| 2 | `theorem` | [halfTurn_involutive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean/declarations/halfturn-involutive--0e424ecae6398db91ec4fb7b.md) | 24 | `result-track:0e424ecae6398db91ec4fb7bc04401f274c21cbc8e746b2477bd3d02587dc2bb` |
| 3 | `theorem` | [halfTurn_difference](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean/declarations/halfturn-difference--adebe88b23ba9faea44d54d2.md) | 29 | `result-track:adebe88b23ba9faea44d54d233819a75570bba2ed805e87d3dd39fbbd061363c` |
| 4 | `theorem` | [halfTurn_preserves_centered_squaredDistance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HalfTurn/Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9.lean/declarations/halfturn-preserves-centered-squareddistance--a68a57ac38c48cfeb6da393e.md) | 35 | `result-track:a68a57ac38c48cfeb6da393e9c37178bdfb0a8efaccc0a18d043f68f71200700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
