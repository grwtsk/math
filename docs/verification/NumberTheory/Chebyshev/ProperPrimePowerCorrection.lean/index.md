# Verification target: GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f0608838559f5b7cac636f47b233c385eb9d97fc",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f0608838559f5b7cac636f47b233c385eb9d97fc`.

Source path: `GRWTSK/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.PrimeIntervalWitness`](../../../../mathematics/NumberTheory/Chebyshev/PrimeIntervalWitness.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.CorrelationPairing`](../../../../mathematics/NumberTheory/Chebyshev/CorrelationPairing.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.LandauStatements`](../../../../mathematics/NumberTheory/Primes/LandauStatements.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_eq_mathlib_psi](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/source-eq-mathlib-psi--13c216ef803be03b501a4b3b.md) | 34 | `result-track:13c216ef803be03b501a4b3bb49d48dc56c153e0e9aef0ad2ceadad6a47744d2` |
| 2 | `def` | [properPrimePowerMass](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/properprimepowermass--7b1e82072ee7ea2910b526ee.md) | 48 | `declaration-track:7b1e82072ee7ea2910b526eef2b00024d9b6245cfe9182dcf69101e4f63f19c4` |
| 3 | `theorem` | [properPrimePowerMass_nonneg](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/properprimepowermass-nonneg--5976142288e69b5b08de3162.md) | 52 | `result-track:5976142288e69b5b08de31624428ad90d9ae31e5165325c344f513c000d49d40` |
| 4 | `theorem` | [properPrimePowerMass_eq_supported_sum](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/properprimepowermass-eq-supported-sum--80a027a69c512aa9d2771ad9.md) | 56 | `result-track:80a027a69c512aa9d2771ad9d5a68854ef90d0a4fbe2536a23b6fc06beb6ed78` |
| 5 | `theorem` | [properPrimePowerMass_pos_iff](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/properprimepowermass-pos-iff--2524742409d7a11a982a397f.md) | 71 | `result-track:2524742409d7a11a982a397f7295dd0348782e0ddcd0e64db7d6c147f5dbebc9` |
| 6 | `theorem` | [properPrimePowerMass_eq_cumulative_sub](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/properprimepowermass-eq-cumulative-sub--2daca1d435ae8f6d1b670d88.md) | 86 | `result-track:2daca1d435ae8f6d1b670d88807b99f91204c36878c790d7b0a8f7a3dbaf73c1` |
| 7 | `theorem` | [source_sub_eq_theta_sub_add_proper](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/source-sub-eq-theta-sub-add-proper--787bf0105ea2ed96b9ca6c3e.md) | 100 | `result-track:787bf0105ea2ed96b9ca6c3e77a55cdccef8872f09dd4fe6d6c2c917738d3f37` |
| 8 | `theorem` | [properPrimePowerMass_le_cumulative](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/properprimepowermass-le-cumulative--237f09e2f9d7abb719a1ea5f.md) | 109 | `result-track:237f09e2f9d7abb719a1ea5fae880de813fedef8ffaa1f0d5ecee8103e5d2f0f` |
| 9 | `theorem` | [properPrimePowerMass_le_coarse_bound](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/properprimepowermass-le-coarse-bound--b4b3ec73a30433de51875097.md) | 116 | `result-track:b4b3ec73a30433de51875097065f55b67e5f7b6218c6125d5fffa4bdf7e9890c` |
| 10 | `theorem` | [upper_endpoint_le_properPrimePowerMass](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/upper-endpoint-le-properprimepowermass--eca8ed517ea1195154a34044.md) | 122 | `result-track:eca8ed517ea1195154a340445059a78930c129b3098fd4b73df579b99b6319ad` |
| 11 | `theorem` | [prime_square_endpoint_lower_bound](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/prime-square-endpoint-lower-bound--d2e1b03c605ad26c996623df.md) | 131 | `result-track:d2e1b03c605ad26c996623df6084fbc6898ad66fbf361d5e1b80cdbfef552c8c` |
| 12 | `theorem` | [intervalCount_pos_of_source_margin](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/intervalcount-pos-of-source-margin--ec7c7d1d88c5b005265bbdfc.md) | 139 | `result-track:ec7c7d1d88c5b005265bbdfcb6791e7b88804f97983557a7a3af75575c178e4f` |
| 13 | `theorem` | [squareCount_pos_of_source_margin](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/squarecount-pos-of-source-margin--d8a40cb31c8237a37829c17b.md) | 151 | `result-track:d8a40cb31c8237a37829c17b66c89d940530eb823675176149b8cd081f66e511` |
| 14 | `theorem` | [legendre_of_prefix_and_source_margins](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/declarations/legendre-of-prefix-and-source-margins--0bb8eaf791260b7a1e57c8a0.md) | 160 | `result-track:0bb8eaf791260b7a1e57c8a08ad025b0fc9e61386c4a5a1a9a27b128eec65997` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
