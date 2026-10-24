# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticKernelDefect

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "272826d83468df6ccbf39c6a239ef587b332aea2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `272826d83468df6ccbf39c6a239ef587b332aea2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSexticPrimitive`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticPrimitive.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalized](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/normalized--b4c58af20a895a48f8afee96.md) | 21 | `declaration-track:b4c58af20a895a48f8afee96fc86e19488f7277a1a6c99ef94254d10df512822` |
| 2 | `def` | [capNumerator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/capnumerator--f48b9646177751182a77bd7e.md) | 23 | `declaration-track:f48b9646177751182a77bd7eb0ff696864d7185ffafe5eae73ae79f84c6129dc` |
| 3 | `def` | [cap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/cap--dc85b329c2c46cabfd770d69.md) | 26 | `declaration-track:dc85b329c2c46cabfd770d69e8b8b7f038145b7db15b7ad67d1c90860406db25` |
| 4 | `def` | [binomialWeight](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/binomialweight--dcf748d08a86c4186c95a5a7.md) | 28 | `declaration-track:dcf748d08a86c4186c95a5a768947759733cf314ac4d087363272c72bf752dce` |
| 5 | `def` | [basis](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/basis--12062214b17e0aebecf3d8eb.md) | 30 | `declaration-track:12062214b17e0aebecf3d8eb33f40b5b3685d7fded90b5cfc2fa122c4a4cd052` |
| 6 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/coefficients--9741f9cdf26f90ee8a64f649.md) | 32 | `declaration-track:9741f9cdf26f90ee8a64f6494e5084223300fb1c18e5ed11fa363983905caa7c` |
| 7 | `theorem` | [polynomial_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/polynomial-identity--8767777a9fe09c3de73cbf67.md) | 52 | `result-track:8767777a9fe09c3de73cbf67220a741adbf50d9495299cfdaeefb8dd23ce79cb` |
| 8 | `theorem` | [partition_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/partition-identity--671250fd7e105810f27a5a0a.md) | 58 | `result-track:671250fd7e105810f27a5a0a40f2fae330fe77173817ef453a9b8bf166d5fe2c` |
| 9 | `theorem` | [coefficient_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/coefficient-bounds--32036c76fda79b2ab42210b3.md) | 62 | `result-track:32036c76fda79b2ab42210b3371a823ea06e0fa35ac53e44206b809da2caae04` |
| 10 | `theorem` | [cap_bounds](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/cap-bounds--3997b52cacfa9b21337d7fb6.md) | 68 | `result-track:3997b52cacfa9b21337d7fb63d45468a271ccd11adcc4d0688b4bd3c3275a96b` |
| 11 | `theorem` | [normalized_on_cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/normalized-on-cell--ee8837c8c470fcb9ec6d24f6.md) | 71 | `result-track:ee8837c8c470fcb9ec6d24f6baf50ef7a59a6641320c426fea362f48ae3f8544` |
| 12 | `theorem` | [source_on_first_cell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/source-on-first-cell--80eb57def643117aeb04d9c3.md) | 105 | `result-track:80eb57def643117aeb04d9c38676b88d6630fbba6f522a0b62165dc70f58370d` |
| 13 | `def` | [node](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/node--c6322ac4dd4871519fbf447a.md) | 118 | `declaration-track:c6322ac4dd4871519fbf447aa151164e3db020cbe9ee1fef146ec25f5b4ce498` |
| 14 | `theorem` | [node_order](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/node-order--57256fa3ba45e181dec787f4.md) | 120 | `result-track:57256fa3ba45e181dec787f48776e93fd8bd7975841392284a7f32d067bcdbcc` |
| 15 | `theorem` | [kernel_on_subcell](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSexticKernelDefect.lean/declarations/kernel-on-subcell--886cb383ac92cca78ca23305.md) | 126 | `result-track:886cb383ac92cca78ca2330583d764cd0cdf7aa37f031252ef6d536bd038ff87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
