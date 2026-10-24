# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripEightHeightBernstein

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3facf2f54d177468f833364a17e61cd7570b6df",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3facf2f54d177468f833364a17e61cd7570b6df`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripSevenHeightBernstein`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightBernstein.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [numerator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/numerator--65f1ad859020477e4cb699de.md) | 23 | `declaration-track:65f1ad859020477e4cb699de8bf5f109681f58e0037bed00a85b0959d27b68e9` |
| 2 | `def` | [quadraticNormSq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/quadraticnormsq--91346b431a2f0ccf0e334c83.md) | 27 | `declaration-track:91346b431a2f0ccf0e334c839e928ce3831a8abfbe7998053505c4353f4ee16f` |
| 3 | `def` | [denominator](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/denominator--1a3b89cf7711e7588a19f875.md) | 30 | `declaration-track:1a3b89cf7711e7588a19f87501ed571617b3b75402072c679efb88793594687f` |
| 4 | `def` | [gap](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/gap--19f2b23f916f750c0e071b26.md) | 33 | `declaration-track:19f2b23f916f750c0e071b2655fd7111853ad039734db30cc426dc5c8abbf66f` |
| 5 | `def` | [coefficients](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/coefficients--c75fd1076615ac94bbfef5c4.md) | 35 | `declaration-track:c75fd1076615ac94bbfef5c4eebddf62c3fd8598c442082ea7fbddde86b84e24` |
| 6 | `theorem` | [tensor_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/tensor-identity--d8f260ef8baadd4ea73046a0.md) | 51 | `result-track:d8f260ef8baadd4ea73046a03dfe785a74aa37c028de9dc9e70db37c0e1181ff` |
| 7 | `theorem` | [gap_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/gap-nonneg--6eb3a576a8eba04f23ef0891.md) | 56 | `result-track:6eb3a576a8eba04f23ef08910e18efb06463f3550f82568a64f9c388bcf4e3c2` |
| 8 | `theorem` | [squared_ratio_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/squared-ratio-bound--26ed4db66a524308a175f541.md) | 68 | `result-track:26ed4db66a524308a175f5414f00541f78c1f77d6badabc3e28440283de6806d` |
| 9 | `theorem` | [height_nine_gap_negative](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/height-nine-gap-negative--7ba5d15628463bfca7d1baae.md) | 76 | `result-track:7ba5d15628463bfca7d1baae92bbafedf0b76f51892b81307138d951b95d95d3` |
| 10 | `theorem` | [zero_table_is_not_certificate](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripEightHeightBernstein.lean/declarations/zero-table-is-not-certificate--5da157f6707bda4b61a6405b.md) | 79 | `result-track:5da157f6707bda4b61a6405b287a143a86b813f93ae40ed77a839b1a10a1846f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
