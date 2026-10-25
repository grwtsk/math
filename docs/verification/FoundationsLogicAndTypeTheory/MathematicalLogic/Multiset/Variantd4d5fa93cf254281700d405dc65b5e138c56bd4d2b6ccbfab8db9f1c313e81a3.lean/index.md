# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Multiset.Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b67f5991da140f2a4076899a2f64cb2d1da87ad2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b67f5991da140f2a4076899a2f64cb2d1da87ad2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean.json)

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
| 1 | `def` | [enle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/enle--a584169ebfe50235f2f2d581.md) | 33 | `declaration-track:a584169ebfe50235f2f2d5811dbf012a01a0f70090d0b4bd3983a6eb18ff17a3` |
| 2 | `instance` | [enle.isLinearOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/enle-islinearorder--d3b67db6e3452b7305b1baef.md) | 37 | `declaration-track:d3b67db6e3452b7305b1baef4434c6befd73c51fd85abdf4517543d1f5a9a4a0` |
| 3 | `def` | [encodeMultiset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/encodemultiset--7c6981e80eff30a0e7e92e47.md) | 41 | `declaration-track:7c6981e80eff30a0e7e92e470e73ec9de0031bfcf512a01fcf01993bddefc875` |
| 4 | `def` | [decodeMultiset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/decodemultiset--851af9775c228f8275d115dd.md) | 45 | `declaration-track:851af9775c228f8275d115ddb30539ecd30010fb0db089b4f05e0b858de0a92f` |
| 5 | `instance` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Enle.Variant5ebaef26c08ede502496be8b5032eeff02ccabef0b71f5782274f83aba1396a6.Multiset.encodable](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-enle-variant--ebfd5bf98c51cc470bbc44ac.md) | 49 | `declaration-track:ebfd5bf98c51cc470bbc44ac880d4eeeabffb26648bf0fc7292ffb57428d268c` |
| 6 | `def` | [lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/lower--da65ebc770caf5a514a4bd4a.md) | 61 | `declaration-track:da65ebc770caf5a514a4bd4a8579dbb1f8835f4682ae40410a0c440dab057916` |
| 7 | `def` | [raise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/raise--6116dae9d76e9168142c4f48.md) | 67 | `declaration-track:6116dae9d76e9168142c4f487a40f14f7fcbcd468eb839a841990fa4a55e5b69` |
| 8 | `theorem` | [lower_raise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/lower-raise--67c09abe5faf9fe42b14f188.md) | 71 | `result-track:67c09abe5faf9fe42b14f188e7ad4bc89760a9f3895fca9b103b1f1512bf5ff6` |
| 9 | `theorem` | [raise_lower](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/raise-lower--27bec1983c3b79af5107594d.md) | 75 | `result-track:27bec1983c3b79af5107594d64408252d3ba85c0e4a8911e60112c2239012f31` |
| 10 | `theorem` | [isChain_raise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/ischain-raise--9826e3e51c15af27078d13ac.md) | 81 | `result-track:9826e3e51c15af27078d13ac955262282f130ffec4922953fc548db2602a8371` |
| 11 | `theorem` | [isChain_cons_raise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/ischain-cons-raise--7fde7d78fdd2146869b4f89a.md) | 86 | `result-track:7fde7d78fdd2146869b4f89ae870b912d0ff4b60fbf79379f8ead8e8d4f619b4` |
| 12 | `theorem` | [raise_sorted](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/raise-sorted--04e6df8717a607c9c99a2dc5.md) | 90 | `result-track:04e6df8717a607c9c99a2dc579445984621c82bcf1bed15fc719fc91d4a079e8` |
| 13 | `instance` | [multiset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Multiset/Variantd4d5fa93cf254281700d405dc65b5e138c56bd4d2b6ccbfab8db9f1c313e81a3.lean/declarations/multiset--2d9fee698240557e6f1e6c84.md) | 94 | `declaration-track:2d9fee698240557e6f1e6c84d3cba18906571e7ffca4aa88be5caaad658f8dad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
