# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PeakFunction.Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2beb561cb08d2bfa274f61218cd4102231b2ed7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2beb561cb08d2bfa274f61218cd4102231b2ed7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrableOn_peak_smul_of_integrableOn_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/integrableon-peak-smul-of-integrableon-of-tendsto--4091a29da8955281f82fab4b.md) | 60 | `result-track:4091a29da8955281f82fab4b9867b5e48776ae3f54e64b64836021c2c59f1e54` |
| 2 | `theorem` | [tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/tendsto-setintegral-peak-smul-of-integrableon-of-tendsto-aux--5f38128c5cb1b8b7d64ac539.md) | 98 | `result-track:5f38128c5cb1b8b7d64ac539b7603c47d85125b5e72ca11b2e06e66c23c14c9f` |
| 3 | `theorem` | [tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/tendsto-setintegral-peak-smul-of-integrableon-of-tendsto--c5c90e092a77d6317600bb55.md) | 188 | `result-track:c5c90e092a77d6317600bb5568b3877140548439a767ceef914a9099a2db30e8` |
| 4 | `theorem` | [tendsto_integral_peak_smul_of_integrable_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/tendsto-integral-peak-smul-of-integrable-of-tendsto--073b508f3c331cefd4eaf8f0.md) | 227 | `result-track:073b508f3c331cefd4eaf8f048048026e247c4abef5dc61ee26f61ed63d2ab90` |
| 5 | `theorem` | [tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_measure_nhdsWithin_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/tendsto-setintegral-pow-smul-of-unique-maximum-of-iscompact-of-measure-n--2683a7d62ab5cecb805b7d55.md) | 254 | `result-track:2683a7d62ab5cecb805b7d55e256dde037bf903c858e6014f648c149ded4effa` |
| 6 | `theorem` | [tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/tendsto-setintegral-pow-smul-of-unique-maximum-of-iscompact-of-integrabl--0fd13e33cad1c7a05855726e.md) | 355 | `result-track:0fd13e33cad1c7a05855726ea86f29aa1e79c208944208f6f0ae9e216a7017f4` |
| 7 | `theorem` | [tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/tendsto-setintegral-pow-smul-of-unique-maximum-of-iscompact-of-continuou--fc31fdb882843d34e679e4e7.md) | 376 | `result-track:fc31fdb882843d34e679e4e7c62a43986b989afcf345eba772635bd2db1ecfe7` |
| 8 | `theorem` | [tendsto_integral_comp_smul_smul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/tendsto-integral-comp-smul-smul-of-integrable--25eddf2cdf2c4994eb13d888.md) | 399 | `result-track:25eddf2cdf2c4994eb13d8887f4dd442afb470bd5bfb9d58ed9edb296bc65199` |
| 9 | `theorem` | [tendsto_integral_comp_smul_smul_of_integrable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variant19348ecc43ac1c3e454c630a014bb7fc213ce2e58127350c74b70b7e81afc8bb.lean/declarations/tendsto-integral-comp-smul-smul-of-integrable--49709529757a18172a5b6c8c.md) | 457 | `result-track:49709529757a18172a5b6c8cab40cad554403c65110f2cd14bfae3934e0b56ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
