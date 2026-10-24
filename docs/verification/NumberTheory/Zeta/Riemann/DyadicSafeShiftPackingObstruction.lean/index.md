# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftPackingObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16ee2b2d0a27e8329ce3897aacb070e0a402549c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16ee2b2d0a27e8329ce3897aacb070e0a402549c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicChebyshevCumulativeBudget`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicChebyshevCumulativeBudget.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OffLineDyadicCommonLowerMassAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/declarations/offlinedyadiccommonlowermassatzero--64dd53a941173c19c3556978.md) | 52 | `declaration-track:64dd53a941173c19c35569785eaf3826cc8ea0076bf55e77cac2199d121ba04a` |
| 2 | `def` | [toCumulativePackingData](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/declarations/tocumulativepackingdata--f0291cf40982e2ab5d7b98b9.md) | 69 | `declaration-track:f0291cf40982e2ab5d7b98b9f7aa6f0776cd9d803464acefe2c4ba7c65031835` |
| 3 | `theorem` | [partial_le_budget_div_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/declarations/partial-le-budget-div-factor--266fce57d5fa7ce1fcd1987d.md) | 84 | `result-track:266fce57d5fa7ce1fcd1987d4dacb13c675942708b8cb68e2d8d146f176d3093` |
| 4 | `theorem` | [impossible](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/declarations/impossible--9961c3fe1e31912b403550e5.md) | 102 | `result-track:9961c3fe1e31912b403550e5fa14b6b84532a08d28a18045474ad20a35a401a1` |
| 5 | `theorem` | [no_offLineDyadicCommonLowerMassAtZero](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/declarations/no-offlinedyadiccommonlowermassatzero--ddeb07b0832e1ff121b30496.md) | 110 | `result-track:ddeb07b0832e1ff121b304968eb0900aae06be87487f94e73fd886ec26c215e9` |
| 6 | `def` | [OffLineDyadicCommonLowerMassClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/declarations/offlinedyadiccommonlowermassclaim--38ec7b8038805b5de4fbf12f.md) | 118 | `declaration-track:38ec7b8038805b5de4fbf12f23ed5b2c34571c365ed31a3c323fcc22957aafb5` |
| 7 | `theorem` | [offLineDyadicCommonLowerMassClaim_iff_rh](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/declarations/offlinedyadiccommonlowermassclaim-iff-rh--5f020e5a3b09034c101491f2.md) | 126 | `result-track:5f020e5a3b09034c101491f21339fffe6f70b9a7035a51065ae1faa0e35bb551` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
