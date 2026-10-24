# Verification target: GRWTSK.Algebra.LinearAlgebra.SupportGraphAbstraction.Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af5c14a33605ee4922bc67392eba0187b14b61d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af5c14a33605ee4922bc67392eba0187b14b61d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [undirectedSupport](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/undirectedsupport--399cd10f81e44dc21a678196.md) | 19 | `declaration-track:399cd10f81e44dc21a678196344822a4da5603025ed1f1791bee36cde7b78a26` |
| 2 | `theorem` | [directed_edge_visible](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/directed-edge-visible--940ac155390781397f21331a.md) | 26 | `result-track:940ac155390781397f21331ae9b414b8f0a92e53b2cbe16ed88bc6c7242cabb5` |
| 3 | `theorem` | [undirectedSupport_symmetric](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/undirectedsupport-symmetric--274f35662aee68f3c5570710.md) | 35 | `result-track:274f35662aee68f3c55707104b9046788e63677c35407c8719565773dbba6e51` |
| 4 | `def` | [boolZModMatrix](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/boolzmodmatrix--8a6c61dc950042ad41af2f0f.md) | 43 | `declaration-track:8a6c61dc950042ad41af2f0f37d2e19881fda00fd4ce64db901048750be2fe79` |
| 5 | `def` | [swapSupportExample](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/swapsupportexample--91ba66de9b9a6639871f9f76.md) | 50 | `declaration-track:91ba66de9b9a6639871f9f76f3990bd26d006f688e92623b33976a4eb2e122a3` |
| 6 | `def` | [orientedSupportExample](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/orientedsupportexample--a181dafa97a52881a144981d.md) | 54 | `declaration-track:a181dafa97a52881a144981d3019f0258254b94a8639e0773d5d521b410e15eb` |
| 7 | `theorem` | [support_examples_distinct](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/support-examples-distinct--cf61e0ad4ecb671608598b24.md) | 58 | `result-track:cf61e0ad4ecb671608598b24f351986ab5865eee20676b9b573adaac54f37f20` |
| 8 | `theorem` | [support_examples_same_abstraction](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/support-examples-same-abstraction--b4d641da4a30c1b9dba1a0b7.md) | 65 | `result-track:b4d641da4a30c1b9dba1a0b7f76240ac89774692ea79d2749a203516a3824f17` |
| 9 | `theorem` | [swapSupportExample_det](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/swapsupportexample-det--3e6957a0741ca09336b3f412.md) | 72 | `result-track:3e6957a0741ca09336b3f412697f7124ea620ca82e1d9c1ca294db1b37df25be` |
| 10 | `theorem` | [orientedSupportExample_det](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/orientedsupportexample-det--1fe3359b976856741a0970a3.md) | 77 | `result-track:1fe3359b976856741a0970a39a66bc7dd2b82c71f14dae5364d8d97ddbef5aa9` |
| 11 | `theorem` | [support_does_not_determine_invertibility](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/support-does-not-determine-invertibility--a0c45331e9f148207f7de6f0.md) | 85 | `result-track:a0c45331e9f148207f7de6f00ec8859479bef369f94fda5439eaed337be19eb6` |
| 12 | `structure` | [SupportAbstractionLoss](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/supportabstractionloss--e22806cecc309c1fc0321b7f.md) | 98 | `declaration-track:e22806cecc309c1fc0321b7f0616306a8f02143c90b351b66dbfeb583b5984ac` |
| 13 | `def` | [undirectedSupportLoss](../../../../../mathematics/Algebra/LinearAlgebra/SupportGraphAbstraction/Variant1f6a25600a9029fb50b8071c6d28732b5d9a7af90f6fbc775c17e50721261a7b.lean/declarations/undirectedsupportloss--4f876e4ed41cda0445ad6b41.md) | 106 | `declaration-track:4f876e4ed41cda0445ad6b416a84aba7e74281b683d4c4fca94ac647f53da4c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
