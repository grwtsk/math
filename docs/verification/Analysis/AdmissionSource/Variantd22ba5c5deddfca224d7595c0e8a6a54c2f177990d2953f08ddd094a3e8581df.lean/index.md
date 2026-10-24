# Verification target: GRWTSK.Analysis.AdmissionSource.Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8c43243d39a5b9a45f0a8bb2f2233baa4a8c831",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/index.md) · [Full source](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8c43243d39a5b9a45f0a8bb2f2233baa4a8c831`.

Source path: `GRWTSK/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.Analysis.DigammaSeries` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.Analysis.ReciprocalKernel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.SUCAS.BridgeMultiplier` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [QuarterSeriesObligation](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/quarterseriesobligation--d4c25eafe26ca31ac00ccd1e.md) | 25 | `declaration-track:d4c25eafe26ca31ac00ccd1e7d9afae8013abeb84fe4c931d2fc4d7dd6615877` |
| 2 | `theorem` | [actual_multiplier_difference](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/actual-multiplier-difference--b7b622c6ddd3c7f3b09fdd01.md) | 30 | `result-track:b7b622c6ddd3c7f3b09fdd0199bc05c04293891e9656ea2b0f0e4fc9d93bdd46` |
| 3 | `theorem` | [quarter_series_of_derivative_limit](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/quarter-series-of-derivative-limit--e1ad0801ff5f6f3b21b06f08.md) | 40 | `result-track:e1ad0801ff5f6f3b21b06f08e7db41a80873496c6d966de3737be7ebe087ecfc` |
| 4 | `theorem` | [multiplier_estimate_of_series](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/multiplier-estimate-of-series--65a03e1ce428851749c74ff9.md) | 49 | `result-track:65a03e1ce428851749c74ff9b35b358feab5c264f9c3b37407d113921a20773c` |
| 5 | `theorem` | [archimedean_integrability_of_series](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/archimedean-integrability-of-series--2b07aa054cab01a559756083.md) | 57 | `result-track:2b07aa054cab01a559756083a3488d7cb6042d967f42797a70cdc56a0c4a4bbf` |
| 6 | `theorem` | [admission_of_derivative_limit](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/admission-of-derivative-limit--7b59d0fec4909ac96f8adc72.md) | 64 | `result-track:7b59d0fec4909ac96f8adc72048101227c82645484f5135a8f71c3fb3c9d6cd7` |
| 7 | `theorem` | [quarter_series](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/quarter-series--2f3d41d37b4d081b28ac89ee.md) | 70 | `result-track:2f3d41d37b4d081b28ac89ee93f572b540bbb7e37e61ca63d08d844a0094200b` |
| 8 | `theorem` | [multiplier_estimate](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/multiplier-estimate--67f01efb5c2e2f01ef8e52ac.md) | 74 | `result-track:67f01efb5c2e2f01ef8e52ac5d5a117f23e21a2e0423c667060c74ac734544be` |
| 9 | `theorem` | [archimedean_integrability](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/archimedean-integrability--97cfc4877d214e8827e94456.md) | 78 | `result-track:97cfc4877d214e8827e944563812248ec7d31ea8a395cf8ad25e1e9a5fa39dd2` |
| 10 | `theorem` | [normalization_admissibility](../../../../mathematics/Analysis/AdmissionSource/Variantd22ba5c5deddfca224d7595c0e8a6a54c2f177990d2953f08ddd094a3e8581df.lean/declarations/normalization-admissibility--2d0d3182bd90c106c278715f.md) | 83 | `result-track:2d0d3182bd90c106c278715fdc06f8748bbbdb6b4edc471959d0d627ffa50517` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
