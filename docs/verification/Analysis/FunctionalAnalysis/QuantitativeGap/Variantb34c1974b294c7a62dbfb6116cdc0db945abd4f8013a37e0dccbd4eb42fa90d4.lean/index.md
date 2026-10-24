# Verification target: GRWTSK.Analysis.FunctionalAnalysis.QuantitativeGap.Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ceab499b608c18ff22d270bbc19b792f45570c6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ceab499b608c18ff22d270bbc19b792f45570c6`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProtectedProjector](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/declarations/protectedprojector--6ea9012328d339287eb301d8.md) | 39 | `declaration-track:6ea9012328d339287eb301d828e80819eda6d31145b758be33e703186c18fd08` |
| 2 | `def` | [ProtectedProjector.complement](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/declarations/protectedprojector-complement--1112695f57cee1f4f3c06be6.md) | 47 | `declaration-track:1112695f57cee1f4f3c06be63a1ff5f7b55a3ff795c8b4d440ea23db9b6d2211` |
| 3 | `def` | [CoerciveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/declarations/coerciveon--a67ebfb75236023d42865b87.md) | 51 | `declaration-track:a67ebfb75236023d42865b877851ee18a55d8f9b8d00dea5010e6d07bc023331` |
| 4 | `theorem` | [coerciveOn_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/declarations/coerciveon-mono--bb7abb6b0088aab8ba4cc888.md) | 56 | `result-track:bb7abb6b0088aab8ba4cc888ee6e4171dd88223405e3acfed80f3e5c2db9349f` |
| 5 | `theorem` | [pullback_coerciveOn](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/declarations/pullback-coerciveon--c8f95b234e7a2308023b3ed3.md) | 64 | `result-track:c8f95b234e7a2308023b3ed3d18a0a43ebdd0ae4db7770392a3b81d7bc72b77a` |
| 6 | `theorem` | [kernel_eq_protected_range](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/declarations/kernel-eq-protected-range--bfeebb8853df3f4330ebaafd.md) | 91 | `result-track:bfeebb8853df3f4330ebaafdf6041ce27305960b160a4c48a28542bdfa5459f9` |
| 7 | `theorem` | [positive_eigenvalue_lower_bound](../../../../../mathematics/Analysis/FunctionalAnalysis/QuantitativeGap/Variantb34c1974b294c7a62dbfb6116cdc0db945abd4f8013a37e0dccbd4eb42fa90d4.lean/declarations/positive-eigenvalue-lower-bound--a5a880b4c8ce9f01e0b05b13.md) | 118 | `result-track:a5a880b4c8ce9f01e0b05b13769b3c1c908833b30d9497bef878696d6f4e8a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
