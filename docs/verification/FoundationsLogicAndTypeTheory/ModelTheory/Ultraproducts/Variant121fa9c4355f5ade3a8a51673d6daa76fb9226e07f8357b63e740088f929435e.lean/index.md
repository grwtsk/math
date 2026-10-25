# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Ultraproducts.Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "338cdcea73860e678efa8c017298f04bb659347d",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `338cdcea73860e678efa8c017298f04bb659347d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Quotients` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Germ.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [setoidPrestructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/declarations/setoidprestructure--3bd7a0aec2bd1e009a682525.md) | 47 | `declaration-track:3bd7a0aec2bd1e009a682525e5ccd38236ded107994c785e8185c32a22a93948` |
| 2 | `instance` | [«structure»](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/declarations/structure--d6d753b006d6345d18f1c602.md) | 72 | `declaration-track:d6d753b006d6345d18f1c60200d007cb3d5d2a1cc882eadc2d94219fd9445619` |
| 3 | `theorem` | [funMap_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/declarations/funmap-cast--db6581c37bd91372fced8f4b.md) | 75 | `result-track:db6581c37bd91372fced8f4bd03a05a3b0067782aad5bf5cefce6eb456b8ed22` |
| 4 | `theorem` | [term_realize_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/declarations/term-realize-cast--e08071998710ef0b7f747b82.md) | 80 | `result-track:e08071998710ef0b7f747b82d35f59b279431cfc61ee29a7a4853acf55b87507` |
| 5 | `theorem` | [boundedFormula_realize_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/declarations/boundedformula-realize-cast--4716308a8cc01a6e02a3a0e4.md) | 92 | `result-track:4716308a8cc01a6e02a3a0e4fd63f52ec502b32fe7268eb817e75c0078778a7f` |
| 6 | `theorem` | [realize_formula_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/declarations/realize-formula-cast--33addfb5c93ddb060b9a8925.md) | 146 | `result-track:33addfb5c93ddb060b9a8925db4699ecb16bfe965614ad5b25584211289eb995` |
| 7 | `theorem` | [sentence_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/declarations/sentence-realize--374568b40e050a3ac94ece92.md) | 154 | `result-track:374568b40e050a3ac94ece92427841388e4e43d71b90347f6bb079ff52c9fce7` |
| 8 | `instance` | [Product.instNonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variant121fa9c4355f5ade3a8a51673d6daa76fb9226e07f8357b63e740088f929435e.lean/declarations/product-instnonempty--0c9fc7d9c10cb2b55f1bf476.md) | 160 | `declaration-track:0c9fc7d9c10cb2b55f1bf47648e22b1f59e18c06ddca4f15c5370c8db6a101f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
