# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.NonIntegrable.Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a99298877567a57f56f3f8e2d9fddcc3fc6470f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a99298877567a57f56f3f8e2d9fddcc3fc6470f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter-aux--3b184a6bd36dca218ee9f778.md) | 58 | `result-track:3b184a6bd36dca218ee9f778ecfdad2e578517fdd333982e6a5a4f41c5f3c55f` |
| 2 | `theorem` | [not_integrableOn_of_tendsto_norm_atTop_of_deriv_isBigO_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/not-integrableon-of-tendsto-norm-attop-of-deriv-isbigo-filter--7fe5cdc754bee26e82094c25.md) | 104 | `result-track:7fe5cdc754bee26e82094c25048468cb518c97305963b209e88ef4a2ffbeb83a` |
| 3 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_filter](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-filter--967f85f9f83f5a8f0e21e0d9.md) | 133 | `result-track:967f85f9f83f5a8f0e21e0d9fb73e4c02a2ee7e77739f6ec0b604f56a3e6e11e` |
| 4 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_within_diff_singleton](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-within-diff--9e03675e2648a8d51e055105.md) | 144 | `result-track:9e03675e2648a8d51e055105b0514c4adebccaacf95abc738bdbb26bcc5f18ab` |
| 5 | `theorem` | [not_intervalIntegrable_of_tendsto_norm_atTop_of_deriv_isBigO_punctured](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/not-intervalintegrable-of-tendsto-norm-attop-of-deriv-isbigo-punctured--54b6ffcd4e7a1bc1f958b74d.md) | 167 | `result-track:54b6ffcd4e7a1bc1f958b74d88905c0adc549a76c3c69f26d29aae3add73027f` |
| 6 | `theorem` | [not_intervalIntegrable_of_sub_inv_isBigO_punctured](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/not-intervalintegrable-of-sub-inv-isbigo-punctured--361afc7939a9aa5c87165732.md) | 177 | `result-track:361afc7939a9aa5c87165732474422583d0079097478f36e430c5ddf59acbec0` |
| 7 | `theorem` | [intervalIntegrable_sub_inv_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/intervalintegrable-sub-inv-iff--7cb178fd198c627e298237d7.md) | 194 | `result-track:7cb178fd198c627e298237d718802df36ecfe3cd486268afff9ba330d1bd7a9f` |
| 8 | `theorem` | [intervalIntegrable_inv_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/intervalintegrable-inv-iff--ccf5a785be993129e50965c9.md) | 207 | `result-track:ccf5a785be993129e50965c93e78c3505df21725579e1b3f314c5632266868da` |
| 9 | `theorem` | [not_IntegrableOn_Ici_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/not-integrableon-ici-inv--5430de92cf4e2909fe861885.md) | 212 | `result-track:5430de92cf4e2909fe8618850821b7b2fc4e1d6c121bbd798e70e0f7187dba9e` |
| 10 | `theorem` | [not_IntegrableOn_Ioi_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/NonIntegrable/Variant0e60bd1b42a48b404f3d782b2acd74365c47af73177c4d2a62a1eaa39db69251.lean/declarations/not-integrableon-ioi-inv--ea10a550a14d68351c321674.md) | 223 | `result-track:ea10a550a14d68351c321674e4453eb076c399128060cab930e25e7e6bec5158` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
