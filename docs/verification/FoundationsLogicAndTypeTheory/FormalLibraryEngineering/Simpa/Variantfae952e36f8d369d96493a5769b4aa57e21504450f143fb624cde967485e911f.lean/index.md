# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Simpa.Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ae674f872f399ca787016a020270af02e864607",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ae674f872f399ca787016a020270af02e864607`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Assumption` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Simp` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Linter.Util` — import line 8; external provider; requires a separately pinned dependency.
- `Std.Lean.LocalContext` — import line 9; external provider; requires a separately pinned dependency.
- `Std.Lean.Parser` — import line 10; external provider; requires a separately pinned dependency.
- `Std.Tactic.OpenPrivate` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Tactic.TryThis` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `register_option` | [linter.unnecessarySimpa](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/linter-unnecessarysimpa--a4e3eee92d8792f3b4cf4a78.md) | 18 | `declaration-track:a4e3eee92d8792f3b4cf4a784da391c2a9eae637142a928bdef92b85a11be3ee` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/syntax--e76368fc27ec1b4b8a14d9a3.md) | 28 | `declaration-track:e76368fc27ec1b4b8a14d9a3cddda25abe40c84351f32b3fec081270d8f0a832` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/syntax--b877348a86e8ce906d020841.md) | 46 | `declaration-track:b877348a86e8ce906d02084192130ebcea802c5247540c36d55e22904fe41445` |
| 4 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/macro--836813a14c026331a9270247.md) | 47 | `declaration-track:836813a14c026331a927024703cf94b912e6d57299ee3d186fade7bbfdb86a85` |
| 5 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/macro--f636a735d9f98deade376839.md) | 49 | `declaration-track:f636a735d9f98deade3768394dcfcd141d06a165619a6c478dca7fb517ad0b59` |
| 6 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/macro--172a013e1f5b4d3c907a3b3e.md) | 51 | `declaration-track:172a013e1f5b4d3c907a3b3e30c29980e6b9fd0bcf2cdac2041ec2c9c533a366` |
| 7 | `def` | [mkSimpOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/mksimponly--730fa23d43cf8cdbc02e41e7.md) | 64 | `declaration-track:730fa23d43cf8cdbc02e41e7fba96a3c9e67c1a3cd87dc9f117bc37da69363bf` |
| 8 | `def` | [getLinterUnnecessarySimpa](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/getlinterunnecessarysimpa--8142f85a93aee6d228cfa920.md) | 111 | `declaration-track:8142f85a93aee6d228cfa920f22e20de71293aeda64e5debc1ba3c56be3e9c85` |
| 9 | `elab_rules` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simpa/Variantfae952e36f8d369d96493a5769b4aa57e21504450f143fb624cde967485e911f.lean/declarations/elab-rules--2fc1dadb218c6499541d5dd1.md) | 116 | `declaration-track:2fc1dadb218c6499541d5dd1b58d49f0d8171315e29f495829d36a5bbd82b479` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
