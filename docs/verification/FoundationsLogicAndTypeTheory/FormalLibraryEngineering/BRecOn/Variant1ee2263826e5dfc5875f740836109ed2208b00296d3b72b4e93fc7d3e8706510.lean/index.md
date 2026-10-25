# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BRecOn.Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a47d1979b14d644592160eef63ef17fb45b972a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a47d1979b14d644592160eef63ef17fb45b972a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.PProdN` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Cases` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Refl` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [buildBelowMinorPremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/declarations/buildbelowminorpremise--ba0eef8b1749b20be248f95a.md) | 33 | `declaration-track:ba0eef8b1749b20be248f95a480e21a979a160bf549d14750509a7a0cf950997` |
| 2 | `def` | [mkBelowFromRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/declarations/mkbelowfromrec--2f87ba9fa27bbc10f5fe7785.md) | 59 | `declaration-track:2f87ba9fa27bbc10f5fe778595873c98d2bca1b9813c05448afa7dca20a90e2e` |
| 3 | `def` | [mkBelow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/declarations/mkbelow--dd389cd1fbade1b34e3f556b.md) | 113 | `declaration-track:dd389cd1fbade1b34e3f556bb7a96ac65f9acb79b67e9f1a8cc199f5e4ac9e57` |
| 4 | `def` | [buildBRecOnMinorPremise](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/declarations/buildbreconminorpremise--8b4455ae0af5b6e933095c5c.md) | 149 | `declaration-track:8b4455ae0af5b6e933095c5ce2d26e61ccb64717c2d4e5f47d6f1a9eb2b20dc1` |
| 5 | `def` | [mkBRecOnFromRec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/declarations/mkbreconfromrec--7f1a97f05b3a001faf425b4e.md) | 191 | `declaration-track:7f1a97f05b3a001faf425b4ed73827ccb51544c06bf3efbe0c2bf73171a30a30` |
| 6 | `def` | [mkBRecOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/declarations/mkbrecon--30b51e0577bab2b570ebb027.md) | 310 | `declaration-track:30b51e0577bab2b570ebb027e00c9b4807d78f1a4fb91b321e59811b6cdf7a7c` |
| 7 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant1ee2263826e5dfc5875f740836109ed2208b00296d3b72b4e93fc7d3e8706510.lean/declarations/builtin-initialize--4139a957b41ce8bf58feda1f.md) | 328 | `declaration-track:4139a957b41ce8bf58feda1fda9e3df3998eef3f0dc1d2e709ed735f7aee7562` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
