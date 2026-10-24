# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightReflection.Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fb39bca757b53ff335e381bfc6a56a031db01ad",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fb39bca757b53ff335e381bfc6a56a031db01ad`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/potential--b82071bc738d75e970b97238.md) | 36 | `declaration-track:b82071bc738d75e970b97238389633507013e35303df4ea2ab5b0138e79cdf72` |
| 2 | `def` | [evenWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/evenweight--738bf3e84a8b28fb8c0b9982.md) | 40 | `declaration-track:738bf3e84a8b28fb8c0b998268bee2716feec01528a642361787da50712db37f` |
| 3 | `def` | [oddWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/oddweight--2aa89f9154830a3b9d3b7a8f.md) | 44 | `declaration-track:2aa89f9154830a3b9d3b7a8fdae33e910015baa6e11cf37a23972782a09c0aa8` |
| 4 | `theorem` | [normalized_test_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/normalized-test-zero-outside--9c14664ae7aa3a1bca2e04fa.md) | 48 | `result-track:9c14664ae7aa3a1bca2e04faabc02abb81492896e7ed19d516d1bb40d135f5aa` |
| 5 | `theorem` | [correlation_zero_to_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/correlation-zero-to-right--c2ccd7a38455fef2d0734ee1.md) | 55 | `result-track:c2ccd7a38455fef2d0734ee13b0948b44032ecb456d3806eb9a16b3014b006f6` |
| 6 | `theorem` | [correlation_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/correlation-upper-endpoint-zero--43650e05003ecb0fddc5d415.md) | 72 | `result-track:43650e05003ecb0fddc5d415001e6849f540f7c44b809fc2a40262d47b46d6a1` |
| 7 | `theorem` | [correlation_deriv_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/correlation-deriv-upper-endpoint-zero--77a653f8d06bbcb571d45053.md) | 78 | `result-track:77a653f8d06bbcb571d45053c5d470e101c2b6c29f31f988fe58e002fbc4595b` |
| 8 | `theorem` | [weight_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/weight-upper-endpoint-zero--878a68331edf61bebd2c7620.md) | 91 | `result-track:878a68331edf61bebd2c7620ef576385e6392321192d876f9a12cca92b8b3aba` |
| 9 | `theorem` | [potential_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/potential-upper-endpoint-zero--b19896c46b1046c190ec5b11.md) | 96 | `result-track:b19896c46b1046c190ec5b11f0cfbf0b3789851674d392c63e2efa03fd876e38` |
| 10 | `theorem` | [exp_lower_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/exp-lower-endpoint--ea29eb3eb3dea5daa847ce83.md) | 101 | `result-track:ea29eb3eb3dea5daa847ce8331ac0bc01419b2ac96d040dc7ffffffd2b2a1aed` |
| 11 | `theorem` | [reflected_exponential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/reflected-exponential--45fdff1935678bc69ca2ecf1.md) | 105 | `result-track:45fdff1935678bc69ca2ecf14b7f79c1c441a37db5b44d32d473fdcff7ad5b5a` |
| 12 | `theorem` | [potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/potential-hasderivat--626b5ea7426c17e139d5e453.md) | 114 | `result-track:626b5ea7426c17e139d5e453f3ee3669d2e6db18021e575cfa226aa07de5b98f` |
| 13 | `theorem` | [reflection_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/reflection-hasderivat--194d71d5691b366bf0654e56.md) | 123 | `result-track:194d71d5691b366bf0654e569c05b5bf3237dc5fd896775a9d90afe58af5e586` |
| 14 | `theorem` | [odd_potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/odd-potential-hasderivat--9b92dec996eeaad2841b908a.md) | 128 | `result-track:9b92dec996eeaad2841b908a9759a6449144eb572b8e630d78c7955e3df2479a` |
| 15 | `theorem` | [even_potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/even-potential-hasderivat--5edbdda75ac35e25c5a16ac3.md) | 137 | `result-track:5edbdda75ac35e25c5a16ac35873259a2d62cb1b9bb61e8d0ce19a1748542d73` |
| 16 | `theorem` | [weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/weight-continuous--071074e81cc190b155279b8e.md) | 146 | `result-track:071074e81cc190b155279b8e9be103f0fc244014057c17861aab0dd291cc4274` |
| 17 | `theorem` | [even_weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/even-weight-continuous--66d6e540016d27883160b35f.md) | 153 | `result-track:66d6e540016d27883160b35fdbee11ce162e4aa9c6535469d4e222be14b8dd8f` |
| 18 | `theorem` | [odd_weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/odd-weight-continuous--e154be183142bedeb51752ca.md) | 160 | `result-track:e154be183142bedeb51752ca3fdfcd7c6a96540d022569a8fa6f637b944ac749` |
| 19 | `theorem` | [even_weight_zeroth_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/even-weight-zeroth-moment--63b0cdae3d7fedf72a46dd5d.md) | 167 | `result-track:63b0cdae3d7fedf72a46dd5d6c842cad55e6b7f94bcc04d8549e4185c5efe379` |
| 20 | `theorem` | [odd_weight_zeroth_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/odd-weight-zeroth-moment--a18c31e6da3cad6acb12d961.md) | 177 | `result-track:a18c31e6da3cad6acb12d961e41834fc466bbb6acfff52da40e4680e92ce7785` |
| 21 | `theorem` | [prime_two_boundary_eq_four_even_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/prime-two-boundary-eq-four-even-moment--a49ba2f729149ee7f72f014d.md) | 188 | `result-track:a49ba2f729149ee7f72f014d4bdc34516ba3b9bd3884c5141a977044cfa42317` |
| 22 | `theorem` | [even_moment_zero_iff_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/even-moment-zero-iff-endpoint-zero--a63d33e7b0f8eac1b4a38e17.md) | 203 | `result-track:a63d33e7b0f8eac1b4a38e172bb01ee272b6cbd1801f08ea0973b4355e03cb6f` |
| 23 | `structure` | [SectorIntegrability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/sectorintegrability--6c20034bc269b8f214732f3d.md) | 212 | `declaration-track:6c20034bc269b8f214732f3d2af9c3dbd860299d48ffc23de58bc1c8c53f519d` |
| 24 | `theorem` | [centered_even_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/centered-even-integral--c9d58d6d39ee53745eff4cd2.md) | 232 | `result-track:c9d58d6d39ee53745eff4cd22eda228f2050f1561c698abb9892f9ccc0b5cd24` |
| 25 | `theorem` | [centered_signed_pairing_with_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/centered-signed-pairing-with-boundary--0e3e5064a652c641da392d4f.md) | 254 | `result-track:0e3e5064a652c641da392d4f16bc453c8ca9e29dfd4ae55723870c77e2ac92d9` |
| 26 | `def` | [centeredSignedValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/centeredsignedvalue--3e1d016286e9374cab1db642.md) | 269 | `declaration-track:3e1d016286e9374cab1db642b224d1439fa4e07877f0caba65cc0b64d481f3c9` |
| 27 | `theorem` | [signed_pairing_eq_centered_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/signed-pairing-eq-centered-value--b5efde9523b2afa92fcadbf2.md) | 277 | `result-track:b5efde9523b2afa92fcadbf22608f986d1d650d24fb52c7ed3173eea087fc7bf` |
| 28 | `def` | [CenteredSignedEstimate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/centeredsignedestimate--faa48eb32ba040616af0f0b5.md) | 286 | `declaration-track:faa48eb32ba040616af0f0b574fab03de01aed7730ec23b9b81ea1adb32bb797` |
| 29 | `theorem` | [centered_estimate_iff_source_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variante796966fb36656de34d53fa3ba25d8a94e5fbd1a1b75dd64ce6680bda5263841.lean/declarations/centered-estimate-iff-source-bound--09b1456da46167ae754ba2ac.md) | 291 | `result-track:09b1456da46167ae754ba2acde12400fd71a3ad8efc27f2e0ad0c421daf03674` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
