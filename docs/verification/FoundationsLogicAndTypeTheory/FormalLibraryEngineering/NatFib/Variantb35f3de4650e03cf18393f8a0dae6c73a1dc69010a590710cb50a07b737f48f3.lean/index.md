# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatFib.Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac286c3557e7a7ad593daf804c9e3aaf72a9e44",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac286c3557e7a7ad593daf804c9e3aaf72a9e44`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Fib.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsFibAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/isfibaux--1e47e26ffb212075249072d5.md) | 21 | `declaration-track:1e47e26ffb212075249072d5eecf825a93c102b8811a3ef5e05839b469ff0009` |
| 2 | `theorem` | [isFibAux_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/isfibaux-zero--e2374921b9ca4d5d84ba5bd9.md) | 24 | `result-track:e2374921b9ca4d5d84ba5bd9e484312af8318cff510760ebf6683bc2fc6ad29f` |
| 3 | `theorem` | [isFibAux_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/isfibaux-one--8083d151ab8bb978d355bc49.md) | 27 | `result-track:8083d151ab8bb978d355bc49be30419b6c4570bbdc7f2261a949442fd04a1c7a` |
| 4 | `theorem` | [isFibAux_two_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/isfibaux-two-mul--5d8677abe02cdf9657df0c56.md) | 30 | `result-track:5d8677abe02cdf9657df0c56d8d98e6d69d166003306d8f903080205812f9242` |
| 5 | `theorem` | [isFibAux_two_mul_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/isfibaux-two-mul-add-one--de1b3811f05db05aa078fa68.md) | 36 | `result-track:de1b3811f05db05aa078fa68cf8a229a5ec65683b9d2d9861028e331e8b33112` |
| 6 | `def` | [proveNatFibAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/provenatfibaux--b3f46d6343efc811639c9edc.md) | 42 | `declaration-track:b3f46d6343efc811639c9edca1b0acab607d1209748715965c46afa85e18d2d0` |
| 7 | `theorem` | [isFibAux_two_mul_done](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/isfibaux-two-mul-done--32b48948447574c8c9b551cb.md) | 70 | `result-track:32b48948447574c8c9b551cb59875128098a71811322ae30ff27891ea8f24bae` |
| 8 | `theorem` | [isFibAux_two_mul_add_one_done](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/isfibaux-two-mul-add-one-done--892fccd87591c5cb796f0da9.md) | 74 | `result-track:892fccd87591c5cb796f0da9c299a90f79131825b72b186612707560d1895e6d` |
| 9 | `def` | [proveNatFib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/provenatfib--fabf15e80e3b7f5c6e0ba9b0.md) | 80 | `declaration-track:fabf15e80e3b7f5c6e0ba9b0a9bbb811c46322f526e20f6156743072957e77e9` |
| 10 | `theorem` | [isNat_fib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/isnat-fib--8569461a59e94414a008d996.md) | 101 | `result-track:8569461a59e94414a008d996b7d122a371347bbe6530d7eec0c27bd93fd370f7` |
| 11 | `def` | [evalNatFib](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NatFib/Variantb35f3de4650e03cf18393f8a0dae6c73a1dc69010a590710cb50a07b737f48f3.lean/declarations/evalnatfib--3ac2b09f319d9056fca425bb.md) | 106 | `declaration-track:3ac2b09f319d9056fca425bbb1c6f7e611ae706776b145999d5d99e024f1911b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
