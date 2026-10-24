# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedBoundaryCycle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69f3fef5dfe98545152a0889a7ffec268aeb1237",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69f3fef5dfe98545152a0889a7ffec268aeb1237`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Diophantine.UnitEquation.RationalBoundaryCycle`](../../../../../mathematics/NumberTheory/Diophantine/UnitEquation/RationalBoundaryCycle.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyMarkedSUnit`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedSUnit.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sourcePair](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/sourcepair--c8c76d946659dc211b273220.md) | 29 | `declaration-track:c8c76d946659dc211b2732205074638cff40f64ee40990b3cad44dc023b57888` |
| 2 | `theorem` | [source_values](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/source-values--dac67a6c1bdc941bf9834b94.md) | 37 | `result-track:dac67a6c1bdc941bf9834b947e92a40d8f69a0d0f34ff2c0c32023710d745e32` |
| 3 | `def` | [chartValues](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chartvalues--0d3250580b2152a50bc8b9dd.md) | 44 | `declaration-track:0d3250580b2152a50bc8b9dd9c26527acfe09df893b91c91500de12c99cb8fa6` |
| 4 | `theorem` | [cyclic_values](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/cyclic-values--a27dce95e9ce51f0380b7daf.md) | 47 | `result-track:a27dce95e9ce51f0380b7daf8c897a84c3bc0b0bca21f4b50967a5c1b68c64b6` |
| 5 | `theorem` | [source_pair_numerators](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/source-pair-numerators--03942a797fd055001ee0195a.md) | 58 | `result-track:03942a797fd055001ee0195a859fa8287dde93a72e11f90c03c2117ab3e7bb3e` |
| 6 | `theorem` | [cyclic_denominators](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/cyclic-denominators--c2fdb96b2def567b2e100dad.md) | 68 | `result-track:c2fdb96b2def567b2e100dad95a5298112f871287423beab36be6e7db1f4b548` |
| 7 | `theorem` | [mirror_denominator](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/mirror-denominator--489d85c4d22f124fcd3214fd.md) | 78 | `result-track:489d85c4d22f124fcd3214fd92db8ebe28bd8b4d18c8b24d53e3cb134b7aab8d` |
| 8 | `theorem` | [chart_source_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chart-source-height--11d0e22270835301da559a9f.md) | 84 | `result-track:11d0e22270835301da559a9f6dda35d5beb632cf738da933a40791e992fdc165` |
| 9 | `theorem` | [chart_logHeight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chart-logheight--20caff7d3d17b41cc930b0ee.md) | 88 | `result-track:20caff7d3d17b41cc930b0eef5bc8d8d58c4e15c903689d143b3e7f49cba20b1` |
| 10 | `def` | [chartSupport](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chartsupport--d60564c7f97f86ef48902276.md) | 93 | `declaration-track:d60564c7f97f86ef489022763cd63d9de8eccf7e05a1dc80ae8e0ea6cee74163` |
| 11 | `theorem` | [chart_source_support](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chart-source-support--7ebb240c44655281557af575.md) | 96 | `result-track:7ebb240c44655281557af575cd7deae0912445e82f6918c035834acc3366cb26` |
| 12 | `theorem` | [chart_source_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chart-source-depth--3baa831fa3054eb3715ab0c6.md) | 101 | `result-track:3baa831fa3054eb3715ab0c68d3631f60a4ed65bb1d412776008e5ab93fb3461` |
| 13 | `theorem` | [chart_minimal_S](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chart-minimal-s--8168929ce5c5371c1edf5105.md) | 109 | `result-track:8168929ce5c5371c1edf510511ea2bdc10dc0a3b4375ddaef0d33f2bb6af92b9` |
| 14 | `def` | [chartCount](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chartcount--a79b90ffc40f9bd1c21117b1.md) | 118 | `declaration-track:a79b90ffc40f9bd1c21117b163717f2b4222eb20aefc49438743a50177f9c3cf` |
| 15 | `theorem` | [chartCount_eq](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chartcount-eq--a3249d7969a1f209898f9c1a.md) | 121 | `result-track:a3249d7969a1f209898f9c1a610043fdcfc269d6e0a54db7c37d68307c98e511` |
| 16 | `theorem` | [chart_signed_defect](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chart-signed-defect--ec3de8d3170470b0f3ba85dd.md) | 126 | `result-track:ec3de8d3170470b0f3ba85ddb310ea1f29e0260460a189f406dc47e3763d5ce7` |
| 17 | `theorem` | [chosen_chart_bound_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/chosen-chart-bound-iff--658d21193780866b64120809.md) | 133 | `result-track:658d21193780866b6412080947dd3ca04237aa676b2ccd0aba93037dcef6ecbe` |
| 18 | `theorem` | [uniform_chosen_chart_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/uniform-chosen-chart-iff--faa10136b3acdc1892b3d136.md) | 143 | `result-track:faa10136b3acdc1892b3d1360f54c6fc3df45108a4de6b9196a6a176b0528d90` |
| 19 | `theorem` | [no_uniform_chart_height](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyMarkedBoundaryCycle.lean/declarations/no-uniform-chart-height--7fa971d034def3b7bf4e95c6.md) | 154 | `result-track:7fa971d034def3b7bf4e95c6e90fd5e80203ef090f610203fd2bf05f7ddb5661` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
