# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Ultraproducts.Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c685f3943ee6ec9a50d30f64d3b2b1fe03f4436",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c685f3943ee6ec9a50d30f64d3b2b1fe03f4436`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.Quotients` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Germ` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ultrafilter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [setoidPrestructure](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/declarations/setoidprestructure--98adcf58df7996d7260c0009.md) | 46 | `declaration-track:98adcf58df7996d7260c00096e3f1a89c103c00b9d7a9522a1ba243ebd87fc90` |
| 2 | `instance` | [«structure»](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/declarations/structure--1af8c8e8c9fb9d12e741d557.md) | 72 | `declaration-track:1af8c8e8c9fb9d12e741d557ac967b2e5656a56cbf87fac805434b0ef52671c4` |
| 3 | `theorem` | [funMap_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/declarations/funmap-cast--83155190d7ac7a5ea8d4cad0.md) | 77 | `result-track:83155190d7ac7a5ea8d4cad0ce2b25507b004b5a80f4f175406e6b118ca019c6` |
| 4 | `theorem` | [term_realize_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/declarations/term-realize-cast--218d2be83c056121fa1d3114.md) | 83 | `result-track:218d2be83c056121fa1d31146533798fab6e49b20083ea5f211e1ca7479f91e2` |
| 5 | `theorem` | [boundedFormula_realize_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/declarations/boundedformula-realize-cast--345e25585cedda04c22730f5.md) | 99 | `result-track:345e25585cedda04c22730f5a667f1f133fa68758944b88c02e8669445cfbe75` |
| 6 | `theorem` | [realize_formula_cast](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/declarations/realize-formula-cast--7a6c3af91edc4775019cf7bb.md) | 150 | `result-track:7a6c3af91edc4775019cf7bb7ef1c8ff7bf492ba78b7c5c08930f13eb391d15c` |
| 7 | `theorem` | [sentence_realize](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/declarations/sentence-realize--2b2207fc78fbc00ba8e0e23a.md) | 159 | `result-track:2b2207fc78fbc00ba8e0e23a05e139bd80ec5020115edf7ab4cae557f3a3f6d3` |
| 8 | `instance` | [Product.instNonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Ultraproducts/Variantf52eee31df6898e1d2437d54adf5fba1bc2c6f29de1f08094019c70e8f704689.lean/declarations/product-instnonempty--f5a91617e83e002d9ccb1745.md) | 166 | `declaration-track:f5a91617e83e002d9ccb1745d82bd506fd91b5c8ce23b93a6e26bfede65473a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
