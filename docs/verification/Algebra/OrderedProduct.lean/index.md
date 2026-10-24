# Verification target: GRWTSK.Algebra.OrderedProduct

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ae53548eb1909d40368c2b00b9c759092544fc2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/OrderedProduct.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/OrderedProduct.lean/index.md) · [Full source](../../../mathematics/Algebra/OrderedProduct.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ae53548eb1909d40368c2b00b9c759092544fc2`.

Source path: `GRWTSK/Algebra/OrderedProduct.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/OrderedProduct.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orderedProduct](../../../mathematics/Algebra/OrderedProduct.lean/declarations/orderedproduct--ce9b920139bce1eefee1d604.md) | 26 | `declaration-track:ce9b920139bce1eefee1d604c93445d5c3ab9260cbffe7e9793b1b809edc3ca5` |
| 2 | `theorem` | [orderedProduct_zero](../../../mathematics/Algebra/OrderedProduct.lean/declarations/orderedproduct-zero--571a7d754ee81cae3d84491f.md) | 32 | `result-track:571a7d754ee81cae3d84491f158b72b194f59e75d8b79639ee4067f8cd769107` |
| 3 | `theorem` | [orderedProduct_succ](../../../mathematics/Algebra/OrderedProduct.lean/declarations/orderedproduct-succ--6305a7b036c07321057cee8d.md) | 38 | `result-track:6305a7b036c07321057cee8d594417f476865d597cfd3f8b8d98eaa68fc60c84` |
| 4 | `theorem` | [orderedProduct_add](../../../mathematics/Algebra/OrderedProduct.lean/declarations/orderedproduct-add--4e0ee46f7812843435f5c20e.md) | 44 | `result-track:4e0ee46f7812843435f5c20e034d038f14d1f0c9d17f66ffb0f1a421da547e2a` |
| 5 | `def` | [gaugeTransfer](../../../mathematics/Algebra/OrderedProduct.lean/declarations/gaugetransfer--a42b44add2f56d972776bb84.md) | 56 | `declaration-track:a42b44add2f56d972776bb8409adbde52b0612d16f5846204bc9ffbeddaeb4ee` |
| 6 | `theorem` | [orderedProduct_gaugeTransfer](../../../mathematics/Algebra/OrderedProduct.lean/declarations/orderedproduct-gaugetransfer--41e47c6a43823b02d86827f3.md) | 62 | `result-track:41e47c6a43823b02d86827f3102d1d9e01f14c30811fb615b742262797c7f551` |
| 7 | `theorem` | [orderedProduct_conjugation](../../../mathematics/Algebra/OrderedProduct.lean/declarations/orderedproduct-conjugation--0e89d4fe7b4f00399cf6ea4b.md) | 77 | `result-track:0e89d4fe7b4f00399cf6ea4b03b0d36ee57e5db5e2705bd523408d90281f4767` |
| 8 | `theorem` | [commute_orderedProduct](../../../mathematics/Algebra/OrderedProduct.lean/declarations/commute-orderedproduct--2694a06e4a438c48a2c466d0.md) | 90 | `result-track:2694a06e4a438c48a2c466d00dabb8a5512b4c581a968480f70dc4b099a7179e` |
| 9 | `theorem` | [orderedProduct_inverse_commuting](../../../mathematics/Algebra/OrderedProduct.lean/declarations/orderedproduct-inverse-commuting--2434598c6e8c9722dbcf3d59.md) | 100 | `result-track:2434598c6e8c9722dbcf3d59e8cfdb44d19e1513a269fec73e34d11f6559f6d0` |
| 10 | `theorem` | [orderedProduct_sign_inverse](../../../mathematics/Algebra/OrderedProduct.lean/declarations/orderedproduct-sign-inverse--e2501fc27d7a9ce88212b542.md) | 112 | `result-track:e2501fc27d7a9ce88212b5428aacdac14ab9cda48f69e1b2cfa27c3f900d7c6f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
