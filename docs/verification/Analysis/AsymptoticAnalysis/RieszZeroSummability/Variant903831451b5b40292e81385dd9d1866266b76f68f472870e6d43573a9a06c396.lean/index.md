# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.RieszZeroSummability.Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e579fe1b69800370ae7f17566b6be3c3c385eaa",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e579fe1b69800370ae7f17566b6be3c3c385eaa`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.RieszResidueAudit` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.RiemannHypothesisEstimateConverse` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rieszZeroWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/rieszzeroweight--9930446f13a4e6ec642345db.md) | 30 | `declaration-track:9930446f13a4e6ec642345db13d1dae2c0ee105a3079089e109f0fef9d359470` |
| 2 | `def` | [rieszPointMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/rieszpointmajorant--47c64e5434af65d4d85c35be.md) | 34 | `declaration-track:47c64e5434af65d4d85c35be6669161625ef0eb8c0ea53702f0291fe63c53caa` |
| 3 | `def` | [rieszOccurrenceMajorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/rieszoccurrencemajorant--fa7984a315a13757e470b9bd.md) | 40 | `declaration-track:fa7984a315a13757e470b9bd0b72e82b07e1c8dd7d7e1384c9f317891223a44f` |
| 4 | `theorem` | [riesz_zero_parameter_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-parameter-ne-zero--3f5900f86eef23e75d03e296.md) | 46 | `result-track:3f5900f86eef23e75d03e2960fa105db42d7ea760a295f9df6576bcb29f45b26` |
| 5 | `theorem` | [boundary_riesz_analytic_at_zero_parameter](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/boundary-riesz-analytic-at-zero-parameter--46893944363b8d19b23dd5b5.md) | 50 | `result-track:46893944363b8d19b23dd5b5cf879df40688d0f1066ce9995cd7f49abedc15f6` |
| 6 | `theorem` | [riesz_decay_constant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-decay-constant-nonneg--51e8ab392b90fef6b20318e0.md) | 55 | `result-track:51e8ab392b90fef6b20318e07be76c109c0970ff3cb9cecea643c55ad2d92053` |
| 7 | `theorem` | [riesz_point_majorant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-point-majorant-nonneg--4826adaeb4209ab4f728f895.md) | 60 | `result-track:4826adaeb4209ab4f728f895c522ef736a5bd7c1172c61b75831f402abb4a0fb` |
| 8 | `theorem` | [riesz_occurrence_majorant_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-occurrence-majorant-nonneg--fa4991821d2da73e5f3c3031.md) | 65 | `result-track:fa4991821d2da73e5f3c3031403e20b7cf872e284db14cc96ecc03cb40153601` |
| 9 | `theorem` | [riesz_monomial_point_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-monomial-point-norm-le--ef2b2cea330fd4cb4c19e584.md) | 73 | `result-track:ef2b2cea330fd4cb4c19e58419207deb2ef58d7337f7b8ea7e08ba898c275c92` |
| 10 | `theorem` | [boundary_riesz_transform_point_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/boundary-riesz-transform-point-norm-le--71df94bf337fb9c8c3ac91ae.md) | 89 | `result-track:71df94bf337fb9c8c3ac91ae088b1f6da57866b9ec6afe0ccbc9c3d3426dcc9d` |
| 11 | `theorem` | [boundary_riesz_transform_shell_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/boundary-riesz-transform-shell-norm-le--27bfcd2365eb1e3b9d74904f.md) | 104 | `result-track:27bfcd2365eb1e3b9d74904fcbf5e2420b23b02ed999d534a63ea9ffc8569c05` |
| 12 | `theorem` | [eventually_one_le_shifted_norm](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/eventually-one-le-shifted-norm--f17532d503581077e9e40d4c.md) | 127 | `result-track:f17532d503581077e9e40d4ca7f77799e43e2e32528bf9a23d66642a079be6fa` |
| 13 | `theorem` | [riesz_occurrence_majorant_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-occurrence-majorant-summable--2164ab8f2ab0742ffdb34ac6.md) | 136 | `result-track:2164ab8f2ab0742ffdb34ac605d1f44b62ecf39ba273720e51d414b7c8c6f4d7` |
| 14 | `theorem` | [boundary_riesz_zero_norm_le_majorant](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/boundary-riesz-zero-norm-le-majorant--ef51ba3b52ab286584ca132b.md) | 146 | `result-track:ef51ba3b52ab286584ca132bf690916b983f254148f6c62c63d9bfee9e3121d3` |
| 15 | `theorem` | [boundary_riesz_zero_norms_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/boundary-riesz-zero-norms-summable--6051235b69cc655ecaf9432e.md) | 154 | `result-track:6051235b69cc655ecaf9432e1db034d214e120ad4196313b3c2370a1bf83ec1b` |
| 16 | `theorem` | [boundary_riesz_zero_values_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/boundary-riesz-zero-values-summable--88108e20db074d7bd3c98a76.md) | 160 | `result-track:88108e20db074d7bd3c98a762a2ed404f19ba20a22120c0191433864fa9c6e45` |
| 17 | `theorem` | [riesz_zero_exponential_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-exponential-norm-le--e220c76e6c2c51738f0f8b76.md) | 165 | `result-track:e220c76e6c2c51738f0f8b767751a28aff81a9d607bbc55e0e5a4a6e94fcfc94` |
| 18 | `theorem` | [riesz_zero_weight_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-weight-norm-le--aab7f832ef895b3a10e3c109.md) | 176 | `result-track:aab7f832ef895b3a10e3c109bf17e4ca1f8ff9125524f36c5fb75cadb758385e` |
| 19 | `theorem` | [riesz_zero_weights_norm_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-weights-norm-summable--e0a643e56cba9ffae7c00ade.md) | 184 | `result-track:e0a643e56cba9ffae7c00adeafd3648a1cf22e6e1183b375872233a3e5274755` |
| 20 | `theorem` | [riesz_zero_weights_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-weights-summable--d374ba36532e2f41a10fc2d4.md) | 190 | `result-track:d374ba36532e2f41a10fc2d49ae75cebe59a38ccc1cab1ae08034ed7e1078866` |
| 21 | `theorem` | [riesz_zero_exponential_norm_eq_one_of_rh](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-exponential-norm-eq-one-of-rh--af7b9e6fe91c47f0decc8cf6.md) | 194 | `result-track:af7b9e6fe91c47f0decc8cf67af18d9bcaf65bfc529b110810883185c922ed4d` |
| 22 | `theorem` | [riesz_zero_weight_norm_le_of_rh](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-weight-norm-le-of-rh--1b746bfd38d3cc439ec96c14.md) | 201 | `result-track:1b746bfd38d3cc439ec96c140182629982d0a289855aae8049d78f4e2211eb86` |
| 23 | `def` | [rieszZeroMajorantMass](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/rieszzeromajorantmass--6cf1d3f74272d41c2273abc0.md) | 209 | `declaration-track:6cf1d3f74272d41c2273abc0396c5f87355e054c2f4ddd1fe36a173275570285` |
| 24 | `theorem` | [riesz_zero_majorant_mass_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-majorant-mass-nonneg--e4da6fca1644b36d77939e17.md) | 212 | `result-track:e4da6fca1644b36d77939e1789dd1e52921c3701b1f9cc98a4df46f4d7bccdf2` |
| 25 | `theorem` | [boundary_riesz_zero_absolute_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/boundary-riesz-zero-absolute-sum-le--8e8fe024b48ffedff38e5880.md) | 216 | `result-track:8e8fe024b48ffedff38e588035505f4542b798bad32193a857225b67c3ade288` |
| 26 | `theorem` | [riesz_zero_absolute_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-absolute-sum-le--fa20c36a37340a5df462bec1.md) | 223 | `result-track:fa20c36a37340a5df462bec1839b7574e35bed220e7b8fda648ce8a46c505941` |
| 27 | `theorem` | [riesz_zero_absolute_sum_le_of_rh](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-absolute-sum-le-of-rh--72fa8dbcfdc51fe6e06b303d.md) | 231 | `result-track:72fa8dbcfdc51fe6e06b303dff49d88cefd66193e29bc692d042ab1cc44d852c` |
| 28 | `theorem` | [riesz_zero_sum_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-sum-norm-le--59bd920bb4e863506e5868af.md) | 238 | `result-track:59bd920bb4e863506e5868af21af94588a4eabdb314c439a8f00a8940a8c3114` |
| 29 | `theorem` | [riesz_zero_sum_norm_le_of_rh](../../../../../mathematics/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant903831451b5b40292e81385dd9d1866266b76f68f472870e6d43573a9a06c396.lean/declarations/riesz-zero-sum-norm-le-of-rh--80419619f95f3cefeb914c26.md) | 244 | `result-track:80419619f95f3cefeb914c262ccba5f7183bde18db268d8ca584483e72ee939c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
