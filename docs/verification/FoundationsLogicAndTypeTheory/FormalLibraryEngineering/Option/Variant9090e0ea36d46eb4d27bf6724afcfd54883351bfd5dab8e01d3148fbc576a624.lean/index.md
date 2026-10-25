# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Option.Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea0df10904e4fee63698eb2b42277411453a92ac",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea0df10904e4fee63698eb2b42277411453a92ac`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--f9869f4148c7c3f14a309481.md) | 26 | `declaration-track:f9869f4148c7c3f14a309481ad7baa9ca2c2f83ab5a01aaebd8b1f5f5bde59f0` |
| 2 | `def` | [OptionT](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/optiont--0a344886bf20326af2a4ddc2.md) | 32 | `declaration-track:0a344886bf20326af2a4ddc26c533399f9f99b3bc9177682722ec44876ac0143` |
| 3 | `def` | [OptionT.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/optiont-run--360877ad478ea0d4365a1f7c.md) | 39 | `declaration-track:360877ad478ea0d4365a1f7c206df2de956e84e5363fe72c034d483b8de47f7d` |
| 4 | `def` | [mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/mk--4490de150897f55dfd6f4556.md) | 50 | `declaration-track:4490de150897f55dfd6f455660582c10bbfef4b552102a00bd24990b2d976529` |
| 5 | `def` | [bind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/bind--636248520812dbc02e305cc9.md) | 57 | `declaration-track:636248520812dbc02e305cc9cbbe52769bca9d591eab3f37a87094efadf762c8` |
| 6 | `def` | [pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/pure--7818ad6979d50f372624a2c1.md) | 66 | `declaration-track:7818ad6979d50f372624a2c1e23f8eec1ee25824f117a75be0311808083fa802` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--1b5c31e7209fc025fbc9ebb3.md) | 70 | `declaration-track:1b5c31e7209fc025fbc9ebb36d7e04b144736e178d1325f4c9c816bb3befe2a1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--d236a738f3f204febc8e63ec.md) | 74 | `declaration-track:d236a738f3f204febc8e63ec7ba8e9a732d327fec3e8207cb24f88f1b5462a7d` |
| 9 | `def` | [orElse](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/orelse--8298196501b0d901bc99bda8.md) | 80 | `declaration-track:8298196501b0d901bc99bda86678839bf2d6350119e6d5319ea2f310c5a054cd` |
| 10 | `def` | [fail](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/fail--61014b241a9262ccf6b40015.md) | 88 | `declaration-track:61014b241a9262ccf6b400150697afab97bffa1288625d1814921415dbf4a488` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--c6ef563b0febc91f2bb5d5a3.md) | 91 | `declaration-track:c6ef563b0febc91f2bb5d5a3b9b26efb0235678ea396a4f197dd36a6eb9f0188` |
| 12 | `def` | [lift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/lift--64da0f6ed6dfc3d493c7c2ba.md) | 101 | `declaration-track:64da0f6ed6dfc3d493c7c2ba0fc4978e6b7a0475410fe3c1280ceacebb71adf8` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--9db8323ce512f777a28aad55.md) | 104 | `declaration-track:9db8323ce512f777a28aad55035bd3a0e199ffbb4ef8eceab324dc53761093bc` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--0a59fd21ad6379db6c7ddf73.md) | 106 | `declaration-track:0a59fd21ad6379db6c7ddf73badff144297bde51d6dacf2ebfacd3ad9df7ee2e` |
| 15 | `def` | [tryCatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/trycatch--ae6b44da77820e042a636b50.md) | 111 | `declaration-track:ae6b44da77820e042a636b501bb48a40aff7b4e23133264dc8a9d2ecab42521e` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--e9661ca065650f0fe7000097.md) | 115 | `declaration-track:e9661ca065650f0fe70000970500865735807693fab1a0a400cac2eaa5fbd3c0` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--f8bb5d7f8212e9e6cbf6c69a.md) | 119 | `declaration-track:f8bb5d7f8212e9e6cbf6c69a16ecaecc2cc854c7267f10ab711020cd208b264a` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--d9c81ecc527fed7c58b6b8a5.md) | 123 | `declaration-track:d9c81ecc527fed7c58b6b8a591c0e69391de14b18904d6c55466ad35fd0cb13a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Option/Variant9090e0ea36d46eb4d27bf6724afcfd54883351bfd5dab8e01d3148fbc576a624.lean/declarations/instance--398d734be98c22edb4c4e826.md) | 131 | `declaration-track:398d734be98c22edb4c4e826aa81f378b1cf45696d4787df314c86e61b3d20ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
