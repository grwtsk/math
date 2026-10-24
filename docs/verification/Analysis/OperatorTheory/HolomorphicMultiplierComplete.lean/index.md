# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierComplete

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57cbc2ce4d0b99c779dabd5168c5f715095dba39",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierComplete.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/index.md) · [Full source](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57cbc2ce4d0b99c779dabd5168c5f715095dba39`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierComplete.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierComplete.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierNorm`](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierNorm.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sequences` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofBoundedFunction](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/ofboundedfunction--4c4f2665b24d87a9e6ce6fa1.md) | 34 | `declaration-track:4c4f2665b24d87a9e6ce6fa12e9b8d2e9bd99e71d373b6fe74581bdaaa5b4a0b` |
| 2 | `theorem` | [ofBoundedFunction_value](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/ofboundedfunction-value--5f90c4c7e90794d9c40cfb7d.md) | 38 | `result-track:5f90c4c7e90794d9c40cfb7d0207c76d9c68e658001e226b88feb0a1d107235e` |
| 3 | `theorem` | [boundedFunction_ofBoundedFunction](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/boundedfunction-ofboundedfunction--0c1cbc7f4e49a9565f15c2b0.md) | 42 | `result-track:0c1cbc7f4e49a9565f15c2b0b9c6a145d72b894f34020f14bfff82a2bdb04876` |
| 4 | `theorem` | [boundedFunction_range_iff](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/boundedfunction-range-iff--dded59d4911c5c4f4161126f.md) | 49 | `result-track:dded59d4911c5c4f4161126f6a0b005f3624bb9b7697228af548aa9799f71262` |
| 5 | `theorem` | [ambient_uniformLimit](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/ambient-uniformlimit--11c2d1a784357c8ad6d9a94e.md) | 58 | `result-track:11c2d1a784357c8ad6d9a94e5535aae8bca0178ea71e864588187395cd922c24` |
| 6 | `theorem` | [holomorphic_of_tendsto](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/holomorphic-of-tendsto--2e76b7743bb294341ef95954.md) | 71 | `result-track:2e76b7743bb294341ef959545d66a4cce4df0687426a050af4598489b55476a8` |
| 7 | `theorem` | [ambient_deriv_tendsto](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/ambient-deriv-tendsto--71284246677d698323f21155.md) | 86 | `result-track:71284246677d698323f21155d084f056d705c52761f93f54153f7f9eac5f9ec0` |
| 8 | `theorem` | [boundedFunction_range_isClosed](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/boundedfunction-range-isclosed--bdfe3e6db8548dd0d5e29fc2.md) | 99 | `result-track:bdfe3e6db8548dd0d5e29fc233221148f5cc23c177896a5d6299484ca5599e67` |
| 9 | `theorem` | [symbol_complete](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/symbol-complete--048adea7f33828318f4f1882.md) | 108 | `result-track:048adea7f33828318f4f18828f965d507f4ff92a7c0b8d132a01b05bb9a182a5` |
| 10 | `theorem` | [existsUnique_symbol_limit](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/existsunique-symbol-limit--a67ec4cf9b18d6dfb0572248.md) | 115 | `result-track:a67ec4cf9b18d6dfb05722485a26dcf43d5e001020fbd4968a3de80e01dade6b` |
| 11 | `theorem` | [existsUnique_cauchyLimit](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/existsunique-cauchylimit--8e570fe8883fefd526f0e9a7.md) | 131 | `result-track:8e570fe8883fefd526f0e9a7ed636dca5b08f0531b172553c22d05da03419898` |
| 12 | `theorem` | [coveredDomain_isOpen](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/covereddomain-isopen--7408a18fe2bfb4774bf6ad2b.md) | 139 | `result-track:7408a18fe2bfb4774bf6ad2b57fe8118ac6b5118ca979804d4c2078dde8a4cd4` |
| 13 | `theorem` | [cauchy_symbols_and_operators](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/cauchy-symbols-and-operators--dbea7473a64f5e24c4adcabf.md) | 149 | `result-track:dbea7473a64f5e24c4adcabfec04324fd92b200427f6b2e135af8da1fa1a409c` |
| 14 | `theorem` | [symbol_deriv_tendsto](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/symbol-deriv-tendsto--42792489a3957af0e0d5a690.md) | 161 | `result-track:42792489a3957af0e0d5a6905dcdbaa33b88edd79170252b00040b914ceccb34` |
| 15 | `theorem` | [complete_symbols_with_kernel](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/complete-symbols-with-kernel--8f35703e27d13251c42caa8c.md) | 178 | `result-track:8f35703e27d13251c42caa8c8437960ee154359ae74cf7fe3271f0cc5e1f24c3` |
| 16 | `def` | [emptyDomain](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/emptydomain--3b3d442badfa87520ad5929a.md) | 186 | `declaration-track:3b3d442badfa87520ad5929a2491e19c87fe4a5afaf925db54b3accea126821b` |
| 17 | `theorem` | [empty_complete_and_zero](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/empty-complete-and-zero--138dedfbaf84cef38c617ff2.md) | 188 | `result-track:138dedfbaf84cef38c617ff2b06a2caf29d9412c572920132b942f1da1b088a5` |
| 18 | `theorem` | [bottom_limits_not_unique](../../../../mathematics/Analysis/OperatorTheory/HolomorphicMultiplierComplete.lean/declarations/bottom-limits-not-unique--9132906547239376bca19c24.md) | 197 | `result-track:9132906547239376bca19c24dd1707078586d637e74409f0f51ad265f45bb2a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
