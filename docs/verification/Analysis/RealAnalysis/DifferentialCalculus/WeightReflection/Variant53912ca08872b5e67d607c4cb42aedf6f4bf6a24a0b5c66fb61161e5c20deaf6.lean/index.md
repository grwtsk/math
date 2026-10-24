# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightReflection.Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d0a97a5ce5c959ce2be9f99a35622594f2cdafd",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d0a97a5ce5c959ce2be9f99a35622594f2cdafd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/potential--ae6beba26cbee12287e415e5.md) | 28 | `declaration-track:ae6beba26cbee12287e415e580c23706246091b6b4f33de4f7f3b9cf1bded7a9` |
| 2 | `def` | [evenWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/evenweight--655de4e647a4ed469b861bce.md) | 32 | `declaration-track:655de4e647a4ed469b861bce907515c9af2ea30bbb8d46e727ea1fbf497b6369` |
| 3 | `def` | [oddWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/oddweight--b91724100025005f0b89c016.md) | 36 | `declaration-track:b91724100025005f0b89c016fb69d75e898b3472b059625158e9a6e073f4400e` |
| 4 | `theorem` | [normalized_test_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/normalized-test-zero-outside--d842a5e7a0ad0f501bfd8d78.md) | 40 | `result-track:d842a5e7a0ad0f501bfd8d78d879bf5333329072dfda78a7a8d2c03902a8b5b7` |
| 5 | `theorem` | [correlation_zero_to_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/correlation-zero-to-right--9c75ac98ac26402b1441317f.md) | 47 | `result-track:9c75ac98ac26402b1441317f8fcaacf27ed95ffe4126a35ced1cfb85a5e082e2` |
| 6 | `theorem` | [correlation_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/correlation-upper-endpoint-zero--284a71020c404202ec978c70.md) | 64 | `result-track:284a71020c404202ec978c70ea9d90f36954f031669fc8b3573df8cc236b118b` |
| 7 | `theorem` | [correlation_deriv_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/correlation-deriv-upper-endpoint-zero--21de8c622762d0298c2ebd6d.md) | 70 | `result-track:21de8c622762d0298c2ebd6d20ee3426f66373d61e70ff5b5d675a97decd7721` |
| 8 | `theorem` | [weight_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/weight-upper-endpoint-zero--a112a3792cf2986218588263.md) | 83 | `result-track:a112a3792cf29862185882637a46555a090ee7b6956f67282a61de55984b42a4` |
| 9 | `theorem` | [potential_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/potential-upper-endpoint-zero--0bb9c01933595219e16d98fa.md) | 88 | `result-track:0bb9c01933595219e16d98fa2a189440aec1b70dfacda2c4581478843af89c9a` |
| 10 | `theorem` | [exp_lower_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/exp-lower-endpoint--c32e3ff5ca3b7610d136c881.md) | 93 | `result-track:c32e3ff5ca3b7610d136c8813a6f1b60f2f1b296ab30782489c2866bd831e76b` |
| 11 | `theorem` | [reflected_exponential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/reflected-exponential--cbd7cd7c65fc88848e91da20.md) | 97 | `result-track:cbd7cd7c65fc88848e91da20d4a5de825c7e8d6b8f18e39ac3461fbd8fba6040` |
| 12 | `theorem` | [potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/potential-hasderivat--e7b9005fe1d886f81c6c6160.md) | 106 | `result-track:e7b9005fe1d886f81c6c61606fd16f68113132d426e4dceb70ca7e688053fe8e` |
| 13 | `theorem` | [reflection_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/reflection-hasderivat--88747fc102214dc92372e40c.md) | 115 | `result-track:88747fc102214dc92372e40c86f2bba70a2c8a57275e6e85bdcd25ff14b60b61` |
| 14 | `theorem` | [odd_potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/odd-potential-hasderivat--c40d65f4815a56df4c4ee038.md) | 120 | `result-track:c40d65f4815a56df4c4ee0385bade1c21f0e41ac5da4d536685dc806ebb166ab` |
| 15 | `theorem` | [even_potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/even-potential-hasderivat--ad76c8826c8139a6fdd6e27c.md) | 129 | `result-track:ad76c8826c8139a6fdd6e27c0bea2b0adaf11335b83fc1c603348b1112e882ca` |
| 16 | `theorem` | [weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/weight-continuous--53230ae17f727487cbc360fd.md) | 138 | `result-track:53230ae17f727487cbc360fde078c6d1e9818381dcdc3dd56913ffac6b669e29` |
| 17 | `theorem` | [even_weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/even-weight-continuous--62ff0c5b83c140571bb01397.md) | 145 | `result-track:62ff0c5b83c140571bb013977680d2d0e068f4072bb5a00af99013744b8749e0` |
| 18 | `theorem` | [odd_weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/odd-weight-continuous--6779fe2be68e62fe0ca9cdf9.md) | 152 | `result-track:6779fe2be68e62fe0ca9cdf940814506bf0da93aca53bfee59bfc6d2e501a416` |
| 19 | `theorem` | [even_weight_zeroth_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/even-weight-zeroth-moment--8b9b8ca5bd30bb67e5818bbc.md) | 159 | `result-track:8b9b8ca5bd30bb67e5818bbc5a246db83c1831b54fe996ae61b5afed701df31c` |
| 20 | `theorem` | [odd_weight_zeroth_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/odd-weight-zeroth-moment--76b93106730e2864f52511d5.md) | 169 | `result-track:76b93106730e2864f52511d59c19abc5054f511a1b7ef71b745a30be2c724a17` |
| 21 | `theorem` | [prime_two_boundary_eq_four_even_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/prime-two-boundary-eq-four-even-moment--2958d774b8943a39801ab970.md) | 180 | `result-track:2958d774b8943a39801ab9700bee52f6a5cf2dafeb1493baed5cf5d19ed2aff9` |
| 22 | `theorem` | [even_moment_zero_iff_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/even-moment-zero-iff-endpoint-zero--f2ea8a88dca1eaac06310d5f.md) | 195 | `result-track:f2ea8a88dca1eaac06310d5ff351dd97e83b8140f98dab88155b7de5fe7a7782` |
| 23 | `structure` | [SectorIntegrability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/sectorintegrability--b821e52bb0b36d0da9170010.md) | 204 | `declaration-track:b821e52bb0b36d0da917001023d2658ad74abd95fa18c9e32eea5d9e7652d419` |
| 24 | `theorem` | [centered_even_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/centered-even-integral--d35113155d7d8cb6c58f83b6.md) | 224 | `result-track:d35113155d7d8cb6c58f83b6855207aa60006e89dc7500b608736bf8aae329a1` |
| 25 | `theorem` | [centered_signed_pairing_with_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/centered-signed-pairing-with-boundary--995823aebb4d21dcd7bd25ab.md) | 246 | `result-track:995823aebb4d21dcd7bd25ab6c53d049ab07993f8345df5768a53fdab1f845b9` |
| 26 | `def` | [centeredSignedValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/centeredsignedvalue--d57cc3f925eea72690bc6bcb.md) | 261 | `declaration-track:d57cc3f925eea72690bc6bcb9c509ebcec47288d71d734386d2513aaa5a0d55a` |
| 27 | `theorem` | [signed_pairing_eq_centered_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/signed-pairing-eq-centered-value--040c40bdc95fc633febfce07.md) | 269 | `result-track:040c40bdc95fc633febfce071eea237f3a898f25fa13228466adb189de2dbf9e` |
| 28 | `def` | [CenteredSignedEstimate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/centeredsignedestimate--e29fb2386576fcf7d1dba6fd.md) | 278 | `declaration-track:e29fb2386576fcf7d1dba6fd9092dc7556006eb1f1c45e4ddc8cc862f01831de` |
| 29 | `theorem` | [centered_estimate_iff_source_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variant53912ca08872b5e67d607c4cb42aedf6f4bf6a24a0b5c66fb61161e5c20deaf6.lean/declarations/centered-estimate-iff-source-bound--13622dec0efe0ab8d06f6a91.md) | 283 | `result-track:13622dec0efe0ab8d06f6a91fa1904df601afed4061034cee318efb546967a19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
