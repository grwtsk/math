# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatFib.Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55e79c6cd445fad5785e08772955cca42f808179",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55e79c6cd445fad5785e08772955cca42f808179`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFibAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/isfibaux--c11bb06deaa0b6d6e55272a1.md) | 21 | `declaration-track:c11bb06deaa0b6d6e55272a112e798466c9c9cdc92bdea8412bf96a8a8ae0bb4` |
| 2 | `theorem` | [isFibAux_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/isfibaux-zero--9a7ca20bbaa322f5ae652313.md) | 24 | `result-track:9a7ca20bbaa322f5ae6523132efc56ca4e3dcf34a7d740bfb560135e3047bc58` |
| 3 | `theorem` | [isFibAux_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/isfibaux-one--8b12e7e2e3440b1c9aa5a4c2.md) | 27 | `result-track:8b12e7e2e3440b1c9aa5a4c22d04b870171843ba9ec74e708dd778e0d0d695cb` |
| 4 | `theorem` | [isFibAux_two_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/isfibaux-two-mul--7a803c964bd64a1bc0030d62.md) | 30 | `result-track:7a803c964bd64a1bc0030d62e014cc4a35987b1b73293606be4598546e7175df` |
| 5 | `theorem` | [isFibAux_two_mul_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/isfibaux-two-mul-add-one--029bdf6b24b4ab497cc9d0c0.md) | 36 | `result-track:029bdf6b24b4ab497cc9d0c0e11812fea9fa2d22f0721428fa958958fbfa891c` |
| 6 | `def` | [proveNatFibAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/provenatfibaux--4b1bf329ff0ee6f4178d9ec0.md) | 42 | `declaration-track:4b1bf329ff0ee6f4178d9ec0b1213c4f9f4b3f3b5264b93a4a42b7709b006341` |
| 7 | `theorem` | [isFibAux_two_mul_done](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/isfibaux-two-mul-done--0f332bf794892d787e3af4be.md) | 70 | `result-track:0f332bf794892d787e3af4be39a6625ff02e38d29bb6581376d20a86488bfe4c` |
| 8 | `theorem` | [isFibAux_two_mul_add_one_done](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/isfibaux-two-mul-add-one-done--d9478e27b74c66ff0aa6b957.md) | 74 | `result-track:d9478e27b74c66ff0aa6b9572a9c4987bf6ab36686a22471728a679f2c1b5062` |
| 9 | `def` | [proveNatFib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/provenatfib--a58a5bdeec0af8197040bc0a.md) | 80 | `declaration-track:a58a5bdeec0af8197040bc0af3bf109c025eabdcecca0a7b803bbb66a4776b88` |
| 10 | `theorem` | [isNat_fib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/isnat-fib--3a9e0fa0b0d2d0f31265b3dd.md) | 101 | `result-track:3a9e0fa0b0d2d0f31265b3ddce7033e61a0af34dfd01b9dd5421a906940ef772` |
| 11 | `def` | [evalNatFib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variant1b6b8dbbdc66bacd03644f41f85f21e0d9973c833b8e2ef5d5b286a8a9f923bb.lean/declarations/evalnatfib--a17c94fc670149ac04c4d08b.md) | 106 | `declaration-track:a17c94fc670149ac04c4d08b7865ad308fa1724c44af015fa06ffbc5b3bd04a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
