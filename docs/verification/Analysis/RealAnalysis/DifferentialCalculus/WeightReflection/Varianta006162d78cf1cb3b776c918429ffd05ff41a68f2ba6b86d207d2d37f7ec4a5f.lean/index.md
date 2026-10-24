# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightReflection.Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbe6847c3e4e59db5b921b8bb0dfce5d02a509f3",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbe6847c3e4e59db5b921b8bb0dfce5d02a509f3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean.json)

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
| 1 | `def` | [potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/potential--6f873b66265b2b7c7e760af7.md) | 36 | `declaration-track:6f873b66265b2b7c7e760af790e87ff92a20fc4c5201df8c30dac26c18b67225` |
| 2 | `def` | [evenWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/evenweight--2fa2e59d37465cca0585f617.md) | 40 | `declaration-track:2fa2e59d37465cca0585f617ed37ccc057edff99a2dc837c44aa86a828cb1e54` |
| 3 | `def` | [oddWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/oddweight--42129b3e701dd61a6c14fbdc.md) | 44 | `declaration-track:42129b3e701dd61a6c14fbdc0655dd0a260fd459113f422c1aa98ad7712aca2c` |
| 4 | `theorem` | [normalized_test_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/normalized-test-zero-outside--8940c449d2d922509fd127e5.md) | 48 | `result-track:8940c449d2d922509fd127e5331912d5c39b10bc9ced40fbd78143bc2d157df0` |
| 5 | `theorem` | [correlation_zero_to_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/correlation-zero-to-right--dd98ef4133e830f41b24587f.md) | 55 | `result-track:dd98ef4133e830f41b24587f84fc4bea78c46ed3f3bf11791647b7702b53f2d3` |
| 6 | `theorem` | [correlation_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/correlation-upper-endpoint-zero--92731a4b88a0232735ce8126.md) | 72 | `result-track:92731a4b88a0232735ce8126d50cd1b337eee3aa50aec080e90f73540bf19646` |
| 7 | `theorem` | [correlation_deriv_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/correlation-deriv-upper-endpoint-zero--5c5a662af8c3f1057d1445b3.md) | 78 | `result-track:5c5a662af8c3f1057d1445b3e7a0824583441a7094bc900db09f2e7cdd661501` |
| 8 | `theorem` | [weight_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/weight-upper-endpoint-zero--e9f877380eb5ec082dc0cd8d.md) | 91 | `result-track:e9f877380eb5ec082dc0cd8d4d56c22157ea093d39dd3a34ffd33cdaa83287da` |
| 9 | `theorem` | [potential_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/potential-upper-endpoint-zero--cc6e21a051b3ed843176b017.md) | 96 | `result-track:cc6e21a051b3ed843176b0176e4727a9453f6640299606651a98ad38abf7f555` |
| 10 | `theorem` | [exp_lower_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/exp-lower-endpoint--e4d75427c75eeffc3560051c.md) | 101 | `result-track:e4d75427c75eeffc3560051cd23e217b7427c852b54e43b43d99286af58e03a9` |
| 11 | `theorem` | [reflected_exponential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/reflected-exponential--9d9833d1ac18c8275e042739.md) | 105 | `result-track:9d9833d1ac18c8275e042739db421628f29bda85d132bf0310013ffab85c20dc` |
| 12 | `theorem` | [potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/potential-hasderivat--bf0935dc6717514cc3cf96ec.md) | 114 | `result-track:bf0935dc6717514cc3cf96ec762a21e09a9772ffe3c90255b45e768dca839a6e` |
| 13 | `theorem` | [reflection_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/reflection-hasderivat--9afef87e94f79021319e84e2.md) | 123 | `result-track:9afef87e94f79021319e84e238c27adc5b9f91b8d2a63403fab2374a8195390a` |
| 14 | `theorem` | [odd_potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/odd-potential-hasderivat--fe5544b4b6ce1b2f84123a6c.md) | 128 | `result-track:fe5544b4b6ce1b2f84123a6c3c5484edd9094009ca9f6633d90d48478db3762b` |
| 15 | `theorem` | [even_potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/even-potential-hasderivat--350d04783f72023c001d87fd.md) | 137 | `result-track:350d04783f72023c001d87fd6d6e5809c4c836844887d8f36fad076ea6ae8d02` |
| 16 | `theorem` | [weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/weight-continuous--cfa57c9fea2764828a1671c9.md) | 146 | `result-track:cfa57c9fea2764828a1671c9a44db8cb6462f801d07eda1b9efdb411d36bb745` |
| 17 | `theorem` | [even_weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/even-weight-continuous--c927ab047beab230a42c7cbd.md) | 153 | `result-track:c927ab047beab230a42c7cbda5fa0d54e80b721c907087e5d472af1339affd60` |
| 18 | `theorem` | [odd_weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/odd-weight-continuous--ce24ade760d8320cffc46bbe.md) | 160 | `result-track:ce24ade760d8320cffc46bbe79906b6a3e021edd96035601c896129932110333` |
| 19 | `theorem` | [even_weight_zeroth_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/even-weight-zeroth-moment--ca1f7932dbed5d0c60d89a3d.md) | 167 | `result-track:ca1f7932dbed5d0c60d89a3de74ed9986935b2f39c577eb72ed5e38c3886ef29` |
| 20 | `theorem` | [odd_weight_zeroth_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/odd-weight-zeroth-moment--686680e1fb1e1a08e9013476.md) | 177 | `result-track:686680e1fb1e1a08e9013476f0a7f471a5e6e455c78f68292cce0bba23cd133e` |
| 21 | `theorem` | [prime_two_boundary_eq_four_even_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/prime-two-boundary-eq-four-even-moment--0031911455c666e41f08134a.md) | 188 | `result-track:0031911455c666e41f08134a80317a9fe323bed584726ad1b0b1cec0dd758498` |
| 22 | `theorem` | [even_moment_zero_iff_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/even-moment-zero-iff-endpoint-zero--b0c8a25928b48ff9d8557e1e.md) | 203 | `result-track:b0c8a25928b48ff9d8557e1e656e950e9f6ebd06057a015bc81299968590a6f2` |
| 23 | `structure` | [SectorIntegrability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/sectorintegrability--75f9f6d86b509c0b8c8030ac.md) | 212 | `declaration-track:75f9f6d86b509c0b8c8030acd7be99cc3641c9a0494adec2b211a2248362e16d` |
| 24 | `theorem` | [centered_even_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/centered-even-integral--ced27493cd1a32bf9ab6deae.md) | 232 | `result-track:ced27493cd1a32bf9ab6deaef2ab600b7fc611c77376039b13075f3a9c95887a` |
| 25 | `theorem` | [centered_signed_pairing_with_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/centered-signed-pairing-with-boundary--8e917d4363cf0e4ab5437347.md) | 254 | `result-track:8e917d4363cf0e4ab5437347dcd97e663fff82445c8f50e22500e6f47e121954` |
| 26 | `def` | [centeredSignedValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/centeredsignedvalue--556365652d6ab1b5e32973e7.md) | 269 | `declaration-track:556365652d6ab1b5e32973e71e97718f20ccd7d600f60fd237dcddea5fc8346e` |
| 27 | `theorem` | [signed_pairing_eq_centered_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/signed-pairing-eq-centered-value--4bc67c6adb8b9134b212bd54.md) | 277 | `result-track:4bc67c6adb8b9134b212bd54a1eb7eb6d4e135234658f2c58aeddf1eb23ec41b` |
| 28 | `def` | [CenteredSignedEstimate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/centeredsignedestimate--b9b8fb219001696f839c8f64.md) | 286 | `declaration-track:b9b8fb219001696f839c8f64d885295536d0a1e87d7b6ea7863f94e0b0ab5cd4` |
| 29 | `theorem` | [centered_estimate_iff_source_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Varianta006162d78cf1cb3b776c918429ffd05ff41a68f2ba6b86d207d2d37f7ec4a5f.lean/declarations/centered-estimate-iff-source-bound--fe15a0a8517da0f5584f9a99.md) | 291 | `result-track:fe15a0a8517da0f5584f9a99b19bee1c83c45b302d315e49dd98b90cbc8abcde` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
