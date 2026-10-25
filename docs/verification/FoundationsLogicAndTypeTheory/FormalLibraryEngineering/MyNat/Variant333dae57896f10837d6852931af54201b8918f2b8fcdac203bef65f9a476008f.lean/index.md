# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MyNat.Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "211e714c8eecfb33759192343f98ca74f9f3124b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `211e714c8eecfb33759192343f98ca74f9f3124b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Architect` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MyNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/declarations/mynat--2332b104d2ef75a856990e39.md) | 4 | `declaration-track:2332b104d2ef75a856990e39fdc8cc58e954ac10ac01527ceb1c664ea7ed0c9f` |
| 2 | `def` | [add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/declarations/add--79f090ba5eae0db9cca8ad5a.md) | 16 | `declaration-track:79f090ba5eae0db9cca8ad5aa9de5f388c96fb6cc9f034b0d7a9a7b9a4621fd5` |
| 3 | `theorem` | [zero_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/declarations/zero-add--55503f44392beea0c3a3929e.md) | 23 | `result-track:55503f44392beea0c3a3929e647f43481218119de298bd8830dcec95079a45fa` |
| 4 | `theorem` | [succ_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/declarations/succ-add--c9a0ba62c16fa522d651b565.md) | 29 | `result-track:c9a0ba62c16fa522d651b5656be888a6d3d86e37cc7d786587bb15abb5758a3d` |
| 5 | `theorem` | [add_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/declarations/add-comm--c6d0ee2a1cf6450000485dbd.md) | 36 | `result-track:c6d0ee2a1cf6450000485dbd2a712d571c4b69ba0ba310101a8ac11b15f9d182` |
| 6 | `def` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/declarations/mul--d6a62a2bfb2c648ca9f071ef.md) | 51 | `declaration-track:d6a62a2bfb2c648ca9f071ef48e1a162646dfb4bb11514483c86218b05e53b36` |
| 7 | `theorem` | [mul_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/declarations/mul-comm--0d73d724a1fc789e849da4a9.md) | 55 | `result-track:0d73d724a1fc789e849da4a9146ea0ab6c417c180380cf18942ed4ece679289a` |
| 8 | `theorem` | [flt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MyNat/Variant333dae57896f10837d6852931af54201b8918f2b8fcdac203bef65f9a476008f.lean/declarations/flt--2cb8035283594f479d9258c1.md) | 68 | `result-track:2cb8035283594f479d9258c1df7ca09c6163b366d148d285fd9af85ecd529fee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
