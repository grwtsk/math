# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Udiv.Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39e640013276c840da16d3db06d52ae57c65cb65",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39e640013276c840da16d3db06d52ae57c65cb65`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ShiftConcatInput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/shiftconcatinput--9babb62aec9ef45da1f69f16.md) | 34 | `declaration-track:9babb62aec9ef45da1f69f16552ac0aa2f5af1f8ca834648382f9e7e7d55a1a2` |
| 2 | `def` | [blastShiftConcat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/blastshiftconcat--a237dae69e328156c46a68cd.md) | 38 | `declaration-track:a237dae69e328156c46a68cd8025c75ee868136794eaca2dcff4c96012090052` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/instance--d0f72a003aaff1511ab06ce9.md) | 44 | `declaration-track:d0f72a003aaff1511ab06ce9c81f964a6b8fb3d79b245daf40ef0434351a88c6` |
| 4 | `structure` | [BlastDivSubtractShiftOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/blastdivsubtractshiftoutput--9892ac28380cbcedb8c1b678.md) | 54 | `declaration-track:9892ac28380cbcedb8c1b6780c8ff114bf77285fbd0f5d7a2cef7548e41f0403` |
| 5 | `def` | [blastDivSubtractShift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/blastdivsubtractshift--ff9ba910252b20f8fb5f7942.md) | 62 | `declaration-track:ff9ba910252b20f8fb5f7942116f654b1d9d2833ec8d10cd05b8c4e55117d275` |
| 6 | `theorem` | [blastDivSubtractShift_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/blastdivsubtractshift-le-size--ae77746f63fe0b93e316fb98.md) | 135 | `result-track:ae77746f63fe0b93e316fb98492d461bd85cd9109b9185561ea5dad40bcee607` |
| 7 | `theorem` | [blastDivSubtractShift_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/blastdivsubtractshift-decl-eq--79a01eadab6c02365fa4811f.md) | 148 | `result-track:79a01eadab6c02365fa4811fd9e9d8ffc600b348668208c982b41aed131c63c5` |
| 8 | `structure` | [BlastUdivOutput](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/blastudivoutput--b64f0aa8881d223d653c1024.md) | 192 | `declaration-track:b64f0aa8881d223d653c102403743677ae3f3e67671e212a834e359d3a86902f` |
| 9 | `def` | [go](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/go--9962dea6d100a210975cb8c4.md) | 198 | `declaration-track:9962dea6d100a210975cb8c490ad078d99369724bc81e6c9e227b5c91dfa312c` |
| 10 | `theorem` | [go_le_size](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/go-le-size--b333b1755be84937f7f6c67e.md) | 227 | `result-track:b333b1755be84937f7f6c67e18235def475ce6ae9cb1e87b0e1d1f19614303e4` |
| 11 | `theorem` | [go_decl_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/go-decl-eq--0e2bec44a94b7811ad710723.md) | 237 | `result-track:0e2bec44a94b7811ad710723501ac65cfa5e706f8a36149ab53a6d3576efd619` |
| 12 | `def` | [blastUdiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/blastudiv--0ce6259fe1b200425f0db369.md) | 256 | `declaration-track:0ce6259fe1b200425f0db3692c5033b13984f84a70b7d1f480935d59acf98219` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Udiv/Variant87dcd4a7dfb097cc282e930d90a8008cf75e667b196178d5145bfc022a80e42f.lean/declarations/instance--faafd50d29ebadf19868bde0.md) | 277 | `declaration-track:faafd50d29ebadf19868bde08d1ab7055cb52c071ac651ce7c3f7b1224e7221a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
