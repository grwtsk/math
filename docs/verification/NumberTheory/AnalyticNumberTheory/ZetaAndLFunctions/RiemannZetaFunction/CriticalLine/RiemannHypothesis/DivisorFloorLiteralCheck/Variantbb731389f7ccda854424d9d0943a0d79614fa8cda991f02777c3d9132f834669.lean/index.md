# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DivisorFloorLiteralCheck.Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a6261b909c86e12bbbbde6c299048f0fbd77bd8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a6261b909c86e12bbbbde6c299048f0fbd77bd8`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/dampeddivisorcoefficient--27a55cce200d11e0247c49e1.md) | 15 | `declaration-track:27a55cce200d11e0247c49e1801f6084963a982c2dac4163adcb5ee4fc2a5a43` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/floor-sum-divisors--5fde6b4c562bdde869022797.md) | 32 | `result-track:5fde6b4c562bdde869022797003c5e581f1f964ccf712e17fc80b69ec2c52dbb` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/divisor-prefix-eq-floor--1656302d5d3555d657b32cb9.md) | 62 | `result-track:1656302d5d3555d657b32cb93a3258acc3bfc01440c9c9e0367c62c6889a8e96` |
| 4 | `theorem` | [residual_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/residual-floor--c271bed8d17c5c9dbe822e9a.md) | 68 | `result-track:c271bed8d17c5c9dbe822e9a7519571f5bda1e589448f315c9721c2f8b997ad6` |
| 5 | `theorem` | [damped_floor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/damped-floor--c89ae87232f393e13127efbc.md) | 83 | `result-track:c89ae87232f393e13127efbc575604474831f6584727dac49a28f7b481f40d08` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed--fd36e3be0db37d298d7402e8.md) | 95 | `result-track:fd36e3be0db37d298d7402e8161bddf3b08aaa637011b0bdbd7558e961ff0fa5` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/arithmeticresidual-eq-divisor-prefix--dfe1b97889bb81dfbcb16cf0.md) | 108 | `result-track:dfe1b97889bb81dfbcb16cf096bd3e97c822941efc4d49c131ac86899e70ecc6` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/arithmeticresidual-zero-of-lt-cutoff--c40ae8ecb8ff114c88e2fdac.md) | 119 | `result-track:c40ae8ecb8ff114c88e2fdac4abfc6b781884dd7a9e9515433e7cbce216cdf9a` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/arithmeticresidual-zero-damping-endpoint--79927a7b9c027c53d79cc053.md) | 129 | `result-track:79927a7b9c027c53d79cc053151702154fff3a2e56bb73dab4907f3eca26b4a3` |
| 10 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/example--cd4afb0b05175f997517418a.md) | 150 | `declaration-track:cd4afb0b05175f997517418a59d85249ac83c01ea1ecab7a0e9fc29f7ccfb860` |
| 11 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/example--9692f614b7b8b8961bb67561.md) | 155 | `declaration-track:9692f614b7b8b8961bb67561ecee06280de5217cc1e67ad350974a1cae41fe4d` |
| 12 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/example--28fa5f54bacaa2a0b181c511.md) | 160 | `declaration-track:28fa5f54bacaa2a0b181c511f2946e231ef7cfc6f0d8f9f9727ff694b8ad4f15` |
| 13 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/example--894dc378b95ce1b68d78e056.md) | 168 | `declaration-track:894dc378b95ce1b68d78e05678ff742080e81841ba317cdcb339835a48f8aed9` |
| 14 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/example--5aadc2a3ef59472bd5fe4ab5.md) | 174 | `declaration-track:5aadc2a3ef59472bd5fe4ab5c2c3a910cbbbeee25cb364776c76b1a5da3536e7` |
| 15 | `example` | [(anonymous)](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorFloorLiteralCheck/Variantbb731389f7ccda854424d9d0943a0d79614fa8cda991f02777c3d9132f834669.lean/declarations/example--621eaa80a65326cb6c89f098.md) | 178 | `declaration-track:621eaa80a65326cb6c89f09814efab56a6707a2a9eba9926be5de1cd32ab3c1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
