# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IneqCnstr.Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "084313ec8c8ccb9d3d25c9e4546bf58cd40f311e",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `084313ec8c8ccb9d3d25c9e4546bf58cd40f311e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Den` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.StructId` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Reify` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.Proof` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isInstOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/declarations/isinstof--447c00ceb87f21c6f0db702d.md) | 24 | `declaration-track:447c00ceb87f21c6f0db702d09028a2fc6a7e84384123f896077b0d750999d4f` |
| 2 | `def` | [IneqCnstr.assert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/declarations/ineqcnstr-assert--892965fc204ac068515efa3f.md) | 30 | `declaration-track:892965fc204ac068515efa3ff5c92356487cb716e1fc34bb7a2b1e18454b80cd` |
| 3 | `def` | [propagateCommRingIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/declarations/propagatecommringineq--773101a0b6f291e3c7fd800a.md) | 49 | `declaration-track:773101a0b6f291e3c7fd800adba813c1f8f234d229f443d6059f80fd11e659d5` |
| 4 | `def` | [propagateIntModuleIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/declarations/propagateintmoduleineq--210a0515b419032456094243.md) | 78 | `declaration-track:210a0515b419032456094243a95544725c0354d2e60593507d0a619502136397` |
| 5 | `def` | [propagateNatModuleIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/declarations/propagatenatmoduleineq--8ab2f5d9595aa20457ec2938.md) | 94 | `declaration-track:8ab2f5d9595aa20457ec2938c861952e33281509a0889751acfa070449429787` |
| 6 | `def` | [propagateIneq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IneqCnstr/Variantad045bbaa72c348003247f1ee98e79e98f5028c3696ca92aa03bc7d15f267be5.lean/declarations/propagateineq--6fdece6318a51258a970380e.md) | 111 | `declaration-track:6fdece6318a51258a970380e7780283005dc432d7d0405279c6ba3e9410789d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
