# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PeakFunction.Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab8982e7216adf6847d69ac4237916b9c28b1efb",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab8982e7216adf6847d69ac4237916b9c28b1efb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integrableOn_peak_smul_of_integrableOn_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/integrableon-peak-smul-of-integrableon-of-tendsto--671a40ab9b62efd56ea4c615.md) | 52 | `result-track:671a40ab9b62efd56ea4c61545759f2a2cf71521678fe20796941655ce13cb82` |
| 2 | `theorem` | [tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto_aux](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/tendsto-setintegral-peak-smul-of-integrableon-of-tendsto-aux--fc717d14feceed3f7e7f222e.md) | 90 | `result-track:fc717d14feceed3f7e7f222e492d5ee68f50041e1cf40fd139ef2bd424885d7f` |
| 3 | `theorem` | [tendsto_setIntegral_peak_smul_of_integrableOn_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/tendsto-setintegral-peak-smul-of-integrableon-of-tendsto--1fb3515ca7710d7d04b8bc21.md) | 180 | `result-track:1fb3515ca7710d7d04b8bc21e9a74f68c55400b5b0baa86670c6b5e6372183a3` |
| 4 | `theorem` | [tendsto_integral_peak_smul_of_integrable_of_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/tendsto-integral-peak-smul-of-integrable-of-tendsto--ffc568e753227ba3616490bb.md) | 219 | `result-track:ffc568e753227ba3616490bb94559b9f1977a37615186e7940dadd2f2c080cde` |
| 5 | `theorem` | [tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_measure_nhdsWithin_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/tendsto-setintegral-pow-smul-of-unique-maximum-of-iscompact-of-measure-n--f8e07d848127fd015b8acc46.md) | 246 | `result-track:f8e07d848127fd015b8acc46128eb1a5acf785057f2172a06365c7ff28872f57` |
| 6 | `theorem` | [tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/tendsto-setintegral-pow-smul-of-unique-maximum-of-iscompact-of-integrabl--c95f1be39072bf1d60c49762.md) | 347 | `result-track:c95f1be39072bf1d60c49762ee664dcee49d5be535d7941f1d31b5ab3a6eaf88` |
| 7 | `theorem` | [tendsto_setIntegral_pow_smul_of_unique_maximum_of_isCompact_of_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/tendsto-setintegral-pow-smul-of-unique-maximum-of-iscompact-of-continuou--de70103ff87ef83c71fd7ccf.md) | 368 | `result-track:de70103ff87ef83c71fd7ccf06c572da5ecc00960b08570ea5b34711801c6558` |
| 8 | `theorem` | [tendsto_integral_comp_smul_smul_of_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/tendsto-integral-comp-smul-smul-of-integrable--1d99930fc6e51d4c5f44f7af.md) | 391 | `result-track:1d99930fc6e51d4c5f44f7afc3d68ecbfdb7692b2842bab2fd6a24d16554d0ba` |
| 9 | `theorem` | [tendsto_integral_comp_smul_smul_of_integrable'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PeakFunction/Variantf9621c2d9caf9405958286ab0f10310a9fc57437d930f04fb31fbd390ae6b344.lean/declarations/tendsto-integral-comp-smul-smul-of-integrable--698f0f3d9d67d4207d7eedfe.md) | 449 | `result-track:698f0f3d9d67d4207d7eedfee1985d46056b3dd180fc1c15e3afc4571ee1d873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
