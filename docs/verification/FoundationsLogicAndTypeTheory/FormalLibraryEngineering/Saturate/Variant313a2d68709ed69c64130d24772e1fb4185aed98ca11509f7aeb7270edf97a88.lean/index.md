# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Saturate.Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0905862fd9489b8c1ac7536d807b26caf713522f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0905862fd9489b8c1ac7536d807b26caf713522f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop.Forward.State.Initial` — import line 10; external provider; requires a separately pinned dependency.
- `Aesop.RuleTac` — import line 11; external provider; requires a separately pinned dependency.
- `Aesop.Search.Expansion.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Aesop.Script.Check` — import line 13; external provider; requires a separately pinned dependency.
- `Batteries.Data.BinomialHeap.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isForwardOrDestructRuleName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/isforwardordestructrulename--38fb15b1f4a968ac73b2a5cf.md) | 23 | `declaration-track:38fb15b1f4a968ac73b2a5cf046f20197086fd8f878b14749d96a51e6c1064a6` |
| 2 | `structure` | [SaturateM.Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/saturatem-context--c91d0e6fc52fe37aae77b7f8.md) | 26 | `declaration-track:c91d0e6fc52fe37aae77b7f8fd1bd5321e455b2aea4c79a07ca606ce12c6dc7e` |
| 3 | `abbrev` | [SaturateM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/saturatem--d2186e5e59c552de3eea8912.md) | 30 | `declaration-track:d2186e5e59c552de3eea891225678a6ef83201d0939082d44fad742b9f897427` |
| 4 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/run--9c513b4911e1132a135701e4.md) | 34 | `declaration-track:9c513b4911e1132a135701e4dea8d1997d0bae7970433f5c73bfd4b98b482d1e` |
| 5 | `def` | [getSingleGoal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/getsinglegoal--25631296599d9344211540d7.md) | 40 | `declaration-track:25631296599d9344211540d79fb06d93406cd685d2130c92ea98977b05c93b21` |
| 6 | `initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/initialize--fcec06a265890e72aac35327.md) | 48 | `declaration-track:fcec06a265890e72aac35327c19f2ace5d27b93ef568a8baa0b306e6d4e42b85` |
| 7 | `def` | [saturateCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/saturatecore--816d35ef6224f76c08f237de.md) | 51 | `declaration-track:816d35ef6224f76c08f237de056a0d9e990655e00536ddedb275f7ebf7e5b15c` |
| 8 | `abbrev` | [Queue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/queue--1501c70b1cb897d3c03e3aff.md) | 127 | `declaration-track:1501c70b1cb897d3c03e3aff1ec2232dec7781e424ffc1cd01aaca3142cde09a` |
| 9 | `def` | [saturateCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/saturatecore--a21eb0ef3e386f15ab7770b4.md) | 129 | `declaration-track:a21eb0ef3e386f15ab7770b4344253f5bad07b1cb260606000436ae5e0255522` |
| 10 | `def` | [saturateMain'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/saturatemain--54e2e190866e91e40174b03c.md) | 186 | `declaration-track:54e2e190866e91e40174b03c057ea34a26c6579e4c0b1c8ec8995787dfd62e4d` |
| 11 | `def` | [saturateMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/saturatemain--d3a56a729fe5478756bd8713.md) | 213 | `declaration-track:d3a56a729fe5478756bd87138843f090623db9d1236cb6c80d26a14afcaf24fa` |
| 12 | `def` | [saturate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Saturate/Variant313a2d68709ed69c64130d24772e1fb4185aed98ca11509f7aeb7270edf97a88.lean/declarations/saturate--6107af9e19f2ecd722d0b96c.md) | 218 | `declaration-track:6107af9e19f2ecd722d0b96c3b715e2adae1a9d3bbf075ef1a9bb41cdba972ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
