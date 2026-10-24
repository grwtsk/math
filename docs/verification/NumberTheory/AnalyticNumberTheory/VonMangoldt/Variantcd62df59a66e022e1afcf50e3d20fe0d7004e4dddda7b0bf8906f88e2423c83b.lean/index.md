# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.VonMangoldt.Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ce5752000ce86360fb89867e20591e9e0ffcb59",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ce5752000ce86360fb89867e20591e9e0ffcb59`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/log--efc232014032b60096d67162.md) | 52 | `declaration-track:efc232014032b60096d67162026a3cd47a9599ad237d26a03e8139fd65fde323` |
| 2 | `theorem` | [log_apply](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/log-apply--7dcdddf2d4dbede11796ec71.md) | 56 | `result-track:7dcdddf2d4dbede11796ec7139ea576b9663d41f0cc87fa06ae2efa440d761df` |
| 3 | `def` | [vonMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt--977a17d99fa31a2bfeec7390.md) | 69 | `declaration-track:977a17d99fa31a2bfeec7390fe61f2111c3a57ec561e9d5786def1662c9167f4` |
| 4 | `theorem` | [vonMangoldt_apply](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-apply--12be4d3e47fcc8fa98b555a6.md) | 77 | `result-track:12be4d3e47fcc8fa98b555a6871d8d1891b5870b1104a60eb6d9658c0f78289f` |
| 5 | `theorem` | [vonMangoldt_apply_one](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-apply-one--25ea04c175cd2dfb904a4e2e.md) | 81 | `result-track:25ea04c175cd2dfb904a4e2e121f610a9b0f228a2ba5a1e287709b03e7e80525` |
| 6 | `theorem` | [vonMangoldt_nonneg](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-nonneg--389f7ee129ac77a18eda9d95.md) | 84 | `result-track:389f7ee129ac77a18eda9d952ab09a0f88c9bf66c088faa8f16a6fd2ed1c3a7d` |
| 7 | `theorem` | [vonMangoldt_apply_pow](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-apply-pow--a769cb734845d4d8e8fb367e.md) | 90 | `result-track:a769cb734845d4d8e8fb367e65e7a7a8b0661936b58946c45b9dc5f7ccd76b23` |
| 8 | `theorem` | [vonMangoldt_apply_prime](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-apply-prime--b322177bfd1ba7bf8af13cf3.md) | 93 | `result-track:b322177bfd1ba7bf8af13cf3bd2790a190cbad2ecd4a4b8131e342981b400ab5` |
| 9 | `theorem` | [vonMangoldt_ne_zero_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-ne-zero-iff--6f2ae87a0d2df8d075142451.md) | 96 | `result-track:6f2ae87a0d2df8d075142451cf18a29777d8b5b49652ea0c328cf2b24f750559` |
| 10 | `theorem` | [vonMangoldt_pos_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-pos-iff--a1611addeda0fc4ce817b0ce.md) | 100 | `result-track:a1611addeda0fc4ce817b0cea781a118c4b3f0bdf740b144f23bf2e1d43a2a71` |
| 11 | `theorem` | [vonMangoldt_eq_zero_iff](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-eq-zero-iff--3233aa370d152a616d4fc678.md) | 103 | `result-track:3233aa370d152a616d4fc678fd65a9d7643224acdfbe92a567eab1ea1782a8e4` |
| 12 | `theorem` | [vonMangoldt_sum](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-sum--f65969463d4704336b26aa93.md) | 106 | `result-track:f65969463d4704336b26aa93a9fba59d9ca28dda0ca050b91861063044ec7fd2` |
| 13 | `theorem` | [vonMangoldt_mul_zeta](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-mul-zeta--4e56b784be0d06ace092b8bc.md) | 120 | `result-track:4e56b784be0d06ace092b8bc2fb14c9ca032edd58b4a32493720258680259c42` |
| 14 | `theorem` | [zeta_mul_vonMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/zeta-mul-vonmangoldt--f03b20e9ee45e78eb41115dc.md) | 124 | `result-track:f03b20e9ee45e78eb41115dc9d90f1202ecf2658065f8616da1cccd5247949ea` |
| 15 | `theorem` | [log_mul_moebius_eq_vonMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/log-mul-moebius-eq-vonmangoldt--dfc83b291ebecf7bdc5e11a5.md) | 127 | `result-track:dfc83b291ebecf7bdc5e11a50deb1237bc1b8419a8db81decb8df89becc970f7` |
| 16 | `theorem` | [moebius_mul_log_eq_vonMangoldt](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/moebius-mul-log-eq-vonmangoldt--026182c5398e6ad5d974d3c4.md) | 131 | `result-track:026182c5398e6ad5d974d3c4c28d15635d440878d7fea8f34a18ccc2156f7dbf` |
| 17 | `theorem` | [sum_moebius_mul_log_eq](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/sum-moebius-mul-log-eq--e233b74ee25bb47dc75158fd.md) | 134 | `result-track:e233b74ee25bb47dc75158fde11bbcc4e91ce7e226d8905d6995f11b0cdf5953` |
| 18 | `theorem` | [vonMangoldt_le_log](../../../../../mathematics/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantcd62df59a66e022e1afcf50e3d20fe0d7004e4dddda7b0bf8906f88e2423c83b.lean/declarations/vonmangoldt-le-log--c3759f7b835126dbdf1865ab.md) | 152 | `result-track:c3759f7b835126dbdf1865abc350500c91912b1b03168784ed082eabddc1a0e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
