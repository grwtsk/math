# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtremeBenchmark.Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c832cc9b4ad71df6f196a765bbc6c93338bd6ded",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c832cc9b4ad71df6f196a765bbc6c93338bd6ded`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkNestedExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/mknestedexp--47cda81051dbc42ba6b09f08.md) | 38 | `declaration-track:47cda81051dbc42ba6b09f0824c53d6a865edaf655e20600f5817d10d01fc03f` |
| 2 | `def` | [mkDeepPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/mkdeeppoly--012ae91dd5362d179d8a4d43.md) | 44 | `declaration-track:012ae91dd5362d179d8a4d433b5adc78c068baa69ec3b5912b60d423aa7507fd` |
| 3 | `def` | [mkDeepNested](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/mkdeepnested--cf8a89293f11f64b0a9348c1.md) | 54 | `declaration-track:cf8a89293f11f64b0a9348c12ab5443fcf282f6b7da202a67ad1b2ac72518442` |
| 4 | `def` | [smallIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/smallintervalrat--0e786df2b80a8d25e68ce061.md) | 66 | `declaration-track:0e786df2b80a8d25e68ce061b46aaf462b51739a130f3ec3ff30e14707e5525d` |
| 5 | `def` | [smallIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/smallintervaldyadic--5f242c703c5d60508a61453c.md) | 67 | `declaration-track:5f242c703c5d60508a61453ce34a5d19b15d8d56ddccf7c6aced019ea46e4368` |
| 6 | `def` | [evalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/evaldyadic--7c038736e18620a3d6eb3516.md) | 71 | `declaration-track:7c038736e18620a3d6eb3516d56cdaec3fc523dd09780214096b4649c05a7b06` |
| 7 | `def` | [countDigits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/countdigits--49add5b02068aa4597c8993a.md) | 74 | `declaration-track:49add5b02068aa4597c8993a1873dc439865d65b7a80524f87b8cebef285f291` |
| 8 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/main--1fcfc79c7853861e6aca3ade.md) | 79 | `declaration-track:1fcfc79c7853861e6aca3ade0a7bfcd0ffbb915ae2dc58cc470739190a232881` |
| 9 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variant5e91728f396d2271063b7322c699f766cb8d6a15c5390099c6a3893eb31b3793.lean/declarations/main--b4110d8efc701d4de8fb842f.md) | 176 | `declaration-track:b4110d8efc701d4de8fb842f0867147802d6a9f13be54ab6c31da2cf43b6161e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
