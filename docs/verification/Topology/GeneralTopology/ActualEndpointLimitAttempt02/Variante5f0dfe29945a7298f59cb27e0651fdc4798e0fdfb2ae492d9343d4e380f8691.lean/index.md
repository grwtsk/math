# Verification target: GRWTSK.Topology.GeneralTopology.ActualEndpointLimitAttempt02.Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82c2f87fb5e37ed1553285e00ea95bc0a9287912",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82c2f87fb5e37ed1553285e00ea95bc0a9287912`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualEndpointCorrelation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceNormalization_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/sourcenormalization-tendsto--d3dc9779a74817261ec2ed21.md) | 30 | `result-track:d3dc9779a74817261ec2ed211a1756fd963ad1906974861da1efb7e312e33350` |
| 2 | `theorem` | [endpointPolynomialCorrelation_continuous](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/endpointpolynomialcorrelation-continuous--3fe91ad586c99421ebbc0888.md) | 41 | `result-track:3fe91ad586c99421ebbc0888d53dd771bc855f2b61c3a12fc16869c3a0ddd69a` |
| 3 | `theorem` | [endpointPolynomialCorrelation_at_zero](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/endpointpolynomialcorrelation-at-zero--c2a7a6cc3c4e5d7e3e95fdc0.md) | 47 | `result-track:c2a7a6cc3c4e5d7e3e95fdc0e378c408bbe045f66cd8bcab63a3bc2aaffd70c3` |
| 4 | `theorem` | [actual_endpoint_scaled_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/actual-endpoint-scaled-tendsto--c9915d47b65ee07d5e9dbe8d.md) | 54 | `result-track:c9915d47b65ee07d5e9dbe8deaa4cb3de1711ff6bbf9d3c41c2c028ee359db25` |
| 5 | `theorem` | [actual_endpoint_normalized_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/actual-endpoint-normalized-tendsto--7039a7947bf1d8b8366d8a69.md) | 67 | `result-track:7039a7947bf1d8b8366d8a69c5cd27434ea0f7ac1f6555563a32306bd21a90fd` |
| 6 | `theorem` | [actual_endpoint_excursion_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/actual-endpoint-excursion-tendsto--c43cba318cfad3a3e6187033.md) | 80 | `result-track:c43cba318cfad3a3e6187033980f80d80ecf984061d3a273b1e6ea50b6153c4b` |
| 7 | `theorem` | [actual_positiveMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/actual-positivemass-tendsto--4fd7ce88b6ec6e1e228fd9b0.md) | 102 | `result-track:4fd7ce88b6ec6e1e228fd9b068674bf311f76434b544f86b9e2bafde6fb59ba4` |
| 8 | `theorem` | [actual_negativeMass_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/actual-negativemass-tendsto--d25ca0e7c8ae33bf1324a506.md) | 110 | `result-track:d25ca0e7c8ae33bf1324a5063f29aa507e0036db5fafe71e64a731aa0e50f84f` |
| 9 | `theorem` | [actual_massRatio_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualEndpointLimitAttempt02/Variante5f0dfe29945a7298f59cb27e0651fdc4798e0fdfb2ae492d9343d4e380f8691.lean/declarations/actual-massratio-tendsto--690b17c1d4c6acc2f0345124.md) | 116 | `result-track:690b17c1d4c6acc2f03451246c1b5903ab122830daf2d203a22c43db3179d64d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
